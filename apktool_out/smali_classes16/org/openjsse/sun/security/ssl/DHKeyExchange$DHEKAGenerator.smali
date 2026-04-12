.class final Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;
.super Ljava/lang/Object;
.source "DHKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DHEKAGenerator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator$DHEKAKeyDerivation;
    }
.end annotation


# static fields
.field private static instance:Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 395
    new-instance v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;->instance:Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/DHKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/DHKeyExchange$1;

    .line 394
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 12
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "dhePossession":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
    const/4 v1, 0x0

    .line 407
    .local v1, "dheCredentials":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 408
    .local v3, "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    if-nez v4, :cond_0

    .line 409
    goto :goto_0

    .line 412
    :cond_0
    move-object v4, v3

    check-cast v4, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    .line 413
    .local v4, "dhep":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 414
    .local v6, "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v7, v6, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    if-nez v7, :cond_1

    .line 415
    goto :goto_1

    .line 417
    :cond_1
    move-object v7, v6

    check-cast v7, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    .line 418
    .local v7, "dhec":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    iget-object v8, v4, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    if-eqz v8, :cond_2

    iget-object v8, v7, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    if-eqz v8, :cond_2

    .line 419
    iget-object v8, v4, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v9, v7, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-virtual {v8, v9}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 420
    move-object v1, v6

    check-cast v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    .line 421
    goto :goto_2

    .line 424
    :cond_2
    iget-object v8, v4, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v8}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v8

    .line 425
    .local v8, "pps":Ljavax/crypto/spec/DHParameterSpec;
    iget-object v9, v7, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->popPublicKey:Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v9}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v9

    .line 426
    .local v9, "cps":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 427
    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 428
    move-object v1, v6

    check-cast v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    .line 429
    goto :goto_2

    .line 432
    .end local v6    # "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    .end local v7    # "dhec":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    .end local v8    # "pps":Ljavax/crypto/spec/DHParameterSpec;
    .end local v9    # "cps":Ljavax/crypto/spec/DHParameterSpec;
    :cond_3
    goto :goto_1

    .line 434
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 435
    move-object v0, v3

    check-cast v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    .line 436
    goto :goto_3

    .line 438
    .end local v3    # "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    .end local v4    # "dhep":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
    :cond_5
    goto :goto_0

    .line 440
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 445
    new-instance v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator$DHEKAKeyDerivation;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->privateKey:Ljava/security/PrivateKey;

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->popPublicKey:Ljavax/crypto/interfaces/DHPublicKey;

    invoke-direct {v2, p1, v3, v4}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator$DHEKAKeyDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    return-object v2

    .line 441
    :cond_7
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No sufficient DHE key agreement parameters negotiated"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
