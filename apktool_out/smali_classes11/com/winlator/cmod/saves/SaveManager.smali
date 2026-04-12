.class public Lcom/winlator/cmod/saves/SaveManager;
.super Ljava/lang/Object;
.source "SaveManager.java"


# instance fields
.field private final containerManager:Lcom/winlator/cmod/container/ContainerManager;

.field private final savesDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "saves"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/winlator/cmod/saves/SaveManager;->savesDir:Ljava/io/File;

    .line 22
    new-instance v0, Lcom/winlator/cmod/container/ContainerManager;

    invoke-direct {v0, p1}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/saves/SaveManager;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    .line 23
    iget-object v0, p0, Lcom/winlator/cmod/saves/SaveManager;->savesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/saves/SaveManager;->savesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create saves directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/saves/SaveManager;->savesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private generateNewSaveId()I
    .locals 5

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "maxId":I
    invoke-virtual {p0}, Lcom/winlator/cmod/saves/SaveManager;->getSaves()Ljava/util/ArrayList;

    move-result-object v1

    .line 191
    .local v1, "saves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/saves/Save;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/saves/Save;

    .line 192
    .local v3, "save":Lcom/winlator/cmod/saves/Save;
    iget v4, v3, Lcom/winlator/cmod/saves/Save;->id:I

    if-le v4, v0, :cond_0

    .line 193
    iget v0, v3, Lcom/winlator/cmod/saves/Save;->id:I

    .line 195
    .end local v3    # "save":Lcom/winlator/cmod/saves/Save;
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method private generateUniqueTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "baseTitle"    # Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/winlator/cmod/saves/SaveManager;->getSaves()Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    .local v0, "saves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/saves/Save;>;"
    const/4 v1, 0x1

    .line 158
    .local v1, "count":I
    move-object v2, p1

    .line 161
    .local v2, "newTitle":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/winlator/cmod/saves/SaveManager;->saveExists(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-object v2
.end method

.method static synthetic lambda$getSaves$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 34
    const-string v0, ".json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadSave(Ljava/io/File;)Lcom/winlator/cmod/saves/Save;
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .line 49
    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "saveData":Lorg/json/JSONObject;
    const-string v2, "ContainerID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 53
    .local v2, "containerId":I
    const/4 v4, 0x0

    .line 54
    .local v4, "container":Lcom/winlator/cmod/container/Container;
    if-eq v2, v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/winlator/cmod/saves/SaveManager;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v3, v2}, Lcom/winlator/cmod/container/ContainerManager;->getContainerById(I)Lcom/winlator/cmod/container/Container;

    move-result-object v3

    move-object v4, v3

    .line 57
    :cond_0
    new-instance v3, Lcom/winlator/cmod/saves/Save;

    iget-object v5, p0, Lcom/winlator/cmod/saves/SaveManager;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-direct {v3, v5, v4, p1}, Lcom/winlator/cmod/saves/Save;-><init>(Lcom/winlator/cmod/container/ContainerManager;Lcom/winlator/cmod/container/Container;Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 58
    .end local v1    # "saveData":Lorg/json/JSONObject;
    .end local v2    # "containerId":I
    .end local v4    # "container":Lcom/winlator/cmod/container/Container;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    const/4 v2, 0x0

    return-object v2
.end method

.method private saveExists(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/saves/Save;",
            ">;)Z"
        }
    .end annotation

    .line 170
    .local p2, "saves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/saves/Save;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/saves/Save;

    .line 171
    .local v1, "save":Lcom/winlator/cmod/saves/Save;
    invoke-virtual {v1}, Lcom/winlator/cmod/saves/Save;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 174
    .end local v1    # "save":Lcom/winlator/cmod/saves/Save;
    :cond_0
    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addSave(Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/container/Container;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "container"    # Lcom/winlator/cmod/container/Container;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/winlator/cmod/saves/SaveManager;->generateNewSaveId()I

    move-result v0

    .line 77
    .local v0, "id":I
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/cmod/saves/SaveManager;->savesDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v1, "saveFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v2, "saveData":Lorg/json/JSONObject;
    const-string v3, "ID"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string v3, "Title"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v3, "Path"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    if-eqz p3, :cond_0

    .line 89
    const-string v3, "ContainerID"

    iget v4, p3, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    nop

    .line 96
    .end local v2    # "saveData":Lorg/json/JSONObject;
    return-void

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to create save JSON"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 79
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Save with this name already exists"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSaveById(I)Lcom/winlator/cmod/saves/Save;
    .locals 4
    .param p1, "id"    # I

    .line 65
    invoke-virtual {p0}, Lcom/winlator/cmod/saves/SaveManager;->getSaves()Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    .local v0, "saves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/saves/Save;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/saves/Save;

    .line 67
    .local v2, "save":Lcom/winlator/cmod/saves/Save;
    iget v3, v2, Lcom/winlator/cmod/saves/Save;->id:I

    if-ne v3, p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SaveManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v2

    .line 71
    .end local v2    # "save":Lcom/winlator/cmod/saves/Save;
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSaveJsonFile(Lcom/winlator/cmod/saves/Save;)Ljava/io/File;
    .locals 4
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/saves/SaveManager;->savesDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/winlator/cmod/saves/Save;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSaves()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/saves/Save;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "saves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/saves/Save;>;"
    iget-object v1, p0, Lcom/winlator/cmod/saves/SaveManager;->savesDir:Ljava/io/File;

    new-instance v2, Lcom/winlator/cmod/saves/SaveManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/winlator/cmod/saves/SaveManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 35
    .local v1, "saveFiles":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 36
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 37
    .local v4, "file":Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/winlator/cmod/saves/SaveManager;->loadSave(Ljava/io/File;)Lcom/winlator/cmod/saves/Save;

    move-result-object v5

    .line 38
    .local v5, "save":Lcom/winlator/cmod/saves/Save;
    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded Save: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SaveManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "save":Lcom/winlator/cmod/saves/Save;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_1
    return-object v0
.end method

.method public removeSave(Lcom/winlator/cmod/saves/Save;)V
    .locals 3
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;

    .line 182
    iget-object v0, p1, Lcom/winlator/cmod/saves/Save;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/winlator/cmod/saves/Save;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete save file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/winlator/cmod/saves/Save;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    :goto_0
    return-void
.end method

.method public transferSave(Lcom/winlator/cmod/saves/Save;Lcom/winlator/cmod/container/Container;)V
    .locals 9
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;
    .param p2, "newContainer"    # Lcom/winlator/cmod/container/Container;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p1, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "srcPath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".wine/drive_c"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v1, "destRootDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p1, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "driveCRoot":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "relativePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v4, "destPath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create directories for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cloning files from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SaveManager"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {v0, v4}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    const-string v5, "Files successfully cloned."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p1}, Lcom/winlator/cmod/saves/Save;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/winlator/cmod/saves/SaveManager;->generateUniqueTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "newTitle":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p2}, Lcom/winlator/cmod/saves/SaveManager;->addSave(Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/container/Container;)V

    .end local v0    # "srcPath":Ljava/io/File;
    .end local v1    # "destRootDir":Ljava/io/File;
    .end local v2    # "driveCRoot":Ljava/lang/String;
    .end local v3    # "relativePath":Ljava/lang/String;
    .end local v4    # "destPath":Ljava/io/File;
    .end local v5    # "newTitle":Ljava/lang/String;
    goto :goto_1

    .line 142
    .restart local v0    # "srcPath":Ljava/io/File;
    .restart local v1    # "destRootDir":Ljava/io/File;
    .restart local v2    # "driveCRoot":Ljava/lang/String;
    .restart local v3    # "relativePath":Ljava/lang/String;
    .restart local v4    # "destPath":Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clone files from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    .end local v0    # "srcPath":Ljava/io/File;
    .end local v1    # "destRootDir":Ljava/io/File;
    .end local v2    # "driveCRoot":Ljava/lang/String;
    .end local v3    # "relativePath":Ljava/lang/String;
    .end local v4    # "destPath":Ljava/io/File;
    :cond_3
    iget-object v0, p1, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    if-eqz v0, :cond_4

    :goto_1
    nop

    .line 153
    return-void

    .line 151
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Current container is null."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSave(Lcom/winlator/cmod/saves/Save;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/container/Container;)V
    .locals 4
    .param p1, "save"    # Lcom/winlator/cmod/saves/Save;
    .param p2, "newTitle"    # Ljava/lang/String;
    .param p3, "newPath"    # Ljava/lang/String;
    .param p4, "newContainer"    # Lcom/winlator/cmod/container/Container;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating Save: Title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p1, p2, p3, p4}, Lcom/winlator/cmod/saves/Save;->update(Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/container/Container;)V

    .line 101
    invoke-virtual {p1}, Lcom/winlator/cmod/saves/Save;->saveData()V

    .line 104
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/saves/SaveManager;->savesDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v0, "newSaveFile":Ljava/io/File;
    iget-object v1, p1, Lcom/winlator/cmod/saves/Save;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p1, Lcom/winlator/cmod/saves/Save;->file:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename save file to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Save with this name already exists"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_2
    :goto_0
    return-void
.end method
