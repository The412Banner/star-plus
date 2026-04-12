.class final Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecConsumer;
.super Ljava/lang/Object;
.source "ChangeCipherSpec.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T10ChangeCipherSpecConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$1;

    .line 129
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 16
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    move-object/from16 v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 141
    .local v1, "tc":Lorg/openjsse/sun/security/ssl/TransportContext;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->consumers:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_a

    .line 148
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Consuming ChangeCipherSpec message"

    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    const-string v2, "Unexpected ChangeCipherSpec message"

    if-eqz v0, :cond_9

    .line 159
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 161
    .local v3, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    if-eqz v0, :cond_8

    .line 166
    iget-object v2, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 167
    .local v2, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    instance-of v0, v2, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;

    if-eqz v0, :cond_7

    .line 168
    move-object v4, v2

    check-cast v4, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;

    .line 169
    .local v4, "tkd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;
    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 171
    .local v5, "ncs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v0, v5, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->cipherType:Lorg/openjsse/sun/security/ssl/CipherType;

    sget-object v6, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    const-string v7, "Algorithm missing:  "

    if-ne v0, v6, :cond_1

    .line 172
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 173
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v0

    move-object v6, v0

    .local v0, "readAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    goto :goto_1

    .line 176
    .end local v0    # "readAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    :cond_1
    :try_start_0
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/CipherSuite;->macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    iget-object v8, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v8, v8, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v8, :cond_2

    const-string v8, "serverMacKey"

    goto :goto_0

    :cond_2
    const-string v8, "clientMacKey"

    .line 178
    :goto_0
    invoke-virtual {v4, v8}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->getTrafficKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 176
    invoke-static {v0, v6, v8}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .restart local v0    # "readAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    move-object v6, v0

    .line 186
    .end local v0    # "readAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    .local v6, "readAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    :goto_1
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_3

    const-string v0, "serverWriteKey"

    goto :goto_2

    :cond_3
    const-string v0, "clientWriteKey"

    .line 187
    :goto_2
    invoke-virtual {v4, v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->getTrafficKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v14

    .line 189
    .local v14, "readKey":Ljavax/crypto/SecretKey;
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_4

    const-string v0, "serverWriteIv"

    goto :goto_3

    :cond_4
    const-string v0, "clientWriteIv"

    .line 190
    :goto_3
    invoke-virtual {v4, v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->getTrafficKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v15

    .line 192
    .local v15, "readIv":Ljavax/crypto/SecretKey;
    if-nez v15, :cond_5

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_4

    :cond_5
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 193
    invoke-interface {v15}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v12, v0

    :goto_4
    nop

    .line 196
    .local v12, "iv":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_1
    iget-object v8, v5, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v10, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 199
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v13

    .line 196
    move-object v9, v6

    move-object v11, v14

    invoke-virtual/range {v8 .. v13}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createReadCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    .local v0, "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    nop

    .line 205
    if-eqz v0, :cond_6

    .line 212
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v7, v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->changeReadCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V

    .line 213
    .end local v0    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .end local v4    # "tkd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;
    .end local v5    # "ncs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .end local v6    # "readAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v14    # "readKey":Ljavax/crypto/SecretKey;
    .end local v15    # "readIv":Ljavax/crypto/SecretKey;
    nop

    .line 216
    return-void

    .line 206
    .restart local v0    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .restart local v4    # "tkd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;
    .restart local v5    # "ncs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .restart local v6    # "readAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v14    # "readKey":Ljavax/crypto/SecretKey;
    .restart local v15    # "readIv":Ljavax/crypto/SecretKey;
    :cond_6
    iget-object v7, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal cipher suite ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") and protocol version ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 200
    .end local v0    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v8, Ljavax/net/ssl/SSLException;

    invoke-direct {v8, v7, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 180
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v6    # "readAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v14    # "readKey":Ljavax/crypto/SecretKey;
    .end local v15    # "readIv":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 182
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_5
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v7, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 214
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v4    # "tkd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;
    .end local v5    # "ncs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Not supported."

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    .end local v2    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :cond_8
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v0, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 154
    .end local v3    # "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    :cond_9
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v0, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 145
    :cond_a
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Malformed or unexpected ChangeCipherSpec message"

    invoke-virtual {v1, v0, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method
