.class final Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneConsumer;
.super Ljava/lang/Object;
.source "ServerHelloDone.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerHelloDone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerHelloDoneConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ServerHelloDone$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ServerHelloDone$1;

    .line 124
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 136
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 137
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 138
    .local v1, "certStatCons":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 142
    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateStatus;->handshakeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    invoke-interface {v3, p1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeAbsence;->absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 146
    :cond_0
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 148
    new-instance v3, Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneMessage;

    invoke-direct {v3, v0, p2}, Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 150
    .local v3, "shdm":Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneMessage;
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_1

    const-string v4, "ssl,handshake"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    const-string v4, "Consuming ServerHelloDone handshake message"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_1
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v4, v5

    const/4 v5, 0x3

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v4, v5

    .line 178
    .local v4, "probableHandshakeMessages":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    array-length v5, v4

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 179
    .local v7, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    iget-byte v9, v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 180
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 181
    .local v8, "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    if-eqz v8, :cond_2

    .line 182
    invoke-interface {v8, p1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 178
    .end local v7    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .end local v8    # "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    :cond_3
    return-void
.end method
