.class final Lorg/openjsse/sun/security/ssl/Finished$T13FinishedConsumer;
.super Ljava/lang/Object;
.source "Finished.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Finished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13FinishedConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Finished$1;

    .line 854
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedConsumer;-><init>()V

    return-void
.end method

.method private onConsumeFinished(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 23
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    move-object/from16 v1, p1

    iget-boolean v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    if-nez v0, :cond_1

    .line 879
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 880
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 879
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 882
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 881
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Unexpected Finished handshake message"

    invoke-virtual {v0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 888
    :cond_1
    :goto_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    move-object v3, v0

    .line 889
    .local v3, "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_2

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    const-string v0, "Consuming server Finished handshake message"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    :cond_2
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->access$800(Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;)[B

    move-result-object v4

    iput-object v4, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->serverVerifyData:[B

    .line 909
    :cond_3
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->consumers:Ljava/util/Map;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 914
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 915
    .local v4, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    if-eqz v4, :cond_9

    .line 921
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 922
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v5

    .line 923
    .local v5, "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v5, :cond_8

    .line 931
    iget-boolean v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    if-nez v0, :cond_4

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 932
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 933
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 934
    .local v0, "sessionContext":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0, v6}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->put(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V

    .line 939
    .end local v0    # "sessionContext":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    :cond_4
    :try_start_0
    const-string v0, "TlsSaltSecret"

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 942
    .local v0, "saltSecret":Ljavax/crypto/SecretKey;
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 943
    .local v7, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    new-instance v8, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v9, v7, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 944
    .local v8, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    iget v9, v7, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    new-array v9, v9, [B

    .line 945
    .local v9, "zeros":[B
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "TlsZeroSecret"

    invoke-direct {v10, v9, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 947
    .local v10, "sharedSecret":Ljavax/crypto/spec/SecretKeySpec;
    const-string v11, "TlsMasterSecret"

    .line 948
    invoke-virtual {v8, v0, v10, v11}, Lorg/openjsse/sun/security/ssl/HKDF;->extract(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 950
    .local v11, "masterSecret":Ljavax/crypto/SecretKey;
    new-instance v12, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    invoke-direct {v12, v1, v11}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    .line 954
    .local v12, "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v13, "TlsServerAppTrafficSecret"

    invoke-interface {v12, v13, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v13

    .line 956
    .local v13, "readSecret":Ljavax/crypto/SecretKey;
    nop

    .line 957
    invoke-virtual {v5, v1, v13}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v14

    .line 958
    .local v14, "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v15, "TlsKey"

    invoke-interface {v14, v15, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v19

    .line 960
    .local v19, "readKey":Ljavax/crypto/SecretKey;
    const-string v15, "TlsIv"

    invoke-interface {v14, v15, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v15

    .line 962
    .local v15, "readIvSecret":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 963
    move-object/from16 v22, v0

    .end local v0    # "saltSecret":Ljavax/crypto/SecretKey;
    .local v22, "saltSecret":Ljavax/crypto/SecretKey;
    invoke-interface {v15}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v20, v6

    .line 964
    .local v20, "readIv":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 966
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v17

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 968
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v21

    .line 965
    move-object/from16 v16, v0

    move-object/from16 v18, v6

    invoke-virtual/range {v16 .. v21}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createReadCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 970
    .local v0, "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    if-eqz v0, :cond_7

    .line 977
    :try_start_1
    iput-object v13, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->baseReadSecret:Ljavax/crypto/SecretKey;

    .line 978
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v2, v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->changeReadCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V

    .line 981
    iput-object v12, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 985
    .end local v0    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .end local v7    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .end local v8    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v9    # "zeros":[B
    .end local v10    # "sharedSecret":Ljavax/crypto/spec/SecretKeySpec;
    .end local v11    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v12    # "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v13    # "readSecret":Ljavax/crypto/SecretKey;
    .end local v14    # "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v15    # "readIvSecret":Ljavax/crypto/SecretKey;
    .end local v19    # "readKey":Ljavax/crypto/SecretKey;
    .end local v20    # "readIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v22    # "saltSecret":Ljavax/crypto/SecretKey;
    nop

    .line 990
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v7, 0x1

    aput-object v2, v0, v7

    const/4 v2, 0x2

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v0, v2

    .line 999
    .local v0, "probableHandshakeMessages":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    array-length v2, v0

    :goto_1
    if-ge v6, v2, :cond_6

    aget-object v7, v0, v6

    .line 1000
    .local v7, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    iget-byte v9, v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1001
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 1002
    .local v8, "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    if-eqz v8, :cond_5

    .line 1003
    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    goto :goto_2

    .line 1002
    :cond_5
    const/4 v9, 0x0

    .line 999
    .end local v7    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .end local v8    # "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1006
    :cond_6
    return-void

    .line 982
    .end local v0    # "probableHandshakeMessages":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_3

    .line 971
    .local v0, "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .local v7, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .local v8, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .restart local v9    # "zeros":[B
    .restart local v10    # "sharedSecret":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v11    # "masterSecret":Ljavax/crypto/SecretKey;
    .restart local v12    # "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v13    # "readSecret":Ljavax/crypto/SecretKey;
    .restart local v14    # "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v15    # "readIvSecret":Ljavax/crypto/SecretKey;
    .restart local v19    # "readKey":Ljavax/crypto/SecretKey;
    .restart local v20    # "readIv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v22    # "saltSecret":Ljavax/crypto/SecretKey;
    :cond_7
    :try_start_2
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    move-object/from16 v16, v0

    .end local v0    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .local v16, "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v3

    .end local v3    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .local v17, "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :try_start_3
    const-string v3, "Illegal cipher suite ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") and protocol version ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    .end local v4    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v5    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .end local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .end local p1    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    throw v0
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 982
    .end local v7    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .end local v8    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v9    # "zeros":[B
    .end local v10    # "sharedSecret":Ljavax/crypto/spec/SecretKeySpec;
    .end local v11    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v12    # "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v13    # "readSecret":Ljavax/crypto/SecretKey;
    .end local v14    # "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v15    # "readIvSecret":Ljavax/crypto/SecretKey;
    .end local v16    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .end local v19    # "readKey":Ljavax/crypto/SecretKey;
    .end local v20    # "readIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v22    # "saltSecret":Ljavax/crypto/SecretKey;
    .restart local v4    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v5    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .restart local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local p1    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v3    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :catch_2
    move-exception v0

    move-object/from16 v17, v3

    .line 983
    .end local v3    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    .restart local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :goto_3
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Failure to derive application secrets"

    invoke-virtual {v2, v3, v6, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 925
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v3    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :cond_8
    move-object/from16 v17, v3

    .end local v3    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported key derivation: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 917
    .end local v5    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .end local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v3    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :cond_9
    move-object/from16 v17, v3

    .end local v3    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "no key derivation"

    invoke-virtual {v0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method private onConsumeFinished(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 16
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1012
    move-object/from16 v1, p1

    iget-boolean v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-nez v0, :cond_1

    .line 1013
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1014
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 1013
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1016
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 1015
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Unexpected Finished handshake message"

    invoke-virtual {v0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 1022
    :cond_1
    :goto_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    move-object v3, v0

    .line 1023
    .local v3, "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v4, "ssl,handshake"

    if-eqz v0, :cond_2

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    const-string v0, "Consuming client Finished handshake message"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    :cond_2
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-eqz v0, :cond_3

    .line 1029
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->access$800(Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;)[B

    move-result-object v5

    iput-object v5, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->clientVerifyData:[B

    .line 1041
    :cond_3
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 1042
    .local v5, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    if-eqz v5, :cond_9

    .line 1048
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1049
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v6

    .line 1050
    .local v6, "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v6, :cond_8

    .line 1058
    iget-boolean v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-nez v0, :cond_4

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1059
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 1060
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 1061
    .local v0, "sessionContext":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0, v7}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->put(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V

    .line 1066
    .end local v0    # "sessionContext":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    :cond_4
    :try_start_0
    const-string v0, "TlsClientAppTrafficSecret"

    const/4 v7, 0x0

    invoke-interface {v5, v0, v7}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1069
    .local v0, "readSecret":Ljavax/crypto/SecretKey;
    nop

    .line 1070
    invoke-virtual {v6, v1, v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v8

    .line 1071
    .local v8, "readKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v9, "TlsKey"

    invoke-interface {v8, v9, v7}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v13

    .line 1073
    .local v13, "readKey":Ljavax/crypto/SecretKey;
    const-string v9, "TlsIv"

    invoke-interface {v8, v9, v7}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 1075
    .local v9, "readIvSecret":Ljavax/crypto/SecretKey;
    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    .line 1076
    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v14, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1077
    .local v14, "readIv":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v10, v10, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1079
    invoke-static {v11}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v11

    iget-object v12, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v15, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 1081
    invoke-virtual {v15}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v15

    .line 1078
    invoke-virtual/range {v10 .. v15}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createReadCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v10

    .line 1083
    .local v10, "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    if-eqz v10, :cond_7

    .line 1090
    iput-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->baseReadSecret:Ljavax/crypto/SecretKey;

    .line 1091
    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v11, v11, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v11, v10}, Lorg/openjsse/sun/security/ssl/InputRecord;->changeReadCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V

    .line 1095
    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v11}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 1096
    move-object v11, v5

    check-cast v11, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    .line 1097
    invoke-virtual {v11, v1}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->forContext(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    move-result-object v11

    .line 1098
    .local v11, "sd":Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;
    const-string v12, "TlsResumptionMasterSecret"

    invoke-virtual {v11, v12, v7}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 1100
    .local v7, "resumptionMasterSecret":Ljavax/crypto/SecretKey;
    iget-object v12, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v12, v7}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setResumptionMasterSecret(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    .end local v0    # "readSecret":Ljavax/crypto/SecretKey;
    .end local v7    # "resumptionMasterSecret":Ljavax/crypto/SecretKey;
    .end local v8    # "readKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v9    # "readIvSecret":Ljavax/crypto/SecretKey;
    .end local v10    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .end local v11    # "sd":Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;
    .end local v13    # "readKey":Ljavax/crypto/SecretKey;
    .end local v14    # "readIv":Ljavax/crypto/spec/IvParameterSpec;
    nop

    .line 1108
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->finish()Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-result-object v7

    iput-object v7, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 1109
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v7, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeFinished:Z

    .line 1115
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1116
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->finishHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1121
    :cond_5
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_6

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1122
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "Sending new session ticket"

    invoke-static {v4, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    :cond_6
    sget-object v0, Lorg/openjsse/sun/security/ssl/NewSessionTicket;->kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

    invoke-interface {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;)[B

    .line 1127
    return-void

    .line 1084
    .restart local v0    # "readSecret":Ljavax/crypto/SecretKey;
    .restart local v8    # "readKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v9    # "readIvSecret":Ljavax/crypto/SecretKey;
    .restart local v10    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .restart local v13    # "readKey":Ljavax/crypto/SecretKey;
    .restart local v14    # "readIv":Ljavax/crypto/spec/IvParameterSpec;
    :cond_7
    :try_start_1
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Illegal cipher suite ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") and protocol version ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    .end local v3    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .end local v5    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v6    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .end local p1    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    throw v4
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1102
    .end local v0    # "readSecret":Ljavax/crypto/SecretKey;
    .end local v8    # "readKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v9    # "readIvSecret":Ljavax/crypto/SecretKey;
    .end local v10    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .end local v13    # "readKey":Ljavax/crypto/SecretKey;
    .end local v14    # "readIv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v3    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v5    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v6    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .restart local p1    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v8, "Failure to derive application secrets"

    invoke-virtual {v4, v7, v8, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 1052
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    :cond_8
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not supported key derivation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 1044
    .end local v6    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_9
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "no key derivation"

    invoke-virtual {v0, v4, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 865
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v1, :cond_0

    .line 866
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedConsumer;->onConsumeFinished(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 869
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedConsumer;->onConsumeFinished(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 872
    :goto_0
    return-void
.end method
