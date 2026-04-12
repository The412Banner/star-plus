.class public Lcom/winlator/cmod/xserver/Bitmask;
.super Ljava/lang/Object;
.source "Bitmask.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private bits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bits"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    .line 13
    iput p1, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    .line 14
    return-void
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    return v0
.end method

.method public intersects(Lcom/winlator/cmod/xserver/Bitmask;)Z
    .locals 2
    .param p1, "mask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 21
    iget v0, p1, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    iget v1, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 17
    iget v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 54
    iget v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 55
    .local v0, "bits":[I
    new-instance v1, Lcom/winlator/cmod/xserver/Bitmask$1;

    invoke-direct {v1, p0, v0}, Lcom/winlator/cmod/xserver/Bitmask$1;-><init>(Lcom/winlator/cmod/xserver/Bitmask;[I)V

    return-object v1
.end method

.method public join(Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 2
    .param p1, "mask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 48
    iget v0, p1, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    iget v1, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    .line 49
    return-void
.end method

.method public set(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 25
    iget v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    .line 26
    return-void
.end method

.method public set(IZ)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 29
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/Bitmask;->set(I)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/Bitmask;->unset(I)V

    .line 33
    :goto_0
    return-void
.end method

.method public unset(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 36
    iget v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/winlator/cmod/xserver/Bitmask;->bits:I

    .line 37
    return-void
.end method
