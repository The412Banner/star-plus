.class final Lorg/openjsse/com/sun/crypto/provider/Poly1305;
.super Ljava/lang/Object;
.source "Poly1305.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BLOCK_LENGTH:I = 0x10

.field private static final KEY_LENGTH:I = 0x20

.field private static final RS_LENGTH:I = 0x10

.field private static final TAG_LENGTH:I = 0x10

.field private static final ipl1305:Lsun/security/util/math/IntegerFieldModuloP;


# instance fields
.field private a:Lsun/security/util/math/MutableIntegerModuloP;

.field private final block:[B

.field private blockOffset:I

.field private keyBytes:[B

.field private final n:Lsun/security/util/math/MutableIntegerModuloP;

.field private r:Lsun/security/util/math/IntegerModuloP;

.field private s:Lsun/security/util/math/IntegerModuloP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    nop

    .line 51
    new-instance v0, Lsun/security/util/math/intpoly/IntegerPolynomial1305;

    invoke-direct {v0}, Lsun/security/util/math/intpoly/IntegerPolynomial1305;-><init>()V

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->ipl1305:Lsun/security/util/math/IntegerFieldModuloP;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    .line 61
    sget-object v0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->ipl1305:Lsun/security/util/math/IntegerFieldModuloP;

    invoke-interface {v0}, Lsun/security/util/math/IntegerFieldModuloP;->get1()Lsun/security/util/math/ImmutableIntegerModuloP;

    move-result-object v0

    invoke-interface {v0}, Lsun/security/util/math/ImmutableIntegerModuloP;->mutable()Lsun/security/util/math/MutableIntegerModuloP;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->n:Lsun/security/util/math/MutableIntegerModuloP;

    .line 63
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

    .line 258
    or-int v0, p3, p1

    or-int/2addr v0, p2

    if-ltz v0, :cond_0

    sub-int v0, p3, p1

    if-gt p2, v0, :cond_0

    .line 260
    return p1

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private processBlock(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I

    .line 226
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->n:Lsun/security/util/math/MutableIntegerModuloP;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lsun/security/util/math/MutableIntegerModuloP;->setValue(Ljava/nio/ByteBuffer;IB)Lsun/security/util/math/MutableIntegerModuloP;

    .line 227
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->a:Lsun/security/util/math/MutableIntegerModuloP;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->n:Lsun/security/util/math/MutableIntegerModuloP;

    invoke-interface {v0, v1}, Lsun/security/util/math/MutableIntegerModuloP;->setSum(Lsun/security/util/math/IntegerModuloP;)Lsun/security/util/math/MutableIntegerModuloP;

    .line 228
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->a:Lsun/security/util/math/MutableIntegerModuloP;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->r:Lsun/security/util/math/IntegerModuloP;

    invoke-interface {v0, v1}, Lsun/security/util/math/MutableIntegerModuloP;->setProduct(Lsun/security/util/math/IntegerModuloP;)Lsun/security/util/math/MutableIntegerModuloP;

    .line 229
    return-void
.end method

.method private processBlock([BII)V
    .locals 2
    .param p1, "block"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 232
    array-length v0, p1

    invoke-direct {p0, p2, p3, v0}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->checkFromIndexSize(III)I

    .line 233
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->n:Lsun/security/util/math/MutableIntegerModuloP;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lsun/security/util/math/MutableIntegerModuloP;->setValue([BIIB)Lsun/security/util/math/MutableIntegerModuloP;

    .line 234
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->a:Lsun/security/util/math/MutableIntegerModuloP;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->n:Lsun/security/util/math/MutableIntegerModuloP;

    invoke-interface {v0, v1}, Lsun/security/util/math/MutableIntegerModuloP;->setSum(Lsun/security/util/math/IntegerModuloP;)Lsun/security/util/math/MutableIntegerModuloP;

    .line 235
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->a:Lsun/security/util/math/MutableIntegerModuloP;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->r:Lsun/security/util/math/IntegerModuloP;

    invoke-interface {v0, v1}, Lsun/security/util/math/MutableIntegerModuloP;->setProduct(Lsun/security/util/math/IntegerModuloP;)Lsun/security/util/math/MutableIntegerModuloP;

    .line 236
    return-void
.end method

.method private setRSVals()V
    .locals 4

    .line 245
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    const/4 v1, 0x3

    aget-byte v2, v0, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 246
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    const/4 v1, 0x7

    aget-byte v2, v0, v1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 247
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    const/16 v1, 0xb

    aget-byte v2, v0, v1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 248
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    aget-byte v1, v0, v3

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 249
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    const/4 v1, 0x4

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfc

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 250
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    const/16 v1, 0x8

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfc

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 251
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    const/16 v1, 0xc

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfc

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 254
    sget-object v0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->ipl1305:Lsun/security/util/math/IntegerFieldModuloP;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-interface {v0, v1, v2, v3, v2}, Lsun/security/util/math/IntegerFieldModuloP;->getElement([BIIB)Lsun/security/util/math/ImmutableIntegerModuloP;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->r:Lsun/security/util/math/IntegerModuloP;

    .line 255
    sget-object v0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->ipl1305:Lsun/security/util/math/IntegerFieldModuloP;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    invoke-interface {v0, v1, v3, v3, v2}, Lsun/security/util/math/IntegerFieldModuloP;->getElement([BIIB)Lsun/security/util/math/ImmutableIntegerModuloP;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->s:Lsun/security/util/math/IntegerModuloP;

    .line 256
    return-void
.end method


# virtual methods
.method engineDoFinal()[B
    .locals 4

    .line 203
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 207
    .local v0, "tag":[B
    iget v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    if-lez v1, :cond_0

    .line 208
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    iget v2, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->processBlock([BII)V

    .line 209
    iput v3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    .line 213
    :cond_0
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->a:Lsun/security/util/math/MutableIntegerModuloP;

    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->s:Lsun/security/util/math/IntegerModuloP;

    invoke-interface {v1, v2, v0}, Lsun/security/util/math/MutableIntegerModuloP;->addModPowerTwo(Lsun/security/util/math/IntegerModuloP;[B)V

    .line 216
    invoke-virtual {p0}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->engineReset()V

    .line 217
    return-object v0
.end method

.method engineGetMacLength()I
    .locals 1

    .line 95
    const/16 v0, 0x10

    return v0
.end method

.method engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "newKey"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 76
    const-string v0, "Null key provided during init"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    .line 78
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->engineReset()V

    .line 86
    invoke-direct {p0}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->setRSVals()V

    .line 87
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect length for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->keyBytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key does not support encoding"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method engineReset()V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 105
    iput v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    .line 107
    sget-object v0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->ipl1305:Lsun/security/util/math/IntegerFieldModuloP;

    invoke-interface {v0}, Lsun/security/util/math/IntegerFieldModuloP;->get0()Lsun/security/util/math/ImmutableIntegerModuloP;

    move-result-object v0

    invoke-interface {v0}, Lsun/security/util/math/ImmutableIntegerModuloP;->mutable()Lsun/security/util/math/MutableIntegerModuloP;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->a:Lsun/security/util/math/MutableIntegerModuloP;

    .line 108
    return-void
.end method

.method engineUpdate(B)V
    .locals 4
    .param p1, "input"    # B

    .line 185
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    iget v2, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    aput-byte p1, v0, v2

    .line 189
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->processBlock([BII)V

    .line 191
    iput v2, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    .line 193
    :cond_0
    return-void

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 118
    .local v0, "remaining":I
    :goto_0
    if-lez v0, :cond_2

    .line 119
    iget v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    const/16 v2, 0x10

    rsub-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->min(II)I

    move-result v1

    .line 122
    .local v1, "bytesToWrite":I
    if-lt v1, v2, :cond_0

    .line 126
    invoke-direct {p0, p1, v1}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->processBlock(Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 130
    :cond_0
    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    iget v4, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    invoke-virtual {p1, v3, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 131
    iget v3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    .line 133
    iget v3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    if-lt v3, v2, :cond_1

    .line 134
    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->processBlock([BII)V

    .line 135
    iput v4, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    .line 139
    :cond_1
    :goto_1
    sub-int/2addr v0, v1

    .line 140
    .end local v1    # "bytesToWrite":I
    goto :goto_0

    .line 141
    :cond_2
    return-void
.end method

.method engineUpdate([BII)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 151
    array-length v0, p1

    invoke-direct {p0, p2, p3, v0}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->checkFromIndexSize(III)I

    .line 152
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lez v0, :cond_1

    .line 154
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    rsub-int/lit8 v0, v0, 0x10

    .line 155
    .local v0, "blockSpaceLeft":I
    if-ge p3, v0, :cond_0

    .line 156
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    iget v2, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    .line 158
    return-void

    .line 160
    :cond_0
    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    iget v4, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    add-int/2addr p2, v0

    .line 163
    sub-int/2addr p3, v0

    .line 164
    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    invoke-direct {p0, v3, v1, v2}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->processBlock([BII)V

    .line 165
    iput v1, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    .line 168
    .end local v0    # "blockSpaceLeft":I
    :cond_1
    :goto_0
    if-lt p3, v2, :cond_2

    .line 169
    invoke-direct {p0, p1, p2, v2}, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->processBlock([BII)V

    .line 170
    add-int/lit8 p2, p2, 0x10

    .line 171
    add-int/lit8 p3, p3, -0x10

    goto :goto_0

    .line 173
    :cond_2
    if-lez p3, :cond_3

    .line 174
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->block:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iput p3, p0, Lorg/openjsse/com/sun/crypto/provider/Poly1305;->blockOffset:I

    .line 177
    :cond_3
    return-void
.end method
