.class Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "OpenSSLBIOSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLBIOSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferInputStream"
.end annotation


# instance fields
.field private final source:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .line 61
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    .line 63
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0

    .line 70
    :cond_0
    const/4 v0, -0x1

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

    .line 81
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 82
    .local v0, "originalPosition":I
    iget-object v1, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 83
    iget-object v1, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 89
    .local v0, "toRead":I
    iget-object v1, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 90
    .local v1, "originalPosition":I
    iget-object v2, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 91
    iget-object v2, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v1

    return v2
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 97
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    .line 102
    .local v0, "originalPosition":J
    iget-object v2, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    add-long v3, v0, p1

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget-object v2, p0, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v2, v0

    return-wide v2
.end method
