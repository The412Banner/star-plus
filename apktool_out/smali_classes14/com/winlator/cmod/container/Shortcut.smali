.class public Lcom/winlator/cmod/container/Shortcut;
.super Ljava/lang/Object;
.source "Shortcut.java"


# static fields
.field private static final COVER_ART_DIR:Ljava/lang/String; = "app_data/cover_arts/"


# instance fields
.field public final container:Lcom/winlator/cmod/container/Container;

.field private coverArt:Landroid/graphics/Bitmap;

.field private customCoverArtPath:Ljava/lang/String;

.field private final extraData:Lorg/json/JSONObject;

.field public final file:Ljava/io/File;

.field public icon:Landroid/graphics/Bitmap;

.field public final iconFile:Ljava/io/File;

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final wmClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/container/Container;Ljava/io/File;)V
    .locals 18
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "file"    # Ljava/io/File;

    .line 35
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    .line 36
    iput-object v2, v1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    .line 37
    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    .line 39
    const-string v0, ""

    .line 40
    .local v0, "execArgs":Ljava/lang/String;
    const/4 v4, 0x0

    .line 41
    .local v4, "icon":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 42
    .local v5, "iconFile":Ljava/io/File;
    const-string v6, ""

    .line 44
    .local v6, "wmClass":Ljava/lang/String;
    const/4 v7, 0x4

    new-array v8, v7, [Ljava/io/File;

    const/16 v9, 0x40

    invoke-virtual {v2, v9}, Lcom/winlator/cmod/container/Container;->getIconsDir(I)Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/16 v9, 0x30

    invoke-virtual {v2, v9}, Lcom/winlator/cmod/container/Container;->getIconsDir(I)Ljava/io/File;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Lcom/winlator/cmod/container/Container;->getIconsDir(I)Ljava/io/File;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    const/16 v9, 0x10

    invoke-virtual {v2, v9}, Lcom/winlator/cmod/container/Container;->getIconsDir(I)Ljava/io/File;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    .line 45
    .local v8, "iconDirs":[Ljava/io/File;
    const-string v9, ""

    .line 48
    .local v9, "section":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/winlator/cmod/core/FileUtils;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v9

    move-object v9, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    .end local v0    # "execArgs":Ljava/lang/String;
    .local v4, "execArgs":Ljava/lang/String;
    .local v5, "icon":Landroid/graphics/Bitmap;
    .local v6, "iconFile":Ljava/io/File;
    .local v9, "wmClass":Ljava/lang/String;
    .local v13, "section":Ljava/lang/String;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 50
    .end local v0    # "line":Ljava/lang/String;
    .local v14, "line":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "#"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 51
    :cond_0
    const-string v0, "["

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "]"

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .end local v13    # "section":Ljava/lang/String;
    .local v0, "section":Ljava/lang/String;
    goto/16 :goto_5

    .line 55
    .end local v0    # "section":Ljava/lang/String;
    .restart local v13    # "section":Ljava/lang/String;
    :cond_1
    const-string v0, "="

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 56
    .local v15, "index":I
    const/4 v0, -0x1

    if-ne v15, v0, :cond_2

    goto/16 :goto_6

    .line 57
    :cond_2
    invoke-virtual {v14, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "key":Ljava/lang/String;
    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "value":Ljava/lang/String;
    const-string v0, "Desktop Entry"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    const-string v0, "Exec"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v4, v10

    .line 62
    :cond_3
    const-string v0, "Icon"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    array-length v0, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_6

    move/from16 v16, v0

    aget-object v0, v8, v7

    .line 64
    .local v0, "iconDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v17, v4

    .end local v4    # "execArgs":Ljava/lang/String;
    .local v17, "execArgs":Ljava/lang/String;
    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v2

    .line 65
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 67
    goto :goto_3

    .line 69
    :cond_4
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/user/0/com.winlator.cmod/files/imagefs/home/xuser/.cache/wallpaper.bmp"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "iconIfNotFound":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "icon":Landroid/graphics/Bitmap;
    .local v3, "icon":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 73
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .restart local v5    # "icon":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v3, 0x0

    move-object v5, v3

    .line 63
    .end local v0    # "iconDir":Ljava/io/File;
    .end local v2    # "iconIfNotFound":Ljava/io/File;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, v16

    move-object/from16 v4, v17

    goto :goto_1

    .end local v17    # "execArgs":Ljava/lang/String;
    .restart local v4    # "execArgs":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v4

    .end local v4    # "execArgs":Ljava/lang/String;
    .restart local v17    # "execArgs":Ljava/lang/String;
    goto :goto_3

    .line 62
    .end local v17    # "execArgs":Ljava/lang/String;
    .restart local v4    # "execArgs":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v4

    .line 78
    .end local v4    # "execArgs":Ljava/lang/String;
    .restart local v17    # "execArgs":Ljava/lang/String;
    :goto_3
    const-string v0, "StartupWMClass"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v10

    move-object v9, v0

    move-object/from16 v4, v17

    .end local v9    # "wmClass":Ljava/lang/String;
    .local v0, "wmClass":Ljava/lang/String;
    goto :goto_5

    .end local v0    # "wmClass":Ljava/lang/String;
    .restart local v9    # "wmClass":Ljava/lang/String;
    :cond_8
    move-object/from16 v4, v17

    goto :goto_5

    .line 80
    .end local v17    # "execArgs":Ljava/lang/String;
    .restart local v4    # "execArgs":Ljava/lang/String;
    :cond_9
    const-string v0, "Extra Data"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    :try_start_0
    iget-object v0, v1, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 84
    :catch_0
    move-exception v0

    :goto_4
    nop

    .line 87
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "index":I
    :cond_a
    :goto_5
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v7, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    .line 48
    :cond_b
    :goto_6
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v7, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    .line 89
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    .line 90
    iput-object v5, v1, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    .line 91
    iput-object v6, v1, Lcom/winlator/cmod/container/Shortcut;->iconFile:Ljava/io/File;

    .line 92
    const-string v0, "wine "

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    add-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    .line 93
    iput-object v9, v1, Lcom/winlator/cmod/container/Shortcut;->wmClass:Ljava/lang/String;

    .line 95
    const-string v0, "customCoverArtPath"

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    .line 98
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/container/Shortcut;->loadCoverArt()V

    .line 100
    iget-object v0, v1, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/winlator/cmod/container/Container;->checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V

    .line 101
    return-void
.end method

.method private loadCoverArt()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "customCoverArtFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->coverArt:Landroid/graphics/Bitmap;

    .line 109
    return-void

    .line 114
    .end local v0    # "customCoverArtFile":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_data/cover_arts/"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v0, "defaultCoverArtFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->coverArt:Landroid/graphics/Bitmap;

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public cloneToContainer(Lcom/winlator/cmod/container/Container;)Z
    .locals 9
    .param p1, "newContainer"    # Lcom/winlator/cmod/container/Container;

    .line 255
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getDesktopDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .local v0, "newShortcutFile":Ljava/io/File;
    iget-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/winlator/cmod/core/FileUtils;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    .line 261
    .local v1, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v2, "updatedContent":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 264
    .local v3, "containerIdFound":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "\n"

    const-string v7, "container_id:"

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 265
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 267
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const/4 v3, 0x1

    goto :goto_1

    .line 270
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .end local v5    # "line":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 275
    :cond_1
    if-nez v3, :cond_2

    .line 276
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 283
    iget-object v4, p0, Lcom/winlator/cmod/container/Shortcut;->iconFile:Ljava/io/File;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/winlator/cmod/container/Shortcut;->iconFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    new-instance v4, Ljava/io/File;

    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Lcom/winlator/cmod/container/Container;->getIconsDir(I)Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/winlator/cmod/container/Shortcut;->iconFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    .local v4, "newIconFile":Ljava/io/File;
    iget-object v5, p0, Lcom/winlator/cmod/container/Shortcut;->iconFile:Ljava/io/File;

    invoke-static {v5, v4}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    .end local v4    # "newIconFile":Ljava/io/File;
    :cond_3
    const/4 v4, 0x1

    return v4

    .line 289
    .end local v0    # "newShortcutFile":Ljava/io/File;
    .end local v1    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "updatedContent":Ljava/lang/StringBuilder;
    .end local v3    # "containerIdFound":Z
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Shortcut"

    const-string v2, "Failed to clone shortcut to new container"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    const/4 v1, 0x0

    return v1
.end method

.method public genUUID()V
    .locals 3

    .line 192
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/winlator/cmod/container/Shortcut;->saveData()V

    .line 196
    :cond_0
    return-void
.end method

.method public getContainerId()I
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v0, v0, Lcom/winlator/cmod/container/Container;->id:I

    return v0
.end method

.method public getCoverArt()Landroid/graphics/Bitmap;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->coverArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCustomCoverArtPath()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutable()Ljava/lang/String;
    .locals 6

    .line 301
    const-string v0, ""

    .line 303
    .local v0, "exe":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v1

    .line 304
    .local v1, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 305
    .local v3, "line":Ljava/lang/String;
    const-string v4, "Exec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    const-string v2, "\\"

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\s+$"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 307
    goto :goto_1

    .line 309
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 313
    .end local v1    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    nop

    .line 315
    return-object v0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 141
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/json/JSONException;
    return-object p2
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 155
    if-eqz p2, :cond_0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 161
    return-void
.end method

.method public removeCustomCoverArt()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    const-string v1, "Shortcut"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "customCoverArtFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing custom cover art file at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const-string v2, "Custom cover art file deleted successfully."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_0
    const-string v2, "Failed to delete custom cover art file or it doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "customCoverArtFile":Ljava/io/File;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    .line 242
    iput-object v0, p0, Lcom/winlator/cmod/container/Shortcut;->coverArt:Landroid/graphics/Bitmap;

    .line 245
    const-string v2, "customCoverArtPath"

    invoke-virtual {p0, v2, v0}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/winlator/cmod/container/Shortcut;->saveData()V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut state saved after removing custom cover art. Current path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method public saveCustomCoverArt(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "coverArt"    # Landroid/graphics/Bitmap;

    .line 201
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "app_data/cover_arts/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .local v0, "coverArtDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Shortcut"

    if-nez v1, :cond_0

    .line 203
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 204
    .local v1, "created":Z
    if-nez v1, :cond_0

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create cover art directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v1    # "created":Z
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v1, "coverFile":Ljava/io/File;
    invoke-static {p1, v1}, Lcom/winlator/cmod/core/FileUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    iput-object p1, p0, Lcom/winlator/cmod/container/Shortcut;->coverArt:Landroid/graphics/Bitmap;

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/container/Shortcut;->setCustomCoverArtPath(Ljava/lang/String;)V

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Custom cover art saved at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_1
    const-string v3, "Failed to save custom cover art."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    .end local v0    # "coverArtDir":Ljava/io/File;
    .end local v1    # "coverFile":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public saveData()V
    .locals 6

    .line 164
    const-string v0, "[Desktop Entry]\n"

    .line 165
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/winlator/cmod/core/FileUtils;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .local v2, "line":Ljava/lang/String;
    const-string v4, "[Extra Data]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    const-string v4, "[Desktop Entry]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 170
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n[Extra Data]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 173
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/winlator/cmod/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_3

    .line 177
    :catch_0
    move-exception v4

    :goto_3
    nop

    .line 178
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_2

    .line 182
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".desktop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect file reference before saving: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Shortcut"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 187
    :cond_4
    iget-object v1, p0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 188
    return-void
.end method

.method public setCoverArt(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "coverArt"    # Landroid/graphics/Bitmap;

    .line 126
    iput-object p1, p0, Lcom/winlator/cmod/container/Shortcut;->coverArt:Landroid/graphics/Bitmap;

    .line 127
    return-void
.end method

.method public setCustomCoverArtPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "customCoverArtPath"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/winlator/cmod/container/Shortcut;->customCoverArtPath:Ljava/lang/String;

    .line 135
    const-string v0, "customCoverArtPath"

    invoke-virtual {p0, v0, p1}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/winlator/cmod/container/Shortcut;->saveData()V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set and saved custom cover art path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shortcut"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method
