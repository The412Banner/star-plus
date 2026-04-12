.class public Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
.super Ljava/lang/Object;


# instance fields
.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    return-void
.end method

.method private hashSignatureBlock([BII[BI)V
    .locals 2

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, p4, p5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {p1, p4, p5, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public Verify([B[B)[B
    .locals 29

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    iget v8, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v9, v8, [B

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    const/4 v10, 0x0

    invoke-interface {v1, v0, v10, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v9, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    add-int/2addr v0, v1

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v12, v0, v1

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v12, v0

    add-int/2addr v0, v11

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v13

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v0, v13

    sub-int/2addr v0, v11

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v0, v1

    add-int/2addr v0, v12

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v14, v1, v0

    array-length v0, v7

    if-eq v14, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-array v15, v14, [B

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v5, 0x8

    rem-int v0, v5, v0

    if-nez v0, :cond_4

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v5, v0

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v11, v0

    add-int/lit8 v16, v0, -0x1

    move v0, v10

    move v1, v0

    move v4, v1

    :goto_0
    if-ge v4, v8, :cond_2

    move/from16 v17, v1

    move v3, v10

    :goto_1
    if-ge v3, v5, :cond_1

    aget-byte v1, v9, v4

    and-int v1, v1, v16

    add-int v18, v0, v1

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v17, v0

    sub-int v19, v16, v1

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v20, v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v21, v3

    move/from16 v3, v19

    move/from16 v19, v4

    move-object v4, v15

    move/from16 v22, v5

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    aget-byte v0, v9, v19

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v9, v19

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v3, v21, 0x1

    move/from16 v0, v18

    move/from16 v4, v19

    move/from16 v5, v22

    goto :goto_1

    :cond_1
    move/from16 v19, v4

    move/from16 v22, v5

    add-int/lit8 v4, v19, 0x1

    move/from16 v1, v17

    goto :goto_0

    :cond_2
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v12, v2

    sub-int/2addr v2, v0

    move v8, v1

    move v9, v2

    move v12, v10

    :goto_2
    if-ge v12, v13, :cond_3

    and-int v0, v9, v16

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v8, v1

    sub-int v3, v16, v0

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v5, v8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v9, v0

    add-int/2addr v8, v11

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v12, v0

    goto :goto_2

    :cond_3
    move v13, v10

    move/from16 v28, v14

    goto/16 :goto_10

    :cond_4
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const-wide/16 v16, 0x0

    if-ge v0, v5, :cond_a

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v8, v0, v1

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v11, v0

    add-int/lit8 v4, v0, -0x1

    move v0, v10

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_3
    if-ge v3, v8, :cond_7

    move/from16 v18, v0

    move v0, v10

    move-wide/from16 v19, v16

    :goto_4
    iget v10, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    if-ge v0, v10, :cond_5

    aget-byte v10, v9, v18

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v22, v0, 0x3

    shl-int v10, v10, v22

    move/from16 v22, v12

    int-to-long v11, v10

    xor-long v19, v19, v11

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v22

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    move/from16 v22, v12

    move v10, v2

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v5, :cond_6

    int-to-long v5, v4

    and-long v5, v19, v5

    long-to-int v0, v5

    add-int v6, v1, v0

    move-object/from16 v5, p0

    iget v1, v5, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v10, v1

    sub-int v23, v4, v0

    iget v0, v5, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v24, v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v25, v3

    move/from16 v3, v23

    move v12, v4

    move-object v4, v15

    move/from16 v26, v6

    const/16 v23, 0x8

    move-object v6, v5

    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v19, v19, v0

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    move v4, v12

    move/from16 v5, v23

    move/from16 v3, v25

    move/from16 v1, v26

    goto :goto_5

    :cond_6
    move/from16 v25, v3

    move v12, v4

    move/from16 v23, v5

    add-int/lit8 v3, v25, 0x1

    move v2, v10

    move/from16 v0, v18

    move/from16 v12, v22

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_3

    :cond_7
    move/from16 v22, v12

    move v12, v4

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int/2addr v3, v4

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_8

    aget-byte v5, v9, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v8, v4, 0x3

    shl-int/2addr v5, v8

    int-to-long v10, v5

    xor-long v16, v16, v10

    const/4 v5, 0x1

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    shl-int/lit8 v8, v3, 0x3

    move v9, v2

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v8, :cond_9

    int-to-long v2, v12

    and-long v2, v16, v2

    long-to-int v0, v2

    add-int v11, v1, v0

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v9, v1

    sub-int v3, v12, v0

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v5, v9, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v16, v16, v0

    add-int/lit8 v9, v9, 0x1

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v10, v0

    move v1, v11

    goto :goto_7

    :cond_9
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v22, v0

    sub-int/2addr v0, v1

    move v8, v0

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v13, :cond_12

    and-int v0, v8, v12

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v9, v1

    sub-int v3, v12, v0

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v5, v9, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v8, v0

    const/4 v0, 0x1

    add-int/2addr v9, v0

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v10, v0

    goto :goto_8

    :cond_a
    move/from16 v23, v5

    move/from16 v22, v12

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v1, 0x39

    if-ge v0, v1, :cond_12

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    sub-int/2addr v0, v1

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_9
    if-gt v4, v0, :cond_d

    ushr-int/lit8 v12, v4, 0x3

    rem-int/lit8 v18, v4, 0x8

    iget v10, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v4, v10

    add-int/lit8 v10, v4, 0x7

    ushr-int/lit8 v10, v10, 0x3

    move-wide/from16 v24, v16

    const/4 v11, 0x0

    :goto_a
    move/from16 v26, v0

    if-ge v12, v10, :cond_b

    aget-byte v0, v9, v12

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v27, v11, 0x3

    shl-int v0, v0, v27

    move/from16 v27, v13

    move/from16 v28, v14

    int-to-long v13, v0

    xor-long v24, v24, v13

    const/4 v0, 0x1

    add-int/2addr v11, v0

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v26

    move/from16 v13, v27

    move/from16 v14, v28

    goto :goto_a

    :cond_b
    move/from16 v27, v13

    move/from16 v28, v14

    ushr-long v10, v24, v18

    int-to-long v12, v1

    and-long/2addr v10, v12

    move v0, v4

    int-to-long v4, v5

    add-long/2addr v4, v10

    long-to-int v5, v4

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v4, v8

    iget v14, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move/from16 v18, v0

    const/4 v0, 0x0

    invoke-static {v7, v4, v3, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    cmp-long v4, v10, v12

    if-gez v4, :cond_c

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v3, v0, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v3, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v19, 0x1

    add-long v10, v10, v19

    goto :goto_b

    :cond_c
    iget v4, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v4, v8

    iget v10, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {v3, v0, v15, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v18

    move/from16 v0, v26

    move/from16 v13, v27

    move/from16 v14, v28

    goto :goto_9

    :cond_d
    move/from16 v27, v13

    move/from16 v28, v14

    ushr-int/lit8 v0, v4, 0x3

    iget v10, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v0, v10, :cond_10

    rem-int/lit8 v4, v4, 0x8

    const/4 v10, 0x0

    :goto_c
    iget v11, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v0, v11, :cond_e

    aget-byte v11, v9, v0

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v12, v10, 0x3

    shl-int/2addr v11, v12

    int-to-long v11, v11

    xor-long v16, v16, v11

    const/4 v11, 0x1

    add-int/2addr v10, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_e
    ushr-long v9, v16, v4

    int-to-long v11, v1

    and-long/2addr v9, v11

    int-to-long v4, v5

    add-long/2addr v4, v9

    long-to-int v5, v4

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v0, v8

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    const/4 v13, 0x0

    invoke-static {v7, v0, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_d
    cmp-long v0, v9, v11

    if-gez v0, :cond_f

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v3, v13, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v3, v13}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v16, 0x1

    add-long v9, v9, v16

    goto :goto_d

    :cond_f
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v0, v8

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {v3, v13, v15, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    :cond_10
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, v22, v0

    sub-int/2addr v0, v5

    move v4, v0

    move/from16 v5, v27

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v5, :cond_13

    and-int v9, v4, v1

    int-to-long v9, v9

    iget v11, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v11, v8

    iget v12, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    const/4 v13, 0x0

    invoke-static {v7, v11, v3, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_f
    int-to-long v11, v1

    cmp-long v11, v9, v11

    if-gez v11, :cond_11

    iget-object v11, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v11, v3, v13, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v11, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v11, v3, v13}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_f

    :cond_11
    const-wide/16 v11, 0x1

    iget v9, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v9, v8

    iget v10, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {v3, v13, v15, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v9, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    iget v9, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v0, v9

    goto :goto_e

    :cond_12
    move/from16 v28, v14

    :cond_13
    const/4 v13, 0x0

    :goto_10
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    move/from16 v1, v28

    invoke-interface {v0, v15, v13, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v0, v0, [B

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v13}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getLog(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getSignatureLength()I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    shl-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
