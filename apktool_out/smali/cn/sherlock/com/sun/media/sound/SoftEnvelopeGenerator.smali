.class public Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;
.super Ljava/lang/Object;
.source "SoftEnvelopeGenerator.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftProcess;


# static fields
.field public static final EG_ATTACK:I = 0x2

.field public static final EG_DECAY:I = 0x4

.field public static final EG_DELAY:I = 0x1

.field public static final EG_END:I = 0x8

.field public static final EG_HOLD:I = 0x3

.field public static final EG_OFF:I = 0x0

.field public static final EG_RELEASE:I = 0x6

.field public static final EG_SHUTDOWN:I = 0x7

.field public static final EG_SUSTAIN:I = 0x5


# instance fields
.field private active:[[D

.field private attack:[[D

.field private attack2:[[D

.field private control_time:D

.field private decay:[[D

.field private decay2:[[D

.field private delay:[[D

.field private hold:[[D

.field max_count:I

.field private on:[[D

.field private out:[[D

.field private release:[[D

.field private release2:[[D

.field private shutdown:[[D

.field private stage:[I

.field private stage_count:[I

.field private stage_ix:[I

.field private stage_v:[D

.field private sustain:[[D

.field used_count:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->used_count:I

    .line 45
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    .line 46
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    .line 47
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v1, v1, [D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_v:[D

    .line 48
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    .line 49
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->on:[[D

    .line 50
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->active:[[D

    .line 51
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    .line 52
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->delay:[[D

    .line 53
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->attack:[[D

    .line 54
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->hold:[[D

    .line 55
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay:[[D

    .line 56
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->sustain:[[D

    .line 57
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release:[[D

    .line 58
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->shutdown:[[D

    .line 59
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release2:[[D

    .line 60
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->attack2:[[D

    .line 61
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->max_count:I

    new-array v2, v2, [I

    aput v4, v2, v4

    aput v1, v2, v0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay2:[[D

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .locals 1
    .param p1, "instance"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 89
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->used_count:I

    if-lt p1, v0, :cond_0

    .line 90
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->used_count:I

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 93
    :cond_1
    const-string v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->on:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 95
    :cond_2
    const-string v0, "active"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->active:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 97
    :cond_3
    const-string v0, "delay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->delay:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 99
    :cond_4
    const-string v0, "attack"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->attack:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 101
    :cond_5
    const-string v0, "hold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->hold:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 103
    :cond_6
    const-string v0, "decay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 105
    :cond_7
    const-string/jumbo v0, "sustain"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 106
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->sustain:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 107
    :cond_8
    const-string/jumbo v0, "release"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 109
    :cond_9
    const-string/jumbo v0, "shutdown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 110
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->shutdown:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 111
    :cond_a
    const-string v0, "attack2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 112
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->attack2:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 113
    :cond_b
    const-string v0, "decay2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 114
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay2:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 115
    :cond_c
    const-string/jumbo v0, "release2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 116
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release2:[[D

    aget-object v0, v0, p1

    return-object v0

    .line 118
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V
    .locals 4
    .param p1, "synth"    # Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 84
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getControlRate()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    .line 85
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->processControlLogic()V

    .line 86
    return-void
.end method

.method public processControlLogic()V
    .locals 26

    .line 122
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->used_count:I

    if-ge v1, v2, :cond_17

    .line 124
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aget v2, v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 125
    goto/16 :goto_4

    .line 127
    :cond_0
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aget v2, v2, v1

    const/4 v4, 0x7

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const-wide v13, 0x4092c00000000000L    # 1200.0

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/16 v21, 0x0

    if-lez v2, :cond_5

    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aget v2, v2, v1

    const/4 v15, 0x6

    if-ge v2, v15, :cond_5

    .line 128
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->on:[[D

    aget-object v2, v2, v1

    aget-wide v24, v2, v21

    cmpg-double v2, v24, v9

    if-gez v2, :cond_5

    .line 129
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->on:[[D

    aget-object v2, v2, v1

    aget-wide v24, v2, v21

    cmpg-double v2, v24, v5

    if-gez v2, :cond_2

    .line 130
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v15, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->shutdown:[[D

    aget-object v15, v15, v1

    aget-wide v24, v15, v21

    div-double v9, v24, v13

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget-wide v5, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v9, v5

    double-to-int v5, v9

    aput v5, v2, v1

    .line 132
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v2, v2, v1

    if-gez v2, :cond_1

    .line 133
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aput v21, v2, v1

    .line 134
    :cond_1
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_v:[D

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v5, v5, v1

    aget-wide v9, v5, v21

    aput-wide v9, v2, v1

    .line 135
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aput v21, v2, v1

    .line 136
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v4, v2, v1

    goto/16 :goto_1

    .line 138
    :cond_2
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release2:[[D

    aget-object v2, v2, v1

    aget-wide v5, v2, v21

    cmpg-double v2, v5, v7

    if-gez v2, :cond_3

    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release:[[D

    aget-object v2, v2, v1

    aget-wide v5, v2, v21

    cmpg-double v2, v5, v17

    if-gez v2, :cond_3

    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release:[[D

    aget-object v2, v2, v1

    aget-wide v5, v2, v21

    .line 139
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v17, v2, v21

    .line 141
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->active:[[D

    aget-object v2, v2, v1

    aput-wide v17, v2, v21

    .line 142
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v3, v2, v1

    .line 143
    goto/16 :goto_4

    .line 146
    :cond_3
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release:[[D

    aget-object v5, v5, v1

    aget-wide v9, v5, v21

    div-double/2addr v9, v13

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v9, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v5, v9

    double-to-int v5, v5

    aput v5, v2, v1

    .line 148
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v5, v2, v1

    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release2:[[D

    aget-object v6, v6, v1

    aget-wide v9, v6, v21

    iget-wide v7, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v7, v7, v22

    div-double/2addr v9, v7

    double-to-int v6, v9

    add-int/2addr v5, v6

    aput v5, v2, v1

    .line 150
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v2, v2, v1

    if-gez v2, :cond_4

    .line 151
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aput v21, v2, v1

    .line 153
    :cond_4
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aput v21, v2, v1

    .line 155
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aget-wide v5, v2, v21

    sub-double v5, v19, v5

    .line 156
    .local v5, "m":D
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    iget-object v7, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v7, v7, v1

    int-to-double v7, v7

    mul-double/2addr v7, v5

    double-to-int v7, v7

    aput v7, v2, v1

    .line 158
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v15, v2, v1

    .line 163
    .end local v5    # "m":D
    :cond_5
    :goto_1
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aget v2, v2, v1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v9, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 282
    :pswitch_0
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v4, v2, v1

    add-int/2addr v4, v9

    aput v4, v2, v1

    .line 283
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v4, v4, v1

    if-lt v2, v4, :cond_6

    .line 284
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v17, v2, v21

    .line 285
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->active:[[D

    aget-object v2, v2, v1

    aput-wide v17, v2, v21

    .line 286
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v3, v2, v1

    goto/16 :goto_4

    .line 288
    :cond_6
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    int-to-double v2, v2

    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v4, v4, v1

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 289
    .local v2, "m":D
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v4, v4, v1

    sub-double v19, v19, v2

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_v:[D

    aget-wide v6, v5, v1

    mul-double v19, v19, v6

    aput-wide v19, v4, v21

    .line 291
    .end local v2    # "m":D
    goto/16 :goto_4

    .line 244
    :pswitch_1
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v6, v2, v1

    add-int/2addr v6, v9

    aput v6, v2, v1

    .line 245
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v6, v6, v1

    if-lt v2, v6, :cond_7

    .line 246
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v17, v2, v21

    .line 247
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->active:[[D

    aget-object v2, v2, v1

    aput-wide v17, v2, v21

    .line 248
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v3, v2, v1

    goto/16 :goto_4

    .line 250
    :cond_7
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    int-to-double v2, v2

    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v6, v6, v1

    int-to-double v9, v6

    div-double/2addr v2, v9

    .line 251
    .restart local v2    # "m":D
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v6, v6, v1

    sub-double v9, v19, v2

    aput-wide v9, v6, v21

    .line 253
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->on:[[D

    aget-object v6, v6, v1

    aget-wide v9, v6, v21

    const-wide/high16 v15, -0x4020000000000000L    # -0.5

    cmpg-double v6, v9, v15

    if-gez v6, :cond_9

    .line 254
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->shutdown:[[D

    aget-object v9, v9, v1

    aget-wide v15, v9, v21

    div-double v9, v15, v13

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget-wide v11, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v9, v11

    double-to-int v9, v9

    aput v9, v6, v1

    .line 256
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v6, v6, v1

    if-gez v6, :cond_8

    .line 257
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aput v21, v6, v1

    .line 258
    :cond_8
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_v:[D

    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v9, v9, v1

    aget-wide v10, v9, v21

    aput-wide v10, v6, v1

    .line 259
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aput v21, v6, v1

    .line 260
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v4, v6, v1

    .line 264
    :cond_9
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->on:[[D

    aget-object v4, v4, v1

    aget-wide v9, v4, v21

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v9, v11

    if-lez v4, :cond_b

    .line 265
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->sustain:[[D

    aget-object v4, v4, v1

    aget-wide v9, v4, v21

    mul-double/2addr v9, v7

    .line 266
    .local v9, "sustain":D
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v4, v4, v1

    aget-wide v6, v4, v21

    cmpl-double v4, v6, v9

    if-lez v4, :cond_b

    .line 267
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v5, v4, v1

    .line 268
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v21

    div-double/2addr v6, v13

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v7, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    aput v5, v4, v1

    .line 270
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v5, v4, v1

    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay2:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v21

    iget-wide v11, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v13

    div-double/2addr v7, v11

    double-to-int v6, v7

    add-int/2addr v5, v6

    aput v5, v4, v1

    .line 272
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v4, v4, v1

    if-gez v4, :cond_a

    .line 273
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aput v21, v4, v1

    .line 274
    :cond_a
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v21

    sub-double v5, v5, v19

    sub-double v7, v9, v19

    div-double/2addr v5, v7

    .line 275
    .end local v2    # "m":D
    .restart local v5    # "m":D
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v3, v3, v1

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 280
    .end local v5    # "m":D
    .end local v9    # "sustain":D
    :cond_b
    goto/16 :goto_4

    .line 242
    :pswitch_2
    goto/16 :goto_4

    .line 226
    :pswitch_3
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v4, v2, v1

    add-int/2addr v4, v9

    aput v4, v2, v1

    .line 227
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->sustain:[[D

    aget-object v2, v2, v1

    aget-wide v4, v2, v21

    mul-double/2addr v4, v7

    .line 228
    .local v4, "sustain":D
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v6, v6, v1

    if-lt v2, v6, :cond_c

    .line 229
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v4, v2, v21

    .line 230
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    const/4 v6, 0x5

    aput v6, v2, v1

    .line 231
    cmpg-double v2, v4, v7

    if-gez v2, :cond_16

    .line 232
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v17, v2, v21

    .line 233
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->active:[[D

    aget-object v2, v2, v1

    aput-wide v17, v2, v21

    .line 234
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v3, v2, v1

    goto/16 :goto_4

    .line 237
    :cond_c
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    int-to-double v2, v2

    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v6, v6, v1

    int-to-double v6, v6

    div-double/2addr v2, v6

    .line 238
    .restart local v2    # "m":D
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v6, v6, v1

    sub-double v19, v19, v2

    mul-double v7, v4, v2

    add-double v19, v19, v7

    aput-wide v19, v6, v21

    .line 240
    .end local v2    # "m":D
    goto/16 :goto_4

    .line 214
    .end local v4    # "sustain":D
    :pswitch_4
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v3, v2, v1

    add-int/2addr v3, v9

    aput v3, v2, v1

    .line 215
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v3, v3, v1

    if-lt v2, v3, :cond_16

    .line 216
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v5, v2, v1

    .line 217
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v21

    div-double/2addr v4, v13

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-wide v5, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 219
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v3, v2, v1

    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay2:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v21

    iget-wide v7, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    div-double/2addr v5, v7

    double-to-int v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 220
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v2, v2, v1

    if-gez v2, :cond_d

    .line 221
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aput v21, v2, v1

    .line 222
    :cond_d
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aput v21, v2, v1

    goto/16 :goto_4

    .line 198
    :pswitch_5
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v3, v2, v1

    add-int/2addr v3, v9

    aput v3, v2, v1

    .line 199
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v3, v3, v1

    if-lt v2, v3, :cond_e

    .line 200
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v19, v2, v21

    .line 201
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v6, v2, v1

    goto/16 :goto_4

    .line 204
    :cond_e
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    int-to-double v2, v2

    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v4, v4, v1

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 205
    .local v2, "a":D
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    div-double/2addr v6, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    add-double v6, v6, v19

    .line 206
    .end local v2    # "a":D
    .local v6, "a":D
    cmpg-double v2, v6, v17

    if-gez v2, :cond_f

    .line 207
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 208
    :cond_f
    cmpl-double v2, v6, v19

    if-lez v2, :cond_10

    .line 209
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 210
    :cond_10
    :goto_2
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v6, v2, v21

    .line 212
    .end local v6    # "a":D
    goto/16 :goto_4

    .line 165
    :pswitch_6
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->active:[[D

    aget-object v2, v2, v1

    aput-wide v19, v2, v21

    .line 166
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->on:[[D

    aget-object v2, v2, v1

    aget-wide v3, v2, v21

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v3, v7

    if-gez v2, :cond_11

    .line 167
    goto/16 :goto_4

    .line 168
    :cond_11
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v9, v2, v1

    .line 169
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->delay:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v21

    div-double/2addr v4, v13

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-wide v7, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v3, v7

    double-to-int v3, v3

    aput v3, v2, v1

    .line 171
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    if-gez v2, :cond_12

    .line 172
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aput v21, v2, v1

    .line 174
    :cond_12
    :pswitch_7
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v2, v2, v1

    if-nez v2, :cond_15

    .line 175
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->attack:[[D

    aget-object v2, v2, v1

    aget-wide v3, v2, v21

    .line 176
    .local v3, "attack":D
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->attack2:[[D

    aget-object v2, v2, v1

    aget-wide v7, v2, v21

    .line 178
    .local v7, "attack2":D
    const-wide v9, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, v7, v9

    if-gez v2, :cond_13

    cmpg-double v2, v3, v17

    if-gez v2, :cond_13

    .line 179
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 180
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v19, v2, v21

    .line 181
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v6, v2, v1

    .line 182
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->hold:[[D

    aget-object v5, v5, v1

    aget-wide v9, v5, v21

    div-double/2addr v9, v13

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v9, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v5, v9

    double-to-int v5, v5

    aput v5, v2, v1

    .line 184
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aput v21, v2, v1

    goto :goto_3

    .line 186
    :cond_13
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    const/4 v5, 0x2

    aput v5, v2, v1

    .line 187
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    div-double v5, v3, v13

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v9, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v5, v9

    double-to-int v5, v5

    aput v5, v2, v1

    .line 189
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v5, v2, v1

    iget-wide v9, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->control_time:D

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v11

    div-double v9, v7, v9

    double-to-int v6, v9

    add-int/2addr v5, v6

    aput v5, v2, v1

    .line 190
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aget v2, v2, v1

    if-gez v2, :cond_14

    .line 191
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_count:[I

    aput v21, v2, v1

    .line 192
    :cond_14
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aput v21, v2, v1

    .line 194
    .end local v3    # "attack":D
    .end local v7    # "attack2":D
    :goto_3
    goto :goto_4

    .line 195
    :cond_15
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage_ix:[I

    aget v3, v2, v1

    sub-int/2addr v3, v9

    aput v3, v2, v1

    .line 196
    nop

    .line 122
    :cond_16
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 297
    .end local v1    # "i":I
    :cond_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 5

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->used_count:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->stage:[I

    aput v2, v1, v0

    .line 67
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->on:[[D

    aget-object v1, v1, v0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 68
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->out:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 69
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->delay:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 70
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->attack:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 71
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->hold:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 72
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 73
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->sustain:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 74
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 75
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->shutdown:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 76
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->attack2:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 77
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->decay2:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 78
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->release2:[[D

    aget-object v1, v1, v0

    aput-wide v3, v1, v2

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_0
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;->used_count:I

    .line 81
    return-void
.end method
