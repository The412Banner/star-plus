.class public Lcom/winlator/cmod/core/CubicBezierInterpolator;
.super Ljava/lang/Object;
.source "CubicBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private ax:F

.field private bx:F

.field private cx:F

.field public final end:Landroid/graphics/PointF;

.field public final start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v2}, Lcom/winlator/cmod/core/CubicBezierInterpolator;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 13
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 21
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/core/CubicBezierInterpolator;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "start"    # Landroid/graphics/PointF;
    .param p2, "end"    # Landroid/graphics/PointF;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    .line 17
    iput-object p2, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    .line 18
    return-void
.end method

.method private getBezierCoordinateX(F)F
    .locals 3
    .param p1, "time"    # F

    .line 57
    iget-object v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->cx:F

    .line 58
    iget-object v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->cx:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->bx:F

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->cx:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->bx:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->ax:F

    .line 60
    iget v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->cx:F

    iget v1, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->bx:F

    iget v2, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->ax:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getBezierCoordinateY(F)F
    .locals 4
    .param p1, "time"    # F

    .line 35
    iget-object v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    .line 36
    .local v0, "cy":F
    iget-object v2, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    sub-float/2addr v2, v0

    .line 37
    .local v2, "by":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    sub-float/2addr v1, v2

    .line 38
    .local v1, "ay":F
    mul-float v3, p1, v1

    add-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    mul-float/2addr v3, p1

    return v3
.end method

.method private getXDerivate(F)F
    .locals 4
    .param p1, "t"    # F

    .line 53
    iget v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->cx:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->bx:F

    mul-float/2addr v2, v1

    const/high16 v1, 0x40400000    # 3.0f

    iget v3, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->ax:F

    mul-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    return v0
.end method

.method private getXForTime(F)F
    .locals 7
    .param p1, "time"    # F

    .line 42
    move v0, p1

    .line 44
    .local v0, "x":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 45
    invoke-direct {p0, v0}, Lcom/winlator/cmod/core/CubicBezierInterpolator;->getBezierCoordinateX(F)F

    move-result v2

    sub-float/2addr v2, p1

    .line 46
    .local v2, "z":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    invoke-direct {p0, v0}, Lcom/winlator/cmod/core/CubicBezierInterpolator;->getXDerivate(F)F

    move-result v3

    div-float v3, v2, v3

    sub-float/2addr v0, v3

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    .end local v2    # "z":F
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "time"    # F

    .line 31
    invoke-direct {p0, p1}, Lcom/winlator/cmod/core/CubicBezierInterpolator;->getXForTime(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/core/CubicBezierInterpolator;->getBezierCoordinateY(F)F

    move-result v0

    return v0
.end method

.method public set(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 25
    iget-object v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 26
    iget-object v0, p0, Lcom/winlator/cmod/core/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 27
    return-void
.end method
