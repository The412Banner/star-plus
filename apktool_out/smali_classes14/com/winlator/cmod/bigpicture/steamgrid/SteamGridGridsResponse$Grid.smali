.class public Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;
.super Ljava/lang/Object;
.source "SteamGridGridsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Grid"
.end annotation


# instance fields
.field public author:Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Author;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public score:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "score"
    .end annotation
.end field

.field public style:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style"
    .end annotation
.end field

.field public tags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

.field public thumb:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumb"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

    .line 24
    iput-object p1, p0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;->this$0:Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
