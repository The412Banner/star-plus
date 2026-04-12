.class public Lcom/winlator/cmod/math/XForm;
.super Ljava/lang/Object;
.source "XForm.java"


# static fields
.field private static final tmpXForm:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    invoke-static {}, Lcom/winlator/cmod/math/XForm;->getInstance()[F

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/math/XForm;->tmpXForm:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()[F
    .locals 1

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [F

    invoke-static {v0}, Lcom/winlator/cmod/math/XForm;->identity([F)[F

    move-result-object v0

    return-object v0
.end method

.method public static identity([F)[F
    .locals 7
    .param p0, "xform"    # [F

    .line 11
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/winlator/cmod/math/XForm;->set([FFFFFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static makeRotation([FF)[F
    .locals 9
    .param p0, "xform"    # [F
    .param p1, "angle"    # F

    .line 59
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 60
    .local v0, "c":F
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 62
    .local v1, "s":F
    neg-float v5, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, v0

    move v4, v1

    move v6, v0

    invoke-static/range {v2 .. v8}, Lcom/winlator/cmod/math/XForm;->set([FFFFFFF)[F

    move-result-object v2

    return-object v2
.end method

.method public static makeScale([FFF)[F
    .locals 7
    .param p0, "xform"    # [F
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 51
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/winlator/cmod/math/XForm;->set([FFFFFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static makeTransform([FFFFFF)[F
    .locals 9
    .param p0, "xform"    # [F
    .param p1, "tx"    # F
    .param p2, "ty"    # F
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "angle"    # F

    .line 33
    float-to-double v0, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 34
    .local v0, "c":F
    float-to-double v1, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 35
    .local v1, "s":F
    mul-float v3, p3, v0

    mul-float v4, p4, v1

    neg-float v2, v1

    mul-float v5, p3, v2

    mul-float v6, p4, v0

    move-object v2, p0

    move v7, p1

    move v8, p2

    invoke-static/range {v2 .. v8}, Lcom/winlator/cmod/math/XForm;->set([FFFFFFF)[F

    move-result-object v2

    return-object v2
.end method

.method public static makeTranslation([FFF)[F
    .locals 7
    .param p0, "xform"    # [F
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 43
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/winlator/cmod/math/XForm;->set([FFFFFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static multiply([F[F[F)[F
    .locals 20
    .param p0, "result"    # [F
    .param p1, "ta"    # [F
    .param p2, "tb"    # [F

    .line 82
    const/4 v0, 0x0

    aget v1, p1, v0

    .local v1, "a0":F
    const/4 v2, 0x3

    aget v3, p1, v2

    .line 83
    .local v3, "a3":F
    const/4 v4, 0x1

    aget v5, p1, v4

    .local v5, "a1":F
    const/4 v6, 0x4

    aget v7, p1, v6

    .line 84
    .local v7, "a4":F
    const/4 v8, 0x2

    aget v9, p1, v8

    .local v9, "a2":F
    const/4 v10, 0x5

    aget v11, p1, v10

    .line 85
    .local v11, "a5":F
    aget v12, p2, v0

    .local v12, "b0":F
    aget v13, p2, v2

    .line 86
    .local v13, "b3":F
    aget v14, p2, v4

    .local v14, "b1":F
    aget v15, p2, v6

    .line 87
    .local v15, "b4":F
    aget v16, p2, v8

    .local v16, "b2":F
    aget v17, p2, v10

    .line 88
    .local v17, "b5":F
    mul-float v18, v1, v12

    mul-float v19, v5, v16

    add-float v18, v18, v19

    aput v18, p0, v0

    .line 89
    mul-float v0, v1, v14

    mul-float v18, v5, v13

    add-float v0, v0, v18

    aput v0, p0, v4

    .line 90
    mul-float v0, v9, v12

    mul-float v4, v3, v16

    add-float/2addr v0, v4

    aput v0, p0, v8

    .line 91
    mul-float v0, v9, v14

    mul-float v4, v3, v13

    add-float/2addr v0, v4

    aput v0, p0, v2

    .line 92
    mul-float v0, v7, v12

    mul-float v2, v11, v16

    add-float/2addr v0, v2

    add-float/2addr v0, v15

    aput v0, p0, v6

    .line 93
    mul-float v0, v7, v14

    mul-float v2, v11, v13

    add-float/2addr v0, v2

    add-float v0, v0, v17

    aput v0, p0, v10

    .line 94
    return-object p0
.end method

.method public static declared-synchronized rotate([FF)[F
    .locals 2
    .param p0, "xform"    # [F
    .param p1, "angle"    # F

    const-class v0, Lcom/winlator/cmod/math/XForm;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/winlator/cmod/math/XForm;->tmpXForm:[F

    invoke-static {v1, p1}, Lcom/winlator/cmod/math/XForm;->makeRotation([FF)[F

    move-result-object v1

    invoke-static {p0, p0, v1}, Lcom/winlator/cmod/math/XForm;->multiply([F[F[F)[F

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 78
    .end local p0    # "xform":[F
    .end local p1    # "angle":F
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized scale([FFF)[F
    .locals 2
    .param p0, "xform"    # [F
    .param p1, "x"    # F
    .param p2, "y"    # F

    const-class v0, Lcom/winlator/cmod/math/XForm;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/winlator/cmod/math/XForm;->tmpXForm:[F

    invoke-static {v1, p1, p2}, Lcom/winlator/cmod/math/XForm;->makeScale([FFF)[F

    move-result-object v1

    invoke-static {p0, p0, v1}, Lcom/winlator/cmod/math/XForm;->multiply([F[F[F)[F

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 74
    .end local p0    # "xform":[F
    .end local p1    # "x":F
    .end local p2    # "y":F
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static set([FFFFF)[F
    .locals 2
    .param p0, "xform"    # [F
    .param p1, "tx"    # F
    .param p2, "ty"    # F
    .param p3, "sx"    # F
    .param p4, "sy"    # F

    .line 26
    const/4 v0, 0x0

    aput p3, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 27
    const/4 v0, 0x2

    aput v1, p0, v0

    const/4 v0, 0x3

    aput p4, p0, v0

    .line 28
    const/4 v0, 0x4

    aput p1, p0, v0

    const/4 v0, 0x5

    aput p2, p0, v0

    .line 29
    return-object p0
.end method

.method public static set([FFFFFFF)[F
    .locals 1
    .param p0, "xform"    # [F
    .param p1, "n11"    # F
    .param p2, "n12"    # F
    .param p3, "n21"    # F
    .param p4, "n22"    # F
    .param p5, "dx"    # F
    .param p6, "dy"    # F

    .line 19
    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 v0, 0x1

    aput p2, p0, v0

    .line 20
    const/4 v0, 0x2

    aput p3, p0, v0

    const/4 v0, 0x3

    aput p4, p0, v0

    .line 21
    const/4 v0, 0x4

    aput p5, p0, v0

    const/4 v0, 0x5

    aput p6, p0, v0

    .line 22
    return-object p0
.end method

.method public static transformPoint([FFF)[F
    .locals 1
    .param p0, "xform"    # [F
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-static {p0, p1, p2, v0}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public static transformPoint([FFF[F)[F
    .locals 3
    .param p0, "xform"    # [F
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "result"    # [F

    .line 102
    const/4 v0, 0x0

    aget v1, p0, v0

    mul-float/2addr v1, p1

    const/4 v2, 0x2

    aget v2, p0, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    const/4 v2, 0x4

    aget v2, p0, v2

    add-float/2addr v1, v2

    aput v1, p3, v0

    .line 103
    const/4 v0, 0x1

    aget v1, p0, v0

    mul-float/2addr v1, p1

    const/4 v2, 0x3

    aget v2, p0, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    add-float/2addr v1, v2

    aput v1, p3, v0

    .line 104
    return-object p3
.end method

.method public static declared-synchronized translate([FFF)[F
    .locals 2
    .param p0, "xform"    # [F
    .param p1, "x"    # F
    .param p2, "y"    # F

    const-class v0, Lcom/winlator/cmod/math/XForm;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/winlator/cmod/math/XForm;->tmpXForm:[F

    invoke-static {v1, p1, p2}, Lcom/winlator/cmod/math/XForm;->makeTranslation([FFF)[F

    move-result-object v1

    invoke-static {p0, p0, v1}, Lcom/winlator/cmod/math/XForm;->multiply([F[F[F)[F

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 70
    .end local p0    # "xform":[F
    .end local p1    # "x":F
    .end local p2    # "y":F
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
