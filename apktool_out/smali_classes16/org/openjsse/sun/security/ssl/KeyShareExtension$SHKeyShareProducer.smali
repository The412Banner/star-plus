.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareProducer;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SHKeyShareProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;

    .line 513
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 16
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    move-object/from16 v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 526
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 527
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;

    .line 529
    .local v1, "kss":Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;
    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 531
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    const-string v2, "Ignore, no client key_share extension"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    :cond_0
    return-object v3

    .line 539
    :cond_1
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 540
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    const-string v2, "Ignore, no available server key_share extension"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    :cond_2
    return-object v3

    .line 548
    :cond_3
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    if-eqz v5, :cond_11

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    .line 549
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_5

    .line 558
    :cond_4
    const/4 v5, 0x0

    .line 559
    .local v5, "keyShare":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 560
    .local v7, "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    const/4 v8, 0x0

    .line 561
    .local v8, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    instance-of v9, v7, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    if-eqz v9, :cond_6

    .line 562
    move-object v9, v7

    check-cast v9, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    iget-object v8, v9, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    goto :goto_1

    .line 563
    :cond_6
    instance-of v9, v7, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    if-eqz v9, :cond_7

    .line 564
    move-object v9, v7

    check-cast v9, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    iget-object v8, v9, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 567
    :cond_7
    :goto_1
    if-nez v8, :cond_8

    .line 568
    goto :goto_0

    .line 571
    :cond_8
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v9

    .line 572
    .local v9, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-nez v9, :cond_9

    .line 573
    sget-boolean v10, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v10, :cond_5

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 574
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No key exchange for named group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 580
    :cond_9
    invoke-virtual {v9, v0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createPossessions(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v10

    .line 581
    .local v10, "poses":[Lorg/openjsse/sun/security/ssl/SSLPossession;
    array-length v11, v10

    move v12, v4

    :goto_2
    if-ge v12, v11, :cond_b

    aget-object v13, v10, v12

    .line 582
    .local v13, "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v14, v13, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    if-nez v14, :cond_a

    instance-of v14, v13, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    if-nez v14, :cond_a

    .line 585
    nop

    .line 581
    .end local v13    # "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 589
    .restart local v13    # "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_a
    iput-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    .line 590
    iget-object v11, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v11, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    iget v12, v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    invoke-interface {v13}, Lorg/openjsse/sun/security/ssl/SSLPossession;->encode()[B

    move-result-object v14

    invoke-direct {v11, v12, v14, v3}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;-><init>(I[BLorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    move-object v5, v11

    .line 592
    nop

    .line 595
    .end local v13    # "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_b
    if-eqz v5, :cond_d

    .line 597
    invoke-virtual {v9, v0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->getHandshakeProducers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;

    move-result-object v6

    array-length v11, v6

    move v12, v4

    :goto_3
    if-ge v12, v11, :cond_c

    aget-object v13, v6, v12

    .line 598
    .local v13, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    iget-object v14, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    .line 599
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 598
    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .end local v13    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_3

    .line 603
    :cond_c
    goto :goto_4

    .line 605
    .end local v7    # "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    .end local v8    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .end local v9    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v10    # "poses":[Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 607
    :cond_e
    :goto_4
    if-nez v5, :cond_10

    .line 609
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_f

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 610
    const-string v2, "No available server key_share extension"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    :cond_f
    const/4 v2, 0x0

    return-object v2

    .line 616
    :cond_10
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->access$1500(Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;)[B

    move-result-object v2

    .line 619
    .local v2, "extData":[B
    new-instance v3, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;

    invoke-direct {v3, v5}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;)V

    .line 620
    .local v3, "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    return-object v2

    .line 551
    .end local v2    # "extData":[B
    .end local v3    # "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;
    .end local v5    # "keyShare":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    :cond_11
    :goto_5
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_12

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 552
    const-string v2, "No available client key share entries"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    :cond_12
    const/4 v2, 0x0

    return-object v2
.end method
