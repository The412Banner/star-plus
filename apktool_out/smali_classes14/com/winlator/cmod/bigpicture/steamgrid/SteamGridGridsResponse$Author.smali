.class public Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Author;
.super Ljava/lang/Object;
.source "SteamGridGridsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Author"
.end annotation


# instance fields
.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public steam64:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "steam64"
    .end annotation
.end field

.field final synthetic this$0:Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

    .line 47
    iput-object p1, p0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Author;->this$0:Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
