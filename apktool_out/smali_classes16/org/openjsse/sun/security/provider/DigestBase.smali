.class abstract Lorg/openjsse/sun/security/provider/DigestBase;
.super Ljava/security/MessageDigestSpi;
.source "DigestBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final padding:[B


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final blockSize:I

.field private bufOfs:I

.field buffer:[B

.field bytesProcessed:J

.field private final digestLength:I

.field private oneByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 244
    const/16 v0, 0x88

    new-array v0, v0, [B

    sput-object v0, Lorg/openjsse/sun/security/provider/DigestBase;->padding:[B

    .line 245
    sget-object v0, Lorg/openjsse/sun/security/provider/DigestBase;->padding:[B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 246
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "digestLength"    # I
    .param p3, "blockSize"    # I

    .line 81
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/openjsse/sun/security/provider/DigestBase;->algorithm:Ljava/lang/String;

    .line 83
    iput p2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->digestLength:I

    .line 84
    iput p3, p0, Lorg/openjsse/sun/security/provider/DigestBase;->blockSize:I

    .line 85
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->buffer:[B

    .line 86
    return-void
.end method

.method private implCompressMultiBlock([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "ofs"    # I
    .param p3, "limit"    # I

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/sun/security/provider/DigestBase;->implCompressMultiBlockCheck([BII)V

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/sun/security/provider/DigestBase;->implCompressMultiBlock0([BII)I

    move-result v0

    return v0
.end method

.method private implCompressMultiBlock0([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "ofs"    # I
    .param p3, "limit"    # I

    .line 147
    nop

    :goto_0
    if-gt p2, p3, :cond_0

    .line 148
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/provider/DigestBase;->implCompress([BI)V

    .line 147
    iget v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->blockSize:I

    add-int/2addr p2, v0

    goto :goto_0

    .line 150
    :cond_0
    return p2
.end method

.method private implCompressMultiBlockCheck([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "ofs"    # I
    .param p3, "limit"    # I

    .line 154
    if-gez p3, :cond_0

    .line 155
    return-void

    .line 159
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    if-ltz p2, :cond_2

    array-length v0, p1

    if-ge p2, v0, :cond_2

    .line 165
    iget v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->blockSize:I

    div-int v0, p3, v0

    iget v1, p0, Lorg/openjsse/sun/security/provider/DigestBase;->blockSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/openjsse/sun/security/provider/DigestBase;->blockSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 166
    .local v0, "endIndex":I
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 169
    return-void

    .line 167
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 162
    .end local v0    # "endIndex":I
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 232
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/provider/DigestBase;

    .line 233
    .local v0, "copy":Lorg/openjsse/sun/security/provider/DigestBase;
    iget-object v1, v0, Lorg/openjsse/sun/security/provider/DigestBase;->buffer:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/openjsse/sun/security/provider/DigestBase;->buffer:[B

    .line 234
    return-object v0
.end method

.method protected final engineDigest([BII)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "ofs"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 198
    iget v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->digestLength:I

    if-lt p3, v0, :cond_2

    .line 202
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    .line 205
    iget-wide v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bytesProcessed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/openjsse/sun/security/provider/DigestBase;->engineReset()V

    .line 208
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/provider/DigestBase;->implDigest([BI)V

    .line 209
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bytesProcessed:J

    .line 210
    iget v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->digestLength:I

    return v0

    .line 203
    :cond_1
    new-instance v0, Ljava/security/DigestException;

    const-string v1, "Buffer too short to store digest"

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    new-instance v0, Ljava/security/DigestException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->digestLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "digests"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineDigest()[B
    .locals 4

    .line 185
    iget v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->digestLength:I

    new-array v0, v0, [B

    .line 187
    .local v0, "b":[B
    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/openjsse/sun/security/provider/DigestBase;->engineDigest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    nop

    .line 192
    return-object v0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/security/DigestException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Internal error"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v1}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/ProviderException;

    throw v2
.end method

.method protected final engineGetDigestLength()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->digestLength:I

    return v0
.end method

.method protected final engineReset()V
    .locals 4

    .line 173
    iget-wide v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bytesProcessed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/provider/DigestBase;->implReset()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bufOfs:I

    .line 179
    iput-wide v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bytesProcessed:J

    .line 180
    iget-object v1, p0, Lorg/openjsse/sun/security/provider/DigestBase;->buffer:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 181
    return-void
.end method

.method protected final engineUpdate(B)V
    .locals 3
    .param p1, "b"    # B

    .line 95
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->oneByte:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 96
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->oneByte:[B

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->oneByte:[B

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    .line 99
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->oneByte:[B

    invoke-virtual {p0, v0, v2, v1}, Lorg/openjsse/sun/security/provider/DigestBase;->engineUpdate([BII)V

    .line 100
    return-void
.end method

.method protected final engineUpdate([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "ofs"    # I
    .param p3, "len"    # I

    .line 104
    if-nez p3, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_5

    .line 110
    iget-wide v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bytesProcessed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lorg/openjsse/sun/security/provider/DigestBase;->engineReset()V

    .line 113
    :cond_1
    iget-wide v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bytesProcessed:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bytesProcessed:J

    .line 115
    iget v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bufOfs:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 116
    iget v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->blockSize:I

    iget v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bufOfs:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 117
    .local v0, "n":I
    iget-object v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->buffer:[B

    iget v3, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bufOfs:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bufOfs:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bufOfs:I

    .line 119
    add-int/2addr p2, v0

    .line 120
    sub-int/2addr p3, v0

    .line 121
    iget v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bufOfs:I

    iget v3, p0, Lorg/openjsse/sun/security/provider/DigestBase;->blockSize:I

    if-lt v2, v3, :cond_2

    .line 123
    iget-object v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->buffer:[B

    invoke-virtual {p0, v2, v1}, Lorg/openjsse/sun/security/provider/DigestBase;->implCompress([BI)V

    .line 124
    iput v1, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bufOfs:I

    .line 128
    .end local v0    # "n":I
    :cond_2
    iget v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->blockSize:I

    if-lt p3, v0, :cond_3

    .line 129
    add-int v0, p2, p3

    .line 130
    .local v0, "limit":I
    iget v2, p0, Lorg/openjsse/sun/security/provider/DigestBase;->blockSize:I

    sub-int v2, v0, v2

    invoke-direct {p0, p1, p2, v2}, Lorg/openjsse/sun/security/provider/DigestBase;->implCompressMultiBlock([BII)I

    move-result p2

    .line 131
    sub-int p3, v0, p2

    .line 134
    .end local v0    # "limit":I
    :cond_3
    if-lez p3, :cond_4

    .line 135
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/DigestBase;->buffer:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iput p3, p0, Lorg/openjsse/sun/security/provider/DigestBase;->bufOfs:I

    .line 138
    :cond_4
    return-void

    .line 108
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method abstract implCompress([BI)V
.end method

.method abstract implDigest([BI)V
.end method

.method abstract implReset()V
.end method
