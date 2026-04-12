.class final Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestConsumer;
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
    name = "T13HelloRetryRequestConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ServerHello$1;

    .line 1377
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 17
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1387
    move-object/from16 v1, p1

    move-object v2, v1

    check-cast v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 1388
    .local v2, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    move-object/from16 v3, p2

    check-cast v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;

    .line 1389
    .local v3, "helloRetryRequest":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v0, v4, :cond_0

    .line 1394
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iput-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 1401
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v4

    .line 1403
    .local v4, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, v2, v4}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1408
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, v2, v4}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnTrade(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1412
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->finish()V

    .line 1415
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;-><init>(Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    move-object v5, v0

    .line 1417
    .local v5, "hos":Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    :try_start_0
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    invoke-virtual {v0, v5}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    nop

    .line 1423
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->deliver([B)V

    .line 1424
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v7, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v0, v6, v7}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->determine(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 1426
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v0

    .line 1435
    .local v0, "clientHelloHash":[B
    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    .line 1436
    .local v6, "hashLen":I
    add-int/lit8 v7, v6, 0x4

    new-array v7, v7, [B

    .line 1437
    .local v7, "hashedClientHello":[B
    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLHandshake;->MESSAGE_HASH:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v8, v8, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    .line 1438
    const/4 v8, 0x1

    aput-byte v9, v7, v8

    .line 1439
    const/4 v10, 0x2

    aput-byte v9, v7, v10

    .line 1440
    and-int/lit16 v11, v6, 0xff

    int-to-byte v11, v11

    const/4 v12, 0x3

    aput-byte v11, v7, v12

    .line 1441
    const/4 v11, 0x4

    invoke-static {v0, v9, v7, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1444
    iget-object v13, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v13}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->finish()V

    .line 1445
    iget-object v13, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v13, v7}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->deliver([B)V

    .line 1447
    iget-object v13, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->handshakeRecord:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    .line 1448
    .local v13, "hrrBodyLen":I
    add-int/lit8 v14, v13, 0x4

    new-array v14, v14, [B

    .line 1449
    .local v14, "hrrMessage":[B
    sget-object v15, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v15, v15, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    aput-byte v15, v14, v9

    .line 1450
    shr-int/lit8 v15, v13, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v14, v8

    .line 1451
    shr-int/lit8 v15, v13, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v14, v10

    .line 1452
    and-int/lit16 v15, v13, 0xff

    int-to-byte v15, v15

    aput-byte v15, v14, v12

    .line 1454
    iget-object v15, v3, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->handshakeRecord:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 1455
    .local v15, "hrrBody":Ljava/nio/ByteBuffer;
    invoke-virtual {v15, v14, v11, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1457
    iget-object v11, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v11, v14}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive([B)V

    .line 1460
    iget-object v11, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    iget-object v11, v11, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    new-array v12, v12, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v16, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    aput-object v16, v12, v9

    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    aput-object v9, v12, v8

    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    aput-object v8, v12, v10

    invoke-virtual {v11, v2, v12}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->reproduce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1470
    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v8, v1, v3}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 1471
    return-void

    .line 1418
    .end local v0    # "clientHelloHash":[B
    .end local v6    # "hashLen":I
    .end local v7    # "hashedClientHello":[B
    .end local v13    # "hrrBodyLen":I
    .end local v14    # "hrrMessage":[B
    .end local v15    # "hrrBody":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v8, "Failed to construct message hash"

    invoke-virtual {v6, v7, v8, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v6

    throw v6

    .line 1390
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v5    # "hos":Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    :cond_0
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "The HelloRetryRequest.legacy_version is not TLS 1.2"

    invoke-virtual {v0, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method
