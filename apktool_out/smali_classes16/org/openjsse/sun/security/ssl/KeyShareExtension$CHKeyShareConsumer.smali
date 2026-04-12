.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareConsumer;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHKeyShareConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;

    .line 308
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 14
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 320
    .local v1, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 321
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "The key_share extension has been loaded"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_0
    return-void

    .line 329
    :cond_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 330
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    const-string v0, "Ignore unavailable key_share extension"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_2
    return-void

    .line 340
    :cond_3
    :try_start_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v4, 0x0

    move-object/from16 v5, p3

    :try_start_1
    invoke-direct {v0, v5, v4}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v0

    .line 343
    .local v4, "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;
    nop

    .line 345
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v6, v0

    .line 346
    .local v6, "credentials":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SSLCredentials;>;"
    iget-object v0, v4, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;->clientShares:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 347
    .local v8, "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    iget v0, v8, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(I)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v9

    .line 348
    .local v9, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    if-eqz v9, :cond_c

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-static {v0, v9}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->isActivatable(Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_6

    .line 358
    :cond_5
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v10, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v11, "Cannot decode named group: "

    if-ne v0, v10, :cond_8

    .line 360
    :try_start_2
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    .line 361
    invoke-static {v9, v0}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[B)Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    move-result-object v0

    .line 362
    .local v0, "ecdhec":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
    if-eqz v0, :cond_7

    .line 363
    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v12, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 364
    invoke-static {v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v12

    iget-object v13, v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->popPublicKey:Ljava/security/interfaces/ECPublicKey;

    .line 363
    invoke-interface {v10, v12, v13}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 366
    const-string v10, "ECDHE key share entry does not comply to algorithm constraints"

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v10, v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 370
    :cond_6
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 373
    .end local v0    # "ecdhec":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 374
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 376
    invoke-static {v11}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    .line 374
    invoke-static {v10, v11}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_7
    :goto_2
    goto :goto_5

    .line 378
    :cond_8
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v10, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v10, :cond_b

    .line 380
    :try_start_3
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    .line 381
    invoke-static {v9, v0}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[B)Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    move-result-object v0

    .line 382
    .local v0, "dhec":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    if-eqz v0, :cond_a

    .line 383
    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v12, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 384
    invoke-static {v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v12

    iget-object v13, v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->popPublicKey:Ljavax/crypto/interfaces/DHPublicKey;

    .line 383
    invoke-interface {v10, v12, v13}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 386
    const-string v10, "DHE key share entry does not comply to algorithm constraints"

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v10, v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 390
    :cond_9
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 397
    .end local v0    # "dhec":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    :cond_a
    :goto_3
    goto :goto_5

    .line 393
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 394
    .local v0, "ex":Ljava/lang/Exception;
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 396
    invoke-static {v11}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    .line 394
    invoke-static {v10, v11}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v8    # "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    .end local v9    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_b
    :goto_5
    goto/16 :goto_0

    .line 350
    .restart local v8    # "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    .restart local v9    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_c
    :goto_6
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore unsupported named group: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v8, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 353
    invoke-static {v10}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v10, v3, [Ljava/lang/Object;

    .line 351
    invoke-static {v0, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 401
    .end local v8    # "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    .end local v9    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_d
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 402
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 405
    :cond_e
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 406
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 405
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :goto_7
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    return-void

    .line 341
    .end local v4    # "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;
    .end local v6    # "credentials":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SSLCredentials;>;"
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v5, p3

    .line 342
    .local v0, "ioe":Ljava/io/IOException;
    :goto_8
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
