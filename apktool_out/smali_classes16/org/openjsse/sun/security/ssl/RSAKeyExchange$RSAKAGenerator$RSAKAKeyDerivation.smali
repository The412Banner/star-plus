.class final Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;
.super Ljava/lang/Object;
.source "RSAKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RSAKAKeyDerivation"
.end annotation


# instance fields
.field private final context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

.field private final preMasterSecret:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "preMasterSecret"    # Ljavax/crypto/SecretKey;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 292
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;->preMasterSecret:Ljavax/crypto/SecretKey;

    .line 293
    return-void
.end method


# virtual methods
.method public deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 299
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    move-result-object v0

    .line 301
    .local v0, "mskd":Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;
    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;->preMasterSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v1

    .line 309
    .local v1, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v2, "MasterSecret"

    invoke-interface {v1, v2, p2}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2

    .line 303
    .end local v1    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No expected master key derivation for protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator$RSAKAKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
