.class public Lcn/sherlock/com/sun/media/sound/SoftReverb;
.super Ljava/lang/Object;
.source "SoftReverb.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;,
        Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;,
        Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;
    }
.end annotation


# instance fields
.field private allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

.field private allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

.field private combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

.field private combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

.field private damp:F

.field private delay:Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;

.field private denormal_flip:Z

.field private dirty:Z

.field private dirty_damp:F

.field private dirty_gain:F

.field private dirty_predelay:F

.field private dirty_roomsize:F

.field private gain:F

.field private input:[F

.field private inputA:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field private left:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field private light:Z

.field private mix:Z

.field private out:[F

.field private pre1:[F

.field private pre2:[F

.field private pre3:[F

.field private right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field private roomsize:F

.field private samplerate:F

.field private silent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->gain:F

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->denormal_flip:Z

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->mix:Z

    .line 205
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    .line 211
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->light:Z

    .line 279
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->silent:Z

    return-void
.end method


# virtual methods
.method public globalParameterControlChange([IJJ)V
    .locals 9
    .param p1, "slothpath"    # [I
    .param p2, "param"    # J
    .param p4, "value"    # J

    .line 401
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 402
    const/4 v0, 0x0

    aget v0, p1, v0

    const/16 v2, 0x81

    if-ne v0, v2, :cond_6

    .line 404
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    const-wide/16 v4, 0x1

    if-nez v0, :cond_5

    .line 405
    cmp-long v0, p4, v2

    const v2, 0x459c4000    # 5000.0f

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 408
    const v0, 0x3f8ccccd    # 1.1f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_roomsize:F

    .line 409
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_damp:F

    .line 410
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_predelay:F

    .line 411
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_gain:F

    .line 412
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    .line 414
    :cond_0
    cmp-long v0, p4, v4

    const v4, 0x3fa66666    # 1.3f

    if-nez v0, :cond_1

    .line 417
    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_roomsize:F

    .line 418
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_damp:F

    .line 419
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_predelay:F

    .line 420
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_gain:F

    .line 421
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    .line 423
    :cond_1
    const-wide/16 v5, 0x2

    cmp-long v0, p4, v5

    const/high16 v5, 0x3fc00000    # 1.5f

    if-nez v0, :cond_2

    .line 426
    iput v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_roomsize:F

    .line 427
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_damp:F

    .line 428
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_predelay:F

    .line 429
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_gain:F

    .line 430
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    .line 432
    :cond_2
    const-wide/16 v6, 0x3

    cmp-long v0, p4, v6

    const v2, 0x46bb8000    # 24000.0f

    const v6, 0x3fe66666    # 1.8f

    if-nez v0, :cond_3

    .line 434
    iput v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_roomsize:F

    .line 435
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_damp:F

    .line 436
    const v0, 0x3ca3d70a    # 0.02f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_predelay:F

    .line 437
    iput v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_gain:F

    .line 438
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    .line 440
    :cond_3
    const-wide/16 v7, 0x4

    cmp-long v0, p4, v7

    if-nez v0, :cond_4

    .line 443
    iput v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_roomsize:F

    .line 444
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_damp:F

    .line 445
    const v0, 0x3cf5c28f    # 0.03f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_predelay:F

    .line 446
    iput v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_gain:F

    .line 447
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    .line 449
    :cond_4
    const-wide/16 v5, 0x8

    cmp-long v0, p4, v5

    if-nez v0, :cond_6

    .line 451
    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_roomsize:F

    .line 452
    const v0, 0x451c4000    # 2500.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_damp:F

    .line 453
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_predelay:F

    .line 454
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_gain:F

    .line 455
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    goto :goto_0

    .line 457
    :cond_5
    cmp-long v0, p2, v4

    if-nez v0, :cond_6

    .line 458
    const-wide/16 v2, 0x28

    sub-long v2, p4, v2

    long-to-double v2, v2

    const-wide v4, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_roomsize:F

    .line 459
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    .line 464
    :cond_6
    :goto_0
    return-void
.end method

.method public init(FF)V
    .locals 13
    .param p1, "samplerate"    # F
    .param p2, "controlrate"    # F

    .line 214
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->samplerate:F

    .line 216
    float-to-double v0, p1

    const-wide v2, 0x40e5888000000000L    # 44100.0

    div-double/2addr v0, v2

    .line 219
    .local v0, "freqscale":D
    const/16 v2, 0x17

    .line 221
    .local v2, "stereospread":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->delay:Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;

    .line 223
    const/16 v3, 0x8

    new-array v4, v3, [Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    .line 224
    new-array v3, v3, [Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    .line 225
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const-wide v5, 0x4091700000000000L    # 1116.0

    mul-double/2addr v5, v0

    double-to-int v5, v5

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 226
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    add-int/lit16 v6, v2, 0x45c

    int-to-double v6, v6

    mul-double/2addr v6, v0

    double-to-int v6, v6

    invoke-direct {v4, v6}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    aput-object v4, v3, v5

    .line 227
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const-wide v6, 0x4092900000000000L    # 1188.0

    mul-double/2addr v6, v0

    double-to-int v6, v6

    invoke-direct {v4, v6}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 228
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    add-int/lit16 v7, v2, 0x4a4

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    invoke-direct {v4, v7}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    aput-object v4, v3, v6

    .line 229
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const-wide v7, 0x4093f40000000000L    # 1277.0

    mul-double/2addr v7, v0

    double-to-int v7, v7

    invoke-direct {v4, v7}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 230
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    add-int/lit16 v8, v2, 0x4fd

    int-to-double v8, v8

    mul-double/2addr v8, v0

    double-to-int v8, v8

    invoke-direct {v4, v8}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    aput-object v4, v3, v7

    .line 231
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const-wide v8, 0x4095300000000000L    # 1356.0

    mul-double/2addr v8, v0

    double-to-int v8, v8

    invoke-direct {v4, v8}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 232
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    add-int/lit16 v9, v2, 0x54c

    int-to-double v9, v9

    mul-double/2addr v9, v0

    double-to-int v9, v9

    invoke-direct {v4, v9}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    aput-object v4, v3, v8

    .line 233
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const-wide v9, 0x4096380000000000L    # 1422.0

    mul-double/2addr v9, v0

    double-to-int v9, v9

    invoke-direct {v4, v9}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    const/4 v9, 0x4

    aput-object v4, v3, v9

    .line 234
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    add-int/lit16 v10, v2, 0x58e

    int-to-double v10, v10

    mul-double/2addr v10, v0

    double-to-int v10, v10

    invoke-direct {v4, v10}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    aput-object v4, v3, v9

    .line 235
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const-wide v10, 0x40974c0000000000L    # 1491.0

    mul-double/2addr v10, v0

    double-to-int v10, v10

    invoke-direct {v4, v10}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    const/4 v10, 0x5

    aput-object v4, v3, v10

    .line 236
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    add-int/lit16 v11, v2, 0x5d3

    int-to-double v11, v11

    mul-double/2addr v11, v0

    double-to-int v11, v11

    invoke-direct {v4, v11}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    aput-object v4, v3, v10

    .line 237
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const-wide v10, 0x4098540000000000L    # 1557.0

    mul-double/2addr v10, v0

    double-to-int v10, v10

    invoke-direct {v4, v10}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    const/4 v10, 0x6

    aput-object v4, v3, v10

    .line 238
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    add-int/lit16 v11, v2, 0x615

    int-to-double v11, v11

    mul-double/2addr v11, v0

    double-to-int v11, v11

    invoke-direct {v4, v11}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    aput-object v4, v3, v10

    .line 239
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const-wide v10, 0x4099440000000000L    # 1617.0

    mul-double/2addr v10, v0

    double-to-int v10, v10

    invoke-direct {v4, v10}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    const/4 v10, 0x7

    aput-object v4, v3, v10

    .line 240
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    add-int/lit16 v11, v2, 0x651

    int-to-double v11, v11

    mul-double/2addr v11, v0

    double-to-int v11, v11

    invoke-direct {v4, v11}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;-><init>(I)V

    aput-object v4, v3, v10

    .line 242
    new-array v3, v9, [Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    .line 243
    new-array v3, v9, [Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    .line 244
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    const-wide v9, 0x4081600000000000L    # 556.0

    mul-double/2addr v9, v0

    double-to-int v9, v9

    invoke-direct {v4, v9}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;-><init>(I)V

    aput-object v4, v3, v5

    .line 245
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    add-int/lit16 v9, v2, 0x22c

    int-to-double v9, v9

    mul-double/2addr v9, v0

    double-to-int v9, v9

    invoke-direct {v4, v9}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;-><init>(I)V

    aput-object v4, v3, v5

    .line 246
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    const-wide v9, 0x407b900000000000L    # 441.0

    mul-double/2addr v9, v0

    double-to-int v5, v9

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;-><init>(I)V

    aput-object v4, v3, v6

    .line 247
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    add-int/lit16 v5, v2, 0x1b9

    int-to-double v9, v5

    mul-double/2addr v9, v0

    double-to-int v5, v9

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;-><init>(I)V

    aput-object v4, v3, v6

    .line 248
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    const-wide v5, 0x4075500000000000L    # 341.0

    mul-double/2addr v5, v0

    double-to-int v5, v5

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;-><init>(I)V

    aput-object v4, v3, v7

    .line 249
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    add-int/lit16 v5, v2, 0x155

    int-to-double v5, v5

    mul-double/2addr v5, v0

    double-to-int v5, v5

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;-><init>(I)V

    aput-object v4, v3, v7

    .line 250
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    const-wide v5, 0x406c200000000000L    # 225.0

    mul-double/2addr v5, v0

    double-to-int v5, v5

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;-><init>(I)V

    aput-object v4, v3, v8

    .line 251
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    add-int/lit16 v5, v2, 0xe1

    int-to-double v5, v5

    mul-double/2addr v5, v0

    double-to-int v5, v5

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;-><init>(I)V

    aput-object v4, v3, v8

    .line 253
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 254
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    aget-object v4, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->setFeedBack(F)V

    .line 255
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    aget-object v4, v4, v3

    invoke-virtual {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->setFeedBack(F)V

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    .end local v3    # "i":I
    :cond_0
    const/16 v3, 0x81

    filled-new-array {v3}, [I

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x4

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->globalParameterControlChange([IJJ)V

    .line 261
    return-void
.end method

.method public processAudio()V
    .locals 14

    .line 282
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->inputA:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    .line 283
    .local v0, "silent_input":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 284
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->silent:Z

    .line 285
    :cond_0
    iget-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->silent:Z

    if-eqz v2, :cond_2

    .line 287
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->mix:Z

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->left:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 289
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 291
    :cond_1
    return-void

    .line 294
    :cond_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->inputA:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 295
    .local v2, "inputA":[F
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->left:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 296
    .local v3, "left":[F
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v4

    .line 298
    .local v4, "right":[F
    :goto_0
    array-length v5, v2

    .line 299
    .local v5, "numsamples":I
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    array-length v6, v6

    if-ge v6, v5, :cond_5

    .line 300
    :cond_4
    new-array v6, v5, [F

    iput-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    .line 302
    :cond_5
    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->gain:F

    const v7, 0x3c9374bc    # 0.018f

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 304
    .local v6, "again":F
    iget-boolean v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->denormal_flip:Z

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    iput-boolean v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->denormal_flip:Z

    .line 305
    iget-boolean v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->denormal_flip:Z

    const v9, 0x1e3ce508    # 1.0E-20f

    if-eqz v7, :cond_7

    .line 306
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_6

    .line 307
    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    aget v11, v2, v7

    mul-float/2addr v11, v6

    add-float/2addr v11, v9

    aput v11, v10, v7

    .line 306
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "i":I
    :cond_6
    goto :goto_3

    .line 309
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v5, :cond_8

    .line 310
    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    aget v11, v2, v7

    mul-float/2addr v11, v6

    sub-float/2addr v11, v9

    aput v11, v10, v7

    .line 309
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 312
    .end local v7    # "i":I
    :cond_8
    :goto_3
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->delay:Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;

    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    invoke-virtual {v7, v9}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->processReplace([F)V

    .line 314
    iget-boolean v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->light:Z

    const/4 v9, 0x0

    if-eqz v7, :cond_12

    if-eqz v4, :cond_12

    .line 316
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre1:[F

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre1:[F

    array-length v7, v7

    if-ge v7, v5, :cond_a

    .line 318
    :cond_9
    new-array v7, v5, [F

    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre1:[F

    .line 319
    new-array v7, v5, [F

    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre2:[F

    .line 320
    new-array v7, v5, [F

    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre3:[F

    .line 323
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    array-length v10, v10

    if-ge v7, v10, :cond_b

    .line 324
    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    aget-object v10, v10, v7

    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    invoke-virtual {v10, v11}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->processReplace([F)V

    .line 323
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 326
    .end local v7    # "i":I
    :cond_b
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v7, v7, v1

    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre3:[F

    invoke-virtual {v7, v10, v11}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processReplace([F[F)V

    .line 327
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v7, v7, v8

    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre3:[F

    invoke-virtual {v7, v10, v11}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processReplace([F[F)V

    .line 329
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const/4 v10, 0x2

    aget-object v7, v7, v10

    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    iget-object v12, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre1:[F

    invoke-virtual {v7, v11, v12}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processReplace([F[F)V

    .line 330
    const/4 v7, 0x4

    .restart local v7    # "i":I
    :goto_5
    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v11, v11

    sub-int/2addr v11, v10

    if-ge v7, v11, :cond_c

    .line 331
    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v11, v11, v7

    iget-object v12, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    iget-object v13, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre1:[F

    invoke-virtual {v11, v12, v13}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processMix([F[F)V

    .line 330
    add-int/lit8 v7, v7, 0x2

    goto :goto_5

    .line 333
    .end local v7    # "i":I
    :cond_c
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    const/4 v11, 0x3

    aget-object v7, v7, v11

    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    iget-object v12, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre2:[F

    invoke-virtual {v7, v11, v12}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processReplace([F[F)V

    .line 334
    const/4 v7, 0x5

    .restart local v7    # "i":I
    :goto_6
    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v11, v11

    sub-int/2addr v11, v10

    if-ge v7, v11, :cond_d

    .line 335
    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v11, v11, v7

    iget-object v12, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    iget-object v13, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre2:[F

    invoke-virtual {v11, v12, v13}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processMix([F[F)V

    .line 334
    add-int/lit8 v7, v7, 0x2

    goto :goto_6

    .line 337
    .end local v7    # "i":I
    :cond_d
    iget-boolean v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->mix:Z

    if-nez v7, :cond_e

    .line 339
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([FF)V

    .line 340
    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([FF)V

    .line 342
    :cond_e
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v7, v7

    sub-int/2addr v7, v10

    .restart local v7    # "i":I
    :goto_7
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v9, v9

    if-ge v7, v9, :cond_f

    .line 343
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v9, v9, v7

    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    invoke-virtual {v9, v11, v4}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processMix([F[F)V

    .line 342
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 344
    .end local v7    # "i":I
    :cond_f
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v7, v7

    sub-int/2addr v7, v10

    .restart local v7    # "i":I
    :goto_8
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v9, v9

    if-ge v7, v9, :cond_10

    .line 345
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v9, v9, v7

    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    invoke-virtual {v9, v10, v3}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processMix([F[F)V

    .line 344
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 347
    .end local v7    # "i":I
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_9
    if-ge v7, v5, :cond_11

    .line 349
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre1:[F

    aget v9, v9, v7

    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre2:[F

    aget v10, v10, v7

    sub-float/2addr v9, v10

    .line 350
    .local v9, "p":F
    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->pre3:[F

    aget v10, v10, v7

    .line 351
    .local v10, "m":F
    aget v11, v3, v7

    add-float v12, v10, v9

    add-float/2addr v11, v12

    aput v11, v3, v7

    .line 352
    aget v11, v4, v7

    sub-float v12, v10, v9

    add-float/2addr v11, v12

    aput v11, v4, v7

    .line 347
    .end local v9    # "p":F
    .end local v10    # "m":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .end local v7    # "i":I
    :cond_11
    goto/16 :goto_e

    .line 357
    :cond_12
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->out:[F

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->out:[F

    array-length v7, v7

    if-ge v7, v5, :cond_14

    .line 358
    :cond_13
    new-array v7, v5, [F

    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->out:[F

    .line 360
    :cond_14
    if-eqz v4, :cond_17

    .line 361
    iget-boolean v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->mix:Z

    if-nez v7, :cond_15

    .line 362
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([FF)V

    .line 363
    :cond_15
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    aget-object v7, v7, v1

    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->out:[F

    invoke-virtual {v7, v10, v11}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->processReplace([F[F)V

    .line 364
    const/4 v7, 0x1

    .restart local v7    # "i":I
    :goto_a
    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    array-length v10, v10

    if-ge v7, v10, :cond_16

    .line 365
    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    aget-object v10, v10, v7

    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->out:[F

    invoke-virtual {v10, v11}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->processReplace([F)V

    .line 364
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 366
    .end local v7    # "i":I
    :cond_16
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_b
    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v10, v10

    if-ge v7, v10, :cond_17

    .line 367
    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v10, v10, v7

    iget-object v11, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->out:[F

    invoke-virtual {v10, v11, v4}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processMix([F[F)V

    .line 366
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 370
    .end local v7    # "i":I
    :cond_17
    iget-boolean v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->mix:Z

    if-nez v7, :cond_18

    .line 371
    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([FF)V

    .line 372
    :cond_18
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    aget-object v7, v7, v1

    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->input:[F

    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->out:[F

    invoke-virtual {v7, v9, v10}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->processReplace([F[F)V

    .line 373
    const/4 v7, 0x1

    .restart local v7    # "i":I
    :goto_c
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    array-length v9, v9

    if-ge v7, v9, :cond_19

    .line 374
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->allpassL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;

    aget-object v9, v9, v7

    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->out:[F

    invoke-virtual {v9, v10}, Lcn/sherlock/com/sun/media/sound/SoftReverb$AllPass;->processReplace([F)V

    .line 373
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 375
    .end local v7    # "i":I
    :cond_19
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_d
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v9, v9

    if-ge v7, v9, :cond_1a

    .line 376
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v9, v9, v7

    iget-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->out:[F

    invoke-virtual {v9, v10, v3}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->processMix([F[F)V

    .line 375
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 384
    .end local v7    # "i":I
    :cond_1a
    :goto_e
    if-eqz v0, :cond_1d

    .line 385
    iput-boolean v8, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->silent:Z

    .line 386
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_f
    if-ge v7, v5, :cond_1d

    .line 388
    aget v8, v3, v7

    .line 389
    .local v8, "v":F
    float-to-double v9, v8

    const-wide v11, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_1c

    float-to-double v9, v8

    const-wide v11, -0x4224832026284245L    # -1.0E-10

    cmpg-double v9, v9, v11

    if-gez v9, :cond_1b

    goto :goto_10

    .line 386
    .end local v8    # "v":F
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 391
    .restart local v8    # "v":F
    :cond_1c
    :goto_10
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->silent:Z

    .line 392
    nop

    .line 397
    .end local v7    # "i":I
    .end local v8    # "v":F
    :cond_1d
    return-void
.end method

.method public processControlLogic()V
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    if-eqz v0, :cond_0

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty:Z

    .line 469
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_roomsize:F

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->setRoomSize(F)V

    .line 470
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_damp:F

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->setDamp(F)V

    .line 471
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_predelay:F

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->setPreDelay(F)V

    .line 472
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->dirty_gain:F

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->setGain(F)V

    .line 474
    :cond_0
    return-void
.end method

.method public setDamp(F)V
    .locals 8
    .param p1, "value"    # F

    .line 494
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->samplerate:F

    div-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    .line 495
    .local v0, "x":D
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 496
    .local v2, "cx":D
    mul-double v4, v2, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sub-double v4, v2, v4

    double-to-float v4, v4

    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->damp:F

    .line 497
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->damp:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 498
    iput v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->damp:F

    .line 499
    :cond_0
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->damp:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 500
    iput v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->damp:F

    .line 503
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 504
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v5, v5, v4

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->damp:F

    invoke-virtual {v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->setDamp(F)V

    .line 505
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v5, v5, v4

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->damp:F

    invoke-virtual {v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->setDamp(F)V

    .line 503
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 508
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method public setGain(F)V
    .locals 0
    .param p1, "gain"    # F

    .line 490
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->gain:F

    .line 491
    return-void
.end method

.method public setInput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 0
    .param p1, "pin"    # I
    .param p2, "input"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 264
    if-nez p1, :cond_0

    .line 265
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->inputA:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 266
    :cond_0
    return-void
.end method

.method public setLightMode(Z)V
    .locals 0
    .param p1, "light"    # Z

    .line 512
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->light:Z

    .line 513
    return-void
.end method

.method public setMixMode(Z)V
    .locals 0
    .param p1, "mix"    # Z

    .line 276
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->mix:Z

    .line 277
    return-void
.end method

.method public setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 1
    .param p1, "pin"    # I
    .param p2, "output"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 269
    if-nez p1, :cond_0

    .line 270
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->left:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 271
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 272
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 273
    :cond_1
    return-void
.end method

.method public setPreDelay(F)V
    .locals 2
    .param p1, "value"    # F

    .line 486
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->delay:Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->samplerate:F

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Delay;->setDelay(I)V

    .line 487
    return-void
.end method

.method public setRoomSize(F)V
    .locals 3
    .param p1, "value"    # F

    .line 477
    const v0, 0x3e2e147b    # 0.17f

    div-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->roomsize:F

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 480
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combL:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v1, v1, v0

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->roomsize:F

    invoke-static {v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->-$$Nest$fputfeedback(Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;F)V

    .line 481
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->combR:[Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;

    aget-object v1, v1, v0

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb;->roomsize:F

    invoke-static {v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->-$$Nest$fputfeedback(Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;F)V

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
