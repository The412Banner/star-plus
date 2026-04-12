.class public Lcom/winlator/cmod/contents/ContentsManager;
.super Ljava/lang/Object;
.source "ContentsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;,
        Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;,
        Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;
    }
.end annotation


# static fields
.field public static final BOX64_TRUST_FILES:[Ljava/lang/String;

.field public static final DXVK_TRUST_FILES:[Ljava/lang/String;

.field public static final FEXCORE_TRUST_FILES:[Ljava/lang/String;

.field public static final PROFILE_NAME:Ljava/lang/String; = "profile.json"

.field public static final REMOTE_PROFILES:Ljava/lang/String; = "https://raw.githubusercontent.com/Xnick417x/Winlator-Bionic-Nightly-wcp/refs/heads/main/content.json"

.field public static final VKD3D_TRUST_FILES:[Ljava/lang/String;

.field public static final WOWBOX64_TRUST_FILES:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private dirTemplateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field private profilesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/winlator/cmod/contents/ContentProfile$ContentType;",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/contents/ContentProfile;",
            ">;>;"
        }
    .end annotation
.end field

.field private remoteProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/contents/ContentProfile;",
            ">;"
        }
    .end annotation
.end field

.field private trustedFilesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/winlator/cmod/contents/ContentProfile$ContentType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "${system32}/d3d8.dll"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "${system32}/d3d9.dll"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "${system32}/d3d10.dll"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "${system32}/d3d10_1.dll"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "${system32}/d3d10core.dll"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v7, "${system32}/d3d11.dll"

    aput-object v7, v0, v1

    const/4 v1, 0x6

    const-string v7, "${system32}/dxgi.dll"

    aput-object v7, v0, v1

    const/4 v1, 0x7

    const-string v7, "${syswow64}/d3d8.dll"

    aput-object v7, v0, v1

    const/16 v1, 0x8

    const-string v7, "${syswow64}/d3d9.dll"

    aput-object v7, v0, v1

    const/16 v1, 0x9

    const-string v7, "${syswow64}/d3d10.dll"

    aput-object v7, v0, v1

    const/16 v1, 0xa

    const-string v7, "${syswow64}/d3d10_1.dll"

    aput-object v7, v0, v1

    const/16 v1, 0xb

    const-string v7, "${syswow64}/d3d10core.dll"

    aput-object v7, v0, v1

    const/16 v1, 0xc

    const-string v7, "${syswow64}/d3d11.dll"

    aput-object v7, v0, v1

    const/16 v1, 0xd

    const-string v7, "${syswow64}/dxgi.dll"

    aput-object v7, v0, v1

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager;->DXVK_TRUST_FILES:[Ljava/lang/String;

    .line 31
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "${system32}/d3d12core.dll"

    aput-object v1, v0, v2

    const-string v1, "${system32}/d3d12.dll"

    aput-object v1, v0, v3

    const-string v1, "${syswow64}/d3d12core.dll"

    aput-object v1, v0, v4

    const-string v1, "${syswow64}/d3d12.dll"

    aput-object v1, v0, v5

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager;->VKD3D_TRUST_FILES:[Ljava/lang/String;

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "${bindir}/box64"

    aput-object v1, v0, v2

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager;->BOX64_TRUST_FILES:[Ljava/lang/String;

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "${system32}/wowbox64.dll"

    aput-object v1, v0, v2

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager;->WOWBOX64_TRUST_FILES:[Ljava/lang/String;

    .line 35
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "${system32}/libwow64fex.dll"

    aput-object v1, v0, v2

    const-string v1, "${system32}/libarm64ecfex.dll"

    aput-object v1, v0, v3

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager;->FEXCORE_TRUST_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    .line 80
    const-string v0, "contents_manager_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->preferences:Landroid/content/SharedPreferences;

    .line 81
    return-void
.end method

.method public static cleanTmpDir(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 305
    invoke-static {p0}, Lcom/winlator/cmod/contents/ContentsManager;->getTmpDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 306
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 308
    return-void
.end method

.method private createDirTemplateMap()V
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->dirTemplateMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->dirTemplateMap:Ljava/util/Map;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/imagefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "imagefsPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/home/xuser/.wine/drive_c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "drivecPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/cmod/contents/ContentsManager;->dirTemplateMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/usr/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "${libdir}"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v2, p0, Lcom/winlator/cmod/contents/ContentsManager;->dirTemplateMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/windows/system32"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "${system32}"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v2, p0, Lcom/winlator/cmod/contents/ContentsManager;->dirTemplateMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/windows/syswow64"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "${syswow64}"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v2, p0, Lcom/winlator/cmod/contents/ContentsManager;->dirTemplateMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/usr/bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "${bindir}"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v2, p0, Lcom/winlator/cmod/contents/ContentsManager;->dirTemplateMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/usr/share"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "${sharedir}"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v0    # "imagefsPath":Ljava/lang/String;
    .end local v1    # "drivecPath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createTrustedFilesMap()V
    .locals 12

    .line 339
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->trustedFilesMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->trustedFilesMap:Ljava/util/Map;

    .line 341
    invoke-static {}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 342
    .local v4, "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v5, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/winlator/cmod/contents/ContentsManager;->trustedFilesMap:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v6, Lcom/winlator/cmod/contents/ContentsManager$1;->$SwitchMap$com$winlator$cmod$contents$ContentProfile$ContentType:[I

    invoke-virtual {v4}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 351
    new-array v6, v2, [Ljava/lang/String;

    goto :goto_1

    .line 350
    :pswitch_0
    sget-object v6, Lcom/winlator/cmod/contents/ContentsManager;->FEXCORE_TRUST_FILES:[Ljava/lang/String;

    goto :goto_1

    .line 349
    :pswitch_1
    sget-object v6, Lcom/winlator/cmod/contents/ContentsManager;->WOWBOX64_TRUST_FILES:[Ljava/lang/String;

    goto :goto_1

    .line 348
    :pswitch_2
    sget-object v6, Lcom/winlator/cmod/contents/ContentsManager;->BOX64_TRUST_FILES:[Ljava/lang/String;

    goto :goto_1

    .line 347
    :pswitch_3
    sget-object v6, Lcom/winlator/cmod/contents/ContentsManager;->VKD3D_TRUST_FILES:[Ljava/lang/String;

    goto :goto_1

    .line 346
    :pswitch_4
    sget-object v6, Lcom/winlator/cmod/contents/ContentsManager;->DXVK_TRUST_FILES:[Ljava/lang/String;

    .line 351
    :goto_1
    nop

    .line 353
    .local v6, "paths":[Ljava/lang/String;
    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 354
    .local v9, "path":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/winlator/cmod/contents/ContentsManager;->getPathFromTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v10}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v10}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v9    # "path":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 341
    .end local v4    # "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    .end local v5    # "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "paths":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getContentDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_MAIN_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    invoke-virtual {v2}, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContentTypeDir(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/winlator/cmod/contents/ContentsManager;->getContentDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;
    .locals 3
    .param p0, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v1}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstallDir(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;

    .line 285
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-static {p0, v1}, Lcom/winlator/cmod/contents/ContentsManager;->getContentTypeDir(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPathFromTemplate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 360
    invoke-direct {p0}, Lcom/winlator/cmod/contents/ContentsManager;->createDirTemplateMap()V

    .line 361
    move-object v0, p1

    .line 362
    .local v0, "realPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/contents/ContentsManager;->dirTemplateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 363
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/cmod/contents/ContentsManager;->dirTemplateMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 365
    :cond_0
    return-object v0
.end method

.method public static getSourceFile(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p2, "path"    # Ljava/lang/String;

    .line 301
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/winlator/cmod/contents/ContentsManager;->getInstallDir(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTmpDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_MAIN_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isSubPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .line 322
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public applyContent(Lcom/winlator/cmod/contents/ContentProfile;)Z
    .locals 6
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;

    .line 400
    iget-object v0, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v1, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v1, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-eq v0, v1, :cond_2

    .line 401
    :cond_0
    iget-object v0, p1, Lcom/winlator/cmod/contents/ContentProfile;->fileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;

    .line 402
    .local v1, "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;->target:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/winlator/cmod/contents/ContentsManager;->getPathFromTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v2, "targetFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/winlator/cmod/contents/ContentsManager;->getInstallDir(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;)Ljava/io/File;

    move-result-object v4

    iget-object v5, v1, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;->source:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 405
    .local v3, "sourceFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 406
    invoke-static {v3, v2}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 408
    iget-object v4, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v5, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_BOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-ne v4, v5, :cond_1

    .line 409
    const/16 v4, 0x1f9

    invoke-static {v2, v4}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 411
    .end local v1    # "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    .end local v2    # "targetFile":Ljava/io/File;
    .end local v3    # "sourceFile":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 415
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public extraContentFile(Landroid/net/Uri;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;

    .line 169
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/winlator/cmod/contents/ContentsManager;->cleanTmpDir(Landroid/content/Context;)V

    .line 171
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/winlator/cmod/contents/ContentsManager;->getTmpDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 174
    .local v0, "file":Ljava/io/File;
    sget-object v1, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    iget-object v2, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v1, v2, p1, v0}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z

    move-result v1

    .line 175
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 176
    sget-object v2, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    iget-object v3, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v2, v3, p1, v0}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z

    move-result v1

    .line 177
    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 178
    sget-object v3, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_BADTAR:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-interface {p2, v3, v2}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V

    .line 179
    return-void

    .line 182
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "profile.json"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v3, "proFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 184
    sget-object v4, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_NOPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-interface {p2, v4, v2}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V

    .line 185
    return-void

    .line 188
    :cond_2
    invoke-virtual {p0, v3}, Lcom/winlator/cmod/contents/ContentsManager;->readProfile(Ljava/io/File;)Lcom/winlator/cmod/contents/ContentProfile;

    move-result-object v4

    .line 189
    .local v4, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    if-nez v4, :cond_3

    .line 190
    sget-object v5, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_BADPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-interface {p2, v5, v2}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V

    .line 191
    return-void

    .line 194
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/imagefs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "imagefsPath":Ljava/lang/String;
    iget-object v6, v4, Lcom/winlator/cmod/contents/ContentProfile;->fileList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;

    .line 196
    .local v7, "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    new-instance v8, Ljava/io/File;

    iget-object v9, v7, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;->source:Ljava/lang/String;

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v8, "tmpFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/winlator/cmod/contents/ContentsManager;->isSubPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    .line 202
    :cond_4
    iget-object v9, v7, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;->target:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/winlator/cmod/contents/ContentsManager;->getPathFromTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 203
    .local v9, "realPath":Ljava/lang/String;
    invoke-direct {p0, v5, v9}, Lcom/winlator/cmod/contents/ContentsManager;->isSubPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/winlator/cmod/contents/ContentsManager;->getContentDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v9}, Lcom/winlator/cmod/contents/ContentsManager;->isSubPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "dosdevices"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_1

    .line 207
    .end local v7    # "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    .end local v8    # "tmpFile":Ljava/io/File;
    .end local v9    # "realPath":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 204
    .restart local v7    # "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    .restart local v8    # "tmpFile":Ljava/io/File;
    .restart local v9    # "realPath":Ljava/lang/String;
    :cond_6
    :goto_1
    sget-object v6, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_UNTRUSTPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-interface {p2, v6, v2}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V

    .line 205
    return-void

    .line 198
    .end local v9    # "realPath":Ljava/lang/String;
    :cond_7
    :goto_2
    sget-object v6, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_MISSINGFILES:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-interface {p2, v6, v2}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V

    .line 199
    return-void

    .line 209
    .end local v7    # "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    .end local v8    # "tmpFile":Ljava/io/File;
    :cond_8
    iget-object v6, v4, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v7, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-eq v6, v7, :cond_9

    iget-object v6, v4, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v7, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-ne v6, v7, :cond_a

    .line 210
    :cond_9
    new-instance v6, Ljava/io/File;

    iget-object v7, v4, Lcom/winlator/cmod/contents/ContentProfile;->wineBinPath:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v6, "bin":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    iget-object v8, v4, Lcom/winlator/cmod/contents/ContentProfile;->wineLibPath:Ljava/lang/String;

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v7, "lib":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    iget-object v9, v4, Lcom/winlator/cmod/contents/ContentProfile;->winePrefixPack:Ljava/lang/String;

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v8, "cp":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_3

    .line 220
    .end local v6    # "bin":Ljava/io/File;
    .end local v7    # "lib":Ljava/io/File;
    .end local v8    # "cp":Ljava/io/File;
    :cond_a
    invoke-interface {p2, v4}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onSucceed(Lcom/winlator/cmod/contents/ContentProfile;)V

    .line 221
    return-void

    .line 215
    .restart local v6    # "bin":Ljava/io/File;
    .restart local v7    # "lib":Ljava/io/File;
    .restart local v8    # "cp":Ljava/io/File;
    :cond_b
    :goto_3
    sget-object v9, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_MISSINGFILES:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-interface {p2, v9, v2}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V

    .line 216
    return-void
.end method

.method public finishInstallContent(Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 3
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p2, "callback"    # Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;

    .line 224
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/winlator/cmod/contents/ContentsManager;->getInstallDir(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;)Ljava/io/File;

    move-result-object v0

    .line 225
    .local v0, "installPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 226
    sget-object v1, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_EXIST:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-interface {p2, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V

    .line 227
    return-void

    .line 230
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    sget-object v1, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_UNKNOWN:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-interface {p2, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V

    .line 232
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/winlator/cmod/contents/ContentsManager;->getTmpDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    sget-object v1, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_UNKNOWN:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-interface {p2, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V

    .line 239
    :cond_2
    invoke-interface {p2, p1}, Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;->onSucceed(Lcom/winlator/cmod/contents/ContentProfile;)V

    .line 240
    return-void
.end method

.method public getProfileByEntryName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile;
    .locals 9
    .param p1, "entryName"    # Ljava/lang/String;

    .line 381
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 382
    .local v1, "firstDashIndex":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 385
    .local v0, "lastDashIndex":I
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "typeName":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "versionName":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "versionCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/winlator/cmod/contents/ContentsManager;->profilesMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->getTypeByName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/cmod/contents/ContentProfile;

    .line 390
    .local v6, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    iget-object v7, v6, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget v8, v6, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_0

    .line 391
    return-object v6

    .line 392
    .end local v6    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    :cond_0
    goto :goto_0

    .line 394
    .end local v2    # "typeName":Ljava/lang/String;
    .end local v3    # "versionName":Ljava/lang/String;
    .end local v4    # "versionCode":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 393
    :catch_0
    move-exception v2

    .line 396
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/contents/ContentProfile$ContentType;",
            ")",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/contents/ContentProfile;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->profilesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->profilesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnTrustedContentFiles(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/util/List;
    .locals 6
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/contents/ContentProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/contents/ContentProfile$ContentFile;",
            ">;"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Lcom/winlator/cmod/contents/ContentsManager;->createTrustedFilesMap()V

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile$ContentFile;>;"
    iget-object v1, p1, Lcom/winlator/cmod/contents/ContentProfile;->fileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;

    .line 314
    .local v2, "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    iget-object v3, p0, Lcom/winlator/cmod/contents/ContentsManager;->trustedFilesMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, v2, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;->target:Ljava/lang/String;

    .line 315
    invoke-direct {p0, v4}, Lcom/winlator/cmod/contents/ContentsManager;->getPathFromTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v2    # "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    :cond_0
    goto :goto_0

    .line 318
    :cond_1
    return-object v0
.end method

.method public readProfile(Ljava/io/File;)Lcom/winlator/cmod/contents/ContentProfile;
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .line 244
    :try_start_0
    new-instance v0, Lcom/winlator/cmod/contents/ContentProfile;

    invoke-direct {v0}, Lcom/winlator/cmod/contents/ContentProfile;-><init>()V

    .line 245
    .local v0, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "profileJSONObject":Lorg/json/JSONObject;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "typeName":Ljava/lang/String;
    const-string v3, "versionName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "verName":Ljava/lang/String;
    const-string v4, "versionCode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 249
    .local v4, "verCode":I
    const-string v5, "description"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "desc":Ljava/lang/String;
    const-string v6, "files"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 252
    .local v6, "fileJSONArray":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v7, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile$ContentFile;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 254
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 255
    .local v9, "contentFileJSONObject":Lorg/json/JSONObject;
    new-instance v10, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;

    invoke-direct {v10}, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;-><init>()V

    .line 256
    .local v10, "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    const-string v11, "source"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;->source:Ljava/lang/String;

    .line 257
    const-string v11, "target"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;->target:Ljava/lang/String;

    .line 258
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    nop

    .end local v9    # "contentFileJSONObject":Lorg/json/JSONObject;
    .end local v10    # "contentFile":Lcom/winlator/cmod/contents/ContentProfile$ContentFile;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 260
    .end local v8    # "i":I
    :cond_0
    sget-object v8, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v8}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v8}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 261
    :cond_1
    const-string v8, "wine"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 262
    .local v8, "wineJSONObject":Lorg/json/JSONObject;
    const-string v9, "libPath"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/winlator/cmod/contents/ContentProfile;->wineLibPath:Ljava/lang/String;

    .line 263
    const-string v9, "binPath"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/winlator/cmod/contents/ContentProfile;->wineBinPath:Ljava/lang/String;

    .line 264
    const-string v9, "prefixPack"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/winlator/cmod/contents/ContentProfile;->winePrefixPack:Ljava/lang/String;

    .line 267
    .end local v8    # "wineJSONObject":Lorg/json/JSONObject;
    :cond_2
    invoke-static {v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->getTypeByName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v8

    iput-object v8, v0, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 268
    iput-object v3, v0, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    .line 269
    iput v4, v0, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I

    .line 270
    iput-object v5, v0, Lcom/winlator/cmod/contents/ContentProfile;->desc:Ljava/lang/String;

    .line 271
    iput-object v7, v0, Lcom/winlator/cmod/contents/ContentProfile;->fileList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    return-object v0

    .line 273
    .end local v0    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    .end local v1    # "profileJSONObject":Lorg/json/JSONObject;
    .end local v2    # "typeName":Ljava/lang/String;
    .end local v3    # "verName":Ljava/lang/String;
    .end local v4    # "verCode":I
    .end local v5    # "desc":Ljava/lang/String;
    .end local v6    # "fileJSONArray":Lorg/json/JSONArray;
    .end local v7    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile$ContentFile;>;"
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeContent(Lcom/winlator/cmod/contents/ContentProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;

    .line 369
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->profilesMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/winlator/cmod/contents/ContentsManager;->getInstallDir(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 371
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->profilesMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {p0}, Lcom/winlator/cmod/contents/ContentsManager;->syncContents()V

    .line 374
    :cond_0
    return-void
.end method

.method public setGraphicsDriverInstalled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "driverVersion"    # Ljava/lang/String;
    .param p2, "installed"    # Z

    .line 85
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics_driver_installed_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method public setRemoteProfiles(Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;

    .line 96
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager;->remoteProfiles:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "content":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v2, :cond_0

    .line 100
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 101
    .local v2, "object":Lorg/json/JSONObject;
    new-instance v3, Lcom/winlator/cmod/contents/ContentProfile;

    invoke-direct {v3}, Lcom/winlator/cmod/contents/ContentProfile;-><init>()V

    .line 102
    .local v3, "remoteProfile":Lcom/winlator/cmod/contents/ContentProfile;
    const-string v4, "remoteUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/winlator/cmod/contents/ContentProfile;->remoteUrl:Ljava/lang/String;

    .line 103
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->getTypeByName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v4

    iput-object v4, v3, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 104
    const-string v4, "verName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    .line 105
    const-string v4, "verCode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I

    .line 106
    iget-object v4, p0, Lcom/winlator/cmod/contents/ContentsManager;->remoteProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "remoteProfile":Lcom/winlator/cmod/contents/ContentProfile;
    goto :goto_1

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "content":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 111
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {p0}, Lcom/winlator/cmod/contents/ContentsManager;->syncContents()V

    .line 115
    return-void
.end method

.method public syncContents()V
    .locals 16

    .line 118
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/winlator/cmod/contents/ContentsManager;->profilesMap:Ljava/util/HashMap;

    .line 121
    invoke-static {}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 122
    .local v5, "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    iget-object v6, v0, Lcom/winlator/cmod/contents/ContentsManager;->profilesMap:Ljava/util/HashMap;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v5    # "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    .line 126
    .restart local v5    # "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    iget-object v6, v0, Lcom/winlator/cmod/contents/ContentsManager;->profilesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 130
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile;>;"
    iget-object v7, v0, Lcom/winlator/cmod/contents/ContentsManager;->context:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/winlator/cmod/contents/ContentsManager;->getContentTypeDir(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/io/File;

    move-result-object v7

    .line 131
    .local v7, "typeFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 132
    .local v8, "fileList":[Ljava/io/File;
    const-string v9, "ContentsManager"

    if-eqz v8, :cond_3

    .line 133
    array-length v10, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_3

    aget-object v12, v8, v11

    .line 134
    .local v12, "file":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    const-string v14, "profile.json"

    invoke-direct {v13, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v13, "proFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 136
    invoke-virtual {v0, v13}, Lcom/winlator/cmod/contents/ContentsManager;->readProfile(Ljava/io/File;)Lcom/winlator/cmod/contents/ContentProfile;

    move-result-object v14

    .line 137
    .local v14, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    if-eqz v14, :cond_1

    .line 138
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local profile loaded: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v15, v14, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 141
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid local profile at: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "proFile":Ljava/io/File;
    .end local v14    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 148
    :cond_3
    iget-object v3, v0, Lcom/winlator/cmod/contents/ContentsManager;->remoteProfiles:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 149
    iget-object v3, v0, Lcom/winlator/cmod/contents/ContentsManager;->remoteProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/winlator/cmod/contents/ContentProfile;

    .line 150
    .local v10, "remote":Lcom/winlator/cmod/contents/ContentProfile;
    iget-object v11, v10, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-ne v11, v5, :cond_6

    .line 151
    const/4 v11, 0x0

    .line 152
    .local v11, "exists":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/winlator/cmod/contents/ContentProfile;

    .line 153
    .local v13, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    iget-object v14, v13, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    iget-object v15, v10, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget v14, v13, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I

    iget v15, v10, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I

    if-ne v14, v15, :cond_4

    .line 154
    const/4 v11, 0x1

    .line 155
    goto :goto_6

    .line 157
    .end local v13    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    :cond_4
    goto :goto_5

    .line 158
    :cond_5
    :goto_6
    if-nez v11, :cond_6

    .line 159
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remote profile added: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v10    # "remote":Lcom/winlator/cmod/contents/ContentProfile;
    .end local v11    # "exists":Z
    :cond_6
    goto :goto_4

    .line 125
    .end local v5    # "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile;>;"
    .end local v7    # "typeFile":Ljava/io/File;
    .end local v8    # "fileList":[Ljava/io/File;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 166
    :cond_8
    return-void
.end method
