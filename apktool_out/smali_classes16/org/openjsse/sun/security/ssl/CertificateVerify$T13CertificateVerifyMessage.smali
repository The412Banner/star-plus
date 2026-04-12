.class final Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "CertificateVerify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T13CertificateVerifyMessage"
.end annotation


# static fields
.field private static final clientSignHead:[B

.field private static final serverSignHead:[B


# instance fields
.field private final signature:[B

.field private final signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 825
    const/16 v0, 0x62

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->serverSignHead:[B

    .line 856
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->clientSignHead:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x54t
        0x4ct
        0x53t
        0x20t
        0x31t
        0x2et
        0x33t
        0x2ct
        0x20t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x43t
        0x65t
        0x72t
        0x74t
        0x69t
        0x66t
        0x69t
        0x63t
        0x61t
        0x74t
        0x65t
        0x56t
        0x65t
        0x72t
        0x69t
        0x66t
        0x79t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x54t
        0x4ct
        0x53t
        0x20t
        0x31t
        0x2et
        0x33t
        0x2ct
        0x20t
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x20t
        0x43t
        0x65t
        0x72t
        0x74t
        0x69t
        0x66t
        0x69t
        0x63t
        0x61t
        0x74t
        0x65t
        0x56t
        0x65t
        0x72t
        0x69t
        0x66t
        0x79t
        0x0t
    .end array-data
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 949
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    .line 955
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 956
    .local v0, "ssid":I
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->valueOf(I)Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 957
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v2, ") used in CertificateVerify handshake message"

    if-eqz v1, :cond_6

    .line 963
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Unsupported signature algorithm ("

    if-eqz v1, :cond_5

    .line 971
    const/4 v1, 0x0

    .line 972
    .local v1, "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 973
    .local v5, "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v6, v5, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    if-eqz v6, :cond_0

    .line 974
    move-object v1, v5

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    .line 975
    goto :goto_1

    .line 977
    .end local v5    # "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_0
    goto :goto_0

    .line 979
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    if-eqz v4, :cond_4

    .line 986
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signature:[B

    .line 988
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v4

    .line 990
    .local v4, "hashValue":[B
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v5, v5, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 991
    sget-object v5, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->serverSignHead:[B

    sget-object v7, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->serverSignHead:[B

    array-length v7, v7

    array-length v8, v4

    add-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 993
    .local v5, "contentCovered":[B
    sget-object v7, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->serverSignHead:[B

    array-length v7, v7

    array-length v8, v4

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 996
    .end local v5    # "contentCovered":[B
    :cond_2
    sget-object v5, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->clientSignHead:[B

    sget-object v7, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->clientSignHead:[B

    array-length v7, v7

    array-length v8, v4

    add-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 998
    .restart local v5    # "contentCovered":[B
    sget-object v7, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->clientSignHead:[B

    array-length v7, v7

    array-length v8, v4

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1003
    :goto_2
    :try_start_0
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 1004
    invoke-virtual {v6, v7}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getVerifier(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v6

    .line 1005
    .local v6, "signer":Ljava/security/Signature;
    invoke-virtual {v6, v5}, Ljava/security/Signature;->update([B)V

    .line 1006
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signature:[B

    invoke-virtual {v6, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1019
    .end local v6    # "signer":Ljava/security/Signature;
    nop

    .line 1020
    return-void

    .line 1007
    .restart local v6    # "signer":Ljava/security/Signature;
    :cond_3
    iget-object v7, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v9, "Invalid CertificateVerify signature"

    invoke-virtual {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    .end local v0    # "ssid":I
    .end local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .end local v4    # "hashValue":[B
    .end local v5    # "contentCovered":[B
    .end local p1    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .end local p2    # "m":Ljava/nio/ByteBuffer;
    throw v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    .end local v6    # "signer":Ljava/security/Signature;
    .restart local v0    # "ssid":I
    .restart local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .restart local v4    # "hashValue":[B
    .restart local v5    # "contentCovered":[B
    .restart local p1    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .restart local p2    # "m":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    .line 1017
    .local v2, "ikse":Ljava/security/GeneralSecurityException;
    :goto_3
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Cannot verify CertificateVerify signature"

    invoke-virtual {v3, v6, v7, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 1010
    .end local v2    # "ikse":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v6

    goto :goto_4

    :catch_3
    move-exception v6

    .line 1012
    .local v6, "nsae":Ljava/security/GeneralSecurityException;
    :goto_4
    iget-object v7, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v9, v9, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 981
    .end local v4    # "hashValue":[B
    .end local v5    # "contentCovered":[B
    .end local v6    # "nsae":Ljava/security/GeneralSecurityException;
    :cond_4
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No X509 credentials negotiated for CertificateVerify"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 964
    .end local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    :cond_5
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 958
    :cond_6
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid signature algorithm ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 950
    .end local v0    # "ssid":I
    :cond_7
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Invalid CertificateVerify message: no sufficient data"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)V
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "x509Possession"    # Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 898
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerRequestedSignatureSchemes:Ljava/util/List;

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 899
    invoke-static {v0, p2, v1}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSignerOfPreferableAlgorithm(Ljava/util/List;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 903
    .local v0, "schemeAndSigner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SignatureScheme;Ljava/security/Signature;>;"
    if-eqz v0, :cond_1

    .line 912
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 914
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v1

    .line 916
    .local v1, "hashValue":[B
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 917
    sget-object v2, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->clientSignHead:[B

    sget-object v4, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->clientSignHead:[B

    array-length v4, v4

    array-length v5, v1

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 919
    .local v2, "contentCovered":[B
    sget-object v4, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->clientSignHead:[B

    array-length v4, v4

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 922
    .end local v2    # "contentCovered":[B
    :cond_0
    sget-object v2, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->serverSignHead:[B

    sget-object v4, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->serverSignHead:[B

    array-length v4, v4

    array-length v5, v1

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 924
    .restart local v2    # "contentCovered":[B
    sget-object v4, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->serverSignHead:[B

    array-length v4, v4

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    :goto_0
    const/4 v3, 0x0

    .line 930
    .local v3, "temproary":[B
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Signature;

    .line 931
    .local v4, "signer":Ljava/security/Signature;
    invoke-virtual {v4, v2}, Ljava/security/Signature;->update([B)V

    .line 932
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 936
    .end local v4    # "signer":Ljava/security/Signature;
    nop

    .line 938
    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signature:[B

    .line 939
    return-void

    .line 933
    :catch_0
    move-exception v4

    .line 934
    .local v4, "ikse":Ljava/security/SignatureException;
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Cannot produce CertificateVerify signature"

    invoke-virtual {v5, v6, v7, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 906
    .end local v1    # "hashValue":[B
    .end local v2    # "contentCovered":[B
    .end local v3    # "temproary":[B
    .end local v4    # "ikse":Ljava/security/SignatureException;
    :cond_1
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No supported CertificateVerify signature algorithm for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 908
    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 906
    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 1024
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 1029
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signature:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

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

    .line 1035
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 1036
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signature:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 1037
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1041
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"CertificateVerify\": \'{\'\n  \"signature algorithm\": {0}\n  \"signature\": \'{\'\n{1}\n  \'}\'\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1050
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 1051
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->signature:[B

    .line 1054
    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    .line 1053
    const-string v4, "    "

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1057
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
