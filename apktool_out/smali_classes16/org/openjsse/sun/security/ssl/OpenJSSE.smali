.class public abstract Lorg/openjsse/sun/security/ssl/OpenJSSE;
.super Ljava/security/Provider;
.source "OpenJSSE.java"


# static fields
.field public static final PROVIDER_VER:D

.field static cryptoProvider:Ljava/security/Provider; = null

.field private static fips:Ljava/lang/Boolean; = null

.field private static fipsInfo:Ljava/lang/String; = null

.field private static info:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x2cd9c06322ee4a2dL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-string v0, "JDK JSSE provider (FIPS mode, crypto provider "

    sput-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->fipsInfo:Ljava/lang/String;

    .line 84
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sput-wide v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->PROVIDER_VER:D

    .line 85
    const-string v0, "JDK JSSE provider(PKCS12, SunX509/PKIX key/trust factories, SSLv3/TLSv1/TLSv1.1/TLSv1.2/TLSv1.3)"

    sput-object v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->info:Ljava/lang/String;

    .line 88
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 118
    sget-wide v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->PROVIDER_VER:D

    sget-object v2, Lorg/openjsse/sun/security/ssl/OpenJSSE;->info:Ljava/lang/String;

    const-string v3, "OpenJSSE"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->subclassCheck()V

    .line 120
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->fips:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->registerAlgorithms(Z)V

    .line 125
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "OpenJSSE is already initialized in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cryptoProvider"    # Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->checkNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/openjsse/sun/security/ssl/OpenJSSE;-><init>(Ljava/security/Provider;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method protected constructor <init>(Ljava/security/Provider;)V
    .locals 2
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    .line 129
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->checkNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;-><init>(Ljava/security/Provider;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private constructor <init>(Ljava/security/Provider;Ljava/lang/String;)V
    .locals 4
    .param p1, "cryptoProvider"    # Ljava/security/Provider;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 147
    sget-wide v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->PROVIDER_VER:D

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/openjsse/sun/security/ssl/OpenJSSE;->fipsInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpenJSSE"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->subclassCheck()V

    .line 149
    if-nez p1, :cond_1

    .line 152
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p1

    .line 153
    if-eqz p1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crypto provider not installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->ensureFIPS(Ljava/security/Provider;)V

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->registerAlgorithms(Z)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lorg/openjsse/sun/security/ssl/OpenJSSE;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/OpenJSSE;
    .param p1, "x1"    # Z

    .line 63
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->doRegister(Z)V

    return-void
.end method

.method private static checkNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 138
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 141
    return-object p0

    .line 139
    :cond_0
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "cryptoProvider must not be null"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doRegister(Z)V
    .locals 4
    .param p1, "isfips"    # Z

    .line 174
    if-nez p1, :cond_0

    .line 175
    const-string v0, "KeyFactory.RSA"

    const-string v1, "sun.security.rsa.RSAKeyFactory$Legacy"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "Alg.Alias.KeyFactory.1.2.840.113549.1.1"

    const-string v1, "RSA"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "Alg.Alias.KeyFactory.OID.1.2.840.113549.1.1"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "KeyPairGenerator.RSA"

    const-string v2, "sun.security.rsa.RSAKeyPairGenerator$Legacy"

    invoke-virtual {p0, v0, v2}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "Alg.Alias.KeyPairGenerator.OID.1.2.840.113549.1.1"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "Signature.MD2withRSA"

    const-string v1, "sun.security.rsa.RSASignature$MD2withRSA"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.2"

    const-string v1, "MD2withRSA"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.2"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "Signature.MD5withRSA"

    const-string v1, "sun.security.rsa.RSASignature$MD5withRSA"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "Signature.SHA1withRSA"

    const-string v1, "sun.security.rsa.RSASignature$SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    const-string v0, "Signature.MD5andSHA1withRSA"

    const-string v1, "sun.security.ssl.RSASignature"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "Cipher.ChaCha20"

    const-string v1, "org.openjsse.com.sun.crypto.provider.ChaCha20Cipher$ChaCha20Only"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "Cipher.ChaCha20 SupportedKeyFormats"

    const-string v1, "RAW"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "Cipher.ChaCha20-Poly1305"

    const-string v2, "org.openjsse.com.sun.crypto.provider.ChaCha20Cipher$ChaCha20Poly1305"

    invoke-virtual {p0, v0, v2}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "Cipher.ChaCha20-Poly1305 SupportedKeyFormats"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "Alg.Alias.Cipher.1.2.840.113549.1.9.16.3.18"

    const-string v1, "ChaCha20-Poly1305"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "Alg.Alias.Cipher.OID.1.2.840.113549.1.9.16.3.18"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "KeyGenerator.ChaCha20"

    const-string v1, "org.openjsse.com.sun.crypto.provider.KeyGeneratorCore$ChaCha20KeyGenerator"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "AlgorithmParameters.ChaCha20-Poly1305"

    const-string v1, "org.openjsse.com.sun.crypto.provider.ChaCha20Poly1305Parameters"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v0, "KeyManagerFactory.SunX509"

    const-string v1, "org.openjsse.sun.security.ssl.KeyManagerFactoryImpl$SunX509"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "KeyManagerFactory.NewSunX509"

    const-string v1, "org.openjsse.sun.security.ssl.KeyManagerFactoryImpl$X509"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "Alg.Alias.KeyManagerFactory.PKIX"

    const-string v1, "NewSunX509"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "TrustManagerFactory.SunX509"

    const-string v1, "org.openjsse.sun.security.ssl.TrustManagerFactoryImpl$SimpleFactory"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "TrustManagerFactory.PKIX"

    const-string v1, "org.openjsse.sun.security.ssl.TrustManagerFactoryImpl$PKIXFactory"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "Alg.Alias.TrustManagerFactory.SunPKIX"

    const-string v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "Alg.Alias.TrustManagerFactory.X509"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "Alg.Alias.TrustManagerFactory.X.509"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "SSLContext.TLSv1"

    const-string v1, "org.openjsse.sun.security.ssl.SSLContextImpl$TLS10Context"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "SSLContext.TLSv1.1"

    const-string v1, "org.openjsse.sun.security.ssl.SSLContextImpl$TLS11Context"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "SSLContext.TLSv1.2"

    const-string v1, "org.openjsse.sun.security.ssl.SSLContextImpl$TLS12Context"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "SSLContext.TLSv1.3"

    const-string v1, "org.openjsse.sun.security.ssl.SSLContextImpl$TLS13Context"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "SSLContext.TLS"

    const-string v1, "org.openjsse.sun.security.ssl.SSLContextImpl$TLSContext"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    if-nez p1, :cond_1

    .line 249
    const-string v0, "Alg.Alias.SSLContext.SSL"

    const-string v1, "TLS"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "Alg.Alias.SSLContext.SSLv3"

    const-string v1, "TLSv1"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_1
    const-string v0, "SSLContext.Default"

    const-string v1, "org.openjsse.sun.security.ssl.SSLContextImpl$DefaultSSLContext"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "KeyStore.PKCS12"

    const-string v1, "sun.security.pkcs12.PKCS12KeyStore"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "KeyGenerator.SunTlsPrf"

    const-string v1, "org.openjsse.com.sun.crypto.provider.TlsPrfGenerator$V10"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "KeyGenerator.SunTls12Prf"

    const-string v1, "org.openjsse.com.sun.crypto.provider.TlsPrfGenerator$V12"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "KeyGenerator.SunTlsMasterSecret"

    const-string v1, "org.openjsse.com.sun.crypto.provider.TlsMasterSecretGenerator"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "Alg.Alias.KeyGenerator.SunTls12MasterSecret"

    const-string v1, "SunTlsMasterSecret"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "Alg.Alias.KeyGenerator.SunTlsExtendedMasterSecret"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v0, "KeyGenerator.SunTlsKeyMaterial"

    const-string v1, "org.openjsse.com.sun.crypto.provider.TlsKeyMaterialGenerator"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v0, "Alg.Alias.KeyGenerator.SunTls12KeyMaterial"

    const-string v1, "SunTlsKeyMaterial"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "KeyGenerator.SunTlsRsaPremasterSecret"

    const-string v1, "org.openjsse.com.sun.crypto.provider.TlsRsaPremasterSecretGenerator"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v0, "Alg.Alias.KeyGenerator.SunTls12RsaPremasterSecret"

    const-string v1, "SunTlsRsaPremasterSecret"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-wide v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->PROVIDER_VER:D

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 293
    const-string v0, "MessageDigest.SHA3-224"

    const-string v1, "org.openjsse.sun.security.provider.SHA3$SHA224"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "MessageDigest.SHA3-256"

    const-string v1, "org.openjsse.sun.security.provider.SHA3$SHA256"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "MessageDigest.SHA3-384"

    const-string v1, "org.openjsse.sun.security.provider.SHA3$SHA384"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "MessageDigest.SHA3-512"

    const-string v1, "org.openjsse.sun.security.provider.SHA3$SHA512"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_2
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.7"

    const-string v1, "SHA3-224"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "Alg.Alias.MessageDigest.OID.2.16.840.1.101.3.4.2.7"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.8"

    const-string v1, "SHA3-256"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v0, "Alg.Alias.MessageDigest.OID.2.16.840.1.101.3.4.2.8"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.9"

    const-string v1, "SHA3-384"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, "Alg.Alias.MessageDigest.OID.2.16.840.1.101.3.4.2.9"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.10"

    const-string v1, "SHA3-512"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "Alg.Alias.MessageDigest.OID.2.16.840.1.101.3.4.2.10"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method private static declared-synchronized ensureFIPS(Ljava/security/Provider;)V
    .locals 4
    .param p0, "p"    # Ljava/security/Provider;

    const-class v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->fips:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 100
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->fips:Ljava/lang/Boolean;

    .line 101
    sput-object p0, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    goto :goto_0

    .line 103
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->fips:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    sget-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_1

    .line 113
    :goto_0
    monitor-exit v0

    return-void

    .line 108
    :cond_1
    :try_start_1
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenJSSE already initialized with FIPS crypto provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_2
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "OpenJSSE already initialized in non-FIPS mode"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    .end local p0    # "p":Ljava/security/Provider;
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected static declared-synchronized isFIPS()Z
    .locals 2

    const-class v0, Lorg/openjsse/sun/security/ssl/OpenJSSE;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->fips:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->fips:Ljava/lang/Boolean;

    .line 93
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->fips:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 89
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static varargs oid([I)Lsun/security/util/ObjectIdentifier;
    .locals 1
    .param p0, "values"    # [I

    .line 331
    new-instance v0, Lorg/openjsse/sun/security/ssl/OpenJSSE$2;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/OpenJSSE$2;-><init>([I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method private registerAlgorithms(Z)V
    .locals 1
    .param p1, "isfips"    # Z

    .line 164
    new-instance v0, Lorg/openjsse/sun/security/ssl/OpenJSSE$1;

    invoke-direct {v0, p0, p1}, Lorg/openjsse/sun/security/ssl/OpenJSSE$1;-><init>(Lorg/openjsse/sun/security/ssl/OpenJSSE;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method private subclassCheck()V
    .locals 3

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/openjsse/net/ssl/OpenJSSE;

    if-ne v0, v1, :cond_0

    .line 320
    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal subclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 326
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 327
    return-void
.end method
