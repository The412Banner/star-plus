.class Lcom/winlator/cmod/BigPictureActivity$8;
.super Ljava/lang/Object;
.source "BigPictureActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/BigPictureActivity;->fetchCoverArt(Lcom/winlator/cmod/container/Shortcut;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/BigPictureActivity;

.field final synthetic val$shortcut:Lcom/winlator/cmod/container/Shortcut;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/BigPictureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1057
    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$8;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iput-object p2, p0, Lcom/winlator/cmod/BigPictureActivity$8;->val$shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1074
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;>;"
    const-string v0, "SteamGridDB"

    const-string v1, "Failed to fetch game ID"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1075
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$8;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$8;->val$shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-static {v0, v1}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$mshowCustomCoverArtUploadOption(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/container/Shortcut;)V

    .line 1076
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;",
            ">;)V"
        }
    .end annotation

    .line 1060
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1061
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;

    iget-object v0, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;->data:Ljava/util/List;

    .line 1062
    .local v0, "gameData":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse$GameData;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$8;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse$GameData;

    iget v2, v2, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse$GameData;->id:I

    iget-object v3, p0, Lcom/winlator/cmod/BigPictureActivity$8;->val$shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-static {v1, v2, v3}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$mfetchGridsForGame(Lcom/winlator/cmod/BigPictureActivity;ILcom/winlator/cmod/container/Shortcut;)V

    goto :goto_0

    .line 1065
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$8;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity$8;->val$shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-static {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$mshowCustomCoverArtUploadOption(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/container/Shortcut;)V

    .line 1067
    .end local v0    # "gameData":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse$GameData;>;"
    :goto_0
    goto :goto_1

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$8;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$8;->val$shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-static {v0, v1}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$mshowCustomCoverArtUploadOption(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/container/Shortcut;)V

    .line 1070
    :goto_1
    return-void
.end method
