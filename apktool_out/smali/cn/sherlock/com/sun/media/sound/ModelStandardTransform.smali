.class public Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;
.super Ljava/lang/Object;
.source "ModelStandardTransform.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelTransform;


# static fields
.field public static final DIRECTION_MAX2MIN:Z = true

.field public static final DIRECTION_MIN2MAX:Z = false

.field public static final POLARITY_BIPOLAR:Z = true

.field public static final POLARITY_UNIPOLAR:Z = false

.field public static final TRANSFORM_ABSOLUTE:I = 0x4

.field public static final TRANSFORM_CONCAVE:I = 0x1

.field public static final TRANSFORM_CONVEX:I = 0x2

.field public static final TRANSFORM_LINEAR:I = 0x0

.field public static final TRANSFORM_SWITCH:I = 0x3


# instance fields
.field private direction:Z

.field private polarity:Z

.field private transform:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    .line 54
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    .line 55
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->transform:I

    .line 58
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "direction"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    .line 54
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    .line 55
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->transform:I

    .line 61
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    .line 62
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "direction"    # Z
    .param p2, "polarity"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    .line 54
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    .line 55
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->transform:I

    .line 65
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    .line 66
    iput-boolean p2, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    .line 67
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1
    .param p1, "direction"    # Z
    .param p2, "polarity"    # Z
    .param p3, "transform"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    .line 54
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    .line 55
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->transform:I

    .line 71
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    .line 72
    iput-boolean p2, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    .line 73
    iput p3, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->transform:I

    .line 74
    return-void
.end method


# virtual methods
.method public getDirection()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    return v0
.end method

.method public getPolarity()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    return v0
.end method

.method public getTransform()I
    .locals 1

    .line 133
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->transform:I

    return v0
.end method

.method public setDirection(Z)V
    .locals 0
    .param p1, "direction"    # Z

    .line 121
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    .line 122
    return-void
.end method

.method public setPolarity(Z)V
    .locals 0
    .param p1, "polarity"    # Z

    .line 129
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    .line 130
    return-void
.end method

.method public setTransform(I)V
    .locals 0
    .param p1, "transform"    # I

    .line 137
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->transform:I

    .line 138
    return-void
.end method

.method public transform(D)D
    .locals 17
    .param p1, "value"    # D

    .line 79
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->direction:Z

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 80
    sub-double v5, v2, p1

    .end local p1    # "value":D
    .local v5, "value":D
    goto :goto_0

    .line 79
    .end local v5    # "value":D
    .restart local p1    # "value":D
    :cond_0
    move-wide/from16 v5, p1

    .line 81
    .end local p1    # "value":D
    .restart local v5    # "value":D
    :goto_0
    iget-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    if-ne v1, v4, :cond_1

    .line 82
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v5

    sub-double v5, v7, v2

    .line 83
    :cond_1
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->transform:I

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const-wide v9, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide/16 v11, 0x0

    packed-switch v1, :pswitch_data_0

    .line 113
    return-wide v5

    .line 108
    :pswitch_0
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    return-wide v1

    .line 103
    :pswitch_1
    iget-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->polarity:Z

    if-ne v1, v4, :cond_3

    .line 104
    cmpl-double v1, v5, v11

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_1
    return-wide v2

    .line 106
    :cond_3
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v5, v7

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v2, v11

    :goto_2
    return-wide v2

    .line 94
    :pswitch_2
    invoke-static {v5, v6}, Ljava/lang/Math;->signum(D)D

    move-result-wide v13

    .line 95
    .local v13, "s":D
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    .line 96
    .local v15, "a":D
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v9, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    mul-double/2addr v9, v7

    add-double/2addr v9, v2

    .line 97
    .end local v15    # "a":D
    .local v9, "a":D
    cmpg-double v1, v9, v11

    if-gez v1, :cond_5

    .line 98
    const-wide/16 v9, 0x0

    goto :goto_3

    .line 99
    :cond_5
    cmpl-double v1, v9, v2

    if-lez v1, :cond_6

    .line 100
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 101
    :cond_6
    :goto_3
    mul-double v1, v13, v9

    return-wide v1

    .line 85
    .end local v9    # "a":D
    .end local v13    # "s":D
    :pswitch_3
    invoke-static {v5, v6}, Ljava/lang/Math;->signum(D)D

    move-result-wide v13

    .line 86
    .restart local v13    # "s":D
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    .line 87
    .restart local v15    # "a":D
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v9, v7

    neg-double v7, v9

    sub-double v9, v2, v15

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    .line 88
    .end local v15    # "a":D
    .local v7, "a":D
    cmpg-double v1, v7, v11

    if-gez v1, :cond_7

    .line 89
    const-wide/16 v7, 0x0

    goto :goto_4

    .line 90
    :cond_7
    cmpl-double v1, v7, v2

    if-lez v1, :cond_8

    .line 91
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 92
    :cond_8
    :goto_4
    mul-double v1, v13, v7

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
