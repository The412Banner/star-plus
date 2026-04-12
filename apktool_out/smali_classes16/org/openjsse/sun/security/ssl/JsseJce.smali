.class final Lorg/openjsse/sun/security/ssl/JsseJce;
.super Ljava/lang/Object;
.source "JsseJce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/JsseJce$EcAvailability;,
        Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;
    }
.end annotation


# static fields
.field static final ALLOW_ECC:Z

.field static final CIPHER_3DES:Ljava/lang/String; = "DESede/CBC/NoPadding"

.field static final CIPHER_AES:Ljava/lang/String; = "AES/CBC/NoPadding"

.field static final CIPHER_AES_GCM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field static final CIPHER_CHACHA20_POLY1305:Ljava/lang/String; = "ChaCha20-Poly1305"

.field static final CIPHER_DES:Ljava/lang/String; = "DES/CBC/NoPadding"

.field static final CIPHER_RC4:Ljava/lang/String; = "RC4"

.field static final CIPHER_RSA_PKCS1:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static PROVIDER_VER:D = 0.0

.field static final SIGNATURE_DSA:Ljava/lang/String; = "DSA"

.field static final SIGNATURE_ECDSA:Ljava/lang/String; = "SHA1withECDSA"

.field static final SIGNATURE_RAWDSA:Ljava/lang/String; = "RawDSA"

.field static final SIGNATURE_RAWECDSA:Ljava/lang/String; = "NONEwithECDSA"

.field static final SIGNATURE_RAWRSA:Ljava/lang/String; = "NONEwithRSA"

.field static final SIGNATURE_SSLRSA:Ljava/lang/String; = "MD5andSHA1withRSA"

.field private static final fipsProviderList:Lsun/security/jca/ProviderList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    const-wide v0, 0x3ffccccccccccccdL    # 1.8

    sput-wide v0, Lorg/openjsse/sun/security/ssl/JsseJce;->PROVIDER_VER:D

    .line 49
    nop

    .line 50
    const-string v0, "com.sun.net.ssl.enableECC"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/JsseJce;->ALLOW_ECC:Z

    .line 59
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lorg/openjsse/sun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    goto :goto_0

    .line 66
    :cond_0
    const-string v0, "SUN"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 67
    .local v0, "sun":Ljava/security/Provider;
    if-eqz v0, :cond_1

    .line 71
    new-instance v2, Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;

    invoke-direct {v2, v0}, Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;-><init>(Ljava/security/Provider;)V

    .line 72
    .local v2, "sunCerts":Ljava/security/Provider;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/security/Provider;

    const/4 v4, 0x0

    sget-object v5, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    aput-object v5, v3, v4

    aput-object v2, v3, v1

    invoke-static {v3}, Lsun/security/jca/ProviderList;->newList([Ljava/security/Provider;)Lsun/security/jca/ProviderList;

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    .line 74
    .end local v0    # "sun":Ljava/security/Provider;
    .end local v2    # "sunCerts":Ljava/security/Provider;
    :goto_0
    return-void

    .line 68
    .restart local v0    # "sun":Ljava/security/Provider;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FIPS mode: SUN provider must be installed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method static beginFipsProvider()Ljava/lang/Object;
    .locals 1

    .line 378
    sget-object v0, Lorg/openjsse/sun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x0

    return-object v0

    .line 381
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    invoke-static {v0}, Lsun/security/jca/Providers;->beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;

    move-result-object v0

    return-object v0
.end method

.method static decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;
    .locals 1
    .param p0, "encoded"    # [B
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-static {p0, p1}, Lsun/security/util/ECUtil;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 1
    .param p0, "point"    # Ljava/security/spec/ECPoint;
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;

    .line 372
    invoke-static {p0, p1}, Lsun/security/util/ECUtil;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v0

    return-object v0
.end method

.method static endFipsProvider(Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 386
    sget-object v0, Lorg/openjsse/sun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    if-eqz v0, :cond_0

    .line 387
    move-object v0, p0

    check-cast v0, Lsun/security/jca/ProviderList;

    invoke-static {v0}, Lsun/security/jca/Providers;->endThreadProviderList(Lsun/security/jca/ProviderList;)V

    .line 389
    :cond_0
    return-void
.end method

.method static getAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 280
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 281
    invoke-static {p0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0

    .line 283
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method static getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 192
    :try_start_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 193
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 1
    .param p0, "namedCurveOid"    # Ljava/lang/String;

    .line 359
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {v0, p0}, Lsun/security/util/ECUtil;->getECParameterSpec(Ljava/security/Provider;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method static getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 253
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 254
    invoke-static {p0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    return-object v0

    .line 256
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    return-object v0
.end method

.method static getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 271
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 272
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method static getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 235
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 236
    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    return-object v0

    .line 238
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    return-object v0
.end method

.method static getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 244
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 245
    invoke-static {p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method

.method static getMD5()Ljava/security/MessageDigest;
    .locals 1

    .line 313
    const-string v0, "MD5"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static getMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 262
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 263
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 322
    :try_start_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 323
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getNamedCurveOid(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 363
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {v0, p0}, Lsun/security/util/ECUtil;->getCurveName(Ljava/security/Provider;Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRSAKeyLength(Ljava/security/PublicKey;)I
    .locals 2
    .param p0, "key"    # Ljava/security/PublicKey;

    .line 335
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 336
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .local v0, "modulus":Ljava/math/BigInteger;
    goto :goto_0

    .line 338
    .end local v0    # "modulus":Ljava/math/BigInteger;
    :cond_0
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;

    move-result-object v0

    .line 339
    .local v0, "spec":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v0}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    move-object v0, v1

    .line 341
    .local v0, "modulus":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    return v1
.end method

.method static getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;

    .line 345
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 346
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 347
    .local v0, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 348
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 347
    return-object v1

    .line 351
    .end local v0    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_0
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 352
    .local v0, "factory":Ljava/security/KeyFactory;
    const-class v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/RSAPublicKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 353
    .end local v0    # "factory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getSHA()Ljava/security/MessageDigest;
    .locals 1

    .line 317
    const-string v0, "SHA"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static getSecureRandom()Ljava/security/SecureRandom;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 288
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0

    .line 294
    :cond_0
    :try_start_0
    const-string v0, "PKCS11"

    sget-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 298
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    .line 299
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecureRandom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    nop

    .line 302
    :try_start_1
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    .line 301
    invoke-static {v2, v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 303
    :catch_1
    move-exception v2

    .line 307
    .end local v1    # "s":Ljava/security/Provider$Service;
    :cond_1
    goto :goto_0

    .line 308
    :cond_2
    new-instance v0, Ljava/security/KeyManagementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIPS mode: no SecureRandom  implementation found in provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    .line 309
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 209
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 210
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    const-string v0, "MD5andSHA1withRSA"

    if-ne p0, v0, :cond_1

    .line 218
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    const-string v1, "Signature"

    invoke-virtual {v0, v1, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    :try_start_0
    const-string v0, "OpenJSSE"

    invoke-static {p0, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 229
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :cond_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method static isEcAvailable()Z
    .locals 1

    .line 183
    invoke-static {}, Lorg/openjsse/sun/security/ssl/JsseJce$EcAvailability;->access$000()Z

    move-result v0

    return v0
.end method
