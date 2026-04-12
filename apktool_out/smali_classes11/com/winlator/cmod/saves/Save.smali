.class public Lcom/winlator/cmod/saves/Save;
.super Ljava/lang/Object;
.source "Save.java"


# instance fields
.field public container:Lcom/winlator/cmod/container/Container;

.field private final extraData:Lorg/json/JSONObject;

.field public final file:Ljava/io/File;

.field public id:I

.field public path:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/container/ContainerManager;Lcom/winlator/cmod/container/Container;Ljava/io/File;)V
    .locals 10
    .param p1, "containerManager"    # Lcom/winlator/cmod/container/ContainerManager;
    .param p2, "container"    # Lcom/winlator/cmod/container/Container;
    .param p3, "file"    # Ljava/io/File;

    .line 24
    const-string v0, "ContainerID"

    const-string v1, "Path"

    const-string v2, "Title"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/winlator/cmod/saves/Save;->extraData:Lorg/json/JSONObject;

    .line 25
    iput-object p2, p0, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    .line 26
    iput-object p3, p0, Lcom/winlator/cmod/saves/Save;->file:Ljava/io/File;

    .line 28
    const-string v3, ""

    .line 29
    .local v3, "title":Ljava/lang/String;
    const-string v4, ""

    .line 31
    .local v4, "path":Ljava/lang/String;
    invoke-static {p3}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "content":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v6, "saveData":Lorg/json/JSONObject;
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 35
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 38
    if-nez p2, :cond_0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 39
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 41
    .local v0, "containerId":I
    invoke-virtual {p1, v0}, Lcom/winlator/cmod/container/ContainerManager;->getContainerById(I)Lcom/winlator/cmod/container/Container;

    move-result-object v7

    iput-object v7, p0, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    .line 44
    .end local v0    # "containerId":I
    :cond_0
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 47
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 48
    iget-object v8, p0, Lcom/winlator/cmod/saves/Save;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v7    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 53
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "saveData":Lorg/json/JSONObject;
    :cond_2
    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    iput-object v3, p0, Lcom/winlator/cmod/saves/Save;->title:Ljava/lang/String;

    .line 56
    iput-object v4, p0, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/winlator/cmod/saves/Save;->title:Ljava/lang/String;

    return-object v0
.end method

.method public saveData()V
    .locals 5

    .line 72
    const-string v0, "Save"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v1, "saveData":Lorg/json/JSONObject;
    const-string v2, "Title"

    iget-object v3, p0, Lcom/winlator/cmod/saves/Save;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v2, "Path"

    iget-object v3, p0, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    iget-object v2, p0, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "ContainerID"

    iget-object v3, p0, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    iget v3, v3, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/winlator/cmod/saves/Save;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/winlator/cmod/saves/Save;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/winlator/cmod/saves/Save;->file:Ljava/io/File;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data written to file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/winlator/cmod/saves/Save;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    nop

    .end local v1    # "saveData":Lorg/json/JSONObject;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 93
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/container/Container;)V
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .param p3, "newContainer"    # Lcom/winlator/cmod/container/Container;

    .line 64
    iput-object p1, p0, Lcom/winlator/cmod/saves/Save;->title:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/winlator/cmod/saves/Save;->path:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/winlator/cmod/saves/Save;->container:Lcom/winlator/cmod/container/Container;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated Save: Title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Save"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
