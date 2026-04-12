.class Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtMost;
.super Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtMost"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .locals 1
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I

    .line 235
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-object v0
.end method

.method public getScaleFactor(IIII)F
    .locals 5
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I

    .line 220
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v0, v1

    int-to-float v1, p1

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 223
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    .line 222
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 226
    .local v0, "maxIntegerFactor":I
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 227
    .local v1, "lesserOrEqualSampleSize":I
    nop

    .line 228
    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    shl-int v2, v1, v2

    .line 229
    .local v2, "greaterOrEqualSampleSize":I
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v2

    div-float/2addr v3, v4

    return v3
.end method
