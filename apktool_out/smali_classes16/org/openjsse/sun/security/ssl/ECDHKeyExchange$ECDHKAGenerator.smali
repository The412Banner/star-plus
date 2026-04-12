.class final Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHKAGenerator;
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
    name = "ECDHKAGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$1;

    .line 240
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHKAGenerator;-><init>()V

    return-void
.end method

.method private createClientKeyDerivation(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 11
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "ecdhePossession":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;
    const/4 v1, 0x0

    .line 309
    .local v1, "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 310
    .local v3, "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    if-nez v4, :cond_0

    .line 311
    goto :goto_0

    .line 314
    :cond_0
    move-object v4, v3

    check-cast v4, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 315
    .local v4, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 316
    .local v6, "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v7, v6, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    if-nez v7, :cond_1

    .line 317
    goto :goto_1

    .line 320
    :cond_1
    move-object v7, v6

    check-cast v7, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 321
    .local v7, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    const-string v9, "EC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 322
    goto :goto_1

    .line 324
    :cond_2
    move-object v8, v7

    check-cast v8, Ljava/security/interfaces/ECPublicKey;

    .line 325
    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v8

    .line 326
    .local v8, "params":Ljava/security/spec/ECParameterSpec;
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljava/security/spec/ECParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v9

    .line 327
    .local v9, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    if-eqz v9, :cond_4

    .line 333
    invoke-virtual {v4, v9}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 334
    move-object v1, v6

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    .line 335
    goto :goto_2

    .line 337
    .end local v6    # "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v8    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v9    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_3
    goto :goto_1

    .line 329
    .restart local v6    # "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    .restart local v8    # "params":Ljava/security/spec/ECParameterSpec;
    .restart local v9    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_4
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v10, "Unsupported EC server cert for ECDH key exchange"

    invoke-virtual {v2, v5, v10}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 339
    .end local v6    # "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v8    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v9    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 340
    move-object v0, v3

    check-cast v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    .line 341
    goto :goto_3

    .line 343
    .end local v3    # "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    .end local v4    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_6
    goto :goto_0

    .line 345
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 350
    new-instance v2, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->privateKey:Ljava/security/PrivateKey;

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    invoke-direct {v2, p1, v3, v4}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    return-object v2

    .line 346
    :cond_8
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No sufficient ECDH key agreement parameters negotiated"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method private createServerKeyDerivation(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 9
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    const/4 v1, 0x0

    .line 262
    .local v1, "ecdheCredentials":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 263
    .local v3, "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-nez v4, :cond_0

    .line 264
    goto :goto_0

    .line 267
    :cond_0
    move-object v4, v3

    check-cast v4, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 268
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 269
    .local v4, "params":Ljava/security/spec/ECParameterSpec;
    if-nez v4, :cond_1

    .line 270
    goto :goto_0

    .line 273
    :cond_1
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljava/security/spec/ECParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v5

    .line 274
    .local v5, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    if-eqz v5, :cond_6

    .line 280
    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 281
    .local v7, "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v8, v7, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    if-nez v8, :cond_2

    .line 282
    goto :goto_1

    .line 284
    :cond_2
    move-object v8, v7

    check-cast v8, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-virtual {v5, v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 285
    move-object v1, v7

    check-cast v1, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    .line 286
    goto :goto_2

    .line 288
    .end local v7    # "cred":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_3
    goto :goto_1

    .line 290
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 291
    move-object v0, v3

    check-cast v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 292
    goto :goto_3

    .line 294
    .end local v3    # "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    .end local v4    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_5
    goto :goto_0

    .line 276
    .restart local v3    # "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    .restart local v4    # "params":Ljava/security/spec/ECParameterSpec;
    .restart local v5    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_6
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Unsupported EC server cert for ECDH key exchange"

    invoke-virtual {v2, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 296
    .end local v3    # "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    .end local v4    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 301
    new-instance v2, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->popPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v2, p1, v3, v4}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    return-object v2

    .line 297
    :cond_8
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No sufficient ECDHE key agreement parameters negotiated"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 1
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    instance-of v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    if-eqz v0, :cond_0

    .line 250
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHKAGenerator;->createServerKeyDerivation(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHKAGenerator;->createClientKeyDerivation(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v0

    return-object v0
.end method
