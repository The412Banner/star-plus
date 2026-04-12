.class Lcom/winlator/cmod/BigPictureActivity$9;
.super Ljava/lang/Object;
.source "BigPictureActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/BigPictureActivity;->fetchGridsForGame(ILcom/winlator/cmod/container/Shortcut;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;",
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

    .line 1131
    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$9;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iput-object p2, p0, Lcom/winlator/cmod/BigPictureActivity$9;->val$shortcut:Lcom/winlator/cmod/container/Shortcut;

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
            "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1141
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;>;"
    const-string v0, "SteamGridDB"

    const-string v1, "Failed to fetch cover art"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1142
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;",
            ">;)V"
        }
    .end annotation

    .line 1134
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

    iget-object v0, v0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$9;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

    iget-object v1, v1, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;->data:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;

    iget-object v1, v1, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity$9;->val$shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$mdownloadCoverArt(Lcom/winlator/cmod/BigPictureActivity;Ljava/lang/String;Lcom/winlator/cmod/container/Shortcut;)V

    .line 1137
    :cond_0
    return-void
.end method
