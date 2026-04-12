.class final Lorg/conscrypt/OpenSSLBIOSource;
.super Ljava/lang/Object;
.source "OpenSSLBIOSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
    }
.end annotation


# instance fields
.field private source:Lorg/conscrypt/OpenSSLBIOInputStream;


# direct methods
.method private constructor <init>(Lorg/conscrypt/OpenSSLBIOInputStream;)V
    .locals 0
    .param p1, "source"    # Lorg/conscrypt/OpenSSLBIOInputStream;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    .line 36
    return-void
.end method

.method private declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local p0    # "this":Lorg/conscrypt/OpenSSLBIOSource;
    :cond_0
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static wrap(Ljava/nio/ByteBuffer;)Lorg/conscrypt/OpenSSLBIOSource;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 30
    new-instance v0, Lorg/conscrypt/OpenSSLBIOSource;

    new-instance v1, Lorg/conscrypt/OpenSSLBIOInputStream;

    new-instance v2, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;

    invoke-direct {v2, p0}, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {v0, v1}, Lorg/conscrypt/OpenSSLBIOSource;-><init>(Lorg/conscrypt/OpenSSLBIOInputStream;)V

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLBIOSource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 55
    nop

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getContext()J
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    return-wide v0
.end method
