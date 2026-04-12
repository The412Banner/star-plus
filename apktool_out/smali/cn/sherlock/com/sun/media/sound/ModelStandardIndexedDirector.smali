.class public Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;
.super Ljava/lang/Object;
.source "ModelStandardIndexedDirector.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelDirector;


# instance fields
.field counters:[I

.field mat:[[I

.field noteOffUsed:Z

.field noteOnUsed:Z

.field performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

.field player:Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

.field trantables:[[B


# direct methods
.method public constructor <init>([Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)V
    .locals 4
    .param p1, "performers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "player"    # Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->noteOnUsed:Z

    .line 38
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->noteOffUsed:Z

    .line 47
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 48
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->player:Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 50
    aget-object v1, p1, v0

    .line 51
    .local v1, "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isReleaseTriggered()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 52
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->noteOffUsed:Z

    goto :goto_1

    .line 54
    :cond_0
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->noteOnUsed:Z

    .line 49
    .end local v1    # "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->buildindex()V

    .line 58
    return-void
.end method

.method private buildindex()V
    .locals 24

    .line 78
    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/16 v4, 0x81

    aput v4, v2, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    .line 79
    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->counters:[I

    .line 80
    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    array-length v2, v1

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v6, v1, v5

    .line 81
    .local v6, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyFrom()I

    move-result v7

    .line 82
    .local v7, "keyFrom":I
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyTo()I

    move-result v8

    .line 83
    .local v8, "keyTo":I
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelFrom()I

    move-result v9

    .line 84
    .local v9, "velFrom":I
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelTo()I

    move-result v10

    .line 85
    .local v10, "velTo":I
    if-le v7, v8, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    if-le v9, v10, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    invoke-direct {v0, v7}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->restrict(I)I

    move-result v7

    .line 88
    invoke-direct {v0, v8}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->restrict(I)I

    move-result v8

    .line 89
    invoke-direct {v0, v9}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->restrict(I)I

    move-result v9

    .line 90
    invoke-direct {v0, v10}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->restrict(I)I

    move-result v10

    .line 91
    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v11, v11, v4

    aput-byte v3, v11, v7

    .line 92
    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v11, v11, v4

    add-int/lit8 v12, v8, 0x1

    aput-byte v3, v11, v12

    .line 93
    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v11, v11, v3

    aput-byte v3, v11, v9

    .line 94
    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v11, v11, v3

    add-int/lit8 v12, v10, 0x1

    aput-byte v3, v11, v12

    .line 80
    .end local v6    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v7    # "keyFrom":I
    .end local v8    # "keyTo":I
    .end local v9    # "velFrom":I
    .end local v10    # "velTo":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    :cond_2
    const/4 v1, 0x0

    .local v1, "d":I
    :goto_2
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    array-length v2, v2

    const/4 v5, -0x1

    if-ge v1, v2, :cond_7

    .line 97
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v2, v2, v1

    .line 98
    .local v2, "trantable":[B
    array-length v6, v2

    .line 99
    .local v6, "transize":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_4

    .line 100
    aget-byte v8, v2, v7

    if-ne v8, v3, :cond_3

    .line 101
    aput-byte v5, v2, v7

    .line 102
    goto :goto_4

    .line 104
    :cond_3
    aput-byte v5, v2, v7

    .line 99
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 106
    .end local v7    # "i":I
    :cond_4
    :goto_4
    const/4 v7, -0x1

    .line 107
    .local v7, "counter":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v6, :cond_6

    .line 108
    aget-byte v9, v2, v8

    if-eqz v9, :cond_5

    .line 109
    add-int/lit8 v7, v7, 0x1

    .line 110
    aget-byte v9, v2, v8

    if-ne v9, v5, :cond_5

    .line 111
    goto :goto_6

    .line 113
    :cond_5
    int-to-byte v9, v7

    aput-byte v9, v2, v8

    .line 107
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 115
    .end local v8    # "i":I
    :cond_6
    :goto_6
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->counters:[I

    aput v7, v5, v1

    .line 96
    .end local v2    # "trantable":[B
    .end local v6    # "transize":I
    .end local v7    # "counter":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 117
    .end local v1    # "d":I
    :cond_7
    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->counters:[I

    aget v1, v1, v4

    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->counters:[I

    aget v2, v2, v3

    mul-int/2addr v1, v2

    new-array v1, v1, [[I

    iput-object v1, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->mat:[[I

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "ix":I
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    array-length v6, v2

    move v7, v4

    :goto_7
    if-ge v7, v6, :cond_10

    aget-object v8, v2, v7

    .line 120
    .local v8, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyFrom()I

    move-result v9

    .line 121
    .local v9, "keyFrom":I
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyTo()I

    move-result v10

    .line 122
    .local v10, "keyTo":I
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelFrom()I

    move-result v11

    .line 123
    .local v11, "velFrom":I
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelTo()I

    move-result v12

    .line 124
    .local v12, "velTo":I
    if-le v9, v10, :cond_8

    goto :goto_8

    .line 125
    :cond_8
    if-le v11, v12, :cond_9

    .line 119
    .end local v8    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v9    # "keyFrom":I
    .end local v10    # "keyTo":I
    .end local v11    # "velFrom":I
    .end local v12    # "velTo":I
    :goto_8
    move-object/from16 v18, v2

    move/from16 v17, v3

    move/from16 v16, v4

    move/from16 v20, v6

    goto/16 :goto_d

    .line 126
    .restart local v8    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v9    # "keyFrom":I
    .restart local v10    # "keyTo":I
    .restart local v11    # "velFrom":I
    .restart local v12    # "velTo":I
    :cond_9
    invoke-direct {v0, v9}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->restrict(I)I

    move-result v9

    .line 127
    invoke-direct {v0, v10}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->restrict(I)I

    move-result v10

    .line 128
    invoke-direct {v0, v11}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->restrict(I)I

    move-result v11

    .line 129
    invoke-direct {v0, v12}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->restrict(I)I

    move-result v12

    .line 130
    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v13, v13, v4

    aget-byte v13, v13, v9

    .line 131
    .local v13, "x_from":I
    iget-object v14, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v14, v14, v4

    add-int/lit8 v15, v10, 0x1

    aget-byte v14, v14, v15

    .line 132
    .local v14, "x_to":I
    iget-object v15, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v15, v15, v3

    aget-byte v15, v15, v11

    .line 133
    .local v15, "y_from":I
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v4, v4, v3

    add-int/lit8 v17, v12, 0x1

    aget-byte v4, v4, v17

    .line 134
    .local v4, "y_to":I
    if-ne v14, v5, :cond_a

    .line 135
    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->counters:[I

    const/16 v16, 0x0

    aget v14, v3, v16

    .line 136
    :cond_a
    if-ne v4, v5, :cond_b

    .line 137
    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->counters:[I

    const/16 v17, 0x1

    aget v4, v3, v17

    .line 138
    :cond_b
    move v3, v15

    .local v3, "y":I
    :goto_9
    if-ge v3, v4, :cond_f

    .line 139
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->counters:[I

    const/16 v16, 0x0

    aget v5, v5, v16

    mul-int/2addr v5, v3

    add-int/2addr v5, v13

    .line 140
    .local v5, "i":I
    move/from16 v18, v13

    move/from16 v23, v18

    move-object/from16 v18, v2

    move/from16 v2, v23

    .local v2, "x":I
    :goto_a
    if-ge v2, v14, :cond_e

    .line 141
    move/from16 v19, v4

    .end local v4    # "y_to":I
    .local v19, "y_to":I
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->mat:[[I

    aget-object v4, v4, v5

    .line 142
    .local v4, "mprev":[I
    if-nez v4, :cond_c

    .line 143
    move/from16 v20, v6

    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->mat:[[I

    filled-new-array {v1}, [I

    move-result-object v21

    aput-object v21, v6, v5

    move-object/from16 v21, v8

    move/from16 v22, v9

    const/16 v17, 0x1

    goto :goto_c

    .line 145
    :cond_c
    move/from16 v20, v6

    array-length v6, v4

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    .line 146
    .local v6, "mnew":[I
    move-object/from16 v21, v8

    .end local v8    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .local v21, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    aput v1, v6, v8

    .line 147
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_b
    move/from16 v22, v9

    .end local v9    # "keyFrom":I
    .local v22, "keyFrom":I
    array-length v9, v4

    if-ge v8, v9, :cond_d

    .line 148
    aget v9, v4, v8

    aput v9, v6, v8

    .line 147
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v22

    goto :goto_b

    .line 149
    .end local v8    # "k":I
    :cond_d
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->mat:[[I

    aput-object v6, v8, v5

    .line 151
    .end local v6    # "mnew":[I
    :goto_c
    nop

    .end local v4    # "mprev":[I
    add-int/lit8 v5, v5, 0x1

    .line 140
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v19

    move/from16 v6, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    goto :goto_a

    .end local v19    # "y_to":I
    .end local v21    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v22    # "keyFrom":I
    .local v4, "y_to":I
    .local v8, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v9    # "keyFrom":I
    :cond_e
    move/from16 v19, v4

    move/from16 v20, v6

    move-object/from16 v21, v8

    move/from16 v22, v9

    const/16 v17, 0x1

    .line 138
    .end local v2    # "x":I
    .end local v4    # "y_to":I
    .end local v5    # "i":I
    .end local v8    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v9    # "keyFrom":I
    .restart local v19    # "y_to":I
    .restart local v21    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v22    # "keyFrom":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v18

    const/4 v5, -0x1

    goto :goto_9

    .end local v19    # "y_to":I
    .end local v21    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v22    # "keyFrom":I
    .restart local v4    # "y_to":I
    .restart local v8    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v9    # "keyFrom":I
    :cond_f
    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v6

    move-object/from16 v21, v8

    move/from16 v22, v9

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 154
    .end local v3    # "y":I
    .end local v4    # "y_to":I
    .end local v8    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v9    # "keyFrom":I
    .restart local v19    # "y_to":I
    .restart local v21    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v22    # "keyFrom":I
    add-int/lit8 v1, v1, 0x1

    .line 119
    .end local v10    # "keyTo":I
    .end local v11    # "velFrom":I
    .end local v12    # "velTo":I
    .end local v13    # "x_from":I
    .end local v14    # "x_to":I
    .end local v15    # "y_from":I
    .end local v19    # "y_to":I
    .end local v21    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v22    # "keyFrom":I
    :goto_d
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    move/from16 v3, v17

    move-object/from16 v2, v18

    move/from16 v6, v20

    const/4 v5, -0x1

    goto/16 :goto_7

    .line 156
    :cond_10
    return-void
.end method

.method private lookupIndex(II)[I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 61
    if-ltz p1, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, p1

    .line 63
    .local v0, "xt":I
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->trantables:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget-byte v2, v2, p2

    .line 64
    .local v2, "yt":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 65
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->mat:[[I

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->counters:[I

    aget v1, v4, v1

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    aget-object v1, v3, v1

    return-object v1

    .line 68
    .end local v0    # "xt":I
    .end local v2    # "yt":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private restrict(I)I
    .locals 1
    .param p1, "value"    # I

    .line 72
    if-gez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    return v0

    .line 74
    :cond_1
    return p1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 159
    return-void
.end method

.method public noteOff(II)V
    .locals 7
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 162
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->noteOffUsed:Z

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 164
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->lookupIndex(II)[I

    move-result-object v0

    .line 165
    .local v0, "plist":[I
    if-nez v0, :cond_1

    return-void

    .line 166
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    .line 167
    .local v3, "i":I
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    aget-object v4, v4, v3

    .line 168
    .local v4, "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isReleaseTriggered()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->player:Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;->play(I[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)V

    .line 166
    .end local v3    # "i":I
    .end local v4    # "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_3
    return-void
.end method

.method public noteOn(II)V
    .locals 7
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 175
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->noteOnUsed:Z

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 177
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->lookupIndex(II)[I

    move-result-object v0

    .line 178
    .local v0, "plist":[I
    if-nez v0, :cond_1

    return-void

    .line 179
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    .line 180
    .local v3, "i":I
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    aget-object v4, v4, v3

    .line 181
    .local v4, "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isReleaseTriggered()Z

    move-result v5

    if-nez v5, :cond_2

    .line 182
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;->player:Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;->play(I[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)V

    .line 179
    .end local v3    # "i":I
    .end local v4    # "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_3
    return-void
.end method
