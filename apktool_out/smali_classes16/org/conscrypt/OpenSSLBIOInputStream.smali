.class Lorg/conscrypt/OpenSSLBIOInputStream;
.super Ljava/io/FilterInputStream;
.source "OpenSSLBIOInputStream.java"


# instance fields
.field private ctx:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "isFinite"    # Z

    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-static {p0, p2}, Lorg/conscrypt/NativeCrypto;->create_BIO_InputStream(Lorg/conscrypt/OpenSSLBIOInputStream;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/OpenSSLBIOInputStream;->ctx:J

    .line 35
    return-void
.end method


# virtual methods
.method getBioContext()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLBIOInputStream;->ctx:J

    return-wide v0
.end method

.method gets([B)I
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 56
    .local v1, "inputByte":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 57
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLBIOInputStream;->read()I

    move-result v1

    .line 58
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 60
    goto :goto_1

    .line 62
    :cond_1
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 63
    if-nez v0, :cond_3

    .line 65
    goto :goto_0

    .line 71
    :cond_2
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    int-to-byte v3, v1

    aput-byte v3, p1, v0

    move v0, v2

    goto :goto_0

    .line 74
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    :cond_3
    :goto_1
    return v0

    .line 51
    .end local v0    # "offset":I
    .end local v1    # "inputByte":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4

    .line 92
    if-nez p3, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, "totalRead":I
    :cond_1
    add-int v1, p2, v0

    sub-int v2, p3, v0

    sub-int/2addr v2, p2

    invoke-super {p0, p1, v1, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 99
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    add-int/2addr v0, v1

    .line 103
    add-int v3, p2, v0

    if-lt v3, p3, :cond_1

    .line 105
    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    return v2

    .line 90
    .end local v0    # "totalRead":I
    .end local v1    # "read":I
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid bounds"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method release()V
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLBIOInputStream;->ctx:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 43
    return-void
.end method
