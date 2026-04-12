.class public Lorg/bouncycastle/crypto/macs/SipHash128;
.super Lorg/bouncycastle/crypto/macs/SipHash;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/SipHash;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/macs/SipHash;-><init>(II)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->wordPos:I

    rsub-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    iget v3, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->wordCount:I

    shl-int/lit8 v3, v3, 0x3

    iget v4, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->wordPos:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash128;->processMessageWord()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v2:J

    const-wide/16 v3, 0xee

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v2:J

    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->d:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash128;->applySipRounds(I)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v0:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    xor-long/2addr v0, v3

    iget-wide v3, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v2:J

    xor-long/2addr v0, v3

    iget-wide v3, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v3:J

    xor-long/2addr v0, v3

    iget-wide v3, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    const-wide/16 v5, 0xdd

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    iget v3, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->d:I

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/macs/SipHash128;->applySipRounds(I)V

    iget-wide v3, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v0:J

    iget-wide v5, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    xor-long/2addr v3, v5

    iget-wide v5, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v2:J

    xor-long/2addr v3, v5

    iget-wide v5, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v3:J

    xor-long/2addr v3, v5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash128;->reset()V

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/2addr p2, v2

    invoke-static {v3, v4, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method public doFinal()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "doFinal() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipHash128-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    const-wide/16 v2, 0xee

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    return-void
.end method
