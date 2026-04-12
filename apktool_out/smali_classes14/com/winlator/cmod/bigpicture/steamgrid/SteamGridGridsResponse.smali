.class public Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;
.super Ljava/lang/Object;
.source "SteamGridGridsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Author;,
        Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse$Grid;",
            ">;"
        }
    .end annotation
.end field

.field public limit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limit"
    .end annotation
.end field

.field public page:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field public success:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field

.field public total:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
