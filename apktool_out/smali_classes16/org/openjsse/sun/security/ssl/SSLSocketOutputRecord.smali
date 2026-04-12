.class final Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;
.super Lorg/openjsse/sun/security/ssl/OutputRecord;
.source "SSLSocketOutputRecord.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLRecord;


# instance fields
.field private deliverStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V
    .locals 1
    .param p1, "handshakeHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/TransportContext;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/TransportContext;)V
    .locals 1
    .param p1, "handshakeHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .param p2, "tc"    # Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 47
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->nullTlsWriteCipher()Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    .line 48
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->tc:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 49
    const/16 v0, 0x4145

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->packetSize:I

    .line 50
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 51
    return-void
.end method

.method private getFragLimit()I
    .locals 3

    .line 374
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->packetSize:I

    if-lez v0, :cond_0

    .line 375
    const/16 v0, 0x4145

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->packetSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 376
    .local v0, "fragLimit":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 377
    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->calculateFragmentSize(II)I

    move-result v0

    .line 379
    const/16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 381
    .end local v0    # "fragLimit":I
    :cond_0
    const/16 v0, 0x4000

    .line 385
    .restart local v0    # "fragLimit":I
    :goto_0
    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->calculateFragmentSize(I)I

    move-result v0

    .line 387
    return v0
.end method

.method private needToSplitPayload()Z
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS11PlusSpec()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 368
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->isCBCMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->isFirstAppOutputRecord:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/openjsse/sun/security/ssl/Record;->enableCBCProtection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0
.end method


# virtual methods
.method declared-synchronized deliver([BII)V
    .locals 9
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 270
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->seqNumOverflow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 271
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "sequence number extremely close to overflow (2^64-1 packets). Closing connection."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "sequence number overflow"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    const/4 v0, 0x1

    .line 281
    .local v0, "isFirstRecordOfThePayload":Z
    add-int v2, p2, p3

    .local v2, "limit":I
    :goto_0
    if-ge p2, v2, :cond_7

    .line 283
    iget v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->packetSize:I

    const/4 v4, 0x5

    if-lez v3, :cond_2

    .line 284
    iget v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->packetSize:I

    const/16 v5, 0x4145

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 285
    .local v3, "fragLen":I
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 286
    invoke-virtual {v5, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->calculateFragmentSize(II)I

    move-result v5

    move v3, v5

    .line 288
    const/16 v5, 0x4000

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 290
    .end local v3    # "fragLen":I
    :cond_2
    const/16 v3, 0x4000

    .line 294
    .restart local v3    # "fragLen":I
    :goto_1
    invoke-virtual {p0, v3}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->calculateFragmentSize(I)I

    move-result v5

    move v3, v5

    .line 296
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->needToSplitPayload()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 297
    const/4 v3, 0x1

    .line 298
    const/4 v0, 0x0

    goto :goto_2

    .line 300
    :cond_3
    sub-int v5, v2, p2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    .line 304
    :goto_2
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v5

    add-int/2addr v5, v4

    .line 305
    .local v5, "position":I
    iput v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    .line 306
    invoke-virtual {p0, p1, p2, v3}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->write([BII)V

    .line 308
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_4

    const-string v6, "record"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WRITE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/ContentType;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :cond_4
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    invoke-virtual {p0, v6, v7, v4}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J

    .line 319
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v7, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-virtual {v4, v6, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 320
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 322
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_5

    const-string v4, "packet"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 323
    const-string v4, "Raw write"

    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v8, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-direct {v6, v7, v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :cond_5
    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    .line 330
    iget-boolean v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->isFirstAppOutputRecord:Z

    if-eqz v4, :cond_6

    .line 331
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->isFirstAppOutputRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_6
    add-int/2addr p2, v3

    .line 335
    .end local v3    # "fragLen":I
    .end local v5    # "position":I
    goto/16 :goto_0

    .line 336
    .end local v2    # "limit":I
    :cond_7
    monitor-exit p0

    return-void

    .line 267
    .end local v0    # "isFirstRecordOfThePayload":Z
    :cond_8
    :try_start_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection or outbound has been closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    .end local p1    # "source":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized encodeAlert(BB)V
    .locals 6
    .param p1, "level"    # B
    .param p2, "description"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 57
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outbound has closed, ignore outbound alert message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Alert;->nameOf(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 58
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v0

    const/4 v2, 0x5

    add-int/2addr v0, v2

    .line 66
    .local v0, "position":I
    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    .line 68
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->write(I)V

    .line 69
    invoke-virtual {p0, p2}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->write(I)V

    .line 70
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_2

    const-string v3, "record"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WRITE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 73
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Alert;->nameOf(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 71
    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_2
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    invoke-virtual {p0, v3, v4, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J

    .line 81
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 84
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_3

    const-string v2, "packet"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    const-string v2, "Raw write"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-direct {v3, v4, v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_3
    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 55
    .end local v0    # "position":I
    .end local p1    # "level":B
    .end local p2    # "description":B
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized encodeChangeCipherSpec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 204
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "outbound has closed, ignore outbound change_cipher_spec message"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v0

    const/4 v2, 0x5

    add-int/2addr v0, v2

    .line 213
    .local v0, "position":I
    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    .line 215
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->write(I)V

    .line 218
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    invoke-virtual {p0, v3, v4, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J

    .line 221
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 224
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_2

    const-string v2, "packet"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    const-string v2, "Raw write"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-direct {v3, v4, v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :cond_2
    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 202
    .end local v0    # "position":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method declared-synchronized encodeHandshake([BII)V
    .locals 12
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "outbound has closed, ignore outbound handshake message"

    .line 100
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->firstMessage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 106
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->firstMessage:Z

    .line 108
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->helloVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v0, v2, :cond_4

    aget-byte v0, p1, p2

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v0, v2, :cond_4

    add-int/lit8 v0, p2, 0x4

    const/4 v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x20

    aget-byte v0, p1, v0

    if-nez v0, :cond_4

    .line 117
    add-int/lit8 v0, p2, 0x4

    add-int/lit8 v3, p3, -0x4

    invoke-static {p1, v0, v3}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->encodeV2ClientHello([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, "v2ClientHello":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 121
    .local v3, "record":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 122
    .local v4, "limit":I
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v5, v3, v2, v6}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->deliver([BII)V

    .line 124
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_2

    const-string v2, "record"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WRITE: SSLv2 ClientHello message, length = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_2
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 136
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 138
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_3

    const-string v2, "packet"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    const-string v2, "Raw write"

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3, v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :cond_3
    monitor-exit p0

    return-void

    .line 147
    .end local v0    # "v2ClientHello":Ljava/nio/ByteBuffer;
    .end local v3    # "record":[B
    .end local v4    # "limit":I
    :cond_4
    :try_start_2
    aget-byte v0, p1, v1

    .line 148
    .local v0, "handshakeType":B
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v2, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->isHashable(B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v2, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->deliver([BII)V

    .line 152
    :cond_5
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->getFragLimit()I

    move-result v2

    .line 153
    .local v2, "fragLimit":I
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v3

    const/4 v4, 0x5

    add-int/2addr v3, v4

    .line 154
    .local v3, "position":I
    iget v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    if-nez v5, :cond_6

    .line 155
    iput v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    .line 158
    :cond_6
    iget v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    sub-int/2addr v5, v3

    sub-int v6, v2, p3

    if-ge v5, v6, :cond_7

    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 163
    :cond_7
    add-int v5, p2, p3

    .local v5, "limit":I
    :goto_0
    if-ge p2, v5, :cond_b

    .line 165
    sub-int v6, v5, p2

    :try_start_3
    iget v7, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    sub-int/2addr v7, v3

    add-int/2addr v6, v7

    .line 166
    .local v6, "remains":I
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 169
    .local v7, "fragLen":I
    invoke-virtual {p0, p1, p2, v7}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    if-ge v6, v2, :cond_8

    .line 171
    monitor-exit p0

    return-void

    .line 174
    :cond_8
    :try_start_4
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_9

    const-string v8, "record"

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WRITE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-object v9, v9, Lorg/openjsse/sun/security/ssl/ContentType;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_9
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    sget-object v9, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v9, v9, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    invoke-virtual {p0, v8, v9, v4}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J

    .line 185
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v10, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-virtual {v8, v9, v1, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 186
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 188
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_a

    const-string v8, "packet"

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 189
    const-string v8, "Raw write"

    new-instance v9, Ljava/io/ByteArrayInputStream;

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v11, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-direct {v9, v10, v1, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_a
    add-int/2addr p2, v7

    .line 197
    iput v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    .end local v6    # "remains":I
    .end local v7    # "fragLen":I
    goto/16 :goto_0

    .line 199
    .end local v5    # "limit":I
    :cond_b
    monitor-exit p0

    return-void

    .line 95
    .end local v0    # "handshakeType":B
    .end local v2    # "fragLimit":I
    .end local v3    # "position":I
    .end local p1    # "source":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 236
    .local v0, "position":I
    iget v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v2, v0, :cond_0

    .line 237
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "record"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WRITE: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", length = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;
    :cond_1
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    invoke-virtual {p0, v2, v4, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J

    .line 251
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 252
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 254
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_2

    const-string v1, "packet"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    const-string v1, "Raw write"

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->buf:[B

    iget v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I

    invoke-direct {v2, v4, v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_2
    iput v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 234
    .end local v0    # "position":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method declared-synchronized setDeliverStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    monitor-enter p0

    .line 340
    :try_start_0
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;->deliverStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 339
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
