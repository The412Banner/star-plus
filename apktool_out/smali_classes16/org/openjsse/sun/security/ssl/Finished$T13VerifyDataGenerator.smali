.class final Lorg/openjsse/sun/security/ssl/Finished$T13VerifyDataGenerator;
.super Ljava/lang/Object;
.source "Finished.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Finished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13VerifyDataGenerator"
.end annotation


# static fields
.field private static final hkdfContext:[B

.field private static final hkdfLabel:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 327
    const-string v0, "tls13 finished"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished$T13VerifyDataGenerator;->hkdfLabel:[B

    .line 328
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished$T13VerifyDataGenerator;->hkdfContext:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Finished$1;

    .line 326
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Finished$T13VerifyDataGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createVerifyData(Lorg/openjsse/sun/security/ssl/HandshakeContext;Z)[B
    .locals 9
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "isValidation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 336
    .local v0, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    if-eqz p2, :cond_0

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->baseReadSecret:Ljavax/crypto/SecretKey;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->baseWriteSecret:Ljavax/crypto/SecretKey;

    :goto_0
    move-object v3, v1

    .line 338
    .local v3, "secret":Ljavax/crypto/SecretKey;
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Finished$T13VerifyDataGenerator;->hkdfLabel:[B

    sget-object v6, Lorg/openjsse/sun/security/ssl/Finished$T13VerifyDataGenerator;->hkdfContext:[B

    iget v7, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;-><init>(Ljavax/crypto/SecretKey;Ljava/lang/String;[B[BI)V

    .line 341
    .local v1, "kdf":Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;
    new-instance v2, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation$SecretSizeSpec;

    iget v4, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    invoke-direct {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation$SecretSizeSpec;-><init>(I)V

    .line 343
    .local v2, "keySpec":Ljava/security/spec/AlgorithmParameterSpec;
    nop

    .line 344
    const-string v4, "TlsFinishedSecret"

    invoke-virtual {v1, v4, v2}, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 346
    .local v4, "finishedSecret":Ljavax/crypto/SecretKey;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hmac"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    .line 347
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "hmacAlg":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 350
    .local v6, "hmac":Ljavax/crypto/Mac;
    invoke-virtual {v6, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 351
    iget-object v7, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 352
    .end local v6    # "hmac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 353
    .local v6, "ex":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v7, Ljava/security/ProviderException;

    const-string v8, "Failed to generate verify_data"

    invoke-direct {v7, v8, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
