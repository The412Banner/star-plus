.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyProducer;
.super Ljava/lang/Object;
.source "PreSharedKeyExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHPreSharedKeyProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;

    .line 647
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyProducer;-><init>()V

    return-void
.end method

.method private createPskPrototype(ILjava/util/List;)Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    .locals 4
    .param p1, "hashLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;",
            ">;)",
            "Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;"
        }
    .end annotation

    .line 739
    .local p2, "identities":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v0, "binders":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v1, p1, [B

    .line 741
    .local v1, "binderProto":[B
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;

    .line 742
    .local v3, "curId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    .end local v3    # "curId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    goto :goto_0

    .line 745
    :cond_0
    new-instance v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    invoke-direct {v2, p2, v0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 18
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    move-object/from16 v7, p1

    check-cast v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 659
    .local v7, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-boolean v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ssl,handshake"

    if-eqz v0, :cond_9

    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 667
    :cond_0
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 668
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getLocalSupportedSignatureSchemes()Ljava/util/Collection;

    move-result-object v8

    .line 669
    .local v8, "sessionSigAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 670
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    const-string v0, "Existing session uses different signature algorithms"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    :cond_1
    return-object v1

    .line 678
    :cond_2
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPreSharedKey()Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 679
    .local v9, "psk":Ljavax/crypto/SecretKey;
    if-nez v9, :cond_4

    .line 680
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    const-string v0, "Existing session has no PSK."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    :cond_3
    return-object v1

    .line 689
    :cond_4
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->pskIdentity:[B

    if-nez v0, :cond_5

    .line 690
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->consumePskIdentity()[B

    move-result-object v0

    iput-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->pskIdentity:[B

    .line 693
    :cond_5
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->pskIdentity:[B

    if-nez v0, :cond_7

    .line 694
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_6

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 695
    const-string v0, "PSK has no identity, or identity was already used"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    :cond_6
    return-object v1

    .line 702
    :cond_7
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 703
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 704
    .local v10, "sessionCache":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSessionId()Lorg/openjsse/sun/security/ssl/SessionId;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->remove(Lorg/openjsse/sun/security/ssl/SessionId;)V

    .line 706
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_8

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 707
    const-string v0, "Found resumable session. Preparing PSK message."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 712
    .local v11, "identities":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 713
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getTicketCreationTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v12, v0

    .line 714
    .local v12, "ageMillis":I
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 715
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getTicketAgeAdd()I

    move-result v0

    add-int v13, v12, v0

    .line 716
    .local v13, "obfuscatedAge":I
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;

    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->pskIdentity:[B

    invoke-direct {v0, v1, v13}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;-><init>([BI)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 719
    invoke-static {v7, v9, v0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->access$1200(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)Ljavax/crypto/SecretKey;

    move-result-object v14

    .line 720
    .local v14, "binderKey":Ljavax/crypto/SecretKey;
    move-object/from16 v15, p2

    check-cast v15, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 721
    .local v15, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 722
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v0

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    .line 721
    move-object/from16 v6, p0

    invoke-direct {v6, v0, v11}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyProducer;->createPskPrototype(ILjava/util/List;)Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    move-result-object v16

    .line 723
    .local v16, "pskPrototype":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->copy()Lorg/openjsse/sun/security/ssl/HandshakeHash;

    move-result-object v17

    .line 725
    .local v17, "pskBinderHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, v17

    move-object v4, v7

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->access$1300(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;)[B

    move-result-object v0

    .line 728
    .local v0, "binder":[B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v1, "binders":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    new-instance v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    invoke-direct {v2, v11, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 733
    .local v2, "pskMessage":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->getEncoded()[B

    move-result-object v3

    return-object v3

    .line 660
    .end local v0    # "binder":[B
    .end local v1    # "binders":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "pskMessage":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    .end local v8    # "sessionSigAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    .end local v9    # "psk":Ljavax/crypto/SecretKey;
    .end local v10    # "sessionCache":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    .end local v11    # "identities":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;>;"
    .end local v12    # "ageMillis":I
    .end local v13    # "obfuscatedAge":I
    .end local v14    # "binderKey":Ljavax/crypto/SecretKey;
    .end local v15    # "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .end local v16    # "pskPrototype":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    .end local v17    # "pskBinderHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    :cond_9
    :goto_0
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_a

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 661
    const-string v0, "No session to resume."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    :cond_a
    return-object v1
.end method
