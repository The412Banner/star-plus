.class final Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieReproducer;
.super Ljava/lang/Object;
.source "CookieExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CookieExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HRRCookieReproducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CookieExtension$1;

    .line 279
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieReproducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 292
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 293
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Ignore unavailable cookie extension"

    invoke-static {v3, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_0
    return-object v2

    .line 301
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;

    .line 304
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;->cookie:[B

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;->cookie:[B

    array-length v3, v3

    if-eqz v3, :cond_2

    .line 306
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;->cookie:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 307
    .local v2, "extData":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 308
    .local v3, "m":Ljava/nio/ByteBuffer;
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;->cookie:[B

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/Record;->putBytes16(Ljava/nio/ByteBuffer;[B)V

    .line 309
    return-object v2

    .line 312
    .end local v2    # "extData":[B
    .end local v3    # "m":Ljava/nio/ByteBuffer;
    :cond_2
    return-object v2
.end method
