.class public Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;
.super Ljava/lang/Object;
.source "SoftLowFrequencyOscillator.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftProcess;


# static fields
.field private static PI2:D


# instance fields
.field private control_time:D

.field private delay:[[D

.field private delay2:[[D

.field private delay_counter:[I

.field private freq:[[D

.field private max_count:I

.field private out:[[D

.field private sin_factor:D

.field private sin_phase:[D

.field private sin_step:[D

.field private sin_stepfreq:[D

.field private used_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    sput-wide v0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->PI2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->max_count:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->used_count:I

    .line 36
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->max_count:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->out:[[D

    .line 37
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay:[[D

    .line 38
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay2:[[D

    .line 39
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->max_count:I

    new-array v2, v2, [I

    aput v4, v2, v4

    aput v1, v2, v0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->freq:[[D

    .line 40
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->max_count:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay_counter:[I

    .line 41
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->max_count:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_phase:[D

    .line 42
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->max_count:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    .line 43
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->max_count:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_step:[D

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->control_time:D

    .line 45
    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_factor:D

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    aput-wide v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .locals 1
    .param p1, "instance"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 118
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->used_count:I

    if-lt p1, v0, :cond_0

    .line 119
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->used_count:I

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->out:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 122
    :cond_1
    const-string v0, "delay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 124
    :cond_2
    const-string v0, "delay2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay2:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 126
    :cond_3
    const-string v0, "freq"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->freq:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 128
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V
    .locals 11
    .param p1, "synth"    # Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 71
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getControlRate()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->control_time:D

    .line 72
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->control_time:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_factor:D

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->used_count:I

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay_counter:[I

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay:[[D

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    const-wide v8, 0x4092c00000000000L    # 1200.0

    div-double/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-wide v8, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->control_time:D

    div-double/2addr v6, v8

    double-to-int v4, v6

    aput v4, v1, v0

    .line 76
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay_counter:[I

    aget v4, v1, v0

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay2:[[D

    aget-object v6, v6, v0

    aget-wide v5, v6, v5

    iget-wide v7, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->control_time:D

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    div-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    aput v4, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->processControlLogic()V

    .line 79
    return-void
.end method

.method public processControlLogic()V
    .locals 13

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->used_count:I

    if-ge v0, v1, :cond_3

    .line 83
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay_counter:[I

    aget v1, v1, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    if-lez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay_counter:[I

    aget v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    aput v5, v1, v0

    .line 85
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->out:[[D

    aget-object v1, v1, v0

    aput-wide v2, v1, v4

    goto :goto_2

    .line 87
    :cond_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->freq:[[D

    aget-object v1, v1, v0

    aget-wide v5, v1, v4

    .line 89
    .local v5, "f":D
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    aget-wide v7, v1, v0

    cmpl-double v1, v7, v5

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    aput-wide v5, v1, v0

    .line 91
    const-wide v7, 0x40baf40000000000L    # 6900.0

    sub-double v7, v5, v7

    .line 92
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide v11, 0x4092c00000000000L    # 1200.0

    div-double/2addr v9, v11

    mul-double/2addr v7, v9

    .line 91
    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    const-wide v9, 0x407b800000000000L    # 440.0

    mul-double/2addr v7, v9

    .line 93
    .local v7, "fr":D
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_step:[D

    iget-wide v9, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_factor:D

    mul-double/2addr v9, v7

    aput-wide v9, v1, v0

    .line 106
    .end local v7    # "fr":D
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_phase:[D

    aget-wide v7, v1, v0

    .line 107
    .local v7, "p":D
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_step:[D

    aget-wide v9, v1, v0

    add-double/2addr v7, v9

    .line 108
    :goto_1
    sget-wide v9, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->PI2:D

    cmpl-double v1, v7, v9

    if-lez v1, :cond_2

    .line 109
    sget-wide v9, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->PI2:D

    sub-double/2addr v7, v9

    goto :goto_1

    .line 110
    :cond_2
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->out:[[D

    aget-object v1, v1, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v2

    add-double/2addr v9, v2

    aput-wide v9, v1, v4

    .line 111
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_phase:[D

    aput-wide v7, v1, v0

    .line 82
    .end local v5    # "f":D
    .end local v7    # "p":D
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 7

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->used_count:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->out:[[D

    aget-object v1, v1, v0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 58
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 59
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay2:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 60
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->freq:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 61
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->delay_counter:[I

    aput v2, v1, v0

    .line 62
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_phase:[D

    aput-wide v3, v1, v0

    .line 64
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    aput-wide v5, v1, v0

    .line 65
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->sin_step:[D

    aput-wide v3, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;->used_count:I

    .line 68
    return-void
.end method
