.class public abstract Lcom/winlator/cmod/core/WineStartMenuCreator;
.super Ljava/lang/Object;
.source "WineStartMenuCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/winlator/cmod/container/Container;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getStartMenuDir()Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "startMenuDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".startmenu"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v1, "containerStartMenuFile":Ljava/io/File;
    invoke-static {v1, v0}, Lcom/winlator/cmod/core/WineStartMenuCreator;->removeOldMenu(Ljava/io/File;Ljava/io/File;)V

    .line 68
    new-instance v2, Lorg/json/JSONArray;

    const-string v3, "wine_startmenu.json"

    invoke-static {p0, v3}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "data":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 70
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/winlator/cmod/core/WineStartMenuCreator;->createMenuEntry(Lorg/json/JSONObject;Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "startMenuDir":Ljava/io/File;
    .end local v1    # "containerStartMenuFile":Ljava/io/File;
    .end local v2    # "data":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 73
    return-void
.end method

.method private static createMenuEntry(Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 4
    .param p0, "item"    # Lorg/json/JSONObject;
    .param p1, "currentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    const-string v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "name"

    if-eqz v1, :cond_1

    .line 26
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v1

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 29
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 30
    .local v0, "children":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/winlator/cmod/core/WineStartMenuCreator;->createMenuEntry(Lorg/json/JSONObject;Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "children":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 33
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".lnk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v0, "outputFile":Ljava/io/File;
    new-instance v1, Lcom/winlator/cmod/core/MSLink$Options;

    invoke-direct {v1}, Lcom/winlator/cmod/core/MSLink$Options;-><init>()V

    .line 35
    .local v1, "options":Lcom/winlator/cmod/core/MSLink$Options;
    const-string v2, "path"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    .line 36
    const-string v2, "cmdArgs"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/winlator/cmod/core/MSLink$Options;->cmdArgs:Ljava/lang/String;

    .line 37
    const-string v2, "iconLocation"

    iget-object v3, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/winlator/cmod/core/MSLink$Options;->iconLocation:Ljava/lang/String;

    .line 38
    const-string v2, "iconIndex"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/winlator/cmod/core/MSLink$Options;->iconIndex:I

    .line 39
    const-string v2, "showCommand"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/cmod/core/WineStartMenuCreator;->parseShowCommand(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/winlator/cmod/core/MSLink$Options;->showCommand:I

    .line 40
    :cond_2
    invoke-static {v1, v0}, Lcom/winlator/cmod/core/MSLink;->createFile(Lcom/winlator/cmod/core/MSLink$Options;Ljava/io/File;)V

    .line 42
    .end local v0    # "outputFile":Ljava/io/File;
    .end local v1    # "options":Lcom/winlator/cmod/core/MSLink$Options;
    :goto_1
    return-void
.end method

.method private static parseShowCommand(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 15
    const-string v0, "SW_SHOWMAXIMIZED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x3

    return v0

    .line 18
    :cond_0
    const-string v0, "SW_SHOWMINNOACTIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    const/4 v0, 0x7

    return v0

    .line 21
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static removeMenuEntry(Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 3
    .param p0, "item"    # Lorg/json/JSONObject;
    .param p1, "currentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 45
    const-string v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "name"

    if-eqz v1, :cond_2

    .line 46
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v1

    .line 48
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 49
    .local v0, "children":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/winlator/cmod/core/WineStartMenuCreator;->removeMenuEntry(Lorg/json/JSONObject;Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 52
    .end local v0    # "children":Lorg/json/JSONArray;
    :cond_1
    goto :goto_1

    .line 53
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".lnk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 54
    :goto_1
    return-void
.end method

.method private static removeOldMenu(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "containerStartMenuFile"    # Ljava/io/File;
    .param p1, "startMenuDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "data":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/winlator/cmod/core/WineStartMenuCreator;->removeMenuEntry(Lorg/json/JSONObject;Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
