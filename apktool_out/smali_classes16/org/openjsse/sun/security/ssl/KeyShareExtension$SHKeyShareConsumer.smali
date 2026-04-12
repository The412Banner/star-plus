.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareConsumer;
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
    name = "SHKeyShareConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;

    .line 630
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 641
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    .line 642
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 649
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 657
    :try_start_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 660
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;
    nop

    .line 662
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;->serverShare:Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 663
    .local v2, "keyShare":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    iget v3, v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(I)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v3

    .line 664
    .local v3, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    const-string v4, "Unsupported named group: "

    if-eqz v3, :cond_8

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-static {v5, v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->isActivatable(Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 671
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v5

    .line 672
    .local v5, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v5, :cond_7

    .line 677
    const/4 v6, 0x0

    .line 678
    .local v6, "credentials":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    iget-object v7, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v9, "Cannot decode named group: "

    if-ne v7, v8, :cond_2

    .line 680
    :try_start_1
    iget-object v7, v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    .line 681
    invoke-static {v3, v7}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[B)Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    move-result-object v7

    .line 682
    .local v7, "ecdhec":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
    if-eqz v7, :cond_1

    .line 683
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v10, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 684
    invoke-static {v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    iget-object v11, v7, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->popPublicKey:Ljava/security/interfaces/ECPublicKey;

    .line 683
    invoke-interface {v8, v10, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 690
    move-object v6, v7

    goto :goto_0

    .line 686
    :cond_0
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v10, "ECDHE key share entry does not comply to algorithm constraints"

    invoke-virtual {v4, v8, v10}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    .end local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;
    .end local v2    # "keyShare":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    .end local v3    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .end local v5    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v6    # "credentials":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    .end local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .end local p2    # "message":Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .end local p3    # "buffer":Ljava/nio/ByteBuffer;
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 697
    .end local v7    # "ecdhec":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
    .restart local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .restart local v1    # "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;
    .restart local v2    # "keyShare":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    .restart local v3    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .restart local v5    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v6    # "credentials":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    .restart local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .restart local p2    # "message":Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .restart local p3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    goto :goto_3

    .line 693
    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    .line 694
    .local v4, "ex":Ljava/lang/Exception;
    :goto_1
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 696
    invoke-static {v10}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 694
    invoke-virtual {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 698
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v7, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v7, v8, :cond_6

    .line 700
    :try_start_2
    iget-object v7, v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    .line 701
    invoke-static {v3, v7}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[B)Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    move-result-object v7

    .line 702
    .local v7, "dhec":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    if-eqz v7, :cond_4

    .line 703
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v10, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 704
    invoke-static {v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    iget-object v11, v7, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->popPublicKey:Ljavax/crypto/interfaces/DHPublicKey;

    .line 703
    invoke-interface {v8, v10, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 710
    move-object v6, v7

    goto :goto_2

    .line 706
    :cond_3
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v10, "DHE key share entry does not comply to algorithm constraints"

    invoke-virtual {v4, v8, v10}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    .end local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;
    .end local v2    # "keyShare":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    .end local v3    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .end local v5    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v6    # "credentials":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    .end local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .end local p2    # "message":Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .end local p3    # "buffer":Ljava/nio/ByteBuffer;
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 717
    .end local v7    # "dhec":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    .restart local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .restart local v1    # "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;
    .restart local v2    # "keyShare":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    .restart local v3    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .restart local v5    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v6    # "credentials":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    .restart local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .restart local p2    # "message":Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .restart local p3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_4
    :goto_2
    nop

    .line 724
    :goto_3
    if-eqz v6, :cond_5

    .line 730
    iput-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeKeyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    .line 731
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    return-void

    .line 725
    :cond_5
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 713
    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v4

    .line 714
    .restart local v4    # "ex":Ljava/lang/Exception;
    :goto_4
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 716
    invoke-static {v10}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 714
    invoke-virtual {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 719
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_6
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 721
    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 719
    invoke-virtual {v7, v8, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 673
    .end local v6    # "credentials":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_7
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No key exchange for named group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 666
    .end local v5    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    :cond_8
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 668
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {v5, v6, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 658
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;
    .end local v2    # "keyShare":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    .end local v3    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :catch_4
    move-exception v1

    .line 659
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 650
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_9
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Unsupported key_share extension in ServerHello"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 644
    :cond_a
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Unexpected key_share extension in ServerHello"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method
