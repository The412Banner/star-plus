.class abstract Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
.super Ljava/lang/Object;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SSLReadCipher"
.end annotation


# instance fields
.field final authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

.field baseSecret:Ljavax/crypto/SecretKey;

.field keyLimitCountdown:J

.field keyLimitEnabled:Z

.field final protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 2
    .param p1, "authenticator"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->keyLimitEnabled:Z

    .line 611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->keyLimitCountdown:J

    .line 616
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 617
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 618
    return-void
.end method

.method static final nullDTlsReadCipher()Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .locals 6

    .line 633
    :try_start_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_NULL:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 634
    invoke-static {}, Lorg/openjsse/sun/security/ssl/Authenticator;->nullDtlsMac()Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 633
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createReadCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 636
    :catch_0
    move-exception v0

    .line 638
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot create NULL SSLCipher"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static final nullTlsReadCipher()Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .locals 6

    .line 622
    :try_start_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_NULL:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 623
    invoke-static {}, Lorg/openjsse/sun/security/ssl/Authenticator;->nullTlsMac()Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 622
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createReadCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 625
    :catch_0
    move-exception v0

    .line 627
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot create NULL SSLCipher"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public atKeyLimit()Z
    .locals 4

    .line 660
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->keyLimitCountdown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 661
    return v1

    .line 665
    :cond_0
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->keyLimitEnabled:Z

    .line 666
    const/4 v0, 0x1

    return v0
.end method

.method abstract decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method dispose()V
    .locals 0

    .line 647
    return-void
.end method

.method abstract estimateFragmentSize(II)I
.end method

.method isNullCipher()Z
    .locals 1

    .line 652
    const/4 v0, 0x0

    return v0
.end method
