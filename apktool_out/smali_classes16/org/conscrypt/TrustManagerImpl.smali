.class public final Lorg/conscrypt/TrustManagerImpl;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;,
        Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;
    }
.end annotation


# static fields
.field private static final TRUST_ANCHOR_COMPARATOR:Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

.field private static defaultHostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final blocklist:Lorg/conscrypt/CertBlocklist;

.field private ctEnabledOverride:Z

.field private ctPolicy:Lorg/conscrypt/ct/CTPolicy;

.field private ctVerifier:Lorg/conscrypt/ct/CTVerifier;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

.field private final intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

.field private pinManager:Lorg/conscrypt/CertPinManager;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    const-class v0, Lorg/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    .line 93
    new-instance v0, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>(Lorg/conscrypt/TrustManagerImpl$1;)V

    sput-object v0, Lorg/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lorg/conscrypt/CertPinManager;

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lorg/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lorg/conscrypt/ConscryptCertStore;

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlocklist;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlocklist;)V
    .locals 8
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lorg/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lorg/conscrypt/ConscryptCertStore;
    .param p4, "blocklist"    # Lorg/conscrypt/CertBlocklist;

    .line 168
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlocklist;Lorg/conscrypt/ct/CTLogStore;Lorg/conscrypt/ct/CTVerifier;Lorg/conscrypt/ct/CTPolicy;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlocklist;Lorg/conscrypt/ct/CTLogStore;Lorg/conscrypt/ct/CTVerifier;Lorg/conscrypt/ct/CTPolicy;)V
    .locals 13
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lorg/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lorg/conscrypt/ConscryptCertStore;
    .param p4, "blocklist"    # Lorg/conscrypt/CertBlocklist;
    .param p5, "ctLogStore"    # Lorg/conscrypt/ct/CTLogStore;
    .param p6, "ctVerifier"    # Lorg/conscrypt/ct/CTVerifier;
    .param p7, "ctPolicy"    # Lorg/conscrypt/ct/CTPolicy;

    .line 176
    move-object v1, p0

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const/4 v3, 0x0

    .line 179
    .local v3, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    .line 180
    .local v4, "rootKeyStoreLocal":Ljava/security/KeyStore;
    const/4 v5, 0x0

    .line 181
    .local v5, "trustedCertificateStoreLocal":Lorg/conscrypt/ConscryptCertStore;
    const/4 v6, 0x0

    .line 182
    .local v6, "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    const/4 v7, 0x0

    .line 183
    .local v7, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 185
    .local v8, "errLocal":Ljava/lang/Exception;
    :try_start_0
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    move-object v2, v0

    .line 186
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    move-object v3, v0

    .line 189
    const-string v0, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Lorg/conscrypt/Platform;->supportsConscryptCertStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    move-object v4, p1

    .line 193
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/conscrypt/Platform;->newDefaultCertStore()Lorg/conscrypt/ConscryptCertStore;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 194
    const/4 v7, 0x0

    .line 195
    new-instance v0, Lorg/conscrypt/TrustedCertificateIndex;

    invoke-direct {v0}, Lorg/conscrypt/TrustedCertificateIndex;-><init>()V

    move-object v6, v0

    .end local v6    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    .local v0, "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    goto :goto_1

    .line 197
    .end local v0    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    .restart local v6    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    :cond_1
    const/4 v4, 0x0

    .line 198
    move-object/from16 v5, p3

    .line 199
    invoke-static {p1}, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    move-object v7, v0

    .line 200
    new-instance v0, Lorg/conscrypt/TrustedCertificateIndex;

    .line 201
    invoke-static {v7}, Lorg/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 206
    :goto_1
    goto :goto_2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    move-object v8, v0

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    if-nez p4, :cond_2

    .line 209
    invoke-static {}, Lorg/conscrypt/Platform;->newDefaultBlocklist()Lorg/conscrypt/CertBlocklist;

    move-result-object v0

    .end local p4    # "blocklist":Lorg/conscrypt/CertBlocklist;
    .local v0, "blocklist":Lorg/conscrypt/CertBlocklist;
    goto :goto_3

    .line 208
    .end local v0    # "blocklist":Lorg/conscrypt/CertBlocklist;
    .restart local p4    # "blocklist":Lorg/conscrypt/CertBlocklist;
    :cond_2
    move-object/from16 v0, p4

    .line 211
    .end local p4    # "blocklist":Lorg/conscrypt/CertBlocklist;
    .restart local v0    # "blocklist":Lorg/conscrypt/CertBlocklist;
    :goto_3
    if-nez p5, :cond_3

    .line 212
    invoke-static {}, Lorg/conscrypt/Platform;->newDefaultLogStore()Lorg/conscrypt/ct/CTLogStore;

    move-result-object v9

    .end local p5    # "ctLogStore":Lorg/conscrypt/ct/CTLogStore;
    .local v9, "ctLogStore":Lorg/conscrypt/ct/CTLogStore;
    goto :goto_4

    .line 211
    .end local v9    # "ctLogStore":Lorg/conscrypt/ct/CTLogStore;
    .restart local p5    # "ctLogStore":Lorg/conscrypt/ct/CTLogStore;
    :cond_3
    move-object/from16 v9, p5

    .line 215
    .end local p5    # "ctLogStore":Lorg/conscrypt/ct/CTLogStore;
    .restart local v9    # "ctLogStore":Lorg/conscrypt/ct/CTLogStore;
    :goto_4
    if-nez p7, :cond_4

    .line 216
    invoke-static {v9}, Lorg/conscrypt/Platform;->newDefaultPolicy(Lorg/conscrypt/ct/CTLogStore;)Lorg/conscrypt/ct/CTPolicy;

    move-result-object v10

    .end local p7    # "ctPolicy":Lorg/conscrypt/ct/CTPolicy;
    .local v10, "ctPolicy":Lorg/conscrypt/ct/CTPolicy;
    goto :goto_5

    .line 215
    .end local v10    # "ctPolicy":Lorg/conscrypt/ct/CTPolicy;
    .restart local p7    # "ctPolicy":Lorg/conscrypt/ct/CTPolicy;
    :cond_4
    move-object/from16 v10, p7

    .line 219
    .end local p7    # "ctPolicy":Lorg/conscrypt/ct/CTPolicy;
    .restart local v10    # "ctPolicy":Lorg/conscrypt/ct/CTPolicy;
    :goto_5
    move-object v11, p2

    iput-object v11, v1, Lorg/conscrypt/TrustManagerImpl;->pinManager:Lorg/conscrypt/CertPinManager;

    .line 220
    iput-object v4, v1, Lorg/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    .line 221
    iput-object v5, v1, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    .line 222
    iput-object v2, v1, Lorg/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 223
    iput-object v3, v1, Lorg/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 224
    iput-object v6, v1, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 225
    new-instance v12, Lorg/conscrypt/TrustedCertificateIndex;

    invoke-direct {v12}, Lorg/conscrypt/TrustedCertificateIndex;-><init>()V

    iput-object v12, v1, Lorg/conscrypt/TrustManagerImpl;->intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 226
    iput-object v7, v1, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 227
    iput-object v8, v1, Lorg/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 228
    iput-object v0, v1, Lorg/conscrypt/TrustManagerImpl;->blocklist:Lorg/conscrypt/CertBlocklist;

    .line 229
    new-instance v12, Lorg/conscrypt/ct/CTVerifier;

    invoke-direct {v12, v9}, Lorg/conscrypt/ct/CTVerifier;-><init>(Lorg/conscrypt/ct/CTLogStore;)V

    iput-object v12, v1, Lorg/conscrypt/TrustManagerImpl;->ctVerifier:Lorg/conscrypt/ct/CTVerifier;

    .line 230
    iput-object v10, v1, Lorg/conscrypt/TrustManagerImpl;->ctPolicy:Lorg/conscrypt/ct/CTPolicy;

    .line 231
    return-void
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "ks"    # Ljava/security/KeyStore;

    .line 244
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 248
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_0

    .line 249
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    goto :goto_0

    .line 252
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 253
    .end local v0    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/security/KeyStoreException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private checkBlocklist(Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->blocklist:Lorg/conscrypt/CertBlocklist;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->blocklist:Lorg/conscrypt/CertBlocklist;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/conscrypt/CertBlocklist;->isPublicKeyBlockListed(Ljava/security/PublicKey;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate blocklisted by public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_1
    :goto_0
    return-void
.end method

.method private checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p3, "ocspData"    # [B
    .param p4, "tlsData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 729
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->ctVerifier:Lorg/conscrypt/ct/CTVerifier;

    .line 730
    invoke-virtual {v0, p2, p4, p3}, Lorg/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lorg/conscrypt/ct/CTVerificationResult;

    move-result-object v0

    .line 732
    .local v0, "result":Lorg/conscrypt/ct/CTVerificationResult;
    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->ctPolicy:Lorg/conscrypt/ct/CTPolicy;

    .line 733
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    .line 732
    invoke-interface {v1, v0, p1, v2}, Lorg/conscrypt/ct/CTPolicy;->doesResultConformToPolicy(Lorg/conscrypt/ct/CTVerificationResult;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    return-void

    .line 734
    :cond_0
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Certificate chain does not conform to required transparency policy."

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;
    .locals 10
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;
    .param p4, "parameters"    # Ljavax/net/ssl/SSLParameters;
    .param p5, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            "Ljavax/net/ssl/SSLParameters;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "ocspData":[B
    const/4 v1, 0x0

    .line 396
    .local v1, "tlsSctData":[B
    const/4 v2, 0x0

    .line 397
    .local v2, "hostname":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 398
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {p3}, Lorg/conscrypt/TrustManagerImpl;->getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 400
    invoke-direct {p0, p3}, Lorg/conscrypt/TrustManagerImpl;->getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v1

    .line 403
    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 404
    invoke-virtual {p4}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "identificationAlgorithm":Ljava/lang/String;
    const-string v4, "HTTPS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    invoke-direct {p0}, Lorg/conscrypt/TrustManagerImpl;->getHttpsVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object v4

    .line 407
    .local v4, "verifier":Lorg/conscrypt/ConscryptHostnameVerifier;
    invoke-interface {v4, p1, v2, p3}, Lorg/conscrypt/ConscryptHostnameVerifier;->verify([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "No subjectAltNames on the certificate match"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 412
    .end local v3    # "identificationAlgorithm":Ljava/lang/String;
    .end local v4    # "verifier":Lorg/conscrypt/ConscryptHostnameVerifier;
    :cond_2
    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, v1

    move-object v7, p2

    move-object v8, v2

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 16
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "authType"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 471
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    if-eqz v10, :cond_2

    array-length v0, v10

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, v9, Lorg/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 477
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v11, v0

    .line 478
    .local v11, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 479
    .local v12, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 483
    .local v13, "trustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    const/4 v0, 0x0

    aget-object v14, v10, v0

    .line 484
    .local v14, "leaf":Ljava/security/cert/X509Certificate;
    invoke-direct {v9, v14}, Lorg/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v15

    .line 485
    .local v15, "leafAsAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v15, :cond_0

    .line 486
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :goto_0
    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v12

    move-object v7, v13

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 475
    .end local v11    # "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v12    # "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v13    # "trustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    .end local v14    # "leaf":Ljava/security/cert/X509Certificate;
    .end local v15    # "leafAsAnchor":Ljava/security/cert/TrustAnchor;
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    iget-object v1, v9, Lorg/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 472
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or zero-length parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    .locals 17
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 523
    .local p6, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .local p7, "trustAnchorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    .local p8, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    const/4 v0, 0x0

    .line 525
    .local v0, "lastException":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    move-object v13, v1

    .local v1, "current":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 528
    .end local v1    # "current":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    move-object v13, v1

    .line 532
    .local v13, "current":Ljava/security/cert/X509Certificate;
    :goto_0
    invoke-direct {v8, v13}, Lorg/conscrypt/TrustManagerImpl;->checkBlocklist(Ljava/security/cert/X509Certificate;)V

    .line 535
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 545
    :cond_1
    invoke-direct {v8, v13}, Lorg/conscrypt/TrustManagerImpl;->findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v14

    .line 546
    .local v14, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v1, 0x0

    .line 547
    .local v1, "seenIssuer":Z
    invoke-static {v14}, Lorg/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v15, v0

    move/from16 v16, v1

    .end local v0    # "lastException":Ljava/security/cert/CertificateException;
    .end local v1    # "seenIssuer":Z
    .local v15, "lastException":Ljava/security/cert/CertificateException;
    .local v16, "seenIssuer":Z
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 548
    .local v1, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 550
    .local v3, "anchorCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    goto :goto_1

    .line 553
    :cond_2
    const/16 v16, 0x1

    .line 554
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :try_start_0
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 559
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 560
    .local v0, "ex":Ljava/security/cert/CertificateException;
    move-object v15, v0

    .line 563
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    invoke-interface {v12, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 565
    .end local v1    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v3    # "anchorCert":Ljava/security/cert/X509Certificate;
    goto :goto_1

    .line 570
    :cond_3
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 571
    if-nez v16, :cond_4

    .line 572
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 577
    :cond_4
    throw v15

    .line 582
    :cond_5
    const/4 v0, 0x1

    move v1, v0

    .local v1, "i":I
    :goto_2
    array-length v0, v9

    if-ge v1, v0, :cond_8

    .line 583
    aget-object v2, v9, v1

    .line 585
    .local v2, "candidateIssuer":Ljava/security/cert/X509Certificate;
    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 586
    goto :goto_3

    .line 588
    :cond_6
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 592
    :try_start_1
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 593
    invoke-static {v2}, Lorg/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 598
    nop

    .line 599
    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    :try_start_2
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 604
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 605
    .restart local v0    # "ex":Ljava/security/cert/CertificateException;
    nop

    .line 608
    .end local v15    # "lastException":Ljava/security/cert/CertificateException;
    .local v0, "lastException":Ljava/security/cert/CertificateException;
    invoke-interface {v12, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v15, v0

    goto :goto_3

    .line 594
    .end local v0    # "lastException":Ljava/security/cert/CertificateException;
    .restart local v15    # "lastException":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v0

    .line 595
    .local v0, "ex":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unacceptable certificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 596
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    .end local v15    # "lastException":Ljava/security/cert/CertificateException;
    .local v3, "lastException":Ljava/security/cert/CertificateException;
    move-object v15, v3

    .line 582
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    .end local v2    # "candidateIssuer":Ljava/security/cert/X509Certificate;
    .end local v3    # "lastException":Ljava/security/cert/CertificateException;
    .restart local v15    # "lastException":Ljava/security/cert/CertificateException;
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 614
    .end local v1    # "i":I
    :cond_8
    iget-object v0, v8, Lorg/conscrypt/TrustManagerImpl;->intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 615
    invoke-virtual {v0, v13}, Lorg/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    .line 616
    .local v1, "intermediateAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-static {v1}, Lorg/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 617
    .local v3, "intermediate":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 619
    .local v4, "intermediateCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 620
    goto :goto_4

    .line 622
    :cond_9
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :try_start_3
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 627
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 628
    .restart local v0    # "ex":Ljava/security/cert/CertificateException;
    move-object v15, v0

    .line 631
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 632
    invoke-interface {v12, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 633
    .end local v3    # "intermediate":Ljava/security/cert/TrustAnchor;
    .end local v4    # "intermediateCert":Ljava/security/cert/X509Certificate;
    goto :goto_4

    .line 636
    :cond_a
    if-eqz v15, :cond_b

    .line 637
    throw v15

    .line 642
    :cond_b
    iget-object v0, v8, Lorg/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, v10}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 643
    .local v0, "certPath":Ljava/security/cert/CertPath;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v6, "Trust anchor for certification path not found."

    invoke-direct {v3, v6, v4, v0, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 917
    invoke-virtual {v0, p1}, Lorg/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 918
    .local v0, "indexedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    if-nez v1, :cond_0

    goto :goto_1

    .line 921
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    invoke-interface {v1, p1}, Lorg/conscrypt/ConscryptCertStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    .line 922
    .local v1, "storeAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 923
    return-object v0

    .line 925
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 926
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 927
    .local v4, "storeCert":Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v5, v4}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 928
    .end local v4    # "storeCert":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 929
    :cond_2
    return-object v2

    .line 919
    .end local v1    # "storeAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_3
    :goto_1
    return-object v0
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 938
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lorg/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 939
    .local v0, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v0, :cond_0

    .line 940
    return-object v0

    .line 942
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 944
    return-object v2

    .line 949
    :cond_1
    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    invoke-interface {v1, p1}, Lorg/conscrypt/ConscryptCertStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 950
    .local v1, "systemCert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_2

    .line 957
    new-instance v3, Ljava/security/cert/TrustAnchor;

    invoke-direct {v3, v1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object v3

    .line 959
    :cond_2
    return-object v2
.end method

.method static declared-synchronized getDefaultHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 2

    const-class v0, Lorg/conscrypt/TrustManagerImpl;

    monitor-enter v0

    .line 982
    :try_start_0
    sget-object v1, Lorg/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 982
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .locals 3
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 284
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 287
    return-object v0

    .line 285
    :cond_0
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Not in handshake; no session available"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getHttpsVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 1

    .line 1004
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    return-object v0

    .line 1007
    :cond_0
    invoke-static {}, Lorg/conscrypt/Platform;->getDefaultHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method private static getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .locals 5
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    instance-of v1, p0, Lorg/conscrypt/ConscryptSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 419
    move-object v1, p0

    check-cast v1, Lorg/conscrypt/ConscryptSession;

    .line 420
    .local v1, "opensslSession":Lorg/conscrypt/ConscryptSession;
    invoke-interface {v1}, Lorg/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    .line 421
    .end local v1    # "opensslSession":Lorg/conscrypt/ConscryptSession;
    goto :goto_1

    .line 424
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getStatusResponses"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 425
    .local v1, "m_getResponses":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 426
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 427
    .local v3, "rawResponses":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 428
    move-object v4, v3

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 435
    .end local v3    # "rawResponses":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 433
    .end local v1    # "m_getResponses":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 430
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    .line 435
    :goto_0
    nop

    .line 438
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 442
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 439
    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .locals 5
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .line 446
    instance-of v0, p1, Lorg/conscrypt/ConscryptSession;

    if-eqz v0, :cond_0

    .line 447
    move-object v0, p1

    check-cast v0, Lorg/conscrypt/ConscryptSession;

    .line 448
    .local v0, "opensslSession":Lorg/conscrypt/ConscryptSession;
    invoke-interface {v0}, Lorg/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v1

    return-object v1

    .line 451
    .end local v0    # "opensslSession":Lorg/conscrypt/ConscryptSession;
    :cond_0
    const/4 v0, 0x0

    .line 453
    .local v0, "data":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPeerSignedCertificateTimestamp"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 454
    .local v1, "m_getTlsSctData":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 455
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 456
    .local v2, "rawData":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_1

    .line 457
    move-object v3, v2

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 462
    .end local v1    # "m_getTlsSctData":Ljava/lang/reflect/Method;
    .end local v2    # "rawData":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 459
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    .line 464
    :cond_1
    :goto_0
    nop

    .line 465
    return-object v0
.end method

.method static declared-synchronized setDefaultHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .locals 1
    .param p0, "verifier"    # Lorg/conscrypt/ConscryptHostnameVerifier;

    const-class v0, Lorg/conscrypt/TrustManagerImpl;

    monitor-enter v0

    .line 973
    :try_start_0
    sput-object p0, Lorg/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    monitor-exit v0

    return-void

    .line 972
    .end local p0    # "verifier":Lorg/conscrypt/ConscryptHostnameVerifier;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V
    .locals 5
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "ocspData"    # [B

    .line 743
    if-nez p3, :cond_0

    .line 744
    return-void

    .line 747
    :cond_0
    const/4 v0, 0x0

    .line 748
    .local v0, "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    new-instance v1, Ljava/util/ArrayList;

    .line 749
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 750
    .local v1, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    .line 751
    .local v3, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v3, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v4, :cond_1

    .line 752
    move-object v0, v3

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;

    .line 753
    goto :goto_1

    .line 755
    .end local v3    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_1
    goto :goto_0

    .line 757
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 761
    :try_start_0
    iget-object v2, p0, Lorg/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXRevocationChecker;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 764
    nop

    .line 766
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    goto :goto_2

    .line 762
    :catch_0
    move-exception v2

    .line 763
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    return-void

    .line 776
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_3
    :goto_2
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    .line 777
    invoke-virtual {p1, v1}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 778
    return-void
.end method

.method private static sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 786
    .local p0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 787
    return-object p0

    .line 789
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 790
    .local v0, "sortedAnchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    sget-object v1, Lorg/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 791
    return-object v0
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 6
    .param p0, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 260
    .local v0, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 261
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-object v0
.end method

.method private verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;
    .locals 8
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "clientAuth"    # Z
    .param p5, "ocspData"    # [B
    .param p6, "tlsSctData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/lang/String;",
            "Z[B[B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 655
    .local p1, "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p2, "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const-string v0, "Chain validation failed"

    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 658
    .local v1, "certPath":Ljava/security/cert/CertPath;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 663
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v2, "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 665
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/TrustAnchor;

    .line 666
    .local v5, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    nop

    .end local v5    # "anchor":Ljava/security/cert/TrustAnchor;
    goto :goto_0

    .line 669
    :cond_0
    iget-object v4, p0, Lorg/conscrypt/TrustManagerImpl;->pinManager:Lorg/conscrypt/CertPinManager;

    if-eqz v4, :cond_1

    .line 670
    iget-object v4, p0, Lorg/conscrypt/TrustManagerImpl;->pinManager:Lorg/conscrypt/CertPinManager;

    invoke-interface {v4, p3, v2}, Lorg/conscrypt/CertPinManager;->checkChainPinning(Ljava/lang/String;Ljava/util/List;)V

    .line 673
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 674
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v5}, Lorg/conscrypt/TrustManagerImpl;->checkBlocklist(Ljava/security/cert/X509Certificate;)V

    .line 675
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_1

    .line 678
    :cond_2
    if-nez p4, :cond_4

    iget-boolean v4, p0, Lorg/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    if-nez v4, :cond_3

    if-eqz p3, :cond_4

    .line 680
    invoke-static {p3}, Lorg/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 681
    :cond_3
    invoke-direct {p0, p3, v2, p5, p6}, Lorg/conscrypt/TrustManagerImpl;->checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V

    .line 684
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 686
    return-object v2

    .line 689
    :cond_5
    invoke-static {p1}, Lorg/conscrypt/ChainStrengthAnalyzer;->check(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 693
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 695
    .local v4, "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v6, Ljava/security/cert/PKIXParameters;

    invoke-direct {v6, v4}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 697
    .local v6, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v6, v5}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 698
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 699
    .local v5, "endPointCert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v6, v5, p5}, Lorg/conscrypt/TrustManagerImpl;->setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V

    .line 700
    new-instance v7, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    invoke-direct {v7, p4, v5, v3}, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lorg/conscrypt/TrustManagerImpl$1;)V

    invoke-virtual {v6, v7}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 702
    iget-object v3, p0, Lorg/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v3, v1, v6}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 707
    .end local v4    # "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v5    # "endPointCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "params":Ljava/security/cert/PKIXParameters;
    nop

    .line 711
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 712
    iget-object v3, p0, Lorg/conscrypt/TrustManagerImpl;->intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 714
    .end local v0    # "i":I
    :cond_6
    return-object v2

    .line 705
    :catch_0
    move-exception v3

    .line 706
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "clientAuth":Z
    .end local p5    # "ocspData":[B
    .end local p6    # "tlsSctData":[B
    throw v4

    .line 703
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "clientAuth":Z
    .restart local p5    # "ocspData":[B
    .restart local p6    # "tlsSctData":[B
    :catch_1
    move-exception v3

    .line 704
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "clientAuth":Z
    .end local p5    # "ocspData":[B
    .end local p6    # "tlsSctData":[B
    throw v4

    .line 659
    .end local v2    # "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "clientAuth":Z
    .restart local p5    # "ocspData":[B
    .restart local p6    # "tlsSctData":[B
    :cond_7
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Trust anchor for certification path not found."

    const/4 v5, -0x1

    invoke-direct {v2, v4, v3, v1, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "clientAuth":Z
    .end local p5    # "ocspData":[B
    .end local p6    # "tlsSctData":[B
    throw v0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 715
    .end local v1    # "certPath":Ljava/security/cert/CertPath;
    .restart local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "clientAuth":Z
    .restart local p5    # "ocspData":[B
    .restart local p6    # "tlsSctData":[B
    :catch_2
    move-exception v0

    .line 716
    .local v0, "e":Ljava/security/cert/CertificateException;
    sget-object v1, Lorg/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejected candidate cert chain due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 717
    throw v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 277
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 269
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 270
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    const/4 v1, 0x0

    .line 295
    .local v1, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v2, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_0

    .line 296
    move-object v2, p3

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 297
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lorg/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 298
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    .line 300
    .end local v2    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_0
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 301
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 306
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    .line 307
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v6, :cond_0

    .line 310
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 311
    return-void

    .line 308
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 324
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 380
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 316
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 317
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    .line 364
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    .line 370
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 964
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 1

    .line 1000
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    return-object v0
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;
    .locals 9
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    const/4 v1, 0x0

    .line 337
    .local v1, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v2, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_0

    .line 338
    move-object v2, p3

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 339
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lorg/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 340
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    .line 342
    .end local v2    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_0
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .locals 7
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 352
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    .line 353
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v6, :cond_0

    .line 356
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    .line 384
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0}, Lorg/conscrypt/TrustedCertificateIndex;->reset()V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lorg/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/conscrypt/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    .line 389
    :goto_0
    return-void
.end method

.method public setCTEnabledOverride(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1011
    iput-boolean p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    .line 1012
    return-void
.end method

.method public setCTPolicy(Lorg/conscrypt/ct/CTPolicy;)V
    .locals 0
    .param p1, "policy"    # Lorg/conscrypt/ct/CTPolicy;

    .line 1021
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctPolicy:Lorg/conscrypt/ct/CTPolicy;

    .line 1022
    return-void
.end method

.method public setCTVerifier(Lorg/conscrypt/ct/CTVerifier;)V
    .locals 0
    .param p1, "verifier"    # Lorg/conscrypt/ct/CTVerifier;

    .line 1016
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctVerifier:Lorg/conscrypt/ct/CTVerifier;

    .line 1017
    return-void
.end method

.method setHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .locals 0
    .param p1, "verifier"    # Lorg/conscrypt/ConscryptHostnameVerifier;

    .line 991
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    .line 992
    return-void
.end method
