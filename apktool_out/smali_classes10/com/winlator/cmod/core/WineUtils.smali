.class public abstract Lcom/winlator/cmod/core/WineUtils;
.super Ljava/lang/Object;
.source "WineUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySystemTweaks(Landroid/content/Context;Lcom/winlator/cmod/core/WineInfo;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wineInfo"    # Lcom/winlator/cmod/core/WineInfo;

    .line 57
    const-string v0, "Software\\Classes\\.reg"

    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, "rootDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/home/xuser/.wine/system.reg"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v2, "systemRegFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/home/xuser/.wine/user.reg"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v3, "userRegFile":Ljava/io/File;
    new-instance v4, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v4, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 62
    .local v4, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :try_start_0
    const-string v5, "REGfile"

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v5, "Content Type"

    const-string v7, "application/reg"

    invoke-virtual {v4, v0, v5, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "Software\\Classes\\REGfile\\Shell\\Open\\command"

    const-string v5, "C:\\windows\\regedit.exe /C \"%1\""

    invoke-virtual {v4, v0, v6, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "Software\\Classes\\dllfile\\DefaultIcon"

    const-string v5, "shell32.dll,-154"

    invoke-virtual {v4, v0, v6, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "Software\\Classes\\lnkfile\\DefaultIcon"

    const-string v5, "shell32.dll,-30"

    invoke-virtual {v4, v0, v6, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "Software\\Classes\\inifile\\DefaultIcon"

    const-string v5, "shell32.dll,-151"

    invoke-virtual {v4, v0, v6, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 69
    invoke-virtual {v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    .line 71
    .end local v4    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "d3d8"

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-string v4, "d3d9"

    const/4 v6, 0x1

    aput-object v4, v0, v6

    const/4 v4, 0x2

    const-string v6, "d3d10"

    aput-object v6, v0, v4

    const/4 v4, 0x3

    const-string v6, "d3d10_1"

    aput-object v6, v0, v4

    const/4 v4, 0x4

    const-string v6, "d3d10core"

    aput-object v6, v0, v4

    const/4 v4, 0x5

    const-string v6, "d3d11"

    aput-object v6, v0, v4

    const/4 v4, 0x6

    const-string v6, "d3d12"

    aput-object v6, v0, v4

    const/4 v4, 0x7

    const-string v6, "d3d12core"

    aput-object v6, v0, v4

    const/16 v4, 0x8

    const-string v6, "ddraw"

    aput-object v6, v0, v4

    const/16 v4, 0x9

    const-string v6, "dxgi"

    aput-object v6, v0, v4

    const/16 v4, 0xa

    const-string v6, "wined3d"

    aput-object v6, v0, v4

    .line 72
    .local v0, "direct3dLibs":[Ljava/lang/String;
    const-string v4, "Software\\Wine\\DllOverrides"

    .line 74
    .local v4, "dllOverridesKey":Ljava/lang/String;
    new-instance v6, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v6, v3}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 75
    .local v6, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :try_start_1
    array-length v7, v0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v8, v0, v5

    .local v8, "name":Ljava/lang/String;
    const-string v9, "Software\\Wine\\DllOverrides"

    const-string v10, "native,builtin"

    invoke-virtual {v6, v9, v8, v10}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v8    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {v6}, Lcom/winlator/cmod/core/WineUtils;->setWindowMetrics(Lcom/winlator/cmod/core/WineRegistryEditor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-virtual {v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    .line 78
    .end local v6    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    return-void

    .line 74
    .restart local v6    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5

    .line 61
    .end local v0    # "direct3dLibs":[Ljava/lang/String;
    .end local v6    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    .local v4, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :catchall_2
    move-exception v0

    :try_start_3
    invoke-virtual {v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v5

    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
.end method

.method public static changeServicesStatus(Lcom/winlator/cmod/container/Container;Ljava/lang/String;)V
    .locals 25
    .param p0, "container"    # Lcom/winlator/cmod/container/Container;
    .param p1, "startupSelection"    # Ljava/lang/String;

    .line 209
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "BITS:3"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "Eventlog:2"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "HTTP:3"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "LanmanServer:3"

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-string v11, "NDIS:2"

    aput-object v11, v1, v10

    const/4 v12, 0x5

    const-string v13, "PlugPlay:2"

    aput-object v13, v1, v12

    const/4 v14, 0x6

    const-string v15, "RpcSs:3"

    aput-object v15, v1, v14

    const/16 v16, 0x7

    const-string v17, "scardsvr:3"

    aput-object v17, v1, v16

    const/16 v18, 0x8

    const-string v19, "Schedule:3"

    aput-object v19, v1, v18

    const/16 v20, 0x9

    const-string v21, "Spooler:3"

    aput-object v21, v1, v20

    const-string v22, "StiSvc:3"

    const/16 v23, 0xa

    aput-object v22, v1, v23

    const/16 v22, 0xb

    const-string v24, "TermService:3"

    aput-object v24, v1, v22

    const/16 v22, 0xc

    const-string v24, "winebus:2"

    aput-object v24, v1, v22

    const/16 v22, 0xd

    const-string v24, "winehid:2"

    aput-object v24, v1, v22

    const/16 v22, 0xe

    const-string v24, "Winmgmt:3"

    aput-object v24, v1, v22

    const/16 v22, 0xf

    const-string v24, "wuauserv:3"

    aput-object v24, v1, v22

    .line 210
    .local v1, "services":[Ljava/lang/String;
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object v5, v0, v4

    const-string v3, "FontCache:3"

    aput-object v3, v0, v6

    const-string v3, "FontCache3.0.0.0:3"

    aput-object v3, v0, v8

    aput-object v7, v0, v10

    aput-object v9, v0, v12

    const-string v3, "MSIServer:3"

    aput-object v3, v0, v14

    aput-object v11, v0, v16

    const-string v3, "nsiproxy:3"

    aput-object v3, v0, v18

    aput-object v13, v0, v20

    aput-object v15, v0, v23

    const/16 v3, 0xb

    aput-object v17, v0, v3

    const/16 v3, 0xc

    aput-object v19, v0, v3

    const/16 v3, 0xd

    const-string v5, "SharedGpuResources:2"

    aput-object v5, v0, v3

    const/16 v3, 0xe

    aput-object v21, v0, v3

    const/16 v3, 0xf

    const-string v5, "StiSvc:3"

    aput-object v5, v0, v3

    const-string v3, "TermService:3"

    const/16 v5, 0x10

    aput-object v3, v0, v5

    const/16 v3, 0x11

    const-string v5, "TrkWks:3"

    aput-object v5, v0, v3

    const/16 v3, 0x12

    const-string v5, "W32Time:3"

    aput-object v5, v0, v3

    const/16 v3, 0x13

    const-string v5, "winebus:2"

    aput-object v5, v0, v3

    const/16 v3, 0x14

    const-string v5, "winehid:2"

    aput-object v5, v0, v3

    const/16 v3, 0x15

    const-string v5, "Winmgmt:3"

    aput-object v5, v0, v3

    const/16 v3, 0x16

    const-string v5, "wuauserv:3"

    aput-object v5, v0, v3

    move-object v3, v0

    .line 211
    .local v3, "aggressiveServices":[Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v5

    const-string v7, ".wine/system.reg"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 213
    .local v5, "systemRegFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 215
    .local v7, "selection":B
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    .line 217
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 219
    :goto_1
    new-instance v0, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v0, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 220
    .local v8, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :try_start_1
    invoke-virtual {v8, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->setCreateKeyIfNotExist(Z)V

    .line 221
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "servicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v9, v3

    move v10, v2

    :goto_2
    if-ge v10, v9, :cond_2

    aget-object v11, v3, v10

    .line 224
    .local v11, "service":Ljava/lang/String;
    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    .line 227
    .local v13, "value":I
    if-ne v7, v4, :cond_0

    .line 228
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 229
    const-string v14, "winebus"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "winehid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 230
    const/4 v13, 0x4

    goto :goto_3

    .line 233
    :cond_0
    if-ne v7, v6, :cond_1

    .line 234
    const-string v14, "winebus"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "winehid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 235
    const/4 v13, 0x4

    .line 238
    :cond_1
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "System\\CurrentControlSet\\Services\\"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Start"

    invoke-virtual {v8, v14, v15, v13}, Lcom/winlator/cmod/core/WineRegistryEditor;->setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "System\\ControlSet001\\Services\\"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Start"

    invoke-virtual {v8, v14, v15, v13}, Lcom/winlator/cmod/core/WineRegistryEditor;->setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v11    # "service":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 241
    .end local v0    # "servicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    .line 242
    .end local v8    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    return-void

    .line 219
    .restart local v8    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    invoke-virtual {v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
.end method

.method public static createDosdevicesSymlinks(Lcom/winlator/cmod/container/Container;)V
    .locals 10
    .param p0, "container"    # Lcom/winlator/cmod/container/Container;

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".wine/dosdevices"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "dosdevicesPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 29
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[a-z]:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .end local v5    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "../drive_c"

    invoke-static {v4, v3}, Lcom/winlator/cmod/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/../.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/z:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/winlator/cmod/container/Container;->drivesIterator()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 35
    .local v4, "drive":[Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v5, "linkTarget":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "/com.winlator.cmod/storage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 39
    const/16 v7, 0x1f9

    invoke-static {v5, v7}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 41
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/winlator/cmod/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v4    # "drive":[Ljava/lang/String;
    .end local v5    # "linkTarget":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    goto :goto_1

    .line 43
    :cond_3
    return-void
.end method

.method public static overrideWinComponentDlls(Landroid/content/Context;Lcom/winlator/cmod/container/Container;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "useNative"    # Z

    .line 81
    const-string v0, "Software\\Wine\\DllOverrides"

    .line 82
    .local v0, "dllOverridesKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".wine/user.reg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .local v1, "userRegFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v2, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "wincomponents/wincomponents.json"

    invoke-static {p0, v4}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, "wincomponentsJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 87
    .local v4, "dlnames":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 88
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .local v6, "dlname":Ljava/lang/String;
    const-string v7, "Software\\Wine\\DllOverrides"

    if-eqz p3, :cond_0

    .line 90
    :try_start_2
    const-string v8, "native,builtin"

    invoke-virtual {v2, v7, v6, v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {v2, v7, v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .end local v6    # "dlname":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    .end local v3    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v4    # "dlnames":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 84
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dllOverridesKey":Ljava/lang/String;
    .end local v1    # "userRegFile":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "container":Lcom/winlator/cmod/container/Container;
    .end local p2    # "identifier":Ljava/lang/String;
    .end local p3    # "useNative":Z
    :goto_2
    throw v3
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 95
    .end local v2    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    .restart local v0    # "dllOverridesKey":Ljava/lang/String;
    .restart local v1    # "userRegFile":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "container":Lcom/winlator/cmod/container/Container;
    .restart local p2    # "identifier":Ljava/lang/String;
    .restart local p3    # "useNative":Z
    :catch_0
    move-exception v2

    :goto_3
    nop

    .line 96
    return-void
.end method

.method public static setJoystickRegistryKeys(Lcom/winlator/cmod/container/Container;ZZ)V
    .locals 9
    .param p0, "container"    # Lcom/winlator/cmod/container/Container;
    .param p1, "dinputEnabled"    # Z
    .param p2, "exclusiveXInput"    # Z

    .line 254
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".wine/user.reg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .local v0, "userRegFile":Ljava/io/File;
    const-string v1, "Software\\Wine\\DirectInput\\Joysticks"

    .line 258
    .local v1, "joysticksKey":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, "override"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    .line 260
    .local v2, "value":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v3, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 262
    .local v3, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 263
    const-string v5, "ric HID Gamepad "

    const-string v6, "Generic HID Gamepad "

    const-string v7, "Software\\Wine\\DirectInput\\Joysticks"

    if-eqz p2, :cond_1

    .line 264
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 260
    .end local v4    # "i":I
    :catchall_0
    move-exception v4

    :try_start_1
    invoke-virtual {v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4

    .line 272
    :cond_2
    invoke-virtual {v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    .line 273
    .end local v3    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    return-void
.end method

.method public static setWinComponentRegistryKeys(Ljava/io/File;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 20
    .param p0, "systemRegFile"    # Ljava/io/File;
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "useNative"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 99
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "{E30629D1-27E5-11CE-875D-00608CB78066}"

    const-string v3, "CLSID"

    const-string v4, "C:\\windows\\syswow64\\xaudio2_1.dll"

    const-string v5, "C:\\windows\\system32\\xaudio2_1.dll"

    const-string v6, "C:\\windows\\syswow64\\xaudio2_2.dll"

    const-string v7, "C:\\windows\\system32\\xaudio2_2.dll"

    const-string v8, "C:\\windows\\syswow64\\xaudio2_7.dll"

    const-string v9, "C:\\windows\\system32\\xaudio2_7.dll"

    const-string v10, "C:\\windows\\syswow64\\xaudio2_3.dll"

    const-string v11, "C:\\windows\\system32\\xaudio2_3.dll"

    const-string v12, "C:\\windows\\syswow64\\xaudio2_6.dll"

    const-string v13, "C:\\windows\\system32\\xaudio2_6.dll"

    const-string v14, "C:\\windows\\syswow64\\xaudio2_5.dll"

    const-string v15, "C:\\windows\\system32\\xaudio2_5.dll"

    move-object/from16 v16, v5

    const-string v5, "C:\\windows\\syswow64\\xaudio2_4.dll"

    move-object/from16 v17, v7

    const-string v7, "C:\\windows\\system32\\xaudio2_4.dll"

    move-object/from16 v18, v9

    const-string v9, "Software\\Classes\\CLSID\\{083863F1-70DE-11D0-BD40-00A0C911CE86}\\Instance\\{E30629D1-27E5-11CE-875D-00608CB78066}"

    move-object/from16 v19, v11

    const-string v11, "directsound"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 100
    new-instance v4, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 101
    .local v4, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    move-object v5, v9

    .line 102
    .local v5, "key64":Ljava/lang/String;
    const-string v6, "Software\\Classes\\Wow6432Node\\CLSID\\{083863F1-70DE-11D0-BD40-00A0C911CE86}\\Instance\\{E30629D1-27E5-11CE-875D-00608CB78066}"

    move-object v7, v6

    .line 104
    .local v7, "key32":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {v4, v6, v3, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v8, "FilterData"

    const-string v10, "02000000000080000100000000000000307069330200000000000000010000000000000000000000307479330000000038000000480000006175647300001000800000aa00389b710100000000001000800000aa00389b71"

    invoke-virtual {v4, v6, v8, v10}, Lcom/winlator/cmod/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v8, "FriendlyName"

    const-string v10, "Wave Audio Renderer"

    invoke-virtual {v4, v6, v8, v10}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v4, v9, v3, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "FilterData"

    const-string v3, "02000000000080000100000000000000307069330200000000000000010000000000000000000000307479330000000038000000480000006175647300001000800000aa00389b710100000000001000800000aa00389b71"

    invoke-virtual {v4, v9, v0, v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "FriendlyName"

    const-string v3, "Wave Audio Renderer"

    invoke-virtual {v4, v9, v0, v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v4, v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeKey(Ljava/lang/String;)Z

    .line 115
    invoke-virtual {v4, v9}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeKey(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v5    # "key64":Ljava/lang/String;
    .end local v7    # "key32":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    .line 100
    .end local v4    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    goto/16 :goto_4

    .restart local v4    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_1
    invoke-virtual {v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3

    .line 119
    .end local v4    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :cond_1
    const-string v0, "xaudio"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    new-instance v0, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 121
    .local v3, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{0AA000AA-F404-11D9-BD7A-0010DC4F8F81}\\InprocServer32"

    const-string v9, "Software\\Classes\\Wow6432Node\\CLSID\\{0977D092-2D95-4E43-8D42-9DDCC2545ED5}\\InprocServer32"

    const-string v11, "Software\\Classes\\Wow6432Node\\CLSID\\{074B110F-7F58-4743-AEA5-12F1B5074ED}\\InprocServer32"

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 122
    :try_start_2
    const-string v7, "C:\\windows\\syswow64\\xactengine3_5.dll"

    invoke-virtual {v3, v11, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v7, "C:\\windows\\syswow64\\xactengine3_4.dll"

    invoke-virtual {v3, v9, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v7, "C:\\windows\\syswow64\\xactengine2_0.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{1138472B-D187-44E9-81F2-AE1B0E7785F1}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_3.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{1F1B577E-5E5A-4E8A-BA73-C657EA8E8598}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_1.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{248D8A3B-6256-44D3-A018-2AC96C459F47}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine3_6.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{343E68E6-8F82-4A8D-A2DA-6E9A944B378C}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_9.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{3A2495CE-31D0-435B-8CCF-E9F0843FD960}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_6.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{3B80EE2A-B0F5-4780-9E30-90CB39685B03}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine3_0.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{54B68BC7-3A45-416B-A8C9-19BF19EC1DF5}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_5.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{65D822A4-4799-42C6-9B18-D26CF66DD320}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_10.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{77C56BF4-18A1-42B0-88AF-5072CE814949}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_8.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{94C1AFFA-66E7-4961-9521-CFDEF3128D4F}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine3_3.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{962F5027-99BE-4692-A468-85802CF8DE61}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine3_1.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{BC3E0FC6-2E0D-4C45-BC61-D9C328319BD8}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_4.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{BCC782BC-6492-4C22-8C35-F5D72FE73C6E}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine3_7.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{C60FAE90-4183-4A3F-B2F7-AC1DC49B0E5C}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_2.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{CD0D66EC-8057-43F5-ACBD-66DFB36FD78C}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine2_7.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{D3332F02-3DD0-4DE9-9AEC-20D85C4111B6}\\InprocServer32"

    const-string v7, "C:\\windows\\syswow64\\xactengine3_2.dll"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{03219E78-5BC3-44D1-B92E-F63D89CC6526}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{2139E6DA-C341-4774-9AC3-B4E026347F64}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v14}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{3EDA9B49-2085-498B-9BB2-39A6778493DE}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{4C5E637A-16C7-4DE3-9C46-5ED22181962D}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v10}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{4C9B6DDE-6809-46E6-A278-9B6A97588670}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v14}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{5A508685-A254-4FBA-9B82-9A24B00306AF}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{629CF0DE-3ECC-41E7-9926-F7E43EEBEC51}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{6A93130E-1D53-41D1-A9CF-E758800BB179}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{8BB7778B-645B-4475-9A73-1DE3170BD3AF}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{9CAB402C-1D37-44B4-886D-FA4F36170A4C}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v10}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{B802058A-464A-42DB-BC10-B650D6F2586A}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{C1E3F122-A2EA-442C-854F-20D98F8357A1}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{C7338B95-52B8-4542-AA79-42EB016C8C1C}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{CAC1105F-619B-4D04-831A-44E1CBF12D57}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{CECEC95A-D894-491A-BEE3-5E106FB59F2D}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{D06DF0D0-8518-441E-822F-5451D5C595B8}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v14}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{E180344B-AC83-4483-959E-18A5C56A5E19}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v10}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{E21A7345-EB21-468E-BE50-804DB97CF708}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{E48C5A3F-93EF-43BB-A092-2C7CEB946F27}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{F4769300-B949-4DF9-B333-00D33932E9A6}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{F5CA7B34-8055-42C0-B836-216129EB7E30}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 163
    :cond_2
    const-string v4, "C:\\windows\\system32\\xactengine3_5.dll"

    invoke-virtual {v3, v11, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "C:\\windows\\system32\\xactengine3_4.dll"

    invoke-virtual {v3, v9, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v4, "C:\\windows\\system32\\xactengine2_0.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{1138472B-D187-44E9-81F2-AE1B0E7785F1}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_3.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{1F1B577E-5E5A-4E8A-BA73-C657EA8E8598}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_1.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{248D8A3B-6256-44D3-A018-2AC96C459F47}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine3_6.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{343E68E6-8F82-4A8D-A2DA-6E9A944B378C}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_9.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{3A2495CE-31D0-435B-8CCF-E9F0843FD960}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_6.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{3B80EE2A-B0F5-4780-9E30-90CB39685B03}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine3_0.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{54B68BC7-3A45-416B-A8C9-19BF19EC1DF5}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_5.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{65D822A4-4799-42C6-9B18-D26CF66DD320}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_10.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{77C56BF4-18A1-42B0-88AF-5072CE814949}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_8.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{94C1AFFA-66E7-4961-9521-CFDEF3128D4F}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine3_3.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{962F5027-99BE-4692-A468-85802CF8DE61}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine3_1.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{BC3E0FC6-2E0D-4C45-BC61-D9C328319BD8}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_4.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{BCC782BC-6492-4C22-8C35-F5D72FE73C6E}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine3_7.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{C60FAE90-4183-4A3F-B2F7-AC1DC49B0E5C}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_2.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{CD0D66EC-8057-43F5-ACBD-66DFB36FD78C}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine2_7.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{D3332F02-3DD0-4DE9-9AEC-20D85C4111B6}\\InprocServer32"

    const-string v4, "C:\\windows\\system32\\xactengine3_2.dll"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{03219E78-5BC3-44D1-B92E-F63D89CC6526}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{2139E6DA-C341-4774-9AC3-B4E026347F64}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v15}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{3EDA9B49-2085-498B-9BB2-39A6778493DE}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v13}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{4C5E637A-16C7-4DE3-9C46-5ED22181962D}\\InprocServer32"

    move-object/from16 v4, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{4C9B6DDE-6809-46E6-A278-9B6A97588670}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v15}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{5A508685-A254-4FBA-9B82-9A24B00306AF}\\InprocServer32"

    move-object/from16 v5, v18

    invoke-virtual {v3, v0, v1, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{629CF0DE-3ECC-41E7-9926-F7E43EEBEC51}\\InprocServer32"

    move-object/from16 v6, v17

    invoke-virtual {v3, v0, v1, v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{6A93130E-1D53-41D1-A9CF-E758800BB179}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{8BB7778B-645B-4475-9A73-1DE3170BD3AF}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{9CAB402C-1D37-44B4-886D-FA4F36170A4C}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{B802058A-464A-42DB-BC10-B650D6F2586A}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{C1E3F122-A2EA-442C-854F-20D98F8357A1}\\InprocServer32"

    move-object/from16 v8, v16

    invoke-virtual {v3, v0, v1, v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{C7338B95-52B8-4542-AA79-42EB016C8C1C}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{CAC1105F-619B-4D04-831A-44E1CBF12D57}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{CECEC95A-D894-491A-BEE3-5E106FB59F2D}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v13}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{D06DF0D0-8518-441E-822F-5451D5C595B8}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v15}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{E180344B-AC83-4483-959E-18A5C56A5E19}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{E21A7345-EB21-468E-BE50-804DB97CF708}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{E48C5A3F-93EF-43BB-A092-2C7CEB946F27}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v13}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{F4769300-B949-4DF9-B333-00D33932E9A6}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "Software\\Classes\\Wow6432Node\\CLSID\\{F5CA7B34-8055-42C0-B836-216129EB7E30}\\InprocServer32"

    invoke-virtual {v3, v0, v1, v6}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 204
    :goto_2
    invoke-virtual {v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    goto :goto_4

    .line 120
    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    .line 206
    .end local v3    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :cond_3
    :goto_4
    return-void
.end method

.method private static setWindowMetrics(Lcom/winlator/cmod/core/WineRegistryEditor;)V
    .locals 4
    .param p0, "registryEditor"    # Lcom/winlator/cmod/core/WineRegistryEditor;

    .line 46
    new-instance v0, Lcom/winlator/cmod/core/MSLogFont;

    invoke-direct {v0}, Lcom/winlator/cmod/core/MSLogFont;-><init>()V

    invoke-virtual {v0}, Lcom/winlator/cmod/core/MSLogFont;->toByteArray()[B

    move-result-object v0

    .line 47
    .local v0, "fontNormalData":[B
    new-instance v1, Lcom/winlator/cmod/core/MSLogFont;

    invoke-direct {v1}, Lcom/winlator/cmod/core/MSLogFont;-><init>()V

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/core/MSLogFont;->setWeight(I)Lcom/winlator/cmod/core/MSLogFont;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/core/MSLogFont;->toByteArray()[B

    move-result-object v1

    .line 48
    .local v1, "fontBoldData":[B
    const-string v2, "CaptionFont"

    const-string v3, "Control Panel\\Desktop\\WindowMetrics"

    invoke-virtual {p0, v3, v2, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 49
    const-string v2, "IconFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 50
    const-string v2, "MenuFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 51
    const-string v2, "MessageFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 52
    const-string v2, "SmCaptionFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 53
    const-string v2, "StatusFont"

    invoke-virtual {p0, v3, v2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 54
    return-void
.end method
