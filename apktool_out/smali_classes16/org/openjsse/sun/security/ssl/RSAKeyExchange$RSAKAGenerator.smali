.class final Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator;
.super Ljava/lang/Object;
.source "RSAKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RSAKAGenerator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/RSAKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/RSAKeyExchange$1;

    .line 250
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "premaster":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;
    instance-of v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 262
    .local v2, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v3, v2, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;

    if-eqz v3, :cond_0

    .line 263
    move-object v0, v2

    check-cast v0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;

    .line 264
    goto :goto_1

    .line 266
    .end local v2    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_3

    .line 268
    :cond_2
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 269
    .local v2, "credential":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v3, v2, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;

    if-eqz v3, :cond_3

    .line 270
    move-object v0, v2

    check-cast v0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;

    .line 271
    goto :goto_3

    .line 273
    .end local v2    # "credential":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_3
    goto :goto_2

    .line 276
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 281
    new-instance v1, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;->premasterSecret:Ljavax/crypto/SecretKey;

    invoke-direct {v1, p1, v2}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    return-object v1

    .line 277
    :cond_5
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "No sufficient RSA key agreement parameters negotiated"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method
