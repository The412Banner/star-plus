.class public Lcn/sherlock/com/sun/media/sound/SoftFilter;
.super Ljava/lang/Object;
.source "SoftFilter.java"


# static fields
.field public static final FILTERTYPE_BP12:I = 0x21

.field public static final FILTERTYPE_HP12:I = 0x11

.field public static final FILTERTYPE_HP24:I = 0x13

.field public static final FILTERTYPE_LP12:I = 0x1

.field public static final FILTERTYPE_LP24:I = 0x3

.field public static final FILTERTYPE_LP6:I = 0x0

.field public static final FILTERTYPE_NP12:I = 0x31


# instance fields
.field private a0:F

.field private a1:F

.field private a2:F

.field private b1:F

.field private b2:F

.field private cutoff:D

.field private dirty:Z

.field private filtertype:I

.field private gain:F

.field private last_a0:F

.field private last_a1:F

.field private last_a2:F

.field private last_b1:F

.field private last_b2:F

.field private last_gain:F

.field private last_q:F

.field private last_set:Z

.field private last_wet:F

.field private q:F

.field private resonancedB:D

.field private samplerate:F

.field private wet:F

.field private x1:F

.field private x2:F

.field private xx1:F

.field private xx2:F

.field private y1:F

.field private y2:F

.field private yy1:F

.field private yy2:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "samplerate"    # F

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    .line 73
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    .line 75
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 83
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_set:Z

    .line 84
    const-wide v0, 0x40e5888000000000L    # 44100.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    .line 89
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->samplerate:F

    .line 90
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    .line 91
    return-void
.end method

.method private sinh(D)D
    .locals 4
    .param p1, "x"    # D

    .line 286
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    neg-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public filter1(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 19
    .param p1, "sbuffer"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 546
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter1calc()V

    .line 548
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    .line 550
    :cond_0
    iget-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_set:Z

    if-nez v1, :cond_1

    .line 551
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    .line 552
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->q:F

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_q:F

    .line 553
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    .line 554
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 555
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_set:Z

    .line 558
    :cond_1
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 560
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 561
    .local v1, "buffer":[F
    array-length v3, v1

    .line 562
    .local v3, "len":I
    iget v4, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    .line 563
    .local v4, "a0":F
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_q:F

    .line 564
    .local v5, "q":F
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    .line 565
    .local v6, "gain":F
    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 566
    .local v7, "wet":F
    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    sub-float/2addr v8, v9

    int-to-float v9, v3

    div-float/2addr v8, v9

    .line 567
    .local v8, "a0_delta":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->q:F

    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_q:F

    sub-float/2addr v9, v10

    int-to-float v10, v3

    div-float/2addr v9, v10

    .line 568
    .local v9, "q_delta":F
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    iget v11, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    sub-float/2addr v10, v11

    int-to-float v11, v3

    div-float/2addr v10, v11

    .line 569
    .local v10, "gain_delta":F
    iget v11, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    sub-float/2addr v11, v12

    int-to-float v12, v3

    div-float/2addr v11, v12

    .line 570
    .local v11, "wet_delta":F
    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y2:F

    .line 571
    .local v12, "y2":F
    iget v13, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y1:F

    .line 573
    .local v13, "y1":F
    cmpl-float v14, v11, v2

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v14, :cond_4

    .line 574
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 575
    add-float/2addr v4, v8

    .line 576
    add-float/2addr v5, v9

    .line 577
    add-float/2addr v6, v10

    .line 578
    add-float/2addr v7, v11

    .line 579
    mul-float v14, v5, v4

    sub-float v14, v15, v14

    .line 580
    .local v14, "ga0":F
    mul-float v16, v14, v13

    aget v17, v1, v2

    sub-float v17, v17, v12

    mul-float v17, v17, v4

    add-float v13, v16, v17

    .line 581
    mul-float v16, v14, v12

    mul-float v17, v4, v13

    add-float v12, v16, v17

    .line 582
    mul-float v16, v12, v6

    mul-float v16, v16, v7

    aget v17, v1, v2

    sub-float v18, v15, v7

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aput v16, v1, v2

    .line 574
    .end local v14    # "ga0":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_3
    goto :goto_3

    .line 584
    :cond_4
    cmpl-float v14, v8, v2

    if-nez v14, :cond_6

    cmpl-float v2, v9, v2

    if-nez v2, :cond_6

    .line 585
    mul-float v2, v5, v4

    sub-float/2addr v15, v2

    .line 586
    .local v15, "ga0":F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 587
    mul-float v14, v15, v13

    aget v16, v1, v2

    sub-float v16, v16, v12

    mul-float v16, v16, v4

    add-float v13, v14, v16

    .line 588
    mul-float v14, v15, v12

    mul-float v16, v4, v13

    add-float v12, v14, v16

    .line 589
    mul-float v14, v12, v6

    aput v14, v1, v2

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 591
    .end local v2    # "i":I
    .end local v15    # "ga0":F
    :cond_5
    goto :goto_3

    .line 592
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v3, :cond_7

    .line 593
    add-float/2addr v4, v8

    .line 594
    add-float/2addr v5, v9

    .line 595
    add-float/2addr v6, v10

    .line 596
    mul-float v14, v5, v4

    sub-float v14, v15, v14

    .line 597
    .restart local v14    # "ga0":F
    mul-float v16, v14, v13

    aget v17, v1, v2

    sub-float v17, v17, v12

    mul-float v17, v17, v4

    add-float v13, v16, v17

    .line 598
    mul-float v16, v14, v12

    mul-float v17, v4, v13

    add-float v12, v16, v17

    .line 599
    mul-float v16, v12, v6

    aput v16, v1, v2

    .line 592
    .end local v14    # "ga0":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 603
    .end local v2    # "i":I
    :cond_7
    :goto_3
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v14, v2

    const-wide v16, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v2, v14, v16

    if-gez v2, :cond_8

    .line 604
    const/4 v12, 0x0

    .line 605
    :cond_8
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v14, v2

    cmpg-double v2, v14, v16

    if-gez v2, :cond_9

    .line 606
    const/4 v13, 0x0

    .line 607
    :cond_9
    iput v12, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y2:F

    .line 608
    iput v13, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y1:F

    .line 611
    .end local v1    # "buffer":[F
    .end local v3    # "len":I
    .end local v4    # "a0":F
    .end local v5    # "q":F
    .end local v6    # "gain":F
    .end local v7    # "wet":F
    .end local v8    # "a0_delta":F
    .end local v9    # "q_delta":F
    .end local v10    # "gain_delta":F
    .end local v11    # "wet_delta":F
    .end local v12    # "y2":F
    .end local v13    # "y1":F
    :cond_a
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    .line 612
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->q:F

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_q:F

    .line 613
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    .line 614
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 615
    return-void
.end method

.method public filter1calc()V
    .locals 8

    .line 527
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 528
    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    .line 529
    :cond_0
    const-wide v0, 0x401d524fe24f89f2L    # 7.3303828583761845

    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    mul-double/2addr v2, v0

    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->samplerate:F

    float-to-double v0, v0

    div-double/2addr v2, v0

    .line 530
    .local v2, "c":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    .line 531
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 532
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    .line 533
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 534
    iput-wide v4, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    .line 535
    :cond_2
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3

    .line 536
    iput-wide v4, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    .line 537
    :cond_3
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-wide v6, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    div-double/2addr v6, v4

    neg-double v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->q:F

    .line 538
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    neg-double v0, v0

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    div-double/2addr v0, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    .line 539
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 540
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_4

    const-wide v0, 0x3fefffffca501acbL    # 0.9999999

    cmpg-double v0, v2, v0

    if-gez v0, :cond_5

    .line 541
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    .line 542
    :cond_5
    return-void
.end method

.method public filter2(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 25
    .param p1, "sbuffer"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 415
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 417
    .local v1, "buffer":[F
    iget-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    if-eqz v2, :cond_0

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter2calc()V

    .line 419
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    .line 421
    :cond_0
    iget-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_set:Z

    if-nez v2, :cond_1

    .line 422
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    .line 423
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a1:F

    .line 424
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a2:F

    .line 425
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b1:F

    .line 426
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b2:F

    .line 427
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->q:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_q:F

    .line 428
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    .line 429
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 430
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_set:Z

    .line 433
    :cond_1
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v0

    move-object/from16 v18, v1

    goto/16 :goto_9

    .line 435
    :cond_3
    :goto_0
    array-length v2, v1

    .line 436
    .local v2, "len":I
    iget v4, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    .line 437
    .local v4, "a0":F
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a1:F

    .line 438
    .local v5, "a1":F
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a2:F

    .line 439
    .local v6, "a2":F
    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b1:F

    .line 440
    .local v7, "b1":F
    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b2:F

    .line 441
    .local v8, "b2":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    .line 442
    .local v9, "gain":F
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 443
    .local v10, "wet":F
    iget v11, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    sub-float/2addr v11, v12

    int-to-float v12, v2

    div-float/2addr v11, v12

    .line 444
    .local v11, "a0_delta":F
    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    iget v13, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a1:F

    sub-float/2addr v12, v13

    int-to-float v13, v2

    div-float/2addr v12, v13

    .line 445
    .local v12, "a1_delta":F
    iget v13, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a2:F

    sub-float/2addr v13, v14

    int-to-float v14, v2

    div-float/2addr v13, v14

    .line 446
    .local v13, "a2_delta":F
    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    iget v15, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b1:F

    sub-float/2addr v14, v15

    int-to-float v15, v2

    div-float/2addr v14, v15

    .line 447
    .local v14, "b1_delta":F
    iget v15, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b2:F

    sub-float/2addr v15, v3

    int-to-float v3, v2

    div-float/2addr v15, v3

    .line 448
    .local v15, "b2_delta":F
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    move/from16 v17, v10

    .end local v10    # "wet":F
    .local v17, "wet":F
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    sub-float/2addr v3, v10

    int-to-float v10, v2

    div-float/2addr v3, v10

    .line 449
    .local v3, "gain_delta":F
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    move/from16 v18, v9

    .end local v9    # "gain":F
    .local v18, "gain":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    sub-float/2addr v10, v9

    int-to-float v9, v2

    div-float/2addr v10, v9

    .line 450
    .local v10, "wet_delta":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x1:F

    .line 451
    .local v9, "x1":F
    move/from16 v19, v9

    .end local v9    # "x1":F
    .local v19, "x1":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x2:F

    .line 452
    .local v9, "x2":F
    move/from16 v20, v9

    .end local v9    # "x2":F
    .local v20, "x2":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y1:F

    .line 453
    .local v9, "y1":F
    move/from16 v21, v9

    .end local v9    # "y1":F
    .local v21, "y1":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y2:F

    .line 455
    .local v9, "y2":F
    const/16 v16, 0x0

    cmpl-float v22, v10, v16

    if-eqz v22, :cond_5

    .line 456
    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v16, v9

    move/from16 v9, v18

    .end local v18    # "gain":F
    .local v0, "i":I
    .local v9, "gain":F
    .local v16, "y2":F
    :goto_1
    if-ge v0, v2, :cond_4

    .line 457
    add-float/2addr v4, v11

    .line 458
    add-float/2addr v5, v12

    .line 459
    add-float/2addr v6, v13

    .line 460
    add-float/2addr v7, v14

    .line 461
    add-float/2addr v8, v15

    .line 462
    add-float/2addr v9, v3

    .line 463
    add-float v17, v17, v10

    .line 464
    aget v18, v1, v0

    .line 465
    .local v18, "x":F
    mul-float v22, v4, v18

    mul-float v23, v5, v19

    add-float v22, v22, v23

    mul-float v23, v6, v20

    add-float v22, v22, v23

    mul-float v23, v7, v21

    sub-float v22, v22, v23

    mul-float v23, v8, v16

    sub-float v22, v22, v23

    .line 466
    .local v22, "y":F
    mul-float v23, v22, v9

    mul-float v23, v23, v17

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v17

    mul-float v24, v24, v18

    add-float v23, v23, v24

    aput v23, v1, v0

    .line 467
    move/from16 v20, v19

    .line 468
    move/from16 v19, v18

    .line 469
    move/from16 v16, v21

    .line 470
    move/from16 v21, v22

    .line 456
    .end local v18    # "x":F
    .end local v22    # "y":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_4
    goto/16 :goto_4

    .line 472
    .end local v16    # "y2":F
    .local v9, "y2":F
    .local v18, "gain":F
    :cond_5
    const/4 v0, 0x0

    cmpl-float v16, v11, v0

    if-nez v16, :cond_7

    cmpl-float v16, v12, v0

    if-nez v16, :cond_7

    cmpl-float v16, v13, v0

    if-nez v16, :cond_7

    cmpl-float v16, v14, v0

    if-nez v16, :cond_7

    cmpl-float v0, v15, v0

    if-nez v0, :cond_7

    .line 474
    const/4 v0, 0x0

    move/from16 v16, v9

    move/from16 v9, v19

    .end local v19    # "x1":F
    .restart local v0    # "i":I
    .local v9, "x1":F
    .restart local v16    # "y2":F
    :goto_2
    if-ge v0, v2, :cond_6

    .line 475
    aget v19, v1, v0

    .line 476
    .local v19, "x":F
    mul-float v22, v4, v19

    mul-float v23, v5, v9

    add-float v22, v22, v23

    mul-float v23, v6, v20

    add-float v22, v22, v23

    mul-float v23, v7, v21

    sub-float v22, v22, v23

    mul-float v23, v8, v16

    sub-float v22, v22, v23

    .line 477
    .restart local v22    # "y":F
    mul-float v23, v22, v18

    aput v23, v1, v0

    .line 478
    move/from16 v20, v9

    .line 479
    move/from16 v9, v19

    .line 480
    move/from16 v16, v21

    .line 481
    move/from16 v21, v22

    .line 474
    .end local v19    # "x":F
    .end local v22    # "y":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move/from16 v19, v9

    move/from16 v9, v18

    .end local v0    # "i":I
    goto :goto_4

    .line 484
    .end local v16    # "y2":F
    .local v9, "y2":F
    .local v19, "x1":F
    :cond_7
    const/4 v0, 0x0

    move/from16 v16, v9

    move/from16 v9, v18

    .end local v18    # "gain":F
    .restart local v0    # "i":I
    .local v9, "gain":F
    .restart local v16    # "y2":F
    :goto_3
    if-ge v0, v2, :cond_8

    .line 485
    add-float/2addr v4, v11

    .line 486
    add-float/2addr v5, v12

    .line 487
    add-float/2addr v6, v13

    .line 488
    add-float/2addr v7, v14

    .line 489
    add-float/2addr v8, v15

    .line 490
    add-float/2addr v9, v3

    .line 491
    aget v18, v1, v0

    .line 492
    .local v18, "x":F
    mul-float v22, v4, v18

    mul-float v23, v5, v19

    add-float v22, v22, v23

    mul-float v23, v6, v20

    add-float v22, v22, v23

    mul-float v23, v7, v21

    sub-float v22, v22, v23

    mul-float v23, v8, v16

    sub-float v22, v22, v23

    .line 493
    .restart local v22    # "y":F
    mul-float v23, v22, v9

    aput v23, v1, v0

    .line 494
    move/from16 v20, v19

    .line 495
    move/from16 v19, v18

    .line 496
    move/from16 v16, v21

    .line 497
    move/from16 v21, v22

    .line 484
    .end local v18    # "x":F
    .end local v22    # "y":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 501
    .end local v0    # "i":I
    :cond_8
    :goto_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move-object/from16 v18, v1

    .end local v1    # "buffer":[F
    .local v18, "buffer":[F
    float-to-double v0, v0

    const-wide v22, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v0, v0, v22

    if-gez v0, :cond_9

    .line 502
    const/16 v19, 0x0

    move/from16 v0, v19

    goto :goto_5

    .line 501
    :cond_9
    move/from16 v0, v19

    .line 503
    .end local v19    # "x1":F
    .local v0, "x1":F
    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move/from16 v19, v2

    .end local v2    # "len":I
    .local v19, "len":I
    float-to-double v1, v1

    cmpg-double v1, v1, v22

    if-gez v1, :cond_a

    .line 504
    const/16 v20, 0x0

    move/from16 v1, v20

    goto :goto_6

    .line 503
    :cond_a
    move/from16 v1, v20

    .line 505
    .end local v20    # "x2":F
    .local v1, "x2":F
    :goto_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move/from16 v20, v3

    .end local v3    # "gain_delta":F
    .local v20, "gain_delta":F
    float-to-double v2, v2

    cmpg-double v2, v2, v22

    if-gez v2, :cond_b

    .line 506
    const/16 v21, 0x0

    move/from16 v2, v21

    goto :goto_7

    .line 505
    :cond_b
    move/from16 v2, v21

    .line 507
    .end local v21    # "y1":F
    .local v2, "y1":F
    :goto_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move/from16 v21, v4

    .end local v4    # "a0":F
    .local v21, "a0":F
    float-to-double v3, v3

    cmpg-double v3, v3, v22

    if-gez v3, :cond_c

    .line 508
    const/16 v16, 0x0

    move/from16 v3, v16

    goto :goto_8

    .line 507
    :cond_c
    move/from16 v3, v16

    .line 509
    .end local v16    # "y2":F
    .local v3, "y2":F
    :goto_8
    move-object/from16 v4, p0

    iput v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x1:F

    .line 510
    iput v1, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x2:F

    .line 511
    iput v2, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y1:F

    .line 512
    iput v3, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y2:F

    .line 515
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    .end local v5    # "a1":F
    .end local v6    # "a2":F
    .end local v7    # "b1":F
    .end local v8    # "b2":F
    .end local v9    # "gain":F
    .end local v10    # "wet_delta":F
    .end local v11    # "a0_delta":F
    .end local v12    # "a1_delta":F
    .end local v13    # "a2_delta":F
    .end local v14    # "b1_delta":F
    .end local v15    # "b2_delta":F
    .end local v17    # "wet":F
    .end local v19    # "len":I
    .end local v20    # "gain_delta":F
    .end local v21    # "a0":F
    :goto_9
    iget v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    iput v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    .line 516
    iget v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    iput v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a1:F

    .line 517
    iget v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    iput v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a2:F

    .line 518
    iget v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    iput v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b1:F

    .line 519
    iget v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    iput v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b2:F

    .line 520
    iget v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->q:F

    iput v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_q:F

    .line 521
    iget v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    iput v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    .line 522
    iget v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    iput v0, v4, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 524
    return-void
.end method

.method public filter2calc()V
    .locals 47

    .line 291
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    .line 292
    .local v1, "resonancedB":D
    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    .line 293
    const-wide/16 v1, 0x0

    .line 294
    :cond_0
    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_1

    .line 295
    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    .line 296
    :cond_1
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/16 v4, 0x13

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    if-ne v3, v4, :cond_3

    .line 297
    :cond_2
    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v1, v6

    .line 299
    :cond_3
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/16 v6, 0x21

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    const-wide v17, 0x3fdccccccccccccdL    # 0.45

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    if-ne v3, v6, :cond_5

    .line 300
    iput v4, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    .line 301
    iget-wide v5, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->samplerate:F

    float-to-double v9, v3

    div-double/2addr v5, v9

    .line 302
    .local v5, "r":D
    cmpl-double v3, v5, v17

    if-lez v3, :cond_4

    .line 303
    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    .line 305
    :cond_4
    div-double v9, v1, v11

    neg-double v9, v9

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v9, v15

    .line 307
    .local v9, "bandwidth":D
    mul-double v27, v5, v7

    .line 308
    .local v27, "omega":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    .line 309
    .local v29, "cs":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    .line 310
    .local v31, "sn":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v33

    mul-double v33, v33, v9

    mul-double v33, v33, v27

    mul-double v35, v31, v20

    div-double v7, v33, v35

    invoke-direct {v0, v7, v8}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->sinh(D)D

    move-result-wide v7

    mul-double v7, v7, v31

    .line 312
    .local v7, "alpha":D
    move-wide/from16 v33, v7

    .line 313
    .local v33, "b0":D
    const-wide/16 v35, 0x0

    .line 314
    .local v35, "b1":D
    neg-double v13, v7

    .line 315
    .local v13, "b2":D
    add-double v39, v7, v22

    .line 316
    .local v39, "a0":D
    const-wide/high16 v25, -0x4000000000000000L    # -2.0

    mul-double v41, v29, v25

    .line 317
    .local v41, "a1":D
    sub-double v43, v22, v7

    .line 319
    .local v43, "a2":D
    div-double v45, v22, v39

    .line 320
    .local v45, "cf":D
    mul-double v11, v41, v45

    double-to-float v3, v11

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    .line 321
    mul-double v11, v43, v45

    double-to-float v3, v11

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    .line 322
    mul-double v11, v33, v45

    double-to-float v3, v11

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    .line 323
    mul-double v11, v35, v45

    double-to-float v3, v11

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    .line 324
    mul-double v11, v13, v45

    double-to-float v3, v11

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    .line 327
    .end local v5    # "r":D
    .end local v7    # "alpha":D
    .end local v9    # "bandwidth":D
    .end local v13    # "b2":D
    .end local v27    # "omega":D
    .end local v29    # "cs":D
    .end local v31    # "sn":D
    .end local v33    # "b0":D
    .end local v35    # "b1":D
    .end local v39    # "a0":D
    .end local v41    # "a1":D
    .end local v43    # "a2":D
    .end local v45    # "cf":D
    :cond_5
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/16 v5, 0x31

    if-ne v3, v5, :cond_7

    .line 328
    iput v4, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    .line 329
    iget-wide v5, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->samplerate:F

    float-to-double v7, v3

    div-double/2addr v5, v7

    .line 330
    .restart local v5    # "r":D
    cmpl-double v3, v5, v17

    if-lez v3, :cond_6

    .line 331
    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    .line 333
    :cond_6
    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    div-double v9, v1, v7

    neg-double v7, v9

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v15

    .line 335
    .local v7, "bandwidth":D
    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v9, v5

    .line 336
    .local v9, "omega":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 337
    .local v11, "cs":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 338
    .local v13, "sn":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v27

    mul-double v27, v27, v7

    mul-double v27, v27, v9

    mul-double v29, v13, v20

    move-wide/from16 v31, v5

    .end local v5    # "r":D
    .local v31, "r":D
    div-double v4, v27, v29

    invoke-direct {v0, v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v4, v13

    .line 340
    .local v4, "alpha":D
    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    .line 341
    .local v27, "b0":D
    const-wide/high16 v25, -0x4000000000000000L    # -2.0

    mul-double v29, v11, v25

    .line 342
    .local v29, "b1":D
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    .line 343
    .local v33, "b2":D
    add-double v35, v4, v22

    .line 344
    .local v35, "a0":D
    mul-double v37, v11, v25

    .line 345
    .local v37, "a1":D
    sub-double v39, v22, v4

    .line 347
    .local v39, "a2":D
    div-double v41, v22, v35

    .line 348
    .local v41, "cf":D
    move-wide/from16 v43, v4

    .end local v4    # "alpha":D
    .local v43, "alpha":D
    mul-double v3, v37, v41

    double-to-float v3, v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    .line 349
    mul-double v3, v39, v41

    double-to-float v3, v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    .line 350
    mul-double v3, v27, v41

    double-to-float v3, v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    .line 351
    mul-double v3, v29, v41

    double-to-float v3, v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    .line 352
    mul-double v3, v33, v41

    double-to-float v3, v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    .line 355
    .end local v7    # "bandwidth":D
    .end local v9    # "omega":D
    .end local v11    # "cs":D
    .end local v13    # "sn":D
    .end local v27    # "b0":D
    .end local v29    # "b1":D
    .end local v31    # "r":D
    .end local v33    # "b2":D
    .end local v35    # "a0":D
    .end local v37    # "a1":D
    .end local v39    # "a2":D
    .end local v41    # "cf":D
    .end local v43    # "alpha":D
    :cond_7
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 356
    :cond_8
    iget-wide v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->samplerate:F

    float-to-double v7, v5

    div-double v4, v3, v7

    .line 357
    .local v4, "r":D
    cmpl-double v3, v4, v17

    if-lez v3, :cond_b

    .line 358
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_a

    .line 359
    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v3, v1, v8

    if-gez v3, :cond_9

    .line 360
    iput v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    .line 362
    :cond_9
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    goto :goto_0

    .line 358
    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    .line 364
    :goto_0
    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    goto :goto_1

    .line 366
    :cond_b
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    .line 368
    :goto_1
    mul-double v6, v4, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    div-double v6, v22, v6

    .line 369
    .local v6, "c":D
    mul-double v8, v6, v6

    .line 370
    .local v8, "csq":D
    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    div-double v12, v1, v10

    neg-double v10, v12

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 371
    .local v10, "resonance":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    .line 372
    .local v12, "q":D
    mul-double v27, v12, v6

    add-double v27, v27, v22

    add-double v27, v27, v8

    move-wide/from16 v29, v4

    .end local v4    # "r":D
    .local v29, "r":D
    div-double v3, v22, v27

    .line 373
    .local v3, "a0":D
    mul-double v14, v3, v20

    .line 374
    .local v14, "a1":D
    move-wide/from16 v31, v3

    .line 375
    .local v31, "a2":D
    mul-double v33, v3, v20

    sub-double v35, v22, v8

    move-wide/from16 v37, v10

    .end local v10    # "resonance":D
    .local v37, "resonance":D
    mul-double v10, v33, v35

    .line 376
    .local v10, "b1":D
    mul-double v33, v12, v6

    sub-double v33, v22, v33

    add-double v33, v33, v8

    move-wide/from16 v35, v6

    .end local v6    # "c":D
    .local v35, "c":D
    mul-double v5, v3, v33

    .line 378
    .local v5, "b2":D
    double-to-float v7, v3

    iput v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    .line 379
    double-to-float v7, v14

    iput v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    .line 380
    move-wide/from16 v33, v3

    .end local v31    # "a2":D
    .local v3, "a2":D
    .local v33, "a0":D
    double-to-float v7, v3

    iput v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    .line 381
    double-to-float v7, v10

    iput v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    .line 382
    double-to-float v7, v5

    iput v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    .line 386
    .end local v3    # "a2":D
    .end local v5    # "b2":D
    .end local v8    # "csq":D
    .end local v10    # "b1":D
    .end local v12    # "q":D
    .end local v14    # "a1":D
    .end local v29    # "r":D
    .end local v33    # "a0":D
    .end local v35    # "c":D
    .end local v37    # "resonance":D
    :cond_c
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_e

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_d

    goto :goto_2

    :cond_d
    move-wide/from16 v17, v1

    goto :goto_3

    .line 387
    :cond_e
    :goto_2
    iget-wide v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->samplerate:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    .line 388
    .local v3, "r":D
    cmpl-double v5, v3, v17

    if-lez v5, :cond_f

    .line 389
    const-wide v3, 0x3fdccccccccccccdL    # 0.45

    .line 390
    :cond_f
    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v5, v3, v5

    if-gez v5, :cond_10

    .line 391
    const-wide v3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 392
    :cond_10
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    .line 393
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v15, v3, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    .line 394
    .local v5, "c":D
    mul-double v7, v5, v5

    .line 395
    .local v7, "csq":D
    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    div-double v9, v1, v9

    neg-double v9, v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    .line 396
    .local v9, "resonance":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    .line 397
    .local v11, "q":D
    mul-double v13, v11, v5

    add-double v13, v13, v22

    add-double/2addr v13, v7

    div-double v13, v22, v13

    .line 398
    .local v13, "a0":D
    move-wide/from16 v17, v1

    const-wide/high16 v15, -0x4000000000000000L    # -2.0

    .end local v1    # "resonancedB":D
    .local v17, "resonancedB":D
    mul-double v1, v13, v15

    .line 399
    .local v1, "a1":D
    move-wide v15, v13

    .line 400
    .local v15, "a2":D
    mul-double v20, v20, v13

    sub-double v24, v7, v22

    move-wide/from16 v26, v3

    .end local v3    # "r":D
    .local v26, "r":D
    mul-double v3, v20, v24

    .line 401
    .local v3, "b1":D
    mul-double v19, v11, v5

    sub-double v22, v22, v19

    add-double v22, v22, v7

    move-wide/from16 v19, v5

    .end local v5    # "c":D
    .local v19, "c":D
    mul-double v5, v13, v22

    .line 403
    .local v5, "b2":D
    move-wide/from16 v21, v7

    .end local v7    # "csq":D
    .local v21, "csq":D
    double-to-float v7, v13

    iput v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    .line 404
    double-to-float v7, v1

    iput v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    .line 405
    move-wide v7, v15

    .end local v15    # "a2":D
    .local v7, "a2":D
    double-to-float v15, v7

    iput v15, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    .line 406
    double-to-float v15, v3

    iput v15, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    .line 407
    double-to-float v15, v5

    iput v15, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    .line 411
    .end local v1    # "a1":D
    .end local v3    # "b1":D
    .end local v5    # "b2":D
    .end local v7    # "a2":D
    .end local v9    # "resonance":D
    .end local v11    # "q":D
    .end local v13    # "a0":D
    .end local v19    # "c":D
    .end local v21    # "csq":D
    .end local v26    # "r":D
    :goto_3
    return-void
.end method

.method public filter4(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 32
    .param p1, "sbuffer"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 150
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 152
    .local v1, "buffer":[F
    iget-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter2calc()V

    .line 154
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    .line 156
    :cond_0
    iget-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_set:Z

    if-nez v2, :cond_1

    .line 157
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    .line 158
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a1:F

    .line 159
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a2:F

    .line 160
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b1:F

    .line 161
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b2:F

    .line 162
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    .line 163
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 164
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_set:Z

    .line 167
    :cond_1
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v8, v0

    move-object/from16 v16, v1

    goto/16 :goto_9

    .line 169
    :cond_3
    :goto_0
    array-length v2, v1

    .line 170
    .local v2, "len":I
    iget v4, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    .line 171
    .local v4, "a0":F
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a1:F

    .line 172
    .local v5, "a1":F
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a2:F

    .line 173
    .local v6, "a2":F
    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b1:F

    .line 174
    .local v7, "b1":F
    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b2:F

    .line 175
    .local v8, "b2":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    .line 176
    .local v9, "gain":F
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 177
    .local v10, "wet":F
    iget v11, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    sub-float/2addr v11, v12

    int-to-float v12, v2

    div-float/2addr v11, v12

    .line 178
    .local v11, "a0_delta":F
    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    iget v13, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a1:F

    sub-float/2addr v12, v13

    int-to-float v13, v2

    div-float/2addr v12, v13

    .line 179
    .local v12, "a1_delta":F
    iget v13, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a2:F

    sub-float/2addr v13, v14

    int-to-float v14, v2

    div-float/2addr v13, v14

    .line 180
    .local v13, "a2_delta":F
    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    iget v15, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b1:F

    sub-float/2addr v14, v15

    int-to-float v15, v2

    div-float/2addr v14, v15

    .line 181
    .local v14, "b1_delta":F
    iget v15, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b2:F

    sub-float/2addr v15, v3

    int-to-float v3, v2

    div-float/2addr v15, v3

    .line 182
    .local v15, "b2_delta":F
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    move/from16 v17, v10

    .end local v10    # "wet":F
    .local v17, "wet":F
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    sub-float/2addr v3, v10

    int-to-float v10, v2

    div-float/2addr v3, v10

    .line 183
    .local v3, "gain_delta":F
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    move/from16 v18, v9

    .end local v9    # "gain":F
    .local v18, "gain":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    sub-float/2addr v10, v9

    int-to-float v9, v2

    div-float/2addr v10, v9

    .line 184
    .local v10, "wet_delta":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x1:F

    .line 185
    .local v9, "x1":F
    move/from16 v19, v9

    .end local v9    # "x1":F
    .local v19, "x1":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x2:F

    .line 186
    .local v9, "x2":F
    move/from16 v20, v9

    .end local v9    # "x2":F
    .local v20, "x2":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y1:F

    .line 187
    .local v9, "y1":F
    move/from16 v21, v9

    .end local v9    # "y1":F
    .local v21, "y1":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y2:F

    .line 188
    .local v9, "y2":F
    move/from16 v22, v9

    .end local v9    # "y2":F
    .local v22, "y2":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->xx1:F

    .line 189
    .local v9, "xx1":F
    move/from16 v23, v9

    .end local v9    # "xx1":F
    .local v23, "xx1":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->xx2:F

    .line 190
    .local v9, "xx2":F
    move/from16 v24, v9

    .end local v9    # "xx2":F
    .local v24, "xx2":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->yy1:F

    .line 191
    .local v9, "yy1":F
    move/from16 v25, v9

    .end local v9    # "yy1":F
    .local v25, "yy1":F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->yy2:F

    .line 193
    .local v9, "yy2":F
    const/16 v16, 0x0

    cmpl-float v26, v10, v16

    const/high16 v27, 0x3f800000    # 1.0f

    if-eqz v26, :cond_5

    .line 194
    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v16, v9

    move/from16 v9, v18

    .end local v18    # "gain":F
    .local v0, "i":I
    .local v9, "gain":F
    .local v16, "yy2":F
    :goto_1
    if-ge v0, v2, :cond_4

    .line 195
    add-float/2addr v4, v11

    .line 196
    add-float/2addr v5, v12

    .line 197
    add-float/2addr v6, v13

    .line 198
    add-float/2addr v7, v14

    .line 199
    add-float/2addr v8, v15

    .line 200
    add-float/2addr v9, v3

    .line 201
    add-float v17, v17, v10

    .line 202
    aget v18, v1, v0

    .line 203
    .local v18, "x":F
    mul-float v26, v4, v18

    mul-float v28, v5, v19

    add-float v26, v26, v28

    mul-float v28, v6, v20

    add-float v26, v26, v28

    mul-float v28, v7, v21

    sub-float v26, v26, v28

    mul-float v28, v8, v22

    sub-float v26, v26, v28

    .line 204
    .local v26, "y":F
    mul-float v28, v26, v9

    mul-float v28, v28, v17

    sub-float v29, v27, v17

    mul-float v29, v29, v18

    add-float v28, v28, v29

    .line 205
    .local v28, "xx":F
    move/from16 v20, v19

    .line 206
    move/from16 v19, v18

    .line 207
    move/from16 v22, v21

    .line 208
    move/from16 v21, v26

    .line 209
    mul-float v29, v4, v28

    mul-float v30, v5, v23

    add-float v29, v29, v30

    mul-float v30, v6, v24

    add-float v29, v29, v30

    mul-float v30, v7, v25

    sub-float v29, v29, v30

    mul-float v30, v8, v16

    sub-float v29, v29, v30

    .line 210
    .local v29, "yy":F
    mul-float v30, v29, v9

    mul-float v30, v30, v17

    sub-float v31, v27, v17

    mul-float v31, v31, v28

    add-float v30, v30, v31

    aput v30, v1, v0

    .line 211
    move/from16 v24, v23

    .line 212
    move/from16 v23, v28

    .line 213
    move/from16 v16, v25

    .line 214
    move/from16 v25, v29

    .line 194
    .end local v18    # "x":F
    .end local v26    # "y":F
    .end local v28    # "xx":F
    .end local v29    # "yy":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move/from16 v18, v2

    move/from16 v0, v16

    move/from16 v2, v24

    move-object/from16 v16, v1

    move/from16 v1, v23

    move/from16 v23, v3

    move/from16 v3, v25

    .end local v0    # "i":I
    goto/16 :goto_4

    .line 216
    .end local v16    # "yy2":F
    .local v9, "yy2":F
    .local v18, "gain":F
    :cond_5
    const/4 v0, 0x0

    cmpl-float v16, v11, v0

    if-nez v16, :cond_7

    cmpl-float v16, v12, v0

    if-nez v16, :cond_7

    cmpl-float v16, v13, v0

    if-nez v16, :cond_7

    cmpl-float v16, v14, v0

    if-nez v16, :cond_7

    cmpl-float v0, v15, v0

    if-nez v0, :cond_7

    .line 218
    const/4 v0, 0x0

    move/from16 v16, v9

    move/from16 v9, v19

    .end local v19    # "x1":F
    .restart local v0    # "i":I
    .local v9, "x1":F
    .restart local v16    # "yy2":F
    :goto_2
    if-ge v0, v2, :cond_6

    .line 219
    aget v19, v1, v0

    .line 220
    .local v19, "x":F
    mul-float v26, v4, v19

    mul-float v28, v5, v9

    add-float v26, v26, v28

    mul-float v28, v6, v20

    add-float v26, v26, v28

    mul-float v28, v7, v21

    sub-float v26, v26, v28

    mul-float v28, v8, v22

    sub-float v26, v26, v28

    .line 221
    .restart local v26    # "y":F
    mul-float v28, v26, v18

    mul-float v28, v28, v17

    sub-float v29, v27, v17

    mul-float v29, v29, v19

    add-float v28, v28, v29

    .line 222
    .restart local v28    # "xx":F
    move/from16 v20, v9

    .line 223
    move/from16 v9, v19

    .line 224
    move/from16 v22, v21

    .line 225
    move/from16 v21, v26

    .line 226
    mul-float v29, v4, v28

    mul-float v30, v5, v23

    add-float v29, v29, v30

    mul-float v30, v6, v24

    add-float v29, v29, v30

    mul-float v30, v7, v25

    sub-float v29, v29, v30

    mul-float v30, v8, v16

    sub-float v29, v29, v30

    .line 227
    .restart local v29    # "yy":F
    mul-float v30, v29, v18

    mul-float v30, v30, v17

    sub-float v31, v27, v17

    mul-float v31, v31, v28

    add-float v30, v30, v31

    aput v30, v1, v0

    .line 228
    move/from16 v24, v23

    .line 229
    move/from16 v23, v28

    .line 230
    move/from16 v16, v25

    .line 231
    move/from16 v25, v29

    .line 218
    .end local v19    # "x":F
    .end local v26    # "y":F
    .end local v28    # "xx":F
    .end local v29    # "yy":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move/from16 v19, v9

    move/from16 v0, v16

    move/from16 v9, v18

    move-object/from16 v16, v1

    move/from16 v18, v2

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v23, v3

    move/from16 v3, v25

    .end local v0    # "i":I
    goto/16 :goto_4

    .line 234
    .end local v16    # "yy2":F
    .local v9, "yy2":F
    .local v19, "x1":F
    :cond_7
    const/4 v0, 0x0

    move/from16 v16, v9

    move/from16 v9, v18

    .end local v18    # "gain":F
    .restart local v0    # "i":I
    .local v9, "gain":F
    .restart local v16    # "yy2":F
    :goto_3
    if-ge v0, v2, :cond_8

    .line 235
    add-float/2addr v4, v11

    .line 236
    add-float/2addr v5, v12

    .line 237
    add-float/2addr v6, v13

    .line 238
    add-float/2addr v7, v14

    .line 239
    add-float/2addr v8, v15

    .line 240
    add-float/2addr v9, v3

    .line 241
    aget v18, v1, v0

    .line 242
    .local v18, "x":F
    mul-float v26, v4, v18

    mul-float v28, v5, v19

    add-float v26, v26, v28

    mul-float v28, v6, v20

    add-float v26, v26, v28

    mul-float v28, v7, v21

    sub-float v26, v26, v28

    mul-float v28, v8, v22

    sub-float v26, v26, v28

    .line 243
    .restart local v26    # "y":F
    mul-float v28, v26, v9

    mul-float v28, v28, v17

    sub-float v29, v27, v17

    mul-float v29, v29, v18

    add-float v28, v28, v29

    .line 244
    .restart local v28    # "xx":F
    move/from16 v20, v19

    .line 245
    move/from16 v19, v18

    .line 246
    move/from16 v22, v21

    .line 247
    move/from16 v21, v26

    .line 248
    mul-float v29, v4, v28

    mul-float v30, v5, v23

    add-float v29, v29, v30

    mul-float v30, v6, v24

    add-float v29, v29, v30

    mul-float v30, v7, v25

    sub-float v29, v29, v30

    mul-float v30, v8, v16

    sub-float v29, v29, v30

    .line 249
    .restart local v29    # "yy":F
    mul-float v30, v29, v9

    mul-float v30, v30, v17

    sub-float v31, v27, v17

    mul-float v31, v31, v28

    add-float v30, v30, v31

    aput v30, v1, v0

    .line 250
    move/from16 v24, v23

    .line 251
    move/from16 v23, v28

    .line 252
    move/from16 v16, v25

    .line 253
    move/from16 v25, v29

    .line 234
    .end local v18    # "x":F
    .end local v26    # "y":F
    .end local v28    # "xx":F
    .end local v29    # "yy":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move/from16 v18, v2

    move/from16 v0, v16

    move/from16 v2, v24

    move-object/from16 v16, v1

    move/from16 v1, v23

    move/from16 v23, v3

    move/from16 v3, v25

    .line 257
    .end local v24    # "xx2":F
    .end local v25    # "yy1":F
    .local v0, "yy2":F
    .local v1, "xx1":F
    .local v2, "xx2":F
    .local v3, "yy1":F
    .local v16, "buffer":[F
    .local v18, "len":I
    .local v23, "gain_delta":F
    :goto_4
    move/from16 v24, v4

    .end local v4    # "a0":F
    .local v24, "a0":F
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move/from16 v25, v5

    .end local v5    # "a1":F
    .local v25, "a1":F
    float-to-double v4, v4

    const-wide v26, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v4, v26

    if-gez v4, :cond_9

    .line 258
    const/16 v19, 0x0

    move/from16 v4, v19

    goto :goto_5

    .line 257
    :cond_9
    move/from16 v4, v19

    .line 259
    .end local v19    # "x1":F
    .local v4, "x1":F
    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move/from16 v19, v6

    .end local v6    # "a2":F
    .local v19, "a2":F
    float-to-double v5, v5

    cmpg-double v5, v5, v26

    if-gez v5, :cond_a

    .line 260
    const/16 v20, 0x0

    move/from16 v5, v20

    goto :goto_6

    .line 259
    :cond_a
    move/from16 v5, v20

    .line 261
    .end local v20    # "x2":F
    .local v5, "x2":F
    :goto_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move/from16 v20, v7

    .end local v7    # "b1":F
    .local v20, "b1":F
    float-to-double v6, v6

    cmpg-double v6, v6, v26

    if-gez v6, :cond_b

    .line 262
    const/16 v21, 0x0

    move/from16 v6, v21

    goto :goto_7

    .line 261
    :cond_b
    move/from16 v6, v21

    .line 263
    .end local v21    # "y1":F
    .local v6, "y1":F
    :goto_7
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v21, v8

    .end local v8    # "b2":F
    .local v21, "b2":F
    float-to-double v7, v7

    cmpg-double v7, v7, v26

    if-gez v7, :cond_c

    .line 264
    const/16 v22, 0x0

    move/from16 v7, v22

    goto :goto_8

    .line 263
    :cond_c
    move/from16 v7, v22

    .line 265
    .end local v22    # "y2":F
    .local v7, "y2":F
    :goto_8
    move-object/from16 v8, p0

    iput v4, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x1:F

    .line 266
    iput v5, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x2:F

    .line 267
    iput v6, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y1:F

    .line 268
    iput v7, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y2:F

    .line 269
    iput v1, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->xx1:F

    .line 270
    iput v2, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->xx2:F

    .line 271
    iput v3, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->yy1:F

    .line 272
    iput v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->yy2:F

    .line 275
    .end local v0    # "yy2":F
    .end local v1    # "xx1":F
    .end local v2    # "xx2":F
    .end local v3    # "yy1":F
    .end local v4    # "x1":F
    .end local v5    # "x2":F
    .end local v6    # "y1":F
    .end local v7    # "y2":F
    .end local v9    # "gain":F
    .end local v10    # "wet_delta":F
    .end local v11    # "a0_delta":F
    .end local v12    # "a1_delta":F
    .end local v13    # "a2_delta":F
    .end local v14    # "b1_delta":F
    .end local v15    # "b2_delta":F
    .end local v17    # "wet":F
    .end local v18    # "len":I
    .end local v19    # "a2":F
    .end local v20    # "b1":F
    .end local v21    # "b2":F
    .end local v23    # "gain_delta":F
    .end local v24    # "a0":F
    .end local v25    # "a1":F
    :goto_9
    iget v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    iput v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a0:F

    .line 276
    iget v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    iput v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a1:F

    .line 277
    iget v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    iput v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_a2:F

    .line 278
    iget v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    iput v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b1:F

    .line 279
    iget v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    iput v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_b2:F

    .line 280
    iget v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    iput v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_gain:F

    .line 281
    iget v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    iput v0, v8, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_wet:F

    .line 283
    return-void
.end method

.method public processAudio(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 2
    .param p1, "sbuffer"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 132
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter1(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 134
    :cond_0
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 135
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter2(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 136
    :cond_1
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    .line 137
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter2(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 138
    :cond_2
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    .line 139
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter2(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 140
    :cond_3
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_4

    .line 141
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter2(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 142
    :cond_4
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 143
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter4(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 144
    :cond_5
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    .line 145
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filter4(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 146
    :cond_6
    return-void
.end method

.method public reset()V
    .locals 2

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->last_set:Z

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x1:F

    .line 111
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->x2:F

    .line 112
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y1:F

    .line 113
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->y2:F

    .line 114
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->xx1:F

    .line 115
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->xx2:F

    .line 116
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->yy1:F

    .line 117
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->yy2:F

    .line 118
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->wet:F

    .line 119
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->gain:F

    .line 120
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a0:F

    .line 121
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a1:F

    .line 122
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->a2:F

    .line 123
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b1:F

    .line 124
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->b2:F

    .line 125
    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .param p1, "filtertype"    # I

    .line 128
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->filtertype:I

    .line 129
    return-void
.end method

.method public setFrequency(D)V
    .locals 2
    .param p1, "cent"    # D

    .line 94
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 96
    :cond_0
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->cutoff:D

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    .line 98
    return-void
.end method

.method public setResonance(D)V
    .locals 2
    .param p1, "db"    # D

    .line 101
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 103
    :cond_0
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->resonancedB:D

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftFilter;->dirty:Z

    .line 105
    return-void
.end method
