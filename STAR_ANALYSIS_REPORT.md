# Star Bionic — Full Reverse Engineering & Store Integration Report

**Prepared by:** The412Banner / BannerHub Team  
**Date:** 2026-04-11  
**APK:** `star-Bionic_original.apk`  
**GitHub Repo:** https://github.com/The412Banner/star-test  
**Purpose:** Full architectural map of Star Bionic V1.0 + injection plan for GOG, Epic Games, and Amazon Games store integrations

---

## 1. APK Identity

| Field | Value |
|---|---|
| Package name | `com.winlator.star` |
| App version | `Bionic V1.0` |
| Version code | `20` |
| Min SDK | 26 (Android 8.0 Oreo) |
| Target SDK | 28 (Android 9 Pie) |
| APK size | ~547 MB |
| DEX count | 16 (classes.dex → classes16.dex) |
| Decompile tool | apktool 2.9.3 |
| Architecture | arm64 (FEXCore + Box64 translation) |

---

## 2. High-Level Architecture

Star Bionic is a **Winlator-based** Android app (not GameHub/Ludashi). It runs Windows EXEs on Android via Wine + Box64/FEXCore translation with a full native UI. It is **completely open in smali** — no obfuscation, all class names preserved.

### Runtime Stack
```
Android App (Java/Kotlin smali)
    ↓
ContainerManager → Container (isolated Wine prefix per container)
    ↓
XServerDisplayActivity → Wine via ImageFs (Linux rootfs)
    ↓
FEXCore / Box64 → x86/x64 EXE execution
    ↓
DXVK + VKD3D → Vulkan graphics
```

### Key Libraries Bundled in Assets
| Asset | Purpose |
|---|---|
| `imagefs.txz` (175 MB) | Linux rootfs (Debian-based) — the "Z: drive" |
| `container_pattern_common.tzst` (77 MB) | Wine prefix template |
| `proton-9.0-arm64ec.txz` (62 MB) | Proton 9.0 for ARM64ec |
| `proton-9.0-x86_64.txz` (48 MB) | Proton 9.0 for x86_64 |
| `layers.tzst` (4.3 MB) | Vulkan layers |
| `pulseaudio.tzst` (741 KB) | Audio server |

---

## 3. Navigation Structure

The main activity uses a **Material Navigation Drawer** (`NavigationView`).

### Menu Items (res/menu/main_menu.xml)
| Menu ID | Fragment | Description |
|---|---|---|
| `main_menu_shortcuts` | `ShortcutsFragment` | All installed game shortcuts |
| `main_menu_containers` | `ContainersFragment` | Wine prefix management |
| `main_menu_input_controls` | `InputControlsFragment` | Gamepad/touch profiles |
| `main_menu_contents` | `ContentsFragment` | Wine components installer |
| `main_menu_adrenotools_gpu_drivers` | `AdrenotoolsFragment` | GPU driver manager |
| `main_menu_saves` | `SavesFragment` | Save state management |
| `main_menu_settings` | `SettingsFragment` | App settings |
| `main_menu_about` | Dialog | About dialog |

**Dispatch code:** `MainActivity.onNavigationItemSelected()` at line 1413 of `smali_classes8/com/winlator/cmod/MainActivity.smali` — uses a `sparse-switch` on menu item ID.

---

## 4. Container System

### Class: `com.winlator.cmod.container.Container`
**DEX:** `smali_classes14`

Each Container is an isolated Wine prefix. Key fields:
| Field | Type | Notes |
|---|---|---|
| `id` | `int` | Unique container ID |
| `name` | `String` | Display name |
| `rootDir` | `File` | Local filesystem path to this container |
| `drives` | `String` | Drive letter mappings (see below) |
| `dxwrapper` | `String` | Default: `"dxvk+vkd3d"` |
| `graphicsDriver` | `String` | Default: `"wrapper"` |
| `wineVersion` | `String` | Wine build identifier |
| `emulator` | `String` | Default: `"FEXCore"` |

### Key Methods
| Method | Returns | Notes |
|---|---|---|
| `getRootDir()` | `File` | Base path of this container |
| `getDesktopDir()` | `File` | `rootDir/.wine/drive_c/users/xuser/Desktop/` |
| `getStartMenuDir()` | `File` | `rootDir/.wine/drive_c/ProgramData/Microsoft/Windows/Start Menu/` |
| `getDrives()` | `String` | Comma-separated drive mappings |
| `drivesIterator()` | `Iterable` | Iterates drive letter:path pairs |

### Drive Letter Format
```
DEFAULT_DRIVES = "F:" + Environment.getExternalStorageDirectory() + "D:" + Environment.getExternalStoragePublicDirectory(DOWNLOADS)
```
Format is: `"<LETTER>:<PATH>,<LETTER>:<PATH>,..."`
- **F:** → `/sdcard` (external storage)
- **D:** → `/sdcard/Download`
- **Z:** → imagefs root (see below) — maps to the Linux rootfs `/`

### Class: `com.winlator.cmod.container.ContainerManager`
**DEX:** `smali_classes14`

Manages all containers. Key methods:
| Method | Notes |
|---|---|
| `loadShortcuts()` | Scans all container Desktop dirs for `.lnk`/`.desktop` files |
| `loadContainers()` | Loads all containers from storage |
| `createContainerAsync()` | Creates new container async |
| `getContainerForShortcut()` | Finds which container owns a shortcut |

---

## 5. Shortcut System

### Class: `com.winlator.cmod.container.Shortcut`
**DEX:** `smali_classes14`

Fields:
| Field | Type | Notes |
|---|---|---|
| `container` | `Container` | Parent container |
| `file` | `File` | The `.desktop` file |
| `name` | `String` | Display name |
| `path` | `String` | Windows-style exe path (e.g. `Z:\\path\\to\\game.exe`) |
| `wmClass` | `String` | WM class for window matching |
| `icon` | `Bitmap` | App icon |

### .desktop File Format
When a shortcut is created from a file picker, `ShortcutsFragment` writes:
```ini
[Desktop Entry]
Name=<game name without .exe>
Exec=wine <DRIVE_LETTER>\\<filename>
Type=Application
```

The `.desktop` file is saved to `container.getDesktopDir()` → `rootDir/.wine/drive_c/users/xuser/Desktop/<name>.desktop`

Shortcuts are loaded by `ContainerManager.loadShortcuts()` which scans every container's Desktop dir for `.lnk` and `.desktop` files.

### Z: Drive Mapping (Critical)
From `ShortcutsFragment.smali` line 851–863:
```smali
const-string v1, "/imagefs/"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
# if path contains "/imagefs/" → drive letter is "Z:"
const-string v1, "Z:"
```
**Z: = any path that contains `/imagefs/`** — this is the Linux rootfs mounted at Wine's Z drive. The imagefs is located at `context.getFilesDir()/imagefs/`.

### Container Selection Dialog
`ShortcutsFragment` already has a `showContainerSelectionDialog(ArrayList<Container>, OnContainerSelectedListener)` method (line 1684). It shows a list of all containers and fires a callback when one is selected. **This is the exact mechanism we will reuse for store integrations.**

Layout: `res/layout/container_selection_dialog.xml` (already exists)

---

## 6. ImageFs / Z Drive Path

### Class: `com.winlator.cmod.xenvironment.ImageFs`
**DEX:** `smali_classes12`

```java
// Location:
context.getFilesDir() + "/imagefs/"

// Internal structure:
rootDir/opt/<wine_version>/          // Wine binaries
rootDir/home/xuser/                  // User home
rootDir/home/xuser/.wine/            // Default Wine prefix
rootDir/home/xuser/.cache/
rootDir/home/xuser/.config/
```

The imagefs is the **shared Linux environment** used by all containers. Containers each have their own `rootDir` (Wine prefix), but they all run inside the same imagefs.

**For game installs:** Downloaded EXEs should go into a container's own drive mapping. The best target is Drive D: (`/sdcard/Download`) or Drive F: (`/sdcard`), or a subfolder we define. The game is then referenced as `D:\\games\\<name>\\game.exe` in the shortcut.

---

## 7. DEX Method Counts & Available Space

| DEX | Files | Approx Methods | Available (of 65535) |
|---|---|---|---|
| classes (DEX 1) | 6,728 | ~54,340 | ~11,000 — **nearly full** |
| classes2 | 295 | ~319 | Large space |
| classes3–7 | small | <1,000 total | Available |
| classes8 | 322 | ~1,515 | Available |
| classes9–15 | small | <3,000 total | Available |
| **classes16** | **5,302** | **~33,331** | **~32,000 — best for new code** |

**Recommendation:** Add new store classes to a **new `smali_classes17/` directory** (apktool creates `classes17.dex` automatically). This avoids any DEX limit risk and keeps store code cleanly separated.

---

## 8. Store Integration Plan

### Overview
We add three new navigation menu entries — **GOG**, **Epic Games**, and **Amazon Games** — each launching a Fragment that handles auth, library sync, download, and shortcut creation. The entire integration flows through the existing Winlator shortcut system.

### Game Install Flow (All Three Stores)
```
User opens Store tab
    → Auth (OAuth/WebView)
    → Library sync (API call)
    → User selects game → tap Download
    → DownloadManager downloads to /sdcard/StarGames/<store>/<game>/
    → On completion: showContainerSelectionDialog()
    → User picks container
    → Write .desktop file to container.getDesktopDir()/<game>.desktop
    → ShortcutsFragment.loadShortcuts() picks it up automatically
    → Game appears in Shortcuts tab
```

### Download Destination
```
/sdcard/StarGames/
    gog/<game_name>/          → D:\StarGames\gog\<game>\game.exe
    epic/<game_name>/         → D:\StarGames\epic\<game>\game.exe
    amazon/<game_name>/       → D:\StarGames\amazon\<game>\game.exe
```

This maps to Drive D: (already in DEFAULT_DRIVES as `/sdcard/Download`... we'll use D: or add a new drive letter like G:).

**Better approach:** Add a dedicated drive letter (e.g., `G:`) pointing to `/sdcard/StarGames/` in each container's drives when a game is installed. This keeps store games cleanly separated from other user files.

---

## 9. Injection Points

### 9.1 Menu XML
**File:** `apktool_out/res/menu/main_menu.xml`

Add before the Settings item:
```xml
<item android:icon="@drawable/icon_open" android:id="@id/main_menu_gog" android:title="GOG Games" />
<item android:icon="@drawable/icon_open" android:id="@id/main_menu_epic" android:title="Epic Games" />
<item android:icon="@drawable/icon_open" android:id="@id/main_menu_amazon" android:title="Amazon Games" />
```

### 9.2 Resource IDs
**File:** `apktool_out/res/values/public.xml`

Add new ID entries (pick unused hex IDs after highest existing `id` type entry):
```xml
<public type="id" name="main_menu_gog" id="0x7f0900XX" />
<public type="id" name="main_menu_epic" id="0x7f0900YY" />
<public type="id" name="main_menu_amazon" id="0x7f0900ZZ" />
```

### 9.3 MainActivity sparse-switch
**File:** `smali_classes8/com/winlator/cmod/MainActivity.smali`

Add three new `sswitch_N:` cases in `onNavigationItemSelected()`:
```smali
:sswitch_NEW_GOG
    new-instance v1, Lcom/winlator/cmod/store/GogFragment;
    invoke-direct {v1}, Lcom/winlator/cmod/store/GogFragment;-><init>()V
    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V
    goto :goto_0

:sswitch_NEW_EPIC
    new-instance v1, Lcom/winlator/cmod/store/EpicFragment;
    invoke-direct {v1}, Lcom/winlator/cmod/store/EpicFragment;-><init>()V
    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V
    goto :goto_0

:sswitch_NEW_AMAZON
    new-instance v1, Lcom/winlator/cmod/store/AmazonFragment;
    invoke-direct {v1}, Lcom/winlator/cmod/store/AmazonFragment;-><init>()V
    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V
    goto :goto_0
```

And update the `sparse-switch` table to include the new IDs.

### 9.4 New Smali Classes
**Target DEX:** `smali_classes17/com/winlator/cmod/store/`

| Class | Role |
|---|---|
| `GogFragment` | GOG library UI, auth, game list |
| `GogDownloadManager` | GOG API calls, file download |
| `EpicFragment` | Epic library UI, auth, game list |
| `EpicDownloadManager` | Epic manifest download pipeline |
| `AmazonFragment` | Amazon library UI, PKCE auth |
| `AmazonDownloadManager` | Amazon manifest.proto + LZMA download |
| `StoreShortcutHelper` | Shared: write .desktop file, pick container |
| `StoreGameCard` | Shared: game card UI view |

---

## 10. Shortcut Creation — Exact Smali Pattern

When download completes, `StoreShortcutHelper` calls:

```java
// 1. Build the Windows path (Drive letter + relative path)
//    Game installed to: /sdcard/StarGames/gog/GameName/game.exe
//    Drive G: = /sdcard/StarGames/
//    Windows path: "G:\\gog\\GameName\\game.exe"

// 2. Write .desktop file content:
String content = "[Desktop Entry]\nName=" + gameName + "\nExec=wine " 
                 + driveLetter + "\\\\" + relPath + "\nType=Application";

// 3. Save to container's Desktop dir:
File desktopFile = new File(container.getDesktopDir(), gameName + ".desktop");
FileWriter fw = new FileWriter(desktopFile);
fw.write(content);
fw.close();

// 4. Reload shortcuts (ShortcutsFragment.adapter.notifyDataSetChanged or re-navigate)
```

The container selection uses the existing `container_selection_dialog.xml` layout — show an `AlertDialog` with container names and fire callback on selection.

---

## 11. Container Drive Extension

To add Drive G: (StarGames) to a container at install time:

```java
// Read current drives string
String drives = container.getDrives();
String starGamesPath = Environment.getExternalStorageDirectory() + "/StarGames";
// Append if not already present
if (!drives.contains("G:")) {
    drives += "G:" + starGamesPath;
    container.setDrives(drives);
    containerManager.saveContainer(container); // writes back to JSON
}
```

In smali, `Container.setDrives()` is at line 3081 of `smali_classes14/com/winlator/cmod/container/Container.smali`. `ContainerManager.saveContainer()` handles JSON serialization.

---

## 12. Existing Reusable UI Assets

Already present in `res/layout/`:
| Layout | Reuse For |
|---|---|
| `container_selection_dialog.xml` | Container picker after download |
| `download_progress_dialog.xml` | Download progress overlay |
| `content_list_item.xml` | Game library list items |
| `content_dialog.xml` | Base dialog template |

---

## 13. API Integration Summary

### GOG
- Auth: OAuth 2.0 → `auth.gog.com/token` (client_id: `46899977096215655`, client_secret: `9d85c43b1718a031b8febb9294b1b8ff597be08cf536cdc80e818e48bef96b31`)
- Library: `embed.gog.com/account/getFilteredProducts?mediaType=1`
- Downloads: `content-system.gog.com/products/{id}/os/windows/builds?generation=2` → `cdn-gog-com.akamaized.net`
- **Old games fallback:** `api.gog.com/products/{id}?expand=downloads` → direct `.exe` link
- Install path: `/sdcard/StarGames/gog/<slug>/`

### Epic Games
- Auth: WebView → `epicgames.com/id/api/redirect` → JSON body `authorizationCode`
- Library: `catalog-public-service-prod06.ol.epicgames.com/catalog/api/shared/namespace/{ns}/bulk/items`
- Manifests: `launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/{appName}/build`
- CDN chunks: Prefer Fastly (`egdownload.fastly-edge.com`) or Akamai (public, no tokens)
- Chunk group subfolder: **DECIMAL** `%02d` format — not hex
- `ChunkFilesizeList` values are **hex strings** — parse with `Long.parseLong(s, 16)`
- Install path: `/sdcard/StarGames/epic/<name>/`

### Amazon Games
- Auth: PKCE OAuth → `api.amazon.com/auth/o2/token`
- Library: `gaming.amazon.com/graphql` → `GetEntitlements` query
- Manifests: `gaming.amazon.com/player/v1.0/manifests/{asin}` → `manifest.proto` (Protobuf + XZ/LZMA)
- Download: parallel chunk fetch from S3 CDN
- SDK DLLs: `FuelSDK_x64.dll` + `AmazonGamesSDK_*` needed in game dir
- Launch: `fuel.json` sets `FuelPump` env vars (`AMAZON_APP_DATA_DIR`, etc.)
- Install path: `/sdcard/StarGames/amazon/<slug>/`

---

## 14. Implementation Phases

### Phase 1 — Navigation Scaffolding
- Add menu IDs and items (GOG, Epic, Amazon) to `main_menu.xml` and `public.xml`
- Add `sparse-switch` cases in `MainActivity.onNavigationItemSelected()`
- Create stub Fragment smali files (placeholder UI) in `smali_classes17/`
- **Goal:** Three new menu tabs appear and open without crash

### Phase 2 — GOG Integration
- Auth flow (WebView OAuth)
- Library list (RecyclerView with game cards)
- Download pipeline (GOG build API + fallback)
- Container selection + shortcut creation

### Phase 3 — Epic Integration
- Auth flow (WebView → body JSON code extraction)
- Library list
- Manifest + chunk download pipeline
- Container selection + shortcut creation

### Phase 4 — Amazon Integration
- PKCE auth (WebView + token exchange)
- Library list (GetEntitlements)
- Protobuf manifest + chunk download
- SDK DLL deployment + shortcut creation

### Phase 5 — Polish
- Unified game card UI across all three stores
- Download queue manager (parallel downloads)
- Progress notifications
- Uninstall support (remove files + .desktop)
- Drive G: auto-provision on first game install

---

## 15. Notes for the Star Developer

### What we are NOT changing
- Wine/FEXCore/Box64 runtime — untouched
- Container creation/management system — untouched
- All existing functionality — preserved
- Signing key — standard AOSP testkey (same as Winlator community builds)

### What we ARE adding
- Three new navigation tabs (GOG / Epic / Amazon)
- New smali classes in a new DEX (`classes17.dex`) — zero risk of DEX method limit collision
- New resource IDs in `public.xml` — picked from unused range
- One new smali edit to `MainActivity.onNavigationItemSelected()` — minimal, surgical

### Architectural Compatibility
This app is structurally identical to open-source Winlator. The container, shortcut, and drive systems are clean and well-separated. The integration we are building is non-destructive and follows the same patterns the app already uses internally for shortcuts.

### Suggested Upstream Contribution Path
If the developer wants to merge this upstream:
- The Java source equivalents of our smali classes can be reconstructed and submitted as a PR to the upstream Winlator project
- The GOG/Epic/Amazon logic is fully self-contained in `com.winlator.cmod.store.*`
- The only core-app modification is one `switch` case addition in `MainActivity`

---

## Appendix A — File Map

| Path | Contents |
|---|---|
| `smali_classes8/com/winlator/cmod/MainActivity.smali` | Main activity, navigation dispatch |
| `smali_classes8/com/winlator/cmod/ShortcutsFragment.smali` | Shortcut list, container picker |
| `smali_classes8/com/winlator/cmod/ContainersFragment.smali` | Container list |
| `smali_classes14/com/winlator/cmod/container/Container.smali` | Container data model |
| `smali_classes14/com/winlator/cmod/container/ContainerManager.smali` | Container CRUD + shortcut loader |
| `smali_classes14/com/winlator/cmod/container/Shortcut.smali` | Shortcut data model |
| `smali_classes12/com/winlator/cmod/xenvironment/ImageFs.smali` | Linux rootfs (imagefs) |
| `res/menu/main_menu.xml` | Navigation drawer items |
| `res/layout/container_selection_dialog.xml` | Container picker dialog (reuse) |
| `res/layout/download_progress_dialog.xml` | Download progress dialog (reuse) |

---

## Appendix B — Signing

All patched APKs must be signed with v1/v2/v3 signatures. We use the standard AOSP testkey:
- Private key: `testkey.pk8`
- Certificate: `testkey.x509.pem`

Same signing approach as BannerHub — apksigner with `--v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true`.

---

*Report version: 1.0 — 2026-04-11*  
*Repo: https://github.com/The412Banner/star-test*
