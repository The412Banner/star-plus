.class final Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;
.super Ljava/lang/Object;
.source "SSLSecretDerivation.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;
    }
.end annotation


# static fields
.field private static final sha256EmptyDigest:[B

.field private static final sha384EmptyDigest:[B


# instance fields
.field private final context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

.field private final hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

.field private final hkdfAlg:Ljava/lang/String;

.field private final secret:Ljavax/crypto/SecretKey;

.field private final transcriptHash:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->sha256EmptyDigest:[B

    .line 48
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->sha384EmptyDigest:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1dt
        -0x50t
        -0x3ct
        0x42t
        -0x68t
        -0x4t
        0x1ct
        0x14t
        -0x66t
        -0x5t
        -0xct
        -0x38t
        -0x67t
        0x6ft
        -0x47t
        0x24t
        0x27t
        -0x52t
        0x41t
        -0x1ct
        0x64t
        -0x65t
        -0x6dt
        0x4ct
        -0x5ct
        -0x6bt
        -0x67t
        0x1bt
        0x78t
        0x52t
        -0x48t
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x38t
        -0x50t
        0x60t
        -0x59t
        0x51t
        -0x54t
        -0x6at
        0x38t
        0x4ct
        -0x27t
        0x32t
        0x7et
        -0x4ft
        -0x4ft
        -0x1dt
        0x6at
        0x21t
        -0x3t
        -0x49t
        0x11t
        0x14t
        -0x42t
        0x7t
        0x43t
        0x4ct
        0xct
        -0x39t
        -0x41t
        0x63t
        -0xat
        -0x1ft
        -0x26t
        0x27t
        0x4et
        -0x22t
        -0x41t
        -0x19t
        0x6ft
        0x65t
        -0x5t
        -0x2bt
        0x1at
        -0x2et
        -0xft
        0x48t
        -0x68t
        -0x47t
        0x5bt
    .end array-data
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "secret"    # Ljavax/crypto/SecretKey;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 72
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->secret:Ljavax/crypto/SecretKey;

    .line 73
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HKDF-Expand/Hmac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    .line 75
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->hkdfAlg:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 77
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->transcriptHash:[B

    .line 78
    return-void
.end method

.method public static createHkdfInfo([B[BI)[B
    .locals 5
    .param p0, "label"    # [B
    .param p1, "context"    # [B
    .param p2, "length"    # I

    .line 118
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 119
    .local v0, "info":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 121
    .local v1, "m":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v1, p2}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 122
    invoke-static {v1, p0}, Lorg/openjsse/sun/security/ssl/Record;->putBytes8(Ljava/nio/ByteBuffer;[B)V

    .line 123
    invoke-static {v1, p1}, Lorg/openjsse/sun/security/ssl/Record;->putBytes8(Ljava/nio/ByteBuffer;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .line 129
    return-object v0

    .line 124
    :catch_0
    move-exception v2

    .line 126
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

    .line 87
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    move-result-object v0

    .line 90
    .local v0, "ks":Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;
    :try_start_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsSaltSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    if-ne v0, v1, :cond_2

    .line 91
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_SHA256:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    if-ne v1, v2, :cond_0

    .line 92
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->sha256EmptyDigest:[B

    .local v1, "expandContext":[B
    goto :goto_0

    .line 93
    .end local v1    # "expandContext":[B
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_SHA384:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    if-ne v1, v2, :cond_1

    .line 94
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->sha384EmptyDigest:[B

    .restart local v1    # "expandContext":[B
    goto :goto_0

    .line 98
    .end local v1    # "expandContext":[B
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected unsupported hash algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ks":Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;
    .end local p1    # "algorithm":Ljava/lang/String;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v1

    .line 103
    .restart local v0    # "ks":Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;
    .restart local p1    # "algorithm":Ljava/lang/String;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->transcriptHash:[B

    .line 105
    .restart local v1    # "expandContext":[B
    :goto_0
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->access$000(Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;)[B

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    invoke-static {v2, v1, v3}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->createHkdfInfo([B[BI)[B

    move-result-object v2

    .line 108
    .local v2, "hkdfInfo":[B
    new-instance v3, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->secret:Ljavax/crypto/SecretKey;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    invoke-virtual {v3, v4, v2, v5, p1}, Lorg/openjsse/sun/security/ssl/HKDF;->expand(Ljavax/crypto/SecretKey;[BILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 110
    .end local v1    # "expandContext":[B
    .end local v2    # "hkdfInfo":[B
    .end local v3    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v3, "Could not generate secret"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLHandshakeException;

    throw v2
.end method

.method forContext(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 81
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->secret:Ljavax/crypto/SecretKey;

    invoke-direct {v0, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method
