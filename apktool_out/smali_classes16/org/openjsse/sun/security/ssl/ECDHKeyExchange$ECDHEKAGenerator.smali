.class final Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAGenerator;
.super Ljava/lang/Object;
.source "ECDHKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ECDHEKAGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$1;

    .line 356
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "ecdhePossession":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;
    const/4 v1, 0x0

    .line 367
    .local v1, "ecdheCredentials":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 368
    .local v3, "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    if-nez v4, :cond_0

    .line 369
    goto :goto_0

    .line 372
    :cond_0
    move-object v4, v3

    check-cast v4, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 373
    .local v4, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 374
    .local v6, "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v7, v6, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    if-nez v7, :cond_1

    .line 375
    goto :goto_1

    .line 377
    :cond_1
    move-object v7, v6

    check-cast v7, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-virtual {v4, v7}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 378
    move-object v1, v6

    check-cast v1, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    .line 379
    goto :goto_2

    .line 381
    .end local v6    # "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_2
    goto :goto_1

    .line 383
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 384
    move-object v0, v3

    check-cast v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    .line 385
    goto :goto_3

    .line 387
    .end local v3    # "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    .end local v4    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_4
    goto :goto_0

    .line 389
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 394
    new-instance v2, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->privateKey:Ljava/security/PrivateKey;

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->popPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v2, p1, v3, v4}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    return-object v2

    .line 390
    :cond_6
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No sufficient ECDHE key agreement parameters negotiated"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
