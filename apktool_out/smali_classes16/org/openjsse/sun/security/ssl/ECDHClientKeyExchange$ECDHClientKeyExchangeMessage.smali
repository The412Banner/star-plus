.class final Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "ECDHClientKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ECDHClientKeyExchangeMessage"
.end annotation


# instance fields
.field private final encodedPoint:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 85
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    .line 90
    :goto_0
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/security/interfaces/ECPublicKey;)V
    .locals 3
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "publicKey"    # Ljava/security/interfaces/ECPublicKey;

    .line 75
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 77
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 78
    .local v0, "point":Ljava/security/spec/ECPoint;
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 79
    .local v1, "params":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    .line 80
    return-void
.end method

.method static synthetic access$400(Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;

    .line 70
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    return-object v0
.end method

.method static checkConstraints(Ljava/security/AlgorithmConstraints;Ljava/security/interfaces/ECPublicKey;[B)V
    .locals 7
    .param p0, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p1, "publicKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p2, "encodedPoint"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 99
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    nop

    .line 100
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 101
    .local v1, "point":Ljava/security/spec/ECPoint;
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 103
    .local v2, "spec":Ljava/security/spec/ECPublicKeySpec;
    const-string v3, "EC"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 104
    .local v3, "kf":Ljava/security/KeyFactory;
    nop

    .line 105
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    .line 108
    .local v4, "peerPublicKey":Ljava/security/interfaces/ECPublicKey;
    sget-object v5, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 109
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 108
    invoke-interface {p0, v5, v4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "point":Ljava/security/spec/ECPoint;
    .end local v2    # "spec":Ljava/security/spec/ECPublicKeySpec;
    .end local v3    # "kf":Ljava/security/KeyFactory;
    .end local v4    # "peerPublicKey":Ljava/security/interfaces/ECPublicKey;
    nop

    .line 118
    return-void

    .line 111
    .restart local v0    # "params":Ljava/security/spec/ECParameterSpec;
    .restart local v1    # "point":Ljava/security/spec/ECPoint;
    .restart local v2    # "spec":Ljava/security/spec/ECPublicKeySpec;
    .restart local v3    # "kf":Ljava/security/KeyFactory;
    .restart local v4    # "peerPublicKey":Ljava/security/interfaces/ECPublicKey;
    :cond_0
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string v6, "ECPublicKey does not comply to algorithm constraints"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local p1    # "publicKey":Ljava/security/interfaces/ECPublicKey;
    .end local p2    # "encodedPoint":[B
    throw v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "point":Ljava/security/spec/ECPoint;
    .end local v2    # "spec":Ljava/security/spec/ECPublicKeySpec;
    .end local v3    # "kf":Ljava/security/KeyFactory;
    .end local v4    # "peerPublicKey":Ljava/security/interfaces/ECPublicKey;
    .restart local p0    # "constraints":Ljava/security/AlgorithmConstraints;
    .restart local p1    # "publicKey":Ljava/security/interfaces/ECPublicKey;
    .restart local p2    # "encodedPoint":[B
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Could not generate ECPublicKey"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 122
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 128
    :cond_1
    :goto_0
    const/4 v0, 0x0

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

    .line 136
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 139
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 143
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"ECDH ClientKeyExchange\": \'{\'\n  \"ecdh public\": \'{\'\n{0}\n  \'}\',\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 150
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 157
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->encodedPoint:[B

    .line 159
    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    .line 158
    const-string v3, "    "

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 151
    .end local v1    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    .end local v2    # "messageFields":[Ljava/lang/Object;
    :cond_1
    :goto_0
    const-string v1, "    <implicit>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 154
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
