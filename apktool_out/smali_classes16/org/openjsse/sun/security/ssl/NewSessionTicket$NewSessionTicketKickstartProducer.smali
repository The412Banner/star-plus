.class final Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketKickstartProducer;
.super Ljava/lang/Object;
.source "NewSessionTicket.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/NewSessionTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewSessionTicketKickstartProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/NewSessionTicket$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/NewSessionTicket$1;

    .line 190
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketKickstartProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;)[B
    .locals 19
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    move-object/from16 v6, p1

    check-cast v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 202
    .local v6, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v0, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 203
    return-object v7

    .line 211
    :cond_0
    iget-object v0, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 212
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;

    .line 214
    .local v8, "pkemSpec":Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;
    if-eqz v8, :cond_7

    sget-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->PSK_DHE_KE:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    invoke-virtual {v8, v0}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->contains(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 221
    :cond_1
    iget-object v0, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 222
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 223
    .local v9, "sessionCache":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    new-instance v0, Lorg/openjsse/sun/security/ssl/SessionId;

    iget-object v1, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 224
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>(ZLjava/security/SecureRandom;)V

    move-object v10, v0

    .line 226
    .local v10, "newId":Lorg/openjsse/sun/security/ssl/SessionId;
    iget-object v0, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 227
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getResumptionMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 228
    .local v11, "resumptionMasterSecret":Ljavax/crypto/SecretKey;
    const/4 v0, 0x0

    const-string v12, "ssl,handshake"

    if-nez v11, :cond_3

    .line 229
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_2

    invoke-static {v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string v1, "Session has no resumption secret. No ticket sent."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :cond_2
    return-object v7

    .line 237
    :cond_3
    iget-object v1, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->incrTicketNonceCounter()Ljava/math/BigInteger;

    move-result-object v13

    .line 238
    .local v13, "nonce":Ljava/math/BigInteger;
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    .line 239
    .local v14, "nonceArr":[B
    iget-object v1, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    invoke-static {v1, v11, v14}, Lorg/openjsse/sun/security/ssl/NewSessionTicket;->access$300(Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;Ljavax/crypto/SecretKey;[B)Ljavax/crypto/SecretKey;

    move-result-object v15

    .line 243
    .local v15, "psk":Ljavax/crypto/SecretKey;
    invoke-virtual {v9}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->getSessionTimeout()I

    move-result v5

    .line 244
    .local v5, "sessionTimeoutSeconds":I
    const v1, 0x93a80

    if-le v5, v1, :cond_5

    .line 245
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_4

    invoke-static {v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    const-string v1, "Session timeout is too long. No ticket sent."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_4
    return-object v7

    .line 251
    :cond_5
    new-instance v16, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;

    iget-object v0, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 252
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    .line 253
    invoke-virtual {v10}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v17

    move-object/from16 v0, v16

    move-object v1, v6

    move v2, v5

    move-object v4, v14

    move/from16 v18, v5

    .end local v5    # "sessionTimeoutSeconds":I
    .local v18, "sessionTimeoutSeconds":I
    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;ILjava/security/SecureRandom;[B[B)V

    .line 254
    .local v0, "nstm":Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_6

    invoke-static {v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    const-string v1, "Produced NewSessionTicket handshake message"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_6
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v2, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-direct {v1, v2, v10}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/SessionId;)V

    .line 264
    .local v1, "sessionCopy":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    iget-object v2, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->addChild(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V

    .line 265
    invoke-virtual {v1, v15}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPreSharedKey(Ljavax/crypto/SecretKey;)V

    .line 266
    invoke-virtual {v10}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPskIdentity([B)V

    .line 267
    iget v2, v0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketAgeAdd:I

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setTicketAgeAdd(I)V

    .line 268
    invoke-virtual {v9, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->put(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V

    .line 271
    iget-object v2, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0, v2}, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 272
    iget-object v2, v6, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 275
    return-object v7

    .line 217
    .end local v0    # "nstm":Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;
    .end local v1    # "sessionCopy":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local v9    # "sessionCache":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    .end local v10    # "newId":Lorg/openjsse/sun/security/ssl/SessionId;
    .end local v11    # "resumptionMasterSecret":Ljavax/crypto/SecretKey;
    .end local v13    # "nonce":Ljava/math/BigInteger;
    .end local v14    # "nonceArr":[B
    .end local v15    # "psk":Ljavax/crypto/SecretKey;
    .end local v18    # "sessionTimeoutSeconds":I
    :cond_7
    :goto_0
    return-object v7
.end method
