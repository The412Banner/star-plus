.class public Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse$GameData;
.super Ljava/lang/Object;
.source "SteamGridSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameData"
.end annotation


# instance fields
.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field final synthetic this$0:Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;

    .line 14
    iput-object p1, p0, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse$GameData;->this$0:Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
