.class abstract Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
.super Ljavax/crypto/CipherSpi;
.source "ChaCha20Cipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaCha20Poly1305;,
        Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaCha20Only;,
        Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;,
        Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;,
        Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;,
        Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;
    }
.end annotation


# static fields
.field private static final CIPHERBUF_BASE:I = 0x400

.field private static final KEYSTREAM_SIZE:I = 0x40

.field private static final KS_SIZE_INTS:I = 0x10

.field private static final MAX_UINT32:J = 0xffffffffL

.field private static final MODE_AEAD:I = 0x1

.field private static final MODE_NONE:I = 0x0

.field private static final STATE_CONST_0:I = 0x61707865

.field private static final STATE_CONST_1:I = 0x3320646e

.field private static final STATE_CONST_2:I = 0x79622d32

.field private static final STATE_CONST_3:I = 0x6b206574

.field private static final TAG_LENGTH:I = 0x10

.field private static final padBuf:[B


# instance fields
.field private aadDone:Z

.field private aadLen:J

.field protected authAlgName:Ljava/lang/String;

.field private authenticator:Lorg/openjsse/com/sun/crypto/provider/Poly1305;

.field private counter:J

.field private dataLen:J

.field private direction:I

.field private engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

.field private finalCounterValue:J

.field private initialized:Z

.field private keyBytes:[B

.field private keyStrOffset:I

.field private final keyStream:[B

.field private final lenBuf:[B

.field protected mode:I

.field private nonce:[B

.field private final startState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->padBuf:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadDone:Z

    .line 115
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    .line 116
    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStream:[B

    .line 131
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->lenBuf:[B

    .line 144
    return-void
.end method

.method static synthetic access$1000(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;J)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p1, "x1"    # J

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authPad16(J)V

    return-void
.end method

.method static synthetic access$1100(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)J
    .locals 2
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    .line 72
    iget-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->dataLen:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;J)J
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p1, "x1"    # J

    .line 72
    iput-wide p1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->dataLen:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;[BII)I
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authUpdate([BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;[BII[BI)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [B
    .param p5, "x5"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 72
    invoke-direct/range {p0 .. p5}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authFinalizeData([BII[BI)V

    return-void
.end method

.method static synthetic access$300(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    .line 72
    iget-boolean v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->initialized:Z

    return v0
.end method

.method static synthetic access$400(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;III)I
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->checkFromIndexSize(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;[BII[BI)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [B
    .param p5, "x5"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyException;
        }
    .end annotation

    .line 72
    invoke-direct/range {p0 .. p5}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->chaCha20Transform([BII[BI)V

    return-void
.end method

.method static synthetic access$600(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->initAuthenticator()V

    return-void
.end method

.method static synthetic access$702(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;J)J
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p1, "x1"    # J

    .line 72
    iput-wide p1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->counter:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    .line 72
    iget-boolean v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadDone:Z

    return v0
.end method

.method static synthetic access$802(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p1, "x1"    # Z

    .line 72
    iput-boolean p1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadDone:Z

    return p1
.end method

.method static synthetic access$900(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)J
    .locals 2
    .param p0, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    .line 72
    iget-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadLen:J

    return-wide v0
.end method

.method private authFinalizeData([BII[BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "dataOff"    # I
    .param p3, "length"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1121
    if-eqz p1, :cond_0

    .line 1122
    iget-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->dataLen:J

    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authUpdate([BII)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->dataLen:J

    .line 1124
    :cond_0
    iget-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->dataLen:J

    invoke-direct {p0, v0, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authPad16(J)V

    .line 1128
    iget-wide v3, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadLen:J

    iget-wide v5, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->dataLen:J

    iget-object v7, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->lenBuf:[B

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authWriteLengths(JJ[B)V

    .line 1129
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authenticator:Lorg/openjsse/com/sun/crypto/provider/Poly1305;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->lenBuf:[B

    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->lenBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->engineUpdate([BII)V

    .line 1130
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authenticator:Lorg/openjsse/com/sun/crypto/provider/Poly1305;

    invoke-virtual {v0}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->engineDoFinal()[B

    move-result-object v0

    .line 1131
    .local v0, "tag":[B
    array-length v1, v0

    array-length v2, p4

    invoke-direct {p0, p5, v1, v2}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->checkFromIndexSize(III)I

    .line 1132
    array-length v1, v0

    invoke-static {v0, v3, p4, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadLen:J

    .line 1134
    iput-wide v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->dataLen:J

    .line 1135
    return-void
.end method

.method private authPad16(J)V
    .locals 4
    .param p1, "dataLen"    # J

    .line 1145
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authenticator:Lorg/openjsse/com/sun/crypto/provider/Poly1305;

    sget-object v1, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->padBuf:[B

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0xf

    rsub-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->engineUpdate([BII)V

    .line 1147
    return-void
.end method

.method private authUpdate([BII)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1100
    array-length v0, p1

    invoke-direct {p0, p2, p3, v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->checkFromIndexSize(III)I

    .line 1101
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authenticator:Lorg/openjsse/com/sun/crypto/provider/Poly1305;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->engineUpdate([BII)V

    .line 1102
    return p3
.end method

.method private authWriteLengths(JJ[B)V
    .locals 3
    .param p1, "aLen"    # J
    .param p3, "dLen"    # J
    .param p5, "buf"    # [B

    .line 1162
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1163
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1164
    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1165
    invoke-virtual {v1, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1166
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1167
    const/4 v2, 0x0

    invoke-virtual {v1, p5, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1168
    return-void
.end method

.method private static chaCha20Block([IJ[B)V
    .locals 28
    .param p0, "initState"    # [I
    .param p1, "counter"    # J
    .param p3, "result"    # [B

    .line 862
    move-wide/from16 v0, p1

    const v2, 0x61707865

    .line 863
    .local v2, "ws00":I
    const v3, 0x3320646e

    .line 864
    .local v3, "ws01":I
    const v4, 0x79622d32

    .line 865
    .local v4, "ws02":I
    const v5, 0x6b206574

    .line 866
    .local v5, "ws03":I
    const/4 v6, 0x4

    aget v7, p0, v6

    .line 867
    .local v7, "ws04":I
    const/4 v8, 0x5

    aget v9, p0, v8

    .line 868
    .local v9, "ws05":I
    const/4 v10, 0x6

    aget v11, p0, v10

    .line 869
    .local v11, "ws06":I
    const/4 v12, 0x7

    aget v13, p0, v12

    .line 870
    .local v13, "ws07":I
    const/16 v14, 0x8

    aget v15, p0, v14

    .line 871
    .local v15, "ws08":I
    const/16 v16, 0x9

    aget v17, p0, v16

    .line 872
    .local v17, "ws09":I
    const/16 v10, 0xa

    aget v18, p0, v10

    .line 873
    .local v18, "ws10":I
    const/16 v19, 0xb

    aget v20, p0, v19

    .line 874
    .local v20, "ws11":I
    long-to-int v8, v0

    .line 875
    .local v8, "ws12":I
    const/16 v21, 0xd

    aget v22, p0, v21

    .line 876
    .local v22, "ws13":I
    const/16 v23, 0xe

    aget v24, p0, v23

    .line 877
    .local v24, "ws14":I
    const/16 v25, 0xf

    aget v26, p0, v25

    .line 880
    .local v26, "ws15":I
    const/16 v27, 0x0

    move/from16 v6, v27

    .local v6, "round":I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 881
    add-int/2addr v2, v7

    .line 882
    xor-int v10, v8, v2

    const/16 v12, 0x10

    invoke-static {v10, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    .line 884
    add-int/2addr v15, v8

    .line 885
    xor-int v10, v7, v15

    const/16 v12, 0xc

    invoke-static {v10, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    .line 887
    add-int/2addr v2, v7

    .line 888
    xor-int v10, v8, v2

    invoke-static {v10, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    .line 890
    add-int/2addr v15, v8

    .line 891
    xor-int v10, v7, v15

    const/4 v14, 0x7

    invoke-static {v10, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    .line 893
    add-int/2addr v3, v9

    .line 894
    xor-int v10, v22, v3

    const/16 v14, 0x10

    invoke-static {v10, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    .line 896
    .end local v22    # "ws13":I
    .local v10, "ws13":I
    add-int v17, v17, v10

    .line 897
    xor-int v14, v9, v17

    invoke-static {v14, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    .line 899
    add-int/2addr v3, v9

    .line 900
    xor-int v14, v10, v3

    const/16 v12, 0x8

    invoke-static {v14, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    .line 902
    add-int v17, v17, v10

    .line 903
    xor-int v12, v9, v17

    const/4 v14, 0x7

    invoke-static {v12, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    .line 905
    add-int/2addr v4, v11

    .line 906
    xor-int v12, v24, v4

    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    .line 908
    .end local v24    # "ws14":I
    .local v12, "ws14":I
    add-int v18, v18, v12

    .line 909
    xor-int v14, v11, v18

    const/16 v0, 0xc

    invoke-static {v14, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 911
    .end local v11    # "ws06":I
    .local v1, "ws06":I
    add-int/2addr v4, v1

    .line 912
    xor-int v0, v12, v4

    const/16 v11, 0x8

    invoke-static {v0, v11}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 914
    .end local v12    # "ws14":I
    .local v0, "ws14":I
    add-int v18, v18, v0

    .line 915
    xor-int v11, v1, v18

    const/4 v12, 0x7

    invoke-static {v11, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 917
    add-int/2addr v5, v13

    .line 918
    xor-int v11, v26, v5

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    .line 920
    .end local v26    # "ws15":I
    .local v11, "ws15":I
    add-int v20, v20, v11

    .line 921
    xor-int v12, v13, v20

    const/16 v14, 0xc

    invoke-static {v12, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    .line 923
    .end local v13    # "ws07":I
    .local v12, "ws07":I
    add-int/2addr v5, v12

    .line 924
    xor-int v13, v11, v5

    const/16 v14, 0x8

    invoke-static {v13, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    .line 926
    add-int v20, v20, v11

    .line 927
    xor-int v13, v12, v20

    const/4 v14, 0x7

    invoke-static {v13, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    .line 929
    add-int/2addr v2, v9

    .line 930
    xor-int v13, v11, v2

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    .line 932
    add-int v18, v18, v11

    .line 933
    xor-int v13, v9, v18

    const/16 v14, 0xc

    invoke-static {v13, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    .line 935
    add-int/2addr v2, v9

    .line 936
    xor-int v13, v11, v2

    const/16 v14, 0x8

    invoke-static {v13, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v26

    .line 938
    .end local v11    # "ws15":I
    .restart local v26    # "ws15":I
    add-int v18, v18, v26

    .line 939
    xor-int v11, v9, v18

    const/4 v13, 0x7

    invoke-static {v11, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    .line 941
    add-int/2addr v3, v1

    .line 942
    xor-int v11, v8, v3

    const/16 v13, 0x10

    invoke-static {v11, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    .line 944
    add-int v20, v20, v8

    .line 945
    xor-int v11, v1, v20

    const/16 v13, 0xc

    invoke-static {v11, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 947
    add-int/2addr v3, v1

    .line 948
    xor-int v11, v8, v3

    const/16 v13, 0x8

    invoke-static {v11, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    .line 950
    add-int v20, v20, v8

    .line 951
    xor-int v11, v1, v20

    const/4 v13, 0x7

    invoke-static {v11, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    .line 953
    .end local v1    # "ws06":I
    .local v11, "ws06":I
    add-int/2addr v4, v12

    .line 954
    xor-int v1, v10, v4

    const/16 v13, 0x10

    invoke-static {v1, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 956
    .end local v10    # "ws13":I
    .local v1, "ws13":I
    add-int/2addr v15, v1

    .line 957
    xor-int v10, v12, v15

    const/16 v13, 0xc

    invoke-static {v10, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    .line 959
    .end local v12    # "ws07":I
    .local v10, "ws07":I
    add-int/2addr v4, v10

    .line 960
    xor-int v12, v1, v4

    const/16 v13, 0x8

    invoke-static {v12, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v22

    .line 962
    .end local v1    # "ws13":I
    .restart local v22    # "ws13":I
    add-int v15, v15, v22

    .line 963
    xor-int v1, v10, v15

    const/4 v12, 0x7

    invoke-static {v1, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v13

    .line 965
    .end local v10    # "ws07":I
    .restart local v13    # "ws07":I
    add-int/2addr v5, v7

    .line 966
    xor-int v1, v0, v5

    const/16 v10, 0x10

    invoke-static {v1, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 968
    add-int v17, v17, v0

    .line 969
    xor-int v1, v7, v17

    const/16 v10, 0xc

    invoke-static {v1, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 971
    .end local v7    # "ws04":I
    .local v1, "ws04":I
    add-int/2addr v5, v1

    .line 972
    xor-int v7, v0, v5

    const/16 v10, 0x8

    invoke-static {v7, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v24

    .line 974
    .end local v0    # "ws14":I
    .restart local v24    # "ws14":I
    add-int v17, v17, v24

    .line 975
    xor-int v0, v1, v17

    const/4 v7, 0x7

    invoke-static {v0, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 880
    .end local v1    # "ws04":I
    .local v0, "ws04":I
    add-int/lit8 v6, v6, 0x1

    move v7, v0

    const/16 v10, 0xa

    const/4 v12, 0x7

    const/16 v14, 0x8

    move-wide/from16 v0, p1

    goto/16 :goto_0

    .line 980
    .end local v0    # "ws04":I
    .end local v6    # "round":I
    .restart local v7    # "ws04":I
    :cond_0
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 981
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 982
    const v1, 0x61707865

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 983
    const v1, 0x3320646e

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 984
    const v1, 0x79622d32

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 985
    const v1, 0x6b206574

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 986
    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 987
    const/4 v1, 0x5

    aget v1, p0, v1

    add-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 988
    const/4 v1, 0x6

    aget v1, p0, v1

    add-int/2addr v1, v11

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 989
    const/4 v1, 0x7

    aget v1, p0, v1

    add-int/2addr v1, v13

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 990
    const/16 v1, 0x8

    aget v1, p0, v1

    add-int/2addr v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 991
    aget v1, p0, v16

    add-int v1, v17, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 992
    const/16 v1, 0xa

    aget v1, p0, v1

    add-int v1, v18, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 993
    aget v1, p0, v19

    add-int v1, v20, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 995
    move v6, v2

    move-wide/from16 v1, p1

    .end local v2    # "ws00":I
    .local v6, "ws00":I
    long-to-int v10, v1

    add-int/2addr v10, v8

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 996
    aget v10, p0, v21

    add-int v10, v22, v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 997
    aget v10, p0, v23

    add-int v10, v24, v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 998
    aget v10, p0, v25

    add-int v10, v26, v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1000
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1001
    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1002
    return-void
.end method

.method private chaCha20Transform([BII[BI)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyException;
        }
    .end annotation

    .line 1017
    move v0, p3

    .line 1019
    .local v0, "remainingData":I
    :goto_0
    if-lez v0, :cond_2

    .line 1020
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStream:[B

    array-length v1, v1

    iget v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStrOffset:I

    sub-int/2addr v1, v2

    .line 1021
    .local v1, "ksRemain":I
    if-gtz v1, :cond_1

    .line 1022
    iget-wide v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->counter:J

    iget-wide v4, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->finalCounterValue:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1023
    invoke-direct {p0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->generateKeystream()V

    .line 1024
    const/4 v2, 0x0

    iput v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStrOffset:I

    .line 1025
    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStream:[B

    array-length v1, v2

    move v8, v1

    goto :goto_1

    .line 1027
    :cond_0
    new-instance v2, Ljava/security/KeyException;

    const-string v3, "Counter exhausted.  Reinitialize with new key and/or nonce"

    invoke-direct {v2, v3}, Ljava/security/KeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1021
    :cond_1
    move v8, v1

    .line 1033
    .end local v1    # "ksRemain":I
    .local v8, "ksRemain":I
    :goto_1
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1034
    .local v9, "xformLen":I
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStream:[B

    iget v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStrOffset:I

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move v6, p5

    move v7, v9

    invoke-static/range {v1 .. v7}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->xor([BI[BI[BII)V

    .line 1035
    add-int/2addr p5, v9

    .line 1036
    add-int/2addr p2, v9

    .line 1037
    iget v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStrOffset:I

    add-int/2addr v1, v9

    iput v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStrOffset:I

    .line 1038
    sub-int/2addr v0, v9

    .line 1039
    .end local v8    # "ksRemain":I
    .end local v9    # "xformLen":I
    goto :goto_0

    .line 1040
    :cond_2
    return-void
.end method

.method private checkFromIndexSize(III)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "size"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1171
    or-int v0, p3, p1

    or-int/2addr v0, p2

    if-ltz v0, :cond_0

    sub-int v0, p3, p1

    if-gt p2, v0, :cond_0

    .line 1173
    return p1

    .line 1172
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private checkKeyAndNonce([B[B)V
    .locals 2
    .param p1, "newKeyBytes"    # [B
    .param p2, "newNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyBytes:[B

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->nonce:[B

    .line 596
    invoke-static {p2, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Matching key and nonce from previous initialization"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1
    :goto_0
    return-void
.end method

.method private createRandomNonce(Ljava/security/SecureRandom;)[B
    .locals 2
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 516
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 517
    .local v0, "newNonce":[B
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 518
    .local v1, "rand":Ljava/security/SecureRandom;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 519
    return-object v0
.end method

.method private generateKeystream()V
    .locals 4

    .line 843
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    iget-wide v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->counter:J

    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStream:[B

    invoke-static {v0, v1, v2, v3}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->chaCha20Block([IJ[B)V

    .line 844
    iget-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->counter:J

    .line 845
    return-void
.end method

.method private static getEncodedKey(Ljava/security/Key;)[B
    .locals 3
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 613
    const-string v0, "RAW"

    invoke-interface {p0}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 617
    .local v0, "encodedKey":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 620
    return-object v0

    .line 618
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Key length must be 256 bits"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    .end local v0    # "encodedKey":[B
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key encoding format must be RAW"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(ILjava/security/Key;[B)V
    .locals 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "newNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 540
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    .line 543
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    :goto_0
    invoke-static {p2}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->getEncodedKey(Ljava/security/Key;)[B

    move-result-object v2

    .line 551
    .local v2, "newKeyBytes":[B
    invoke-direct {p0, v2, p3}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->checkKeyAndNonce([B[B)V

    .line 552
    iput-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyBytes:[B

    .line 553
    iput-object p3, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->nonce:[B

    .line 556
    invoke-direct {p0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->setInitialState()V

    .line 558
    iget v3, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->mode:I

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 559
    new-instance v0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;

    invoke-direct {v0, p0, v4}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;-><init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$1;)V

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    goto :goto_1

    .line 560
    :cond_2
    iget v3, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->mode:I

    if-ne v3, v1, :cond_5

    .line 561
    if-ne p1, v1, :cond_3

    .line 562
    new-instance v0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;

    invoke-direct {v0, p0, v4}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;-><init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$1;)V

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    goto :goto_1

    .line 563
    :cond_3
    if-ne p1, v0, :cond_4

    .line 564
    new-instance v0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;

    invoke-direct {v0, p0, v4}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;-><init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$1;)V

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    goto :goto_1

    .line 566
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Not encrypt or decrypt mode"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_5
    :goto_1
    iget-wide v3, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->counter:J

    const-wide v5, 0xffffffffL

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->finalCounterValue:J

    .line 572
    invoke-direct {p0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->generateKeystream()V

    .line 573
    iput p1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->direction:I

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadDone:Z

    .line 575
    iput v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyStrOffset:I

    .line 576
    iput-boolean v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->initialized:Z

    .line 577
    return-void

    .line 541
    .end local v2    # "newKeyBytes":[B
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "WRAP_MODE and UNWRAP_MODE are not currently supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initAuthenticator()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1077
    new-instance v0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;

    invoke-direct {v0}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;-><init>()V

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authenticator:Lorg/openjsse/com/sun/crypto/provider/Poly1305;

    .line 1080
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 1081
    .local v0, "serializedKey":[B
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->chaCha20Block([IJ[B)V

    .line 1083
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authenticator:Lorg/openjsse/com/sun/crypto/provider/Poly1305;

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v5, 0x20

    iget-object v6, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authAlgName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1085
    iput-wide v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadLen:J

    .line 1086
    iput-wide v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->dataLen:J

    .line 1087
    return-void
.end method

.method private setInitialState()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    const v1, 0x61707865

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 812
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    const/4 v1, 0x1

    const v3, 0x3320646e

    aput v3, v0, v1

    .line 813
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    const/4 v1, 0x2

    const v3, 0x79622d32

    aput v3, v0, v1

    .line 814
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    const/4 v1, 0x3

    const v3, 0x6b206574

    aput v3, v0, v1

    .line 817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    const/high16 v3, -0x1000000

    const/high16 v4, 0xff0000

    const v5, 0xff00

    if-ge v0, v1, :cond_0

    .line 818
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    div-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x4

    iget-object v7, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyBytes:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyBytes:[B

    add-int/lit8 v9, v0, 0x1

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v5, v8

    or-int/2addr v5, v7

    iget-object v7, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyBytes:[B

    add-int/lit8 v8, v0, 0x2

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    and-int/2addr v4, v7

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->keyBytes:[B

    add-int/lit8 v7, v0, 0x3

    aget-byte v5, v5, v7

    shl-int/lit8 v5, v5, 0x18

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    aput v3, v1, v6

    .line 817
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 824
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 828
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 829
    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->startState:[I

    div-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0xd

    iget-object v7, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->nonce:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->nonce:[B

    add-int/lit8 v9, v0, 0x1

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v5

    or-int/2addr v7, v8

    iget-object v8, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->nonce:[B

    add-int/lit8 v9, v0, 0x2

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x10

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    iget-object v8, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->nonce:[B

    add-int/lit8 v9, v0, 0x3

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x18

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    aput v7, v2, v6

    .line 828
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 834
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static xor([BI[BI[BII)V
    .locals 9
    .param p0, "in1"    # [B
    .param p1, "off1"    # I
    .param p2, "in2"    # [B
    .param p3, "off2"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .param p6, "len"    # I

    .line 1045
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1046
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1047
    :goto_0
    const/16 v1, 0x8

    if-lt p6, v1, :cond_0

    .line 1048
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1049
    invoke-virtual {v0, p0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1050
    invoke-virtual {v0, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1051
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    .line 1052
    .local v3, "v1":J
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    .line 1053
    .local v5, "v2":J
    xor-long v7, v3, v5

    invoke-virtual {v0, v2, v7, v8}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1054
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1055
    invoke-virtual {v0, p4, p5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1056
    add-int/lit8 p1, p1, 0x8

    .line 1057
    add-int/lit8 p3, p3, 0x8

    .line 1058
    add-int/lit8 p5, p5, 0x8

    .line 1059
    nop

    .end local v3    # "v1":J
    .end local v5    # "v2":J
    add-int/lit8 p6, p6, -0x8

    .line 1060
    goto :goto_0

    .line 1061
    :cond_0
    :goto_1
    if-lez p6, :cond_1

    .line 1062
    aget-byte v1, p0, p1

    aget-byte v2, p2, p3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, p5

    .line 1063
    add-int/lit8 p1, p1, 0x1

    .line 1064
    add-int/lit8 p3, p3, 0x1

    .line 1065
    add-int/lit8 p5, p5, 0x1

    .line 1066
    add-int/lit8 p6, p6, -0x1

    goto :goto_1

    .line 1068
    :cond_1
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOfs"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOfs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 732
    const/4 v0, 0x0

    .line 734
    .local v0, "bytesUpdated":I
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;->doFinal([BII[BI)I

    move-result v2
    :try_end_0
    .catch Ljava/security/KeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 740
    iput-boolean v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->initialized:Z

    .line 741
    nop

    .line 742
    return v0

    .line 740
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 735
    :catch_0
    move-exception v2

    .line 736
    .local v2, "ke":Ljava/security/KeyException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bytesUpdated":I
    .end local p1    # "in":[B
    .end local p2    # "inOfs":I
    .end local p3    # "inLen":I
    .end local p4    # "out":[B
    .end local p5    # "outOfs":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    .end local v2    # "ke":Ljava/security/KeyException;
    .restart local v0    # "bytesUpdated":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOfs":I
    .restart local p3    # "inLen":I
    .restart local p4    # "out":[B
    .restart local p5    # "outOfs":I
    :goto_0
    iput-boolean v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->initialized:Z

    .line 741
    throw v2
.end method

.method protected engineDoFinal([BII)[B
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOfs"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;->getOutputSize(IZ)I

    move-result v0

    new-array v0, v0, [B

    .line 696
    .local v0, "output":[B
    const/4 v7, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;->doFinal([BII[BI)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    iput-boolean v7, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->initialized:Z

    .line 703
    nop

    .line 704
    return-object v0

    .line 702
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 697
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 698
    .local v1, "exc":Ljava/security/GeneralSecurityException;
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "output":[B
    .end local p1    # "in":[B
    .end local p2    # "inOfs":I
    .end local p3    # "inLen":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    .end local v1    # "exc":Ljava/security/GeneralSecurityException;
    .restart local v0    # "output":[B
    .restart local p1    # "in":[B
    .restart local p2    # "inOfs":I
    .restart local p3    # "inLen":I
    :goto_1
    iput-boolean v7, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->initialized:Z

    .line 703
    throw v1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->nonce:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 795
    invoke-static {p1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->getEncodedKey(Ljava/security/Key;)[B

    move-result-object v0

    .line 796
    .local v0, "encodedKey":[B
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x3

    return v1
.end method

.method protected engineGetOutputSize(I)I
    .locals 2
    .param p1, "inputLen"    # I

    .line 208
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;->getOutputSize(IZ)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "params":Ljava/security/AlgorithmParameters;
    iget v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 239
    :try_start_0
    const-string v1, "ChaCha20-Poly1305"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    move-object v0, v1

    .line 240
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->nonce:[B

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 241
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_1

    .line 242
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 243
    .local v1, "exc":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 247
    .end local v1    # "exc":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 393
    if-nez p3, :cond_0

    .line 394
    invoke-virtual {p0, p1, p2, p4}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 395
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    .line 399
    .local v0, "newNonce":[B
    iget v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->mode:I

    packed-switch v1, :pswitch_data_0

    .line 422
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->mode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :pswitch_0
    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "paramAlg":Ljava/lang/String;
    const-string v2, "ChaCha20-Poly1305"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 410
    :try_start_0
    new-instance v2, Lsun/security/util/DerValue;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 411
    .local v2, "dv":Lsun/security/util/DerValue;
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v3

    move-object v0, v3

    .line 412
    array-length v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 419
    .end local v2    # "dv":Lsun/security/util/DerValue;
    nop

    .line 427
    .end local v1    # "paramAlg":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 428
    invoke-direct {p0, p4}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->createRandomNonce(Ljava/security/SecureRandom;)[B

    move-result-object v0

    .line 432
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->init(ILjava/security/Key;[B)V

    .line 433
    return-void

    .line 413
    .restart local v1    # "paramAlg":Ljava/lang/String;
    .restart local v2    # "dv":Lsun/security/util/DerValue;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "ChaCha20-Poly1305 nonce must be 12 bytes in length"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "newNonce":[B
    .end local v1    # "paramAlg":Ljava/lang/String;
    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "params":Ljava/security/AlgorithmParameters;
    .end local p4    # "random":Ljava/security/SecureRandom;
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    .end local v2    # "dv":Lsun/security/util/DerValue;
    .restart local v0    # "newNonce":[B
    .restart local v1    # "paramAlg":Ljava/lang/String;
    .restart local p1    # "opmode":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "params":Ljava/security/AlgorithmParameters;
    .restart local p4    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v2

    .line 418
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 406
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_3
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    .end local v1    # "paramAlg":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "AlgorithmParameters not supported"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 279
    invoke-direct {p0, p3}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->createRandomNonce(Ljava/security/SecureRandom;)[B

    move-result-object v0

    .line 280
    .local v0, "newNonce":[B
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->counter:J

    .line 281
    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->init(ILjava/security/Key;[B)V

    .line 282
    .end local v0    # "newNonce":[B
    nop

    .line 286
    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Default parameter generation disallowed in DECRYPT and UNWRAP modes"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 317
    if-nez p3, :cond_0

    .line 318
    invoke-virtual {p0, p1, p2, p4}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 319
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 325
    .local v0, "newNonce":[B
    iget v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->mode:I

    packed-switch v1, :pswitch_data_0

    .line 349
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ChaCha20 in unsupported mode"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :pswitch_0
    instance-of v1, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_2

    .line 340
    move-object v1, p3

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 341
    .local v1, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    .line 342
    array-length v2, v0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "ChaCha20-Poly1305 nonce must be 12 bytes in length"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    .end local v1    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :cond_2
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "ChaCha20-Poly1305 requires IvParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :pswitch_1
    instance-of v1, p3, Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;

    if-eqz v1, :cond_3

    .line 331
    move-object v1, p3

    check-cast v1, Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;

    .line 332
    .local v1, "chaParams":Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;
    invoke-virtual {v1}, Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;->getNonce()[B

    move-result-object v0

    .line 333
    invoke-virtual {v1}, Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;->getCounter()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->counter:J

    .line 334
    nop

    .line 351
    .end local v1    # "chaParams":Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->init(ILjava/security/Key;[B)V

    .line 352
    return-void

    .line 328
    :cond_3
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "ChaCha20 algorithm requires ChaCha20ParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 159
    const-string v0, "None"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Mode must be None"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 2
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 177
    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Padding must be NoPadding"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 2
    .param p1, "wrappedKey"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 779
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unwrap operations are not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOfs"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOfs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 667
    const/4 v0, 0x0

    .line 669
    .local v0, "bytesUpdated":I
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;->doUpdate([BII[BI)I

    move-result v1
    :try_end_0
    .catch Ljava/security/KeyException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 672
    nop

    .line 673
    return v0

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "ke":Ljava/security/KeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected engineUpdate([BII)[B
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOfs"    # I
    .param p3, "inLen"    # I

    .line 636
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;->getOutputSize(IZ)I

    move-result v0

    new-array v0, v0, [B

    .line 638
    .local v0, "out":[B
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->engine:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;->doUpdate([BII[BI)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    nop

    .line 643
    return-object v0

    .line 639
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 640
    .local v1, "exc":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 485
    iget-boolean v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->initialized:Z

    if-eqz v0, :cond_2

    .line 490
    iget-boolean v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadDone:Z

    if-nez v0, :cond_1

    .line 494
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 499
    :try_start_0
    iget-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadLen:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadLen:J

    .line 500
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authenticator:Lorg/openjsse/com/sun/crypto/provider/Poly1305;

    invoke-virtual {v0, p1}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->engineUpdate(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    nop

    .line 505
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "ae":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AAD overflow"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 495
    .end local v0    # "ae":Ljava/lang/ArithmeticException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher is running in non-AEAD mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to update AAD on Cipher after plaintext/ciphertext update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to update AAD on uninitialized Cipher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdateAAD([BII)V
    .locals 4
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 450
    iget-boolean v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->initialized:Z

    if-eqz v0, :cond_2

    .line 455
    iget-boolean v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadDone:Z

    if-nez v0, :cond_1

    .line 459
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 464
    :try_start_0
    iget-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadLen:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->aadLen:J

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->authUpdate([BII)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    nop

    .line 470
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ae":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AAD overflow"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 460
    .end local v0    # "ae":Ljava/lang/ArithmeticException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher is running in non-AEAD mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to update AAD on Cipher after plaintext/ciphertext update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to update AAD on uninitialized Cipher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wrap operations are not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
