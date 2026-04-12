.class final Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;
.super Ljava/lang/Object;
.source "SoftReverb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Delay"
.end annotation


# instance fields
.field private delaybuffer:[F

.field private rovepos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->rovepos:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->delaybuffer:[F

    .line 45
    return-void
.end method


# virtual methods
.method public processReplace([F)V
    .locals 6
    .param p1, "inout"    # [F

    .line 56
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->delaybuffer:[F

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 58
    :cond_0
    array-length v0, p1

    .line 59
    .local v0, "len":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->delaybuffer:[F

    array-length v1, v1

    .line 60
    .local v1, "rnlen":I
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->rovepos:I

    .line 62
    .local v2, "rovepos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 63
    aget v4, p1, v3

    .line 64
    .local v4, "x":F
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->delaybuffer:[F

    aget v5, v5, v2

    aput v5, p1, v3

    .line 65
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->delaybuffer:[F

    aput v4, v5, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    .line 67
    const/4 v2, 0x0

    .line 62
    .end local v4    # "x":F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    :cond_2
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->rovepos:I

    .line 70
    return-void
.end method

.method public setDelay(I)V
    .locals 1
    .param p1, "delay"    # I

    .line 48
    if-nez p1, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->delaybuffer:[F

    goto :goto_0

    .line 51
    :cond_0
    new-array v0, p1, [F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->delaybuffer:[F

    .line 52
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->rovepos:I

    .line 53
    return-void
.end method
