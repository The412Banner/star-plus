.class abstract Lorg/conscrypt/NativeRef;
.super Ljava/lang/Object;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/NativeRef$SSL_SESSION;,
        Lorg/conscrypt/NativeRef$HMAC_CTX;,
        Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;,
        Lorg/conscrypt/NativeRef$EVP_PKEY;,
        Lorg/conscrypt/NativeRef$EVP_MD_CTX;,
        Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;,
        Lorg/conscrypt/NativeRef$EC_POINT;,
        Lorg/conscrypt/NativeRef$EC_GROUP;
    }
.end annotation


# instance fields
.field final address:J


# direct methods
.method constructor <init>(J)V
    .locals 2
    .param p1, "address"    # J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 31
    iput-wide p1, p0, Lorg/conscrypt/NativeRef;->address:J

    .line 32
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == 0"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract doFree(J)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 36
    instance-of v0, p1, Lorg/conscrypt/NativeRef;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    return v1

    .line 40
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/conscrypt/NativeRef;

    iget-wide v2, v0, Lorg/conscrypt/NativeRef;->address:J

    iget-wide v4, p0, Lorg/conscrypt/NativeRef;->address:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/NativeRef;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 52
    iget-wide v0, p0, Lorg/conscrypt/NativeRef;->address:J

    invoke-virtual {p0, v0, v1}, Lorg/conscrypt/NativeRef;->doFree(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hashCode()I
    .locals 5

    .line 45
    iget-wide v0, p0, Lorg/conscrypt/NativeRef;->address:J

    iget-wide v2, p0, Lorg/conscrypt/NativeRef;->address:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
