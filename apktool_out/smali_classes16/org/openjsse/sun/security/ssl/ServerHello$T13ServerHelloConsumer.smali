.class final Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloConsumer;
.super Ljava/lang/Object;
.source "ServerHello.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13ServerHelloConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ServerHello$1;

    .line 1174
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 31
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1184
    const-string v1, "Missing cipher algorithm"

    move-object/from16 v2, p1

    check-cast v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 1185
    .local v2, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    move-object/from16 v3, p2

    check-cast v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;

    .line 1186
    .local v3, "serverHello":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v0, v4, :cond_9

    .line 1191
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iput-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 1192
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v0, v4, v5}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->determine(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 1194
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iput-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 1201
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v4

    .line 1203
    .local v4, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, v2, v4}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1204
    iget-boolean v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 1205
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->invalidate()V

    .line 1208
    iput-object v5, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 1211
    :cond_0
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z

    if-eqz v0, :cond_1

    .line 1215
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v7, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-direct {v0, v2, v6, v7}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SessionId;)V

    iput-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 1218
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    invoke-virtual {v0, v6}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setMaximumPacketSize(I)V

    goto :goto_0

    .line 1212
    :cond_1
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "New session creation is disabled"

    invoke-virtual {v0, v1, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 1222
    :cond_2
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 1223
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->consumePreSharedKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1224
    .local v0, "psk":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_8

    .line 1229
    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iput-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 1231
    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/ServerHello;->access$900(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    .line 1237
    .end local v0    # "psk":Ljavax/crypto/SecretKey;
    :goto_0
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, v2, v4}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnTrade(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1241
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 1243
    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeKeyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    .line 1244
    .local v6, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v6, :cond_7

    .line 1250
    invoke-virtual {v6, v2}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v7

    .line 1251
    .local v7, "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v0, "TlsHandshakeSecret"

    invoke-interface {v7, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 1253
    .local v8, "handshakeSecret":Ljavax/crypto/SecretKey;
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1254
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v9

    .line 1255
    .local v9, "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v9, :cond_6

    .line 1262
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    invoke-direct {v0, v2, v8}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    move-object v10, v0

    .line 1266
    .local v10, "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v0, "TlsServerHandshakeTrafficSecret"

    invoke-interface {v10, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 1269
    .local v11, "readSecret":Ljavax/crypto/SecretKey;
    nop

    .line 1270
    invoke-virtual {v9, v2, v11}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v12

    .line 1271
    .local v12, "readKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v0, "TlsKey"

    invoke-interface {v12, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v19

    .line 1273
    .local v19, "readKey":Ljavax/crypto/SecretKey;
    const-string v15, "TlsIv"

    invoke-interface {v12, v15, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v20

    .line 1275
    .local v20, "readIvSecret":Ljavax/crypto/SecretKey;
    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    .line 1276
    invoke-interface/range {v20 .. v20}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v17, v13

    .line 1279
    .local v17, "readIv":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_0
    iget-object v13, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v13, v13, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v14, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1281
    invoke-static {v14}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v14

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v22, v4

    .end local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v22, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :try_start_1
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 1283
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v18

    .line 1280
    move-object v4, v15

    move-object v15, v5

    move-object/from16 v16, v19

    invoke-virtual/range {v13 .. v18}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createReadCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v5
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1288
    .local v5, "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    nop

    .line 1290
    const-string v13, ")"

    const-string v14, ") and protocol version ("

    const-string v15, "Illegal cipher suite ("

    if-eqz v5, :cond_5

    .line 1297
    iput-object v11, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->baseReadSecret:Ljavax/crypto/SecretKey;

    .line 1298
    move-object/from16 v16, v6

    .end local v6    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .local v16, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v6, v5}, Lorg/openjsse/sun/security/ssl/InputRecord;->changeReadCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V

    .line 1301
    const-string v6, "TlsClientHandshakeTrafficSecret"

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .local v18, "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    invoke-interface {v10, v6, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 1303
    .local v6, "writeSecret":Ljavax/crypto/SecretKey;
    nop

    .line 1304
    move-object/from16 v21, v7

    .end local v7    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .local v21, "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    invoke-virtual {v9, v2, v6}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v7

    .line 1305
    .local v7, "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    invoke-interface {v7, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v29

    .line 1307
    .local v29, "writeKey":Ljavax/crypto/SecretKey;
    invoke-interface {v7, v4, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 1309
    .local v4, "writeIvSecret":Ljavax/crypto/SecretKey;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 1310
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v27, v0

    .line 1313
    .local v27, "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_2
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1315
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v24

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v30, v4

    .end local v4    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .local v30, "writeIvSecret":Ljavax/crypto/SecretKey;
    :try_start_3
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 1317
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v28

    .line 1314
    move-object/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v26, v29

    invoke-virtual/range {v23 .. v28}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createWriteCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1322
    .local v0, "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    nop

    .line 1324
    if-eqz v0, :cond_4

    .line 1331
    iput-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->baseWriteSecret:Ljavax/crypto/SecretKey;

    .line 1332
    iget-object v1, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 1333
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SessionId;->length()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 1332
    :goto_1
    invoke-virtual {v1, v0, v4}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changeWriteCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;Z)V

    .line 1339
    iput-object v10, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 1346
    iget-object v1, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->consumers:Ljava/util/Map;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    .line 1347
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;->t13Consumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 1346
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    iget-object v1, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1351
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 1350
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    iget-object v1, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1356
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 1355
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    iget-object v1, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1359
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 1358
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    iget-object v1, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1362
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 1361
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    iget-object v1, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1366
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 1365
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    return-void

    .line 1325
    :cond_4
    iget-object v1, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v14, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 1318
    .end local v0    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v30    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .restart local v4    # "writeIvSecret":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v0

    move-object/from16 v30, v4

    .line 1320
    .end local v4    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    .restart local v30    # "writeIvSecret":Ljavax/crypto/SecretKey;
    :goto_2
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v4, v5, v1, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 1291
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v18    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .end local v21    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v27    # "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v29    # "writeKey":Ljavax/crypto/SecretKey;
    .end local v30    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .restart local v5    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .local v6, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .local v7, "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :cond_5
    move-object/from16 v18, v5

    .end local v5    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .restart local v18    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 1284
    .end local v18    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v21, v7

    .end local v6    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v7    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v21    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    goto :goto_3

    .end local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v21    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v22    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v4, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v6    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v7    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :catch_3
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v16, v6

    move-object/from16 v21, v7

    .line 1286
    .end local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v6    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v7    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v0    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v21    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v22    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :goto_3
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v4, v5, v1, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 1257
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v10    # "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v11    # "readSecret":Ljavax/crypto/SecretKey;
    .end local v12    # "readKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v17    # "readIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v19    # "readKey":Ljavax/crypto/SecretKey;
    .end local v20    # "readIvSecret":Ljavax/crypto/SecretKey;
    .end local v21    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v22    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v6    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v7    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :cond_6
    move-object/from16 v22, v4

    .end local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v22    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported key derivation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 1246
    .end local v7    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v8    # "handshakeSecret":Ljavax/crypto/SecretKey;
    .end local v9    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .end local v22    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_7
    move-object/from16 v22, v4

    .end local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v22    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Not negotiated key shares"

    invoke-virtual {v0, v1, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 1225
    .end local v6    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v22    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v0, "psk":Ljavax/crypto/SecretKey;
    .restart local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_8
    move-object/from16 v22, v4

    .end local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v22    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v1, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "No PSK available. Unable to resume."

    invoke-virtual {v1, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 1187
    .end local v0    # "psk":Ljavax/crypto/SecretKey;
    .end local v22    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_9
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "The ServerHello.legacy_version field is not TLS 1.2"

    invoke-virtual {v0, v1, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method
