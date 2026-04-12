.class final Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;
.super Ljava/lang/Object;
.source "SSLTrafficKeyDerivation.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T13TrafficKeyDerivation"
.end annotation


# instance fields
.field private final cs:Lorg/openjsse/sun/security/ssl/CipherSuite;

.field private final secret:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V
    .locals 1
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "secret"    # Ljavax/crypto/SecretKey;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;->secret:Ljavax/crypto/SecretKey;

    .line 142
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;->cs:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 143
    return-void
.end method

.method private static createHkdfInfo([BI)[B
    .locals 5
    .param p0, "label"    # [B
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 165
    .local v0, "info":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 167
    .local v1, "m":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v1, p1}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 168
    invoke-static {v1, p0}, Lorg/openjsse/sun/security/ssl/Record;->putBytes8(Ljava/nio/ByteBuffer;[B)V

    .line 169
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/Record;->putInt8(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 175
    return-object v0

    .line 170
    :catch_0
    move-exception v2

    .line 172
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected exception"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    move-result-object v0

    .line 150
    .local v0, "ks":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;
    :try_start_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;->cs:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    nop

    .line 152
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->access$400(Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;)[B

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;->cs:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->getKeyLength(Lorg/openjsse/sun/security/ssl/CipherSuite;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;->createHkdfInfo([BI)[B

    move-result-object v2

    .line 153
    .local v2, "hkdfInfo":[B
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;->secret:Ljavax/crypto/SecretKey;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;->cs:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 154
    invoke-virtual {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->getKeyLength(Lorg/openjsse/sun/security/ssl/CipherSuite;)I

    move-result v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;->cs:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 155
    invoke-virtual {v0, v5, p1}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->getAlgorithm(Lorg/openjsse/sun/security/ssl/CipherSuite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {v1, v3, v2, v4, v5}, Lorg/openjsse/sun/security/ssl/HKDF;->expand(Ljavax/crypto/SecretKey;[BILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 156
    .end local v1    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v2    # "hkdfInfo":[B
    :catch_0
    move-exception v1

    .line 157
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v3, "Could not generate secret"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLHandshakeException;

    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/SSLHandshakeException;

    throw v2
.end method
