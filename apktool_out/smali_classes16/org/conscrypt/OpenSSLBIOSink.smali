.class final Lorg/conscrypt/OpenSSLBIOSink;
.super Ljava/lang/Object;
.source "OpenSSLBIOSink.java"


# instance fields
.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final ctx:J

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/OpenSSLBIOSink;->ctx:J

    .line 36
    iput-object p1, p0, Lorg/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 37
    return-void
.end method

.method static create()Lorg/conscrypt/OpenSSLBIOSink;
    .locals 2

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/conscrypt/OpenSSLBIOSink;

    invoke-direct {v1, v0}, Lorg/conscrypt/OpenSSLBIOSink;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method


# virtual methods
.method available()I
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/conscrypt/OpenSSLBIOSink;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLBIOSink;->ctx:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 75
    nop

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getContext()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLBIOSink;->ctx:J

    return-wide v0
.end method

.method position()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/conscrypt/OpenSSLBIOSink;->position:I

    return v0
.end method

.method reset()V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/OpenSSLBIOSink;->position:I

    .line 46
    return-void
.end method

.method skip(J)J
    .locals 3
    .param p1, "byteCount"    # J

    .line 49
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLBIOSink;->available()I

    move-result v0

    long-to-int v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 50
    .local v0, "maxLength":I
    iget v1, p0, Lorg/conscrypt/OpenSSLBIOSink;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/conscrypt/OpenSSLBIOSink;->position:I

    .line 51
    iget v1, p0, Lorg/conscrypt/OpenSSLBIOSink;->position:I

    iget-object v2, p0, Lorg/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLBIOSink;->reset()V

    .line 54
    :cond_0
    int-to-long v1, v0

    return-wide v1
.end method

.method toByteArray()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
