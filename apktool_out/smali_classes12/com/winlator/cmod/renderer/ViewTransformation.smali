.class public Lcom/winlator/cmod/renderer/ViewTransformation;
.super Ljava/lang/Object;
.source "ViewTransformation.java"


# instance fields
.field public aspect:F

.field public sceneOffsetX:F

.field public sceneOffsetY:F

.field public sceneScaleX:F

.field public sceneScaleY:F

.field public viewHeight:I

.field public viewOffsetX:I

.field public viewOffsetY:I

.field public viewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(IIII)V
    .locals 4
    .param p1, "outerWidth"    # I
    .param p2, "outerHeight"    # I
    .param p3, "innerWidth"    # I
    .param p4, "innerHeight"    # I

    .line 15
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, p4

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->aspect:F

    .line 16
    int-to-float v0, p3

    iget v1, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->aspect:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->viewWidth:I

    .line 17
    int-to-float v0, p4

    iget v1, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->aspect:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->viewHeight:I

    .line 18
    int-to-float v0, p1

    int-to-float v1, p3

    iget v2, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->aspect:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->viewOffsetX:I

    .line 19
    int-to-float v0, p2

    int-to-float v2, p4

    iget v3, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->aspect:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->viewOffsetY:I

    .line 21
    int-to-float v0, p3

    iget v2, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->aspect:F

    mul-float/2addr v0, v2

    int-to-float v2, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneScaleX:F

    .line 22
    int-to-float v0, p4

    iget v2, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->aspect:F

    mul-float/2addr v0, v2

    int-to-float v2, p2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneScaleY:F

    .line 23
    int-to-float v0, p3

    int-to-float v2, p3

    iget v3, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneScaleX:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneOffsetX:F

    .line 24
    int-to-float v0, p4

    int-to-float v2, p4

    iget v3, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneScaleY:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneOffsetY:F

    .line 25
    return-void
.end method
