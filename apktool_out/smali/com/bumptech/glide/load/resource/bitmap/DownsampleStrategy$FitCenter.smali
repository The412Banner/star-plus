.class Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;
.super Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FitCenter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
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

    .line 162
    sget-boolean v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;->IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-object v0

    .line 168
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-object v0
.end method

.method public getScaleFactor(IIII)F
    .locals 3
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I

    .line 145
    sget-boolean v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;->IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 146
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 147
    .local v0, "widthPercentage":F
    int-to-float v1, p4

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 149
    .local v1, "heightPercentage":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2

    .line 153
    .end local v0    # "widthPercentage":F
    .end local v1    # "heightPercentage":F
    :cond_0
    div-int v0, p2, p4

    div-int v1, p1, p3

    .line 154
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 155
    .local v0, "maxIntegerFactor":I
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_0
    return v1
.end method
