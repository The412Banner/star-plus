.class final Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketConsumer;
.super Ljava/lang/Object;
.source "NewSessionTicket.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/NewSessionTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewSessionTicketConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/NewSessionTicket$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/NewSessionTicket$1;

    .line 303
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 325
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 327
    .local v1, "nstm":Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v3, "ssl,handshake"

    if-eqz v2, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const-string v2, "Consuming NewSessionTicket message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :cond_0
    iget v2, v1, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketLifetime:I

    if-lez v2, :cond_6

    iget v2, v1, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketLifetime:I

    const v4, 0x93a80

    if-le v2, v4, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 344
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 346
    .local v2, "sessionCache":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->getSessionTimeout()I

    move-result v5

    const/4 v6, 0x0

    if-le v5, v4, :cond_3

    .line 347
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_2

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 348
    const-string v3, "Session cache lifetime is too long. Discarding ticket."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :cond_2
    return-void

    .line 354
    :cond_3
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 356
    .local v4, "sessionToSave":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    nop

    .line 357
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getResumptionMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 358
    .local v5, "resumptionMasterSecret":Ljavax/crypto/SecretKey;
    if-nez v5, :cond_5

    .line 359
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_4

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 360
    const-string v3, "Session has no resumption master secret. Ignoring ticket."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :cond_4
    return-void

    .line 367
    :cond_5
    nop

    .line 368
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v3

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketNonce:[B

    .line 367
    invoke-static {v3, v5, v6}, Lorg/openjsse/sun/security/ssl/NewSessionTicket;->access$300(Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;Ljavax/crypto/SecretKey;[B)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 374
    .local v3, "psk":Ljavax/crypto/SecretKey;
    new-instance v6, Lorg/openjsse/sun/security/ssl/SessionId;

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 375
    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v8, v7}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>(ZLjava/security/SecureRandom;)V

    .line 376
    .local v6, "newId":Lorg/openjsse/sun/security/ssl/SessionId;
    new-instance v7, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-direct {v7, v4, v6}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/SessionId;)V

    .line 378
    .local v7, "sessionCopy":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    invoke-virtual {v4, v7}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->addChild(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V

    .line 379
    invoke-virtual {v7, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPreSharedKey(Ljavax/crypto/SecretKey;)V

    .line 380
    iget v8, v1, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketAgeAdd:I

    invoke-virtual {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setTicketAgeAdd(I)V

    .line 381
    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticket:[B

    invoke-virtual {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPskIdentity([B)V

    .line 382
    invoke-virtual {v2, v7}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->put(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V

    .line 385
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->finishPostHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 386
    return-void

    .line 335
    .end local v2    # "sessionCache":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    .end local v3    # "psk":Ljavax/crypto/SecretKey;
    .end local v4    # "sessionToSave":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local v5    # "resumptionMasterSecret":Ljavax/crypto/SecretKey;
    .end local v6    # "newId":Lorg/openjsse/sun/security/ssl/SessionId;
    .end local v7    # "sessionCopy":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :cond_6
    :goto_0
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_7

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding NewSessionTicket with lifetime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketLifetime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :cond_7
    return-void
.end method
