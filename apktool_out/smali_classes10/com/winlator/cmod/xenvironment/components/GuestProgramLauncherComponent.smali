.class public Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;
.super Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
.source "GuestProgramLauncherComponent.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static pid:I


# instance fields
.field private bindingPaths:[Ljava/lang/String;

.field private box64Preset:Ljava/lang/String;

.field private container:Lcom/winlator/cmod/container/Container;

.field private final contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

.field private envVars:Lcom/winlator/cmod/core/EnvVars;

.field private fexcorePreset:Ljava/lang/String;

.field private guestExecutable:Ljava/lang/String;

.field private final shortcut:Lcom/winlator/cmod/container/Shortcut;

.field private terminationCallback:Lcom/winlator/cmod/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wineInfo:Lcom/winlator/cmod/core/WineInfo;

.field private final wineProfile:Lcom/winlator/cmod/contents/ContentProfile;


# direct methods
.method public static synthetic $r8$lambda$sScJognx37d1xj5kMru2YB6Z-Rk(Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->lambda$execGuestProgram$0(Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/contents/ContentsManager;Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 1
    .param p1, "contentsManager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p2, "wineProfile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p3, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 141
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;-><init>()V

    .line 53
    const-string v0, "COMPATIBILITY"

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->box64Preset:Ljava/lang/String;

    .line 54
    const-string v0, "INTERMEDIATE"

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->fexcorePreset:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    .line 143
    iput-object p2, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->wineProfile:Lcom/winlator/cmod/contents/ContentProfile;

    .line 144
    iput-object p3, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    .line 145
    return-void
.end method

.method private addBox64EnvVars(Lcom/winlator/cmod/core/EnvVars;Z)V
    .locals 4
    .param p1, "envVars"    # Lcom/winlator/cmod/core/EnvVars;
    .param p2, "enableLogs"    # Z

    .line 423
    const-string v0, "1"

    if-eqz p2, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "BOX64_NOBANNER"

    invoke-virtual {p1, v2, v1}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    const-string v1, "BOX64_DYNAREC"

    invoke-virtual {p1, v1, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    if-eqz p2, :cond_1

    .line 427
    const-string v1, "BOX64_LOG"

    invoke-virtual {p1, v1, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    const-string v1, "BOX64_DYNAREC_MISSING"

    invoke-virtual {p1, v1, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->box64Preset:Ljava/lang/String;

    const-string v3, "box64"

    invoke-static {v3, v1, v2}, Lcom/winlator/cmod/box64/Box64PresetManager;->getEnvVars(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/cmod/core/EnvVars;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/core/EnvVars;->putAll(Lcom/winlator/cmod/core/EnvVars;)V

    .line 432
    const-string v1, "BOX64_X11GLX"

    invoke-virtual {p1, v1, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    const-string v1, "BOX64_NORCFILES"

    invoke-virtual {p1, v1, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method private checkDependencies()Ljava/lang/String;
    .locals 9

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getImageFs()Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr/lib/libXau.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "curlPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ldd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "lddCommand":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking Curl dependencies...\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "output":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 168
    .local v3, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 169
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 172
    .local v5, "errorReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    const-string v8, "\n"

    if-eqz v6, :cond_0

    .line 173
    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    if-eqz v6, :cond_1

    .line 176
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    nop

    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "errorReader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    goto :goto_2

    .line 180
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Error running ldd: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v3, "CurlDeps"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private execGuestProgram()I
    .locals 28

    .line 242
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 243
    .local v2, "context":Landroid/content/Context;
    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getImageFs()Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v3

    .line 244
    .local v3, "imageFs":Lcom/winlator/cmod/xenvironment/ImageFs;
    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v4

    .line 246
    .local v4, "rootDir":Ljava/io/File;
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 247
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v0, "enable_box64_logs"

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 248
    .local v7, "enableBox64Logs":Z
    const-string v0, "open_with_android_browser"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 249
    .local v8, "openWithAndroidBrowser":Z
    const-string v0, "share_android_clipboard"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 251
    .local v9, "shareAndroidClipboard":Z
    const-string v0, "1"

    if-eqz v8, :cond_0

    .line 252
    iget-object v10, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v11, "WINE_OPEN_WITH_ANDROID_BROWSER"

    invoke-virtual {v10, v11, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    :cond_0
    if-eqz v9, :cond_1

    .line 254
    iget-object v10, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v11, "WINE_FROM_ANDROID_CLIPBOARD"

    invoke-virtual {v10, v11, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    iget-object v10, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v11, "WINE_TO_ANDROID_CLIPBOARD"

    invoke-virtual {v10, v11, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    :cond_1
    new-instance v10, Lcom/winlator/cmod/core/EnvVars;

    invoke-direct {v10}, Lcom/winlator/cmod/core/EnvVars;-><init>()V

    .line 260
    .local v10, "envVars":Lcom/winlator/cmod/core/EnvVars;
    invoke-direct {v1, v10, v7}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->addBox64EnvVars(Lcom/winlator/cmod/core/EnvVars;Z)V

    .line 261
    iget-object v11, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->fexcorePreset:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getEnvVars(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/cmod/core/EnvVars;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/winlator/cmod/core/EnvVars;->putAll(Lcom/winlator/cmod/core/EnvVars;)V

    .line 263
    const/4 v11, 0x0

    invoke-static {v11, v11}, Lcom/winlator/cmod/core/GPUInformation;->getRenderer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, "renderer":Ljava/lang/String;
    const-string v12, "Mali"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, "BOX64_MMAP32"

    const-string v14, "0"

    if-eqz v12, :cond_2

    .line 266
    invoke-virtual {v10, v13, v14}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    :cond_2
    invoke-virtual {v10, v13}, Lcom/winlator/cmod/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "GuestProgramLauncherComponent"

    if-eqz v12, :cond_3

    iget-object v12, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v12}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v12

    if-nez v12, :cond_3

    .line 269
    const-string v12, "Disabling map memory placed"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v12, "WRAPPER_DISABLE_PLACED"

    invoke-virtual {v10, v12, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    :cond_3
    const-string v12, "HOME"

    iget-object v15, v3, Lcom/winlator/cmod/xenvironment/ImageFs;->home_path:Ljava/lang/String;

    invoke-virtual {v10, v12, v15}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    const-string v12, "USER"

    const-string v15, "xuser"

    invoke-virtual {v10, v12, v15}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/tmp"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "TMPDIR"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/share"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "XDG_DATA_DIRS"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/lib:/system/lib64"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "LD_LIBRARY_PATH"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/etc/xdg"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "XDG_CONFIG_DIRS"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/lib/gstreamer-1.0"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "GST_PLUGIN_PATH"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/etc/fonts"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "FONTCONFIG_PATH"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/share/vulkan/implicit_layer.d:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/share/vulkan/explicit_layer.d"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "VK_LAYER_PATH"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/lib"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "WRAPPER_LAYER_PATH"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/var/cache"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "WRAPPER_CACHE_PATH"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string v12, "WINE_NO_DUPLICATE_EXPLORER"

    invoke-virtual {v10, v12, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "PREFIX"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string v12, "DISPLAY"

    const-string v15, ":0"

    invoke-virtual {v10, v12, v15}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    const-string v12, "WINE_DISABLE_FULLSCREEN_HACK"

    invoke-virtual {v10, v12, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    const-string v12, "GST_PLUGIN_FEATURE_RANK"

    const-string v15, "ximagesink:3000"

    invoke-virtual {v10, v12, v15}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/share/alsa/alsa.conf:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/etc/alsa/conf.d/android_aserver.conf"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "ALSA_CONFIG_PATH"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/lib/alsa-lib"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "ALSA_PLUGIN_DIR"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/etc/tls/openssl.cnf"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "OPENSSL_CONF"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/etc/tls/cert.pem"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "SSL_CERT_FILE"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/usr/etc/tls/certs"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "SSL_CERT_DIR"

    invoke-virtual {v10, v15, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    const-string v12, "WINE_X11FORCEGLX"

    invoke-virtual {v10, v12, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    const-string v12, "WINE_GST_NO_GL"

    invoke-virtual {v10, v12, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const-string v12, "SteamGameId"

    invoke-virtual {v10, v12, v14}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const-string v12, "PROTON_AUDIO_CONVERT"

    invoke-virtual {v10, v12, v14}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const-string v12, "PROTON_VIDEO_CONVERT"

    invoke-virtual {v10, v12, v14}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    const-string v12, "PROTON_DEMUX"

    invoke-virtual {v10, v12, v14}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getWinePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "/bin"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 304
    .local v12, "winePath":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WinePath is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 307
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "/usr/bin"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 306
    const-string v15, "PATH"

    invoke-virtual {v10, v15, v13}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "/usr/tmp/.sysvshm/SM0"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "ANDROID_SYSVSHM_SERVER"

    invoke-virtual {v10, v15, v13}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    const-string v13, "8.8.4.4"

    .line 313
    .local v13, "primaryDNS":Ljava/lang/String;
    const-string v15, "connectivity"

    invoke-virtual {v2, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/ConnectivityManager;

    .line 314
    .local v15, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v15}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 315
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v17, v2

    .end local v2    # "context":Landroid/content/Context;
    .local v17, "context":Landroid/content/Context;
    invoke-virtual {v15}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v6

    .line 316
    .local v2, "dnsServers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/net/InetAddress;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v2

    .end local v2    # "dnsServers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .local v16, "dnsServers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 314
    .end local v16    # "dnsServers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v17    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    :cond_4
    move-object/from16 v17, v2

    .line 318
    .end local v2    # "context":Landroid/content/Context;
    .restart local v17    # "context":Landroid/content/Context;
    :goto_0
    const-string v2, "ANDROID_RESOLV_DNS"

    invoke-virtual {v10, v2, v13}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    const-string v2, "WINE_NEW_NDIS"

    invoke-virtual {v10, v2, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    const-string v0, ""

    .line 324
    .local v0, "ld_preload":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getLibDir()Ljava/io/File;

    move-result-object v6

    move-object/from16 v16, v0

    .end local v0    # "ld_preload":Ljava/lang/String;
    .local v16, "ld_preload":Ljava/lang/String;
    const-string v0, "libandroid-sysvshm.so"

    invoke-direct {v2, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getLibDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/libandroid-sysvshm.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .end local v16    # "ld_preload":Ljava/lang/String;
    .restart local v0    # "ld_preload":Ljava/lang/String;
    goto :goto_1

    .line 324
    .end local v0    # "ld_preload":Ljava/lang/String;
    .restart local v16    # "ld_preload":Ljava/lang/String;
    :cond_5
    move-object/from16 v2, v16

    .line 329
    .end local v16    # "ld_preload":Ljava/lang/String;
    .local v2, "ld_preload":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getLibDir()Ljava/io/File;

    move-result-object v6

    move-object/from16 v16, v5

    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "libfakeinput.so"

    invoke-direct {v0, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    .line 330
    .local v6, "fakeinputDest":Ljava/io/File;
    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move/from16 v19, v7

    .end local v7    # "enableBox64Logs":Z
    .local v19, "enableBox64Logs":Z
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 331
    .local v7, "nativeLibDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 333
    .local v5, "fakeinputSrc":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v8

    .end local v8    # "openWithAndroidBrowser":Z
    .local v20, "openWithAndroidBrowser":Z
    const-string v8, "nativeLibDir: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "GuestLauncher"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    .end local v7    # "nativeLibDir":Ljava/lang/String;
    .local v21, "nativeLibDir":Ljava/lang/String;
    const-string v7, "fakeinputSrc exists: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fakeinputDest: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 339
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    invoke-static {v5, v6}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 341
    const-string v0, "Copied libfakeinput.so to imagefs"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 343
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "libfakeinput.so NOT FOUND in APK: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_2
    move-object/from16 v22, v5

    goto :goto_3

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v5

    .end local v5    # "fakeinputSrc":Ljava/io/File;
    .local v22, "fakeinputSrc":Ljava/io/File;
    const-string v5, "Failed to copy libfakeinput.so: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "fakeinputSrc":Ljava/io/File;
    .restart local v5    # "fakeinputSrc":Ljava/io/File;
    :cond_7
    move-object/from16 v22, v5

    .line 351
    .end local v5    # "fakeinputSrc":Ljava/io/File;
    .restart local v22    # "fakeinputSrc":Ljava/io/File;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fakeinputDest exists after copy: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v5

    const-string v7, "dev/input"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 358
    .local v5, "devInputDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 359
    new-instance v0, Ljava/io/File;

    const-string v7, "event0"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 360
    .local v7, "event0":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 361
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 364
    :cond_a
    :goto_4
    const-string v0, "FAKE_EVDEV_DIR"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Final LD_PRELOAD: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v0, "LD_PRELOAD"

    invoke-virtual {v10, v0, v2}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v8, "MANGOHUD"

    invoke-virtual {v0, v8}, Lcom/winlator/cmod/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 370
    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v0, v8}, Lcom/winlator/cmod/core/EnvVars;->remove(Ljava/lang/String;)V

    .line 373
    :cond_b
    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v8, "MANGOHUD_CONFIG"

    invoke-virtual {v0, v8}, Lcom/winlator/cmod/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 374
    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v0, v8}, Lcom/winlator/cmod/core/EnvVars;->remove(Ljava/lang/String;)V

    .line 378
    :cond_c
    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    if-eqz v0, :cond_d

    .line 379
    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v10, v0}, Lcom/winlator/cmod/core/EnvVars;->putAll(Lcom/winlator/cmod/core/EnvVars;)V

    .line 382
    :cond_d
    iget-object v0, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getEmulator()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "emulator":Ljava/lang/String;
    iget-object v8, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v8, :cond_e

    .line 384
    iget-object v8, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v14, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v14}, Lcom/winlator/cmod/container/Container;->getEmulator()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v0

    .end local v0    # "emulator":Ljava/lang/String;
    .local v23, "emulator":Ljava/lang/String;
    const-string v0, "emulator"

    invoke-virtual {v8, v0, v14}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v23    # "emulator":Ljava/lang/String;
    .restart local v0    # "emulator":Ljava/lang/String;
    goto :goto_5

    .line 383
    :cond_e
    move-object/from16 v23, v0

    .line 387
    :goto_5
    const-string v8, ""

    .line 388
    .local v8, "command":Ljava/lang/String;
    const-string v14, "GUEST_PROGRAM_LAUNCHER_COMMAND"

    invoke-virtual {v10, v14}, Lcom/winlator/cmod/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 389
    .local v14, "overriddenCommand":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_10

    .line 390
    move-object/from16 v23, v2

    .end local v2    # "ld_preload":Ljava/lang/String;
    .local v23, "ld_preload":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "parts":[Ljava/lang/String;
    move-object/from16 v24, v5

    .end local v5    # "devInputDir":Ljava/io/File;
    .local v24, "devInputDir":Ljava/io/File;
    array-length v5, v2

    move-object/from16 v18, v6

    move-object v6, v8

    const/4 v8, 0x0

    .end local v8    # "command":Ljava/lang/String;
    .local v6, "command":Ljava/lang/String;
    .local v18, "fakeinputDest":Ljava/io/File;
    :goto_6
    if-ge v8, v5, :cond_f

    move/from16 v25, v5

    aget-object v5, v2, v8

    .line 392
    .local v5, "part":Ljava/lang/String;
    move-object/from16 v26, v2

    .end local v2    # "parts":[Ljava/lang/String;
    .local v26, "parts":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v27, v5

    .end local v5    # "part":Ljava/lang/String;
    .local v27, "part":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 391
    .end local v27    # "part":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v25

    move-object/from16 v2, v26

    goto :goto_6

    .line 393
    .end local v26    # "parts":[Ljava/lang/String;
    .restart local v2    # "parts":[Ljava/lang/String;
    :cond_f
    move-object/from16 v26, v2

    .end local v2    # "parts":[Ljava/lang/String;
    .restart local v26    # "parts":[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 394
    .end local v6    # "command":Ljava/lang/String;
    .end local v26    # "parts":[Ljava/lang/String;
    .local v2, "command":Ljava/lang/String;
    goto :goto_7

    .line 396
    .end local v18    # "fakeinputDest":Ljava/io/File;
    .end local v23    # "ld_preload":Ljava/lang/String;
    .end local v24    # "devInputDir":Ljava/io/File;
    .local v2, "ld_preload":Ljava/lang/String;
    .local v5, "devInputDir":Ljava/io/File;
    .local v6, "fakeinputDest":Ljava/io/File;
    .restart local v8    # "command":Ljava/lang/String;
    :cond_10
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move-object/from16 v18, v6

    .end local v2    # "ld_preload":Ljava/lang/String;
    .end local v5    # "devInputDir":Ljava/io/File;
    .end local v6    # "fakeinputDest":Ljava/io/File;
    .restart local v18    # "fakeinputDest":Ljava/io/File;
    .restart local v23    # "ld_preload":Ljava/lang/String;
    .restart local v24    # "devInputDir":Ljava/io/File;
    iget-object v2, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v2}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->guestExecutable:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .end local v8    # "command":Ljava/lang/String;
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fexcore"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "HODLL"

    if-eqz v5, :cond_11

    .line 399
    const-string v5, "libwow64fex.dll"

    invoke-virtual {v10, v6, v5}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 401
    :cond_11
    const-string v5, "wowbox64.dll"

    invoke-virtual {v10, v6, v5}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 403
    .end local v2    # "command":Ljava/lang/String;
    .restart local v8    # "command":Ljava/lang/String;
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getBinDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/box64 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->guestExecutable:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .end local v8    # "command":Ljava/lang/String;
    .restart local v2    # "command":Ljava/lang/String;
    :goto_7
    new-instance v5, Ljava/io/File;

    const-string v6, "/usr/bin/box64"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 408
    .local v5, "box64File":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 409
    const/16 v6, 0x1ed

    invoke-static {v5, v6}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 412
    :cond_13
    invoke-virtual {v10}, Lcom/winlator/cmod/core/EnvVars;->toStringArray()[Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;)V

    invoke-static {v2, v6, v4, v8}, Lcom/winlator/cmod/core/ProcessHelper;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/Callback;)I

    move-result v6

    return v6
.end method

.method private extractBox64Files()V
    .locals 9

    .line 73
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getImageFs()Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v0

    .line 74
    .local v0, "imageFs":Lcom/winlator/cmod/xenvironment/ImageFs;
    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 77
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getBox64Version()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "box64Version":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v4, "box64Version"

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v5, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getBox64Version()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "box64Version: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GuestProgramLauncherComponent"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v3

    .line 86
    .local v3, "rootDir":Ljava/io/File;
    iget-object v5, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v5, v4}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 87
    iget-object v5, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "box64-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/contents/ContentsManager;->getProfileByEntryName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile;

    move-result-object v5

    .line 88
    .local v5, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    if-eqz v5, :cond_1

    .line 89
    iget-object v6, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v6, v5}, Lcom/winlator/cmod/contents/ContentsManager;->applyContent(Lcom/winlator/cmod/contents/ContentProfile;)Z

    goto :goto_0

    .line 91
    :cond_1
    sget-object v6, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "box64/box64-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tzst"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v1, v7, v3}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 92
    :goto_0
    iget-object v6, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6, v4, v2}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v4, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 97
    .end local v5    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v5, "/usr/bin/box64"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v4, "box64File":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    const/16 v5, 0x1ed

    invoke-static {v4, v5}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 101
    :cond_3
    return-void
.end method

.method private extractEmulatorsDlls()V
    .locals 13

    .line 104
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getImageFs()Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v1

    .line 106
    .local v1, "rootDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/home/xuser/.wine/drive_c/windows/system32"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, "system32dir":Ljava/io/File;
    const/4 v3, 0x0

    .line 109
    .local v3, "containerDataChanged":Z
    iget-object v4, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getBox64Version()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "wowbox64Version":Ljava/lang/String;
    iget-object v5, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getFEXCoreVersion()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "fexcoreVersion":Ljava/lang/String;
    iget-object v6, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v7, "box64Version"

    if-eqz v6, :cond_0

    .line 113
    iget-object v6, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v8, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v8, v8, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v8}, Lcom/winlator/cmod/container/Container;->getBox64Version()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "box64Version in use: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "GuestProgramLauncherComponent"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fexcoreVersion in use: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v6, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, ".tzst"

    if-nez v6, :cond_2

    .line 120
    iget-object v6, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wowbox64-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/winlator/cmod/contents/ContentsManager;->getProfileByEntryName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile;

    move-result-object v6

    .line 121
    .local v6, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    if-eqz v6, :cond_1

    .line 122
    iget-object v9, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v9, v6}, Lcom/winlator/cmod/contents/ContentsManager;->applyContent(Lcom/winlator/cmod/contents/ContentProfile;)Z

    goto :goto_0

    .line 124
    :cond_1
    sget-object v9, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    iget-object v10, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v10}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wowbox64/wowbox64-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v2}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 125
    :goto_0
    iget-object v9, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v9, v7, v4}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const/4 v3, 0x1

    .line 129
    .end local v6    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    :cond_2
    iget-object v6, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    const-string v7, "fexcoreVersion"

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 130
    iget-object v6, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fexcore-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/winlator/cmod/contents/ContentsManager;->getProfileByEntryName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile;

    move-result-object v6

    .line 131
    .restart local v6    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    if-eqz v6, :cond_3

    .line 132
    iget-object v8, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v8, v6}, Lcom/winlator/cmod/contents/ContentsManager;->applyContent(Lcom/winlator/cmod/contents/ContentProfile;)Z

    goto :goto_1

    .line 134
    :cond_3
    sget-object v9, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    iget-object v10, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v10}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fexcore/fexcore-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v8, v2}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 135
    :goto_1
    iget-object v8, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v8, v7, v5}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const/4 v3, 0x1

    .line 138
    .end local v6    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    :cond_4
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 139
    :cond_5
    return-void
.end method

.method private synthetic lambda$execGuestProgram$0(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/Integer;

    .line 413
    sget-object v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    const/4 v1, -0x1

    :try_start_0
    sput v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    .line 415
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->terminationCallback:Lcom/winlator/cmod/core/Callback;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->terminationCallback:Lcom/winlator/cmod/core/Callback;

    invoke-interface {v0, p1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 419
    :cond_0
    return-void

    .line 415
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBindingPaths()[Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->bindingPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getBox64Preset()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->box64Preset:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer()Lcom/winlator/cmod/container/Container;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    return-object v0
.end method

.method public getEnvVars()Lcom/winlator/cmod/core/EnvVars;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    return-object v0
.end method

.method public getGuestExecutable()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->guestExecutable:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminationCallback()Lcom/winlator/cmod/core/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->terminationCallback:Lcom/winlator/cmod/core/Callback;

    return-object v0
.end method

.method public getWineInfo()Lcom/winlator/cmod/core/WineInfo;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    return-object v0
.end method

.method public resumeProcess()V
    .locals 3

    .line 443
    sget-object v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    sget v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    invoke-static {v1}, Lcom/winlator/cmod/core/ProcessHelper;->resumeProcess(I)V

    .line 445
    :cond_0
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBindingPaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "bindingPaths"    # [Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->bindingPaths:[Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setBox64Preset(Ljava/lang/String;)V
    .locals 0
    .param p1, "box64Preset"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->box64Preset:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setContainer(Lcom/winlator/cmod/container/Container;)V
    .locals 0
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 70
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->container:Lcom/winlator/cmod/container/Container;

    return-void
.end method

.method public setEnvVars(Lcom/winlator/cmod/core/EnvVars;)V
    .locals 0
    .param p1, "envVars"    # Lcom/winlator/cmod/core/EnvVars;

    .line 228
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->envVars:Lcom/winlator/cmod/core/EnvVars;

    .line 229
    return-void
.end method

.method public setFEXCorePreset(Ljava/lang/String;)V
    .locals 0
    .param p1, "fexcorePreset"    # Ljava/lang/String;

    .line 239
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->fexcorePreset:Ljava/lang/String;

    return-void
.end method

.method public setGuestExecutable(Ljava/lang/String;)V
    .locals 0
    .param p1, "guestExecutable"    # Ljava/lang/String;

    .line 212
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->guestExecutable:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setTerminationCallback(Lcom/winlator/cmod/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "terminationCallback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->terminationCallback:Lcom/winlator/cmod/core/Callback;

    .line 205
    return-void
.end method

.method public setWineInfo(Lcom/winlator/cmod/core/WineInfo;)V
    .locals 0
    .param p1, "wineInfo"    # Lcom/winlator/cmod/core/WineInfo;

    .line 63
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    .line 64
    return-void
.end method

.method public start()V
    .locals 2

    .line 149
    sget-object v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v1}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->extractEmulatorsDlls()V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->extractBox64Files()V

    .line 154
    :goto_0
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->checkDependencies()Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->execGuestProgram()I

    move-result v1

    sput v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    .line 191
    sget-object v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    sget v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 193
    sget v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 194
    sput v2, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    .line 196
    :cond_0
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suspendProcess()V
    .locals 3

    .line 437
    sget-object v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    sget v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget v1, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->pid:I

    invoke-static {v1}, Lcom/winlator/cmod/core/ProcessHelper;->suspendProcess(I)V

    .line 439
    :cond_0
    monitor-exit v0

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
