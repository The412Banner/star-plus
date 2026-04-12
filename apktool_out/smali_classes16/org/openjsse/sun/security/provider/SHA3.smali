.class abstract Lorg/openjsse/sun/security/provider/SHA3;
.super Lorg/openjsse/sun/security/provider/DigestBase;
.source "SHA3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/provider/SHA3$SHA512;,
        Lorg/openjsse/sun/security/provider/SHA3$SHA384;,
        Lorg/openjsse/sun/security/provider/SHA3$SHA256;,
        Lorg/openjsse/sun/security/provider/SHA3$SHA224;
    }
.end annotation


# static fields
.field private static final DM:I = 0x5

.field private static final NR:I = 0x18

.field private static final RC_CONSTANTS:[J

.field private static final WIDTH:I = 0xc8


# instance fields
.field private lanes:[J

.field private state:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/openjsse/sun/security/provider/SHA3;->RC_CONSTANTS:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.3E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "digestLength"    # I

    .line 71
    mul-int/lit8 v0, p2, 0x2

    const/16 v1, 0xc8

    rsub-int v0, v0, 0xc8

    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/provider/DigestBase;-><init>(Ljava/lang/String;II)V

    .line 64
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/provider/SHA3;->state:[B

    .line 65
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/openjsse/sun/security/provider/SHA3;->lanes:[J

    .line 72
    return-void
.end method

.method private static bytes2Lanes([B[J)V
    .locals 4
    .param p0, "s"    # [B
    .param p1, "m"    # [J

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "sOfs":I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 135
    mul-int/lit8 v2, v1, 0x5

    const/16 v3, 0x28

    invoke-static {p0, v0, p1, v2, v3}, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->b2lLittle([BI[JII)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x28

    goto :goto_0

    .line 137
    .end local v1    # "y":I
    :cond_0
    return-void
.end method

.method private keccak()V
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/SHA3;->state:[B

    iget-object v1, p0, Lorg/openjsse/sun/security/provider/SHA3;->lanes:[J

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/provider/SHA3;->bytes2Lanes([B[J)V

    .line 252
    const/4 v0, 0x0

    .local v0, "ir":I
    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lorg/openjsse/sun/security/provider/SHA3;->lanes:[J

    invoke-static {v1}, Lorg/openjsse/sun/security/provider/SHA3;->smTheta([J)[J

    move-result-object v1

    invoke-static {v1}, Lorg/openjsse/sun/security/provider/SHA3;->smPiRho([J)[J

    move-result-object v1

    invoke-static {v1}, Lorg/openjsse/sun/security/provider/SHA3;->smChi([J)[J

    move-result-object v1

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/provider/SHA3;->smIota([JI)[J

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "ir":I
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/SHA3;->lanes:[J

    iget-object v1, p0, Lorg/openjsse/sun/security/provider/SHA3;->state:[B

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/provider/SHA3;->lanes2Bytes([J[B)V

    .line 257
    return-void
.end method

.method private static lanes2Bytes([J[B)V
    .locals 4
    .param p0, "m"    # [J
    .param p1, "s"    # [B

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "sOfs":I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 147
    mul-int/lit8 v2, v1, 0x5

    const/16 v3, 0x28

    invoke-static {p0, v2, p1, v0, v3}, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->l2bLittle([JI[BII)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x28

    goto :goto_0

    .line 149
    .end local v1    # "y":I
    :cond_0
    return-void
.end method

.method private static setPaddingBytes([BI)I
    .locals 2
    .param p0, "in"    # [B
    .param p1, "len"    # I

    .line 116
    array-length v0, p0

    if-eq p1, v0, :cond_0

    .line 118
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 121
    aget-byte v0, p0, p1

    or-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 122
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p0, v0

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 124
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method private static smChi([J)[J
    .locals 14
    .param p0, "a"    # [J

    .line 221
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 222
    aget-wide v1, p0, v0

    .line 223
    .local v1, "ay0":J
    add-int/lit8 v3, v0, 0x1

    aget-wide v3, p0, v3

    .line 224
    .local v3, "ay1":J
    add-int/lit8 v5, v0, 0x2

    aget-wide v5, p0, v5

    .line 225
    .local v5, "ay2":J
    add-int/lit8 v7, v0, 0x3

    aget-wide v7, p0, v7

    .line 226
    .local v7, "ay3":J
    add-int/lit8 v9, v0, 0x4

    aget-wide v9, p0, v9

    .line 227
    .local v9, "ay4":J
    not-long v11, v3

    and-long/2addr v11, v5

    xor-long/2addr v11, v1

    aput-wide v11, p0, v0

    .line 228
    add-int/lit8 v11, v0, 0x1

    not-long v12, v5

    and-long/2addr v12, v7

    xor-long/2addr v12, v3

    aput-wide v12, p0, v11

    .line 229
    add-int/lit8 v11, v0, 0x2

    not-long v12, v7

    and-long/2addr v12, v9

    xor-long/2addr v12, v5

    aput-wide v12, p0, v11

    .line 230
    add-int/lit8 v11, v0, 0x3

    not-long v12, v9

    and-long/2addr v12, v1

    xor-long/2addr v12, v7

    aput-wide v12, p0, v11

    .line 231
    add-int/lit8 v11, v0, 0x4

    not-long v12, v1

    and-long/2addr v12, v3

    xor-long/2addr v12, v9

    aput-wide v12, p0, v11

    .line 221
    .end local v1    # "ay0":J
    .end local v3    # "ay1":J
    .end local v5    # "ay2":J
    .end local v7    # "ay3":J
    .end local v9    # "ay4":J
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 233
    .end local v0    # "y":I
    :cond_0
    return-object p0
.end method

.method private static smIota([JI)[J
    .locals 6
    .param p0, "a"    # [J
    .param p1, "rndIndex"    # I

    .line 240
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    sget-object v3, Lorg/openjsse/sun/security/provider/SHA3;->RC_CONSTANTS:[J

    aget-wide v4, v3, p1

    xor-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 241
    return-object p0
.end method

.method private static smPiRho([J)[J
    .locals 15
    .param p0, "a"    # [J

    .line 189
    const/16 v0, 0xa

    aget-wide v1, p0, v0

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    .line 190
    .local v1, "tmp":J
    const/4 v4, 0x1

    aget-wide v5, p0, v4

    invoke-static {v5, v6, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    aput-wide v5, p0, v0

    .line 191
    const/4 v5, 0x6

    aget-wide v6, p0, v5

    const/16 v8, 0x2c

    invoke-static {v6, v7, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v6

    aput-wide v6, p0, v4

    .line 192
    const/16 v4, 0x9

    aget-wide v6, p0, v4

    const/16 v8, 0x14

    invoke-static {v6, v7, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v6

    aput-wide v6, p0, v5

    .line 193
    const/16 v6, 0x16

    aget-wide v9, p0, v6

    const/16 v7, 0x3d

    invoke-static {v9, v10, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    aput-wide v9, p0, v4

    .line 194
    const/16 v4, 0xe

    aget-wide v9, p0, v4

    const/16 v7, 0x27

    invoke-static {v9, v10, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    aput-wide v9, p0, v6

    .line 195
    aget-wide v6, p0, v8

    const/16 v9, 0x12

    invoke-static {v6, v7, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v6

    aput-wide v6, p0, v4

    .line 196
    const/4 v6, 0x2

    aget-wide v10, p0, v6

    const/16 v7, 0x3e

    invoke-static {v10, v11, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v8

    .line 197
    const/16 v7, 0xc

    aget-wide v10, p0, v7

    const/16 v8, 0x2b

    invoke-static {v10, v11, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v6

    .line 198
    const/16 v8, 0xd

    aget-wide v10, p0, v8

    const/16 v12, 0x19

    invoke-static {v10, v11, v12}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v7

    .line 199
    const/16 v7, 0x13

    aget-wide v10, p0, v7

    const/16 v12, 0x8

    invoke-static {v10, v11, v12}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v8

    .line 200
    const/16 v8, 0x17

    aget-wide v10, p0, v8

    const/16 v13, 0x38

    invoke-static {v10, v11, v13}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v7

    .line 201
    const/16 v7, 0xf

    aget-wide v10, p0, v7

    const/16 v13, 0x29

    invoke-static {v10, v11, v13}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v8

    .line 202
    const/4 v8, 0x4

    aget-wide v10, p0, v8

    const/16 v13, 0x1b

    invoke-static {v10, v11, v13}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v7

    .line 203
    const/16 v10, 0x18

    aget-wide v13, p0, v10

    invoke-static {v13, v14, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v13

    aput-wide v13, p0, v8

    .line 204
    const/16 v4, 0x15

    aget-wide v13, p0, v4

    invoke-static {v13, v14, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v13

    aput-wide v13, p0, v10

    .line 205
    aget-wide v10, p0, v12

    const/16 v6, 0x37

    invoke-static {v10, v11, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v4

    .line 206
    const/16 v6, 0x10

    aget-wide v10, p0, v6

    const/16 v8, 0x2d

    invoke-static {v10, v11, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v12

    .line 207
    const/4 v8, 0x5

    aget-wide v10, p0, v8

    const/16 v12, 0x24

    invoke-static {v10, v11, v12}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v6

    .line 208
    aget-wide v10, p0, v3

    const/16 v6, 0x1c

    invoke-static {v10, v11, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v8

    .line 209
    aget-wide v10, p0, v9

    invoke-static {v10, v11, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    aput-wide v10, p0, v3

    .line 210
    const/16 v3, 0x11

    aget-wide v10, p0, v3

    invoke-static {v10, v11, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v6

    aput-wide v6, p0, v9

    .line 211
    const/16 v4, 0xb

    aget-wide v6, p0, v4

    invoke-static {v6, v7, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v6

    aput-wide v6, p0, v3

    .line 212
    const/4 v0, 0x7

    aget-wide v3, p0, v0

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    const/16 v0, 0xb

    aput-wide v3, p0, v0

    .line 213
    const/4 v0, 0x7

    aput-wide v1, p0, v0

    .line 214
    return-object p0
.end method

.method private static smTheta([J)[J
    .locals 26
    .param p0, "a"    # [J

    .line 155
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x5

    aget-wide v3, v0, v3

    xor-long/2addr v1, v3

    const/16 v3, 0xa

    aget-wide v3, v0, v3

    xor-long/2addr v1, v3

    const/16 v3, 0xf

    aget-wide v3, v0, v3

    xor-long/2addr v1, v3

    const/16 v3, 0x14

    aget-wide v3, v0, v3

    xor-long/2addr v1, v3

    .line 156
    .local v1, "c0":J
    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v6, 0x6

    aget-wide v6, v0, v6

    xor-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v6, v0, v6

    xor-long/2addr v4, v6

    const/16 v6, 0x10

    aget-wide v6, v0, v6

    xor-long/2addr v4, v6

    const/16 v6, 0x15

    aget-wide v6, v0, v6

    xor-long/2addr v4, v6

    .line 157
    .local v4, "c1":J
    const/4 v6, 0x2

    aget-wide v6, v0, v6

    const/4 v8, 0x7

    aget-wide v8, v0, v8

    xor-long/2addr v6, v8

    const/16 v8, 0xc

    aget-wide v8, v0, v8

    xor-long/2addr v6, v8

    const/16 v8, 0x11

    aget-wide v8, v0, v8

    xor-long/2addr v6, v8

    const/16 v8, 0x16

    aget-wide v8, v0, v8

    xor-long/2addr v6, v8

    .line 158
    .local v6, "c2":J
    const/4 v8, 0x3

    aget-wide v8, v0, v8

    const/16 v10, 0x8

    aget-wide v10, v0, v10

    xor-long/2addr v8, v10

    const/16 v10, 0xd

    aget-wide v10, v0, v10

    xor-long/2addr v8, v10

    const/16 v10, 0x12

    aget-wide v10, v0, v10

    xor-long/2addr v8, v10

    const/16 v10, 0x17

    aget-wide v10, v0, v10

    xor-long/2addr v8, v10

    .line 159
    .local v8, "c3":J
    const/4 v10, 0x4

    aget-wide v10, v0, v10

    const/16 v12, 0x9

    aget-wide v12, v0, v12

    xor-long/2addr v10, v12

    const/16 v12, 0xe

    aget-wide v12, v0, v12

    xor-long/2addr v10, v12

    const/16 v12, 0x13

    aget-wide v12, v0, v12

    xor-long/2addr v10, v12

    const/16 v12, 0x18

    aget-wide v12, v0, v12

    xor-long/2addr v10, v12

    .line 160
    .local v10, "c4":J
    invoke-static {v4, v5, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    xor-long/2addr v12, v10

    .line 161
    .local v12, "d0":J
    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    xor-long/2addr v14, v1

    .line 162
    .local v14, "d1":J
    invoke-static {v8, v9, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v16

    xor-long v16, v4, v16

    .line 163
    .local v16, "d2":J
    invoke-static {v10, v11, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v18

    xor-long v18, v6, v18

    .line 164
    .local v18, "d3":J
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v20

    xor-long v20, v8, v20

    .line 165
    .local v20, "d4":J
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    move-wide/from16 v22, v1

    .end local v1    # "c0":J
    .local v22, "c0":J
    array-length v1, v0

    if-ge v3, v1, :cond_0

    .line 166
    aget-wide v1, v0, v3

    xor-long/2addr v1, v12

    aput-wide v1, v0, v3

    .line 167
    add-int/lit8 v1, v3, 0x1

    aget-wide v24, v0, v1

    xor-long v24, v24, v14

    aput-wide v24, v0, v1

    .line 168
    add-int/lit8 v1, v3, 0x2

    aget-wide v24, v0, v1

    xor-long v24, v24, v16

    aput-wide v24, v0, v1

    .line 169
    add-int/lit8 v1, v3, 0x3

    aget-wide v24, v0, v1

    xor-long v24, v24, v18

    aput-wide v24, v0, v1

    .line 170
    add-int/lit8 v1, v3, 0x4

    aget-wide v24, v0, v1

    xor-long v24, v24, v20

    aput-wide v24, v0, v1

    .line 165
    add-int/lit8 v3, v3, 0x5

    move-wide/from16 v1, v22

    goto :goto_0

    .line 172
    .end local v3    # "y":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 260
    invoke-super {p0}, Lorg/openjsse/sun/security/provider/DigestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/provider/SHA3;

    .line 261
    .local v0, "copy":Lorg/openjsse/sun/security/provider/SHA3;
    iget-object v1, v0, Lorg/openjsse/sun/security/provider/SHA3;->state:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/openjsse/sun/security/provider/SHA3;->state:[B

    .line 262
    const/16 v1, 0x19

    new-array v1, v1, [J

    iput-object v1, v0, Lorg/openjsse/sun/security/provider/SHA3;->lanes:[J

    .line 263
    return-object v0
.end method

.method implCompress([BI)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "ofs"    # I

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/provider/SHA3;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/openjsse/sun/security/provider/SHA3;->state:[B

    aget-byte v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "ofs":I
    .local v3, "ofs":I
    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    .end local v3    # "ofs":I
    .restart local p2    # "ofs":I
    :cond_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/provider/SHA3;->keccak()V

    .line 83
    return-void
.end method

.method implDigest([BI)V
    .locals 5
    .param p1, "out"    # [B
    .param p2, "ofs"    # I

    .line 90
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/SHA3;->buffer:[B

    iget-wide v1, p0, Lorg/openjsse/sun/security/provider/SHA3;->bytesProcessed:J

    iget-object v3, p0, Lorg/openjsse/sun/security/provider/SHA3;->buffer:[B

    array-length v3, v3

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 91
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/provider/SHA3;->setPaddingBytes([BI)I

    move-result v0

    .line 92
    .local v0, "numOfPadding":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/openjsse/sun/security/provider/SHA3;->buffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lorg/openjsse/sun/security/provider/SHA3;->state:[B

    aget-byte v3, v2, v1

    iget-object v4, p0, Lorg/openjsse/sun/security/provider/SHA3;->buffer:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/provider/SHA3;->keccak()V

    .line 99
    iget-object v1, p0, Lorg/openjsse/sun/security/provider/SHA3;->state:[B

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/openjsse/sun/security/provider/SHA3;->engineGetDigestLength()I

    move-result v3

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    return-void

    .line 93
    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect pad size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method implReset()V
    .locals 3

    .line 106
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/SHA3;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 107
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/SHA3;->lanes:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 108
    return-void
.end method
