.class final Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "DHClientKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHClientKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DHClientKeyExchangeMessage"
.end annotation


# instance fields
.field private y:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 5
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 77
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 80
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    const/4 v1, 0x0

    .line 81
    .local v1, "dhePossession":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 82
    .local v3, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    if-eqz v4, :cond_0

    .line 83
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    .line 84
    goto :goto_1

    .line 86
    .end local v3    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 94
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;

    .line 95
    .local v2, "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    .line 96
    .local v3, "params":Ljavax/crypto/spec/DHParameterSpec;
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/Utilities;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;->y:[B

    .line 97
    return-void

    .line 90
    .end local v2    # "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v3    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :cond_2
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No DHE credentials negotiated for client key exchange"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 103
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 106
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 111
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;->y:[B

    .line 113
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    return-void

    .line 114
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Invalid DH ClientKeyExchange message: unknown extra data"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 107
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Invalid DH ClientKeyExchange message: insufficient data"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;

    .line 70
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;->y:[B

    return-object v0
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 121
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;->y:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;->y:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 136
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"DH ClientKeyExchange\": \'{\'\n  \"parameters\": \'{\'\n    \"dh_Yc\": \'{\'\n{0}\n    \'}\',\n  \'}\'\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 146
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 147
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;->y:[B

    .line 149
    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    .line 148
    const-string v3, "      "

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 151
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
