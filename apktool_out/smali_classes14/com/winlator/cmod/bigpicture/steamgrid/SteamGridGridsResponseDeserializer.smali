.class public Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponseDeserializer;
.super Ljava/lang/Object;
.source "SteamGridGridsResponseDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;
    .locals 8
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

    invoke-direct {v0}, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;-><init>()V

    .line 18
    .local v0, "response":Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 21
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->success:Z

    goto :goto_0

    .line 24
    :cond_0
    iput-boolean v4, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->success:Z

    .line 28
    :goto_0
    const-string v2, "page"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_1

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->page:I

    goto :goto_1

    .line 31
    :cond_1
    iput v4, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->page:I

    .line 34
    :goto_1
    const-string v2, "total"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_2

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->total:I

    goto :goto_2

    .line 37
    :cond_2
    iput v4, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->total:I

    .line 40
    :goto_2
    const-string v2, "limit"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_3

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->limit:I

    goto :goto_3

    .line 43
    :cond_3
    iput v4, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->limit:I

    .line 47
    :goto_3
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 48
    .local v2, "dataElement":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->data:Ljava/util/List;

    .line 50
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 51
    .local v3, "gridsArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    .line 52
    .local v5, "element":Lcom/google/gson/JsonElement;
    const-class v6, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;

    invoke-interface {p3, v5, v6}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;

    .line 53
    .local v6, "grid":Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;
    iget-object v7, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->data:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v5    # "element":Lcom/google/gson/JsonElement;
    .end local v6    # "grid":Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;
    goto :goto_4

    .line 51
    .end local v3    # "gridsArray":Lcom/google/gson/JsonArray;
    :cond_4
    goto :goto_5

    .line 55
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->data:Ljava/util/List;

    .line 58
    const-class v3, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;

    invoke-interface {p3, v2, v3}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;

    .line 59
    .local v3, "grid":Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;
    iget-object v4, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->data:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 55
    .end local v3    # "grid":Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;
    :cond_6
    :goto_5
    nop

    .line 62
    :goto_6
    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponseDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

    move-result-object p1

    return-object p1
.end method
