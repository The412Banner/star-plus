.class public Lcn/sherlock/com/sun/media/sound/SoftTuning;
.super Ljava/lang/Object;
.source "SoftTuning.java"


# instance fields
.field private name:Ljava/lang/String;

.field private patch:Ljp/kshoji/javax/sound/midi/Patch;

.field private tuning:[D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 40
    const/16 v1, 0x80

    new-array v1, v1, [D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    .line 41
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->patch:Ljp/kshoji/javax/sound/midi/Patch;

    .line 44
    const-string v0, "12-TET"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit8 v2, v0, 0x64

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljp/kshoji/javax/sound/midi/Patch;)V
    .locals 4
    .param p1, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 40
    const/16 v1, 0x80

    new-array v1, v1, [D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    .line 41
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->patch:Ljp/kshoji/javax/sound/midi/Patch;

    .line 56
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->patch:Ljp/kshoji/javax/sound/midi/Patch;

    .line 57
    const-string v0, "12-TET"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit8 v2, v0, 0x64

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljp/kshoji/javax/sound/midi/Patch;[B)V
    .locals 4
    .param p1, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;
    .param p2, "data"    # [B

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 40
    const/16 v1, 0x80

    new-array v1, v1, [D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    .line 41
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->patch:Ljp/kshoji/javax/sound/midi/Patch;

    .line 63
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->patch:Ljp/kshoji/javax/sound/midi/Patch;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit8 v2, v0, 0x64

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p2}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->load([B)V

    .line 67
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 40
    const/16 v1, 0x80

    new-array v1, v1, [D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    .line 41
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->patch:Ljp/kshoji/javax/sound/midi/Patch;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit8 v2, v0, 0x64

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->load([B)V

    .line 53
    return-void
.end method

.method private checksumOK([B)Z
    .locals 4
    .param p1, "data"    # [B

    .line 70
    const/4 v0, 0x1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 71
    .local v1, "x":I
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_0

    .line 72
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v1, v3

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v1, 0x7f

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPatch()Ljp/kshoji/javax/sound/midi/Patch;
    .locals 1

    .line 246
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->patch:Ljp/kshoji/javax/sound/midi/Patch;

    return-object v0
.end method

.method public getTuning(I)D
    .locals 3
    .param p1, "noteNumber"    # I

    .line 242
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getTuning()[D
    .locals 1

    .line 238
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    return-object v0
.end method

.method public load([B)V
    .locals 19
    .param p1, "data"    # [B

    .line 89
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x1

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x7e

    const/16 v5, 0x7f

    if-eq v3, v4, :cond_0

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_18

    .line 90
    :cond_0
    const/4 v0, 0x3

    aget-byte v0, v2, v0

    and-int/lit16 v3, v0, 0xff

    .line 91
    .local v3, "subid1":I
    packed-switch v3, :pswitch_data_0

    move v5, v3

    .end local v3    # "subid1":I
    .local v5, "subid1":I
    goto/16 :goto_12

    .line 93
    .end local v5    # "subid1":I
    .restart local v3    # "subid1":I
    :pswitch_0
    const/4 v0, 0x4

    aget-byte v0, v2, v0

    and-int/lit16 v4, v0, 0xff

    .line 94
    .local v4, "subid2":I
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x40c0000000000000L    # 8192.0

    const/4 v0, 0x6

    const-wide/high16 v10, 0x40d0000000000000L    # 16384.0

    const-string v13, "ascii"

    const/4 v15, 0x7

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    const/16 v12, 0x80

    const/16 v14, 0xc

    packed-switch v4, :pswitch_data_1

    :pswitch_1
    move v5, v3

    move/from16 v18, v4

    .end local v3    # "subid1":I
    .end local v4    # "subid2":I
    .restart local v5    # "subid1":I
    .local v18, "subid2":I
    goto/16 :goto_12

    .line 220
    .end local v5    # "subid1":I
    .end local v18    # "subid2":I
    .restart local v3    # "subid1":I
    .restart local v4    # "subid2":I
    :pswitch_2
    new-array v0, v14, [D

    .line 221
    .local v0, "octave_tuning":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v14, :cond_1

    .line 222
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x8

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    mul-int/2addr v10, v12

    mul-int/lit8 v11, v5, 0x2

    add-int/lit8 v11, v11, 0x9

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    .line 224
    .local v10, "v":I
    int-to-double v12, v10

    div-double/2addr v12, v8

    sub-double/2addr v12, v6

    mul-double v12, v12, v16

    aput-wide v12, v0, v5

    .line 221
    .end local v10    # "v":I
    add-int/lit8 v5, v5, 0x1

    const/16 v12, 0x80

    goto :goto_0

    .line 226
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    iget-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 227
    iget-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit8 v7, v5, 0x64

    int-to-double v7, v7

    rem-int/lit8 v9, v5, 0xc

    aget-wide v9, v0, v9

    add-double/2addr v7, v9

    aput-wide v7, v6, v5

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 228
    .end local v5    # "i":I
    :cond_2
    goto/16 :goto_12

    .line 209
    .end local v0    # "octave_tuning":[D
    :pswitch_3
    new-array v0, v14, [I

    .line 210
    .local v0, "octave_tuning":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v14, :cond_3

    .line 211
    add-int/lit8 v6, v5, 0x8

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x40

    aput v6, v0, v5

    .line 210
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 212
    .end local v5    # "i":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    iget-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 213
    iget-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit8 v7, v5, 0x64

    rem-int/lit8 v8, v5, 0xc

    aget v8, v0, v8

    add-int/2addr v7, v8

    int-to-double v7, v7

    aput-wide v7, v6, v5

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 214
    .end local v5    # "i":I
    :cond_4
    goto/16 :goto_12

    .line 193
    .end local v0    # "octave_tuning":[I
    :pswitch_4
    aget-byte v0, v2, v15

    and-int/lit16 v0, v0, 0xff

    .line 194
    .local v0, "ll":I
    const/16 v6, 0x8

    .line 195
    .local v6, "r":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v0, :cond_7

    .line 196
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "r":I
    .local v8, "r":I
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 197
    .local v6, "kk":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "r":I
    .local v9, "r":I
    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    .line 198
    .local v8, "xx":I
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "r":I
    .local v12, "r":I
    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    .line 199
    .local v9, "yy":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "r":I
    .local v13, "r":I
    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    .line 200
    .local v12, "zz":I
    if-ne v8, v5, :cond_6

    if-ne v9, v5, :cond_6

    if-eq v12, v5, :cond_5

    goto :goto_5

    :cond_5
    move v5, v3

    move/from16 v18, v4

    goto :goto_6

    .line 201
    :cond_6
    :goto_5
    iget-object v14, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit16 v15, v8, 0x4000

    mul-int/lit16 v5, v9, 0x80

    add-int/2addr v15, v5

    add-int/2addr v15, v12

    move v5, v3

    move/from16 v18, v4

    .end local v3    # "subid1":I
    .end local v4    # "subid2":I
    .local v5, "subid1":I
    .restart local v18    # "subid2":I
    int-to-double v3, v15

    div-double/2addr v3, v10

    mul-double v3, v3, v16

    aput-wide v3, v14, v6

    .line 195
    .end local v6    # "kk":I
    .end local v8    # "xx":I
    .end local v9    # "yy":I
    .end local v12    # "zz":I
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move v3, v5

    move v6, v13

    move/from16 v4, v18

    const/16 v5, 0x7f

    goto :goto_4

    .end local v5    # "subid1":I
    .end local v13    # "r":I
    .end local v18    # "subid2":I
    .restart local v3    # "subid1":I
    .restart local v4    # "subid2":I
    .local v6, "r":I
    :cond_7
    move v5, v3

    move/from16 v18, v4

    .line 204
    .end local v3    # "subid1":I
    .end local v4    # "subid2":I
    .end local v7    # "i":I
    .restart local v5    # "subid1":I
    .restart local v18    # "subid2":I
    goto/16 :goto_12

    .line 173
    .end local v0    # "ll":I
    .end local v5    # "subid1":I
    .end local v6    # "r":I
    .end local v18    # "subid2":I
    .restart local v3    # "subid1":I
    .restart local v4    # "subid2":I
    :pswitch_5
    move v5, v3

    move/from16 v18, v4

    .end local v3    # "subid1":I
    .end local v4    # "subid2":I
    .restart local v5    # "subid1":I
    .restart local v18    # "subid2":I
    invoke-direct/range {p0 .. p1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->checksumOK([B)Z

    move-result v0

    if-nez v0, :cond_8

    .line 174
    goto/16 :goto_12

    .line 176
    :cond_8
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-direct {v0, v2, v15, v3, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_7

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    iput-object v3, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 180
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_7
    new-array v0, v14, [D

    .line 181
    .local v0, "octave_tuning":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v14, :cond_9

    .line 182
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x17

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v10, 0x80

    mul-int/2addr v4, v10

    mul-int/lit8 v10, v3, 0x2

    add-int/lit8 v10, v10, 0x18

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v4, v10

    .line 184
    .local v4, "v":I
    int-to-double v10, v4

    div-double/2addr v10, v8

    sub-double/2addr v10, v6

    mul-double v10, v10, v16

    aput-wide v10, v0, v3

    .line 181
    .end local v4    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 186
    .end local v3    # "i":I
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    array-length v4, v4

    if-ge v3, v4, :cond_a

    .line 187
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit8 v6, v3, 0x64

    int-to-double v6, v6

    rem-int/lit8 v8, v3, 0xc

    aget-wide v8, v0, v8

    add-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 188
    .end local v3    # "i":I
    :cond_a
    goto/16 :goto_12

    .line 155
    .end local v0    # "octave_tuning":[D
    .end local v5    # "subid1":I
    .end local v18    # "subid2":I
    .local v3, "subid1":I
    .local v4, "subid2":I
    :pswitch_6
    move v5, v3

    move/from16 v18, v4

    .end local v3    # "subid1":I
    .end local v4    # "subid2":I
    .restart local v5    # "subid1":I
    .restart local v18    # "subid2":I
    invoke-direct/range {p0 .. p1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->checksumOK([B)Z

    move-result v0

    if-nez v0, :cond_b

    .line 156
    goto/16 :goto_12

    .line 158
    :cond_b
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-direct {v0, v2, v15, v3, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    goto :goto_a

    .line 159
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    iput-object v3, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 162
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_a
    new-array v0, v14, [I

    .line 163
    .local v0, "octave_tuning":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v14, :cond_c

    .line 164
    add-int/lit8 v4, v3, 0x17

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x40

    aput v4, v0, v3

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 165
    .end local v3    # "i":I
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_c
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    array-length v4, v4

    if-ge v3, v4, :cond_d

    .line 166
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit8 v6, v3, 0x64

    rem-int/lit8 v7, v3, 0xc

    aget v7, v0, v7

    add-int/2addr v6, v7

    int-to-double v6, v6

    aput-wide v6, v4, v3

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 167
    .end local v3    # "i":I
    :cond_d
    goto/16 :goto_12

    .line 134
    .end local v0    # "octave_tuning":[I
    .end local v5    # "subid1":I
    .end local v18    # "subid2":I
    .local v3, "subid1":I
    .restart local v4    # "subid2":I
    :pswitch_7
    move v5, v3

    move/from16 v18, v4

    .end local v3    # "subid1":I
    .end local v4    # "subid2":I
    .restart local v5    # "subid1":I
    .restart local v18    # "subid2":I
    invoke-direct/range {p0 .. p1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->checksumOK([B)Z

    move-result v0

    if-nez v0, :cond_e

    .line 135
    goto/16 :goto_12

    .line 137
    :cond_e
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-direct {v0, v2, v15, v3, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 140
    goto :goto_d

    .line 138
    :catch_2
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    iput-object v3, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 141
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_d
    const/16 v0, 0x17

    .line 142
    .local v0, "r":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    const/16 v4, 0x80

    if-ge v3, v4, :cond_11

    .line 143
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "r":I
    .local v4, "r":I
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 144
    .local v0, "xx":I
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "r":I
    .restart local v6    # "r":I
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 145
    .local v4, "yy":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "r":I
    .local v7, "r":I
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 146
    .local v6, "zz":I
    const/16 v8, 0x7f

    if-ne v0, v8, :cond_f

    if-ne v4, v8, :cond_f

    if-eq v6, v8, :cond_10

    .line 147
    :cond_f
    iget-object v8, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit16 v9, v0, 0x4000

    mul-int/lit16 v12, v4, 0x80

    add-int/2addr v9, v12

    add-int/2addr v9, v6

    int-to-double v12, v9

    div-double/2addr v12, v10

    mul-double v12, v12, v16

    aput-wide v12, v8, v3

    .line 142
    .end local v0    # "xx":I
    .end local v4    # "yy":I
    .end local v6    # "zz":I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    move v0, v7

    goto :goto_e

    .line 149
    .end local v3    # "i":I
    .end local v7    # "r":I
    .local v0, "r":I
    :cond_11
    goto/16 :goto_12

    .line 119
    .end local v0    # "r":I
    .end local v5    # "subid1":I
    .end local v18    # "subid2":I
    .local v3, "subid1":I
    .local v4, "subid2":I
    :pswitch_8
    move v5, v3

    move/from16 v18, v4

    .end local v3    # "subid1":I
    .end local v4    # "subid2":I
    .restart local v5    # "subid1":I
    .restart local v18    # "subid2":I
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 120
    .local v0, "ll":I
    const/4 v3, 0x7

    .line 121
    .local v3, "r":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v0, :cond_14

    .line 122
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "r":I
    .local v6, "r":I
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    .line 123
    .local v3, "kk":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "r":I
    .restart local v7    # "r":I
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 124
    .local v6, "xx":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "r":I
    .local v8, "r":I
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    .line 125
    .local v7, "yy":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "r":I
    .local v9, "r":I
    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    .line 126
    .local v8, "zz":I
    const/16 v12, 0x7f

    if-ne v6, v12, :cond_12

    if-ne v7, v12, :cond_12

    if-eq v8, v12, :cond_13

    .line 127
    :cond_12
    iget-object v12, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit16 v13, v6, 0x4000

    mul-int/lit16 v14, v7, 0x80

    add-int/2addr v13, v14

    add-int/2addr v13, v8

    int-to-double v13, v13

    div-double/2addr v13, v10

    mul-double v13, v13, v16

    aput-wide v13, v12, v3

    .line 121
    .end local v3    # "kk":I
    .end local v6    # "xx":I
    .end local v7    # "yy":I
    .end local v8    # "zz":I
    :cond_13
    add-int/lit8 v4, v4, 0x1

    move v3, v9

    goto :goto_f

    .line 129
    .end local v4    # "i":I
    .end local v9    # "r":I
    .local v3, "r":I
    :cond_14
    goto :goto_12

    .line 101
    .end local v0    # "ll":I
    .end local v5    # "subid1":I
    .end local v18    # "subid2":I
    .local v3, "subid1":I
    .local v4, "subid2":I
    :pswitch_9
    move v5, v3

    move/from16 v18, v4

    .end local v3    # "subid1":I
    .end local v4    # "subid2":I
    .restart local v5    # "subid1":I
    .restart local v18    # "subid2":I
    :try_start_3
    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x10

    invoke-direct {v3, v2, v0, v4, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 104
    goto :goto_10

    .line 102
    :catch_3
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    iput-object v3, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 105
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_10
    const/16 v0, 0x16

    .line 106
    .local v0, "r":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    const/16 v4, 0x80

    if-ge v3, v4, :cond_17

    .line 107
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "r":I
    .local v6, "r":I
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 108
    .local v0, "xx":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "r":I
    .local v7, "r":I
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 109
    .local v6, "yy":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "r":I
    .local v8, "r":I
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    .line 110
    .local v7, "zz":I
    const/16 v9, 0x7f

    if-ne v0, v9, :cond_15

    if-ne v6, v9, :cond_15

    if-eq v7, v9, :cond_16

    .line 111
    :cond_15
    iget-object v12, v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;->tuning:[D

    mul-int/lit16 v13, v0, 0x4000

    mul-int/lit16 v14, v6, 0x80

    add-int/2addr v13, v14

    add-int/2addr v13, v7

    int-to-double v13, v13

    div-double/2addr v13, v10

    mul-double v13, v13, v16

    aput-wide v13, v12, v3

    .line 106
    .end local v0    # "xx":I
    .end local v6    # "yy":I
    .end local v7    # "zz":I
    :cond_16
    add-int/lit8 v3, v3, 0x1

    move v0, v8

    goto :goto_11

    .line 114
    .end local v3    # "i":I
    .end local v8    # "r":I
    .local v0, "r":I
    :cond_17
    nop

    .line 235
    .end local v0    # "r":I
    .end local v5    # "subid1":I
    .end local v18    # "subid2":I
    :cond_18
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 254
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftTuning;->name:Ljava/lang/String;

    .line 255
    return-void
.end method
