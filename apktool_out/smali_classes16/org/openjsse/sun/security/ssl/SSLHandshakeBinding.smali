.class interface abstract Lorg/openjsse/sun/security/ssl/SSLHandshakeBinding;
.super Ljava/lang/Object;
.source "SSLHandshakeBinding.java"


# virtual methods
.method public getHandshakeConsumers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/HandshakeContext;",
            ")[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "Lorg/openjsse/sun/security/ssl/SSLConsumer;",
            ">;"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    return-object v0
.end method

.method public getHandshakeProducers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/HandshakeContext;",
            ")[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "Lorg/openjsse/sun/security/ssl/HandshakeProducer;",
            ">;"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    return-object v0
.end method

.method public getRelatedHandshakers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method
