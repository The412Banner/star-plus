.class Lcom/winlator/cmod/core/WineInfo$1;
.super Ljava/lang/Object;
.source "WineInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/core/WineInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/winlator/cmod/core/WineInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/winlator/cmod/core/WineInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    new-instance v0, Lcom/winlator/cmod/core/WineInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/winlator/cmod/core/WineInfo;-><init>(Landroid/os/Parcel;Lcom/winlator/cmod/core/WineInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/core/WineInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/winlator/cmod/core/WineInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/winlator/cmod/core/WineInfo;
    .locals 1
    .param p1, "size"    # I

    .line 104
    new-array v0, p1, [Lcom/winlator/cmod/core/WineInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/core/WineInfo$1;->newArray(I)[Lcom/winlator/cmod/core/WineInfo;

    move-result-object p1

    return-object p1
.end method
