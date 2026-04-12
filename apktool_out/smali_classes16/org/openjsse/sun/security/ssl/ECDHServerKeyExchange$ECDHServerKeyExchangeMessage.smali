.class final Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "ECDHServerKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ECDHServerKeyExchangeMessage"
.end annotation


# static fields
.field private static final CURVE_NAMED_CURVE:B = 0x3t


# instance fields
.field private final namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field private final paramsSignature:[B

.field private final publicKey:Ljava/security/interfaces/ECPublicKey;

.field private final publicPoint:[B

.field private final signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field private final useExplicitSigAlgorithm:Z


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 12
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 96
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 99
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    const/4 v1, 0x0

    .line 100
    .local v1, "ecdhePossession":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;
    const/4 v2, 0x0

    .line 101
    .local v2, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 102
    .local v4, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    if-eqz v5, :cond_0

    .line 103
    move-object v1, v4

    check-cast v1, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    .line 104
    if-eqz v2, :cond_1

    .line 105
    goto :goto_1

    .line 107
    :cond_0
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v5, :cond_1

    .line 108
    move-object v2, v4

    check-cast v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 109
    if-eqz v1, :cond_1

    .line 110
    goto :goto_1

    .line 113
    .end local v4    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_1
    goto :goto_0

    .line 115
    :cond_2
    :goto_1
    if-eqz v1, :cond_7

    .line 121
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->publicKey:Ljava/security/interfaces/ECPublicKey;

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 122
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 123
    .local v3, "params":Ljava/security/spec/ECParameterSpec;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v4}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 124
    .local v4, "point":Ljava/security/spec/ECPoint;
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/JsseJce;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    .line 126
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljava/security/spec/ECParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v5

    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 127
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->oid:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 133
    const/4 v5, 0x0

    if-nez v2, :cond_3

    .line 135
    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    .line 136
    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 137
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    goto/16 :goto_3

    .line 139
    :cond_3
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 140
    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v6

    iput-boolean v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, "signer":Ljava/security/Signature;
    iget-boolean v7, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    if-eqz v7, :cond_5

    .line 143
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->peerRequestedSignatureSchemes:Ljava/util/List;

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 144
    invoke-static {v5, v2, v7}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSignerOfPreferableAlgorithm(Ljava/util/List;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/Map$Entry;

    move-result-object v5

    .line 148
    .local v5, "schemeAndSigner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SignatureScheme;Ljava/security/Signature;>;"
    if-eqz v5, :cond_4

    .line 156
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iput-object v7, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 157
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/security/Signature;

    .line 159
    .end local v6    # "signer":Ljava/security/Signature;
    .local v5, "signer":Ljava/security/Signature;
    goto :goto_2

    .line 151
    .local v5, "schemeAndSigner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SignatureScheme;Ljava/security/Signature;>;"
    .restart local v6    # "signer":Ljava/security/Signature;
    :cond_4
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No supported signature algorithm for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 153
    invoke-interface {v10}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  key"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 151
    invoke-virtual {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 160
    .end local v5    # "schemeAndSigner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SignatureScheme;Ljava/security/Signature;>;"
    :cond_5
    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 162
    :try_start_0
    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 163
    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 162
    invoke-static {v5, v7}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->getSignature(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Signature;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .end local v6    # "signer":Ljava/security/Signature;
    .local v5, "signer":Ljava/security/Signature;
    nop

    .line 172
    :goto_2
    const/4 v6, 0x0

    .line 174
    .local v6, "signature":[B
    :try_start_1
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget v9, v9, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    invoke-static {v5, v7, v8, v9, v10}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->updateSignature(Ljava/security/Signature;[B[BI[B)V

    .line 177
    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v7
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    .line 182
    nop

    .line 183
    iput-object v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    .line 185
    .end local v5    # "signer":Ljava/security/Signature;
    .end local v6    # "signature":[B
    :goto_3
    return-void

    .line 178
    .restart local v5    # "signer":Ljava/security/Signature;
    .restart local v6    # "signature":[B
    :catch_0
    move-exception v7

    .line 179
    .local v7, "ex":Ljava/security/SignatureException;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to sign ecdhe parameters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 181
    invoke-interface {v11}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 179
    invoke-virtual {v8, v9, v10, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v8

    throw v8

    .line 165
    .end local v5    # "signer":Ljava/security/Signature;
    .end local v7    # "ex":Ljava/security/SignatureException;
    .local v6, "signer":Ljava/security/Signature;
    :catch_1
    move-exception v5

    goto :goto_4

    :catch_2
    move-exception v5

    .line 166
    .local v5, "e":Ljava/security/GeneralSecurityException;
    :goto_4
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported signature algorithm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 168
    invoke-interface {v10}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 166
    invoke-virtual {v7, v8, v9, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 129
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "signer":Ljava/security/Signature;
    :cond_6
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unnamed EC parameter spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 117
    .end local v3    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v4    # "point":Ljava/security/spec/ECPoint;
    :cond_7
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "No ECDHE credentials negotiated for server key exchange"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 192
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 195
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-byte v1, v1

    .line 196
    .local v1, "curveType":B
    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 202
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 203
    .local v2, "namedGroupId":I
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(I)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 204
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    if-eqz v3, :cond_d

    .line 209
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->isSupported(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 214
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->oid:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 219
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->oid:Ljava/lang/String;

    .line 220
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/JsseJce;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 221
    .local v3, "parameters":Ljava/security/spec/ECParameterSpec;
    if-eqz v3, :cond_a

    .line 226
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    .line 227
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    array-length v4, v4

    if-eqz v4, :cond_9

    .line 232
    const/4 v4, 0x0

    .line 234
    .local v4, "ecPublicKey":Ljava/security/interfaces/ECPublicKey;
    :try_start_0
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    .line 235
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v5

    .line 236
    .local v5, "point":Ljava/security/spec/ECPoint;
    const-string v6, "EC"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 237
    .local v6, "factory":Ljava/security/KeyFactory;
    new-instance v7, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v7, v5, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v6, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    check-cast v7, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v4, v7

    .line 243
    .end local v5    # "point":Ljava/security/spec/ECPoint;
    .end local v6    # "factory":Ljava/security/KeyFactory;
    nop

    .line 245
    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 247
    const/4 v5, 0x0

    .line 248
    .local v5, "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 249
    .local v7, "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v8, v7, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    if-eqz v8, :cond_0

    .line 250
    move-object v5, v7

    check-cast v5, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    .line 251
    goto :goto_1

    .line 253
    .end local v7    # "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_0
    goto :goto_0

    .line 255
    :cond_1
    :goto_1
    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 257
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_2

    .line 261
    iput-object v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 262
    iput-object v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    .line 263
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    .line 265
    return-void

    .line 258
    :cond_2
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v8, "Invalid DH ServerKeyExchange: unknown extra data"

    invoke-virtual {v6, v7, v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v6

    throw v6

    .line 268
    :cond_3
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 269
    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v7

    iput-boolean v7, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    .line 270
    iget-boolean v7, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    if-eqz v7, :cond_6

    .line 271
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 272
    .local v6, "ssid":I
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->valueOf(I)Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v7

    iput-object v7, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 273
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v8, ") used in ECDH ServerKeyExchange handshake message"

    if-eqz v7, :cond_5

    .line 279
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 285
    .end local v6    # "ssid":I
    goto :goto_2

    .line 280
    .restart local v6    # "ssid":I
    :cond_4
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported signature algorithm ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v11, v11, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 274
    :cond_5
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid signature algorithm ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 286
    .end local v6    # "ssid":I
    :cond_6
    iput-object v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 290
    :goto_2
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    iput-object v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    .line 292
    iget-boolean v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    const-string v7, "Unsupported signature algorithm: "

    if-eqz v6, :cond_7

    .line 294
    :try_start_1
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v8, v5, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v6, v8}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getVerifier(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v6
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    .local v6, "signer":Ljava/security/Signature;
    goto :goto_4

    .line 296
    .end local v6    # "signer":Ljava/security/Signature;
    :catch_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_3

    :catch_2
    move-exception v6

    .line 298
    .local v6, "nsae":Ljava/security/GeneralSecurityException;
    :goto_3
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v10, v10, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 304
    .end local v6    # "nsae":Ljava/security/GeneralSecurityException;
    :cond_7
    :try_start_2
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 305
    invoke-interface {v6}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v5, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 304
    invoke-static {v6, v8}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->getSignature(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Signature;

    move-result-object v6
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4

    .line 311
    .local v6, "signer":Ljava/security/Signature;
    nop

    .line 315
    :goto_4
    :try_start_3
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget v9, v9, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    invoke-static {v6, v7, v8, v9, v10}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->updateSignature(Ljava/security/Signature;[B[BI[B)V

    .line 320
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    invoke-virtual {v6, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 327
    nop

    .line 328
    return-void

    .line 321
    :cond_8
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v9, "Invalid ECDH ServerKeyExchange signature"

    invoke-virtual {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    .end local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .end local v1    # "curveType":B
    .end local v2    # "namedGroupId":I
    .end local v3    # "parameters":Ljava/security/spec/ECParameterSpec;
    .end local v4    # "ecPublicKey":Ljava/security/interfaces/ECPublicKey;
    .end local v5    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .end local v6    # "signer":Ljava/security/Signature;
    .end local p1    # "handshakeContext":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .end local p2    # "m":Ljava/nio/ByteBuffer;
    throw v7
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_3

    .line 324
    .restart local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .restart local v1    # "curveType":B
    .restart local v2    # "namedGroupId":I
    .restart local v3    # "parameters":Ljava/security/spec/ECParameterSpec;
    .restart local v4    # "ecPublicKey":Ljava/security/interfaces/ECPublicKey;
    .restart local v5    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .restart local v6    # "signer":Ljava/security/Signature;
    .restart local p1    # "handshakeContext":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .restart local p2    # "m":Ljava/nio/ByteBuffer;
    :catch_3
    move-exception v7

    .line 325
    .local v7, "ex":Ljava/security/SignatureException;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v10, "Cannot verify ECDH ServerKeyExchange signature"

    invoke-virtual {v8, v9, v10, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v8

    throw v8

    .line 307
    .end local v6    # "signer":Ljava/security/Signature;
    .end local v7    # "ex":Ljava/security/SignatureException;
    :catch_4
    move-exception v6

    goto :goto_5

    :catch_5
    move-exception v6

    .line 308
    .local v6, "e":Ljava/security/GeneralSecurityException;
    :goto_5
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v5, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 310
    invoke-interface {v10}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 308
    invoke-virtual {v8, v9, v7, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 239
    .end local v5    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :catch_6
    move-exception v5

    goto :goto_6

    :catch_7
    move-exception v5

    goto :goto_6

    :catch_8
    move-exception v5

    .line 241
    .local v5, "ex":Ljava/lang/Exception;
    :goto_6
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid ECPoint: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v6

    throw v6

    .line 228
    .end local v4    # "ecPublicKey":Ljava/security/interfaces/ECPublicKey;
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_9
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insufficient ECPoint data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 222
    :cond_a
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No supported EC parameter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 215
    .end local v3    # "parameters":Ljava/security/spec/ECParameterSpec;
    :cond_b
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown named EC curve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 210
    :cond_c
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported named group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 205
    :cond_d
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown named group ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 198
    .end local v2    # "namedGroupId":I
    :cond_e
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported ECCurveType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;)Ljava/security/interfaces/ECPublicKey;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;

    .line 71
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicKey:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method static synthetic access$300(Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;

    .line 71
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    return-object v0
.end method

.method private static getSignature(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Signature;
    .locals 4
    .param p0, "keyAlgorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "signer":Ljava/security/Signature;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "RSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "EC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 451
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "neither an RSA or a EC key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :pswitch_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v0

    .line 449
    goto :goto_2

    .line 445
    :pswitch_1
    const-string v1, "SHA1withECDSA"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 446
    nop

    .line 455
    :goto_2
    if-eqz v0, :cond_2

    .line 456
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_1

    .line 457
    move-object v1, p1

    check-cast v1, Ljava/security/PublicKey;

    move-object v2, v1

    check-cast v2, Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    goto :goto_3

    .line 459
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 463
    :cond_2
    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_1
        0x13e20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static updateSignature(Ljava/security/Signature;[B[BI[B)V
    .locals 1
    .param p0, "sig"    # Ljava/security/Signature;
    .param p1, "clntNonce"    # [B
    .param p2, "svrNonce"    # [B
    .param p3, "namedGroupId"    # I
    .param p4, "publicPoint"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 469
    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    .line 470
    invoke-virtual {p0, p2}, Ljava/security/Signature;->update([B)V

    .line 472
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/security/Signature;->update(B)V

    .line 473
    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/security/Signature;->update(B)V

    .line 474
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/security/Signature;->update(B)V

    .line 475
    array-length v0, p4

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/security/Signature;->update(B)V

    .line 476
    invoke-virtual {p0, p4}, Ljava/security/Signature;->update([B)V

    .line 477
    return-void
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 332
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 2

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "sigLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    array-length v1, v1

    add-int/lit8 v0, v1, 0x2

    .line 340
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    if-eqz v1, :cond_0

    .line 341
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->sizeInRecord()I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    return v1
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 351
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 352
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 353
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    if-eqz v0, :cond_1

    .line 354
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 360
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 364
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    const-string v1, "      "

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Ljava/text/MessageFormat;

    const-string v2, "\"ECDH ServerKeyExchange\": \'{\'\n  \"parameters\": \'{\'\n    \"named group\": \"{0}\"\n    \"ecdh public\": \'{\'\n{1}\n    \'}\',\n  \'}\',\n  \"digital signature\":  \'{\'\n    \"signature algorithm\": \"{2}\"\n    \"signature\": \'{\'\n{3}\n    \'}\',\n  \'}\'\n\'}\'"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 382
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v2, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 383
    .local v2, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    .line 386
    invoke-virtual {v2, v4}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    .line 389
    invoke-virtual {v2, v6}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v6

    .line 388
    invoke-static {v6, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 391
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 392
    .end local v0    # "messageFormat":Ljava/text/MessageFormat;
    .end local v1    # "messageFields":[Ljava/lang/Object;
    .end local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    if-eqz v0, :cond_1

    .line 393
    new-instance v0, Ljava/text/MessageFormat;

    const-string v2, "\"ECDH ServerKeyExchange\": \'{\'\n  \"parameters\":  \'{\'\n    \"named group\": \"{0}\"\n    \"ecdh public\": \'{\'\n{1}\n    \'}\',\n  \'}\',\n  \"signature\": \'{\'\n{2}\n  \'}\'\n\'}\'"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 407
    .restart local v0    # "messageFormat":Ljava/text/MessageFormat;
    new-instance v2, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 408
    .restart local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    .line 411
    invoke-virtual {v2, v4}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->paramsSignature:[B

    .line 413
    invoke-virtual {v2, v4}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    .line 412
    const-string v5, "    "

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 416
    .restart local v1    # "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 418
    .end local v0    # "messageFormat":Ljava/text/MessageFormat;
    .end local v1    # "messageFields":[Ljava/lang/Object;
    .end local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    :cond_1
    new-instance v0, Ljava/text/MessageFormat;

    const-string v2, "\"ECDH ServerKeyExchange\": \'{\'\n  \"parameters\":  \'{\'\n    \"named group\": \"{0}\"\n    \"ecdh public\": \'{\'\n{1}\n    \'}\',\n  \'}\'\n\'}\'"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 429
    .restart local v0    # "messageFormat":Ljava/text/MessageFormat;
    new-instance v2, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 430
    .restart local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->publicPoint:[B

    .line 433
    invoke-virtual {v2, v4}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 436
    .restart local v1    # "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
