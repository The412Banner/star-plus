.class final Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;
.super Ljava/lang/Object;
.source "SoftReverb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllPass"
.end annotation


# instance fields
.field private final delaybuffer:[F

.field private final delaybuffersize:I

.field private feedback:F

.field private rovepos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->rovepos:I

    .line 81
    new-array v0, p1, [F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->delaybuffer:[F

    .line 82
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->delaybuffersize:I

    .line 83
    return-void
.end method


# virtual methods
.method public processReplace([F)V
    .locals 8
    .param p1, "inout"    # [F

    .line 90
    array-length v0, p1

    .line 91
    .local v0, "len":I
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->delaybuffersize:I

    .line 92
    .local v1, "delaybuffersize":I
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->rovepos:I

    .line 93
    .local v2, "rovepos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 94
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->delaybuffer:[F

    aget v4, v4, v2

    .line 95
    .local v4, "delayout":F
    aget v5, p1, v3

    .line 96
    .local v5, "input":F
    sub-float v6, v4, v5

    aput v6, p1, v3

    .line 97
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->delaybuffer:[F

    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->feedback:F

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    aput v7, v6, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 93
    .end local v4    # "delayout":F
    .end local v5    # "input":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "i":I
    :cond_1
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->rovepos:I

    .line 102
    return-void
.end method

.method public processReplace([F[F)V
    .locals 8
    .param p1, "in"    # [F
    .param p2, "out"    # [F

    .line 105
    array-length v0, p1

    .line 106
    .local v0, "len":I
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->delaybuffersize:I

    .line 107
    .local v1, "delaybuffersize":I
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->rovepos:I

    .line 108
    .local v2, "rovepos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 109
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->delaybuffer:[F

    aget v4, v4, v2

    .line 110
    .local v4, "delayout":F
    aget v5, p1, v3

    .line 111
    .local v5, "input":F
    sub-float v6, v4, v5

    aput v6, p2, v3

    .line 112
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->delaybuffer:[F

    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->feedback:F

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    aput v7, v6, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    .line 114
    const/4 v2, 0x0

    .line 108
    .end local v4    # "delayout":F
    .end local v5    # "input":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "i":I
    :cond_1
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->rovepos:I

    .line 117
    return-void
.end method

.method public setFeedBack(F)V
    .locals 0
    .param p1, "feedback"    # F

    .line 86
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->feedback:F

    .line 87
    return-void
.end method
