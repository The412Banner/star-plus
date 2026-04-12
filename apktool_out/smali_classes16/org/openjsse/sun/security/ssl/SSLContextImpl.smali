.class public abstract Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLSContext;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS12Context;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS10Context;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContext;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLSContext;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS13Context;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS12Context;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS11Context;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS10Context;,
        Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;
    }
.end annotation


# static fields
.field private static final clientCustomizedCipherSuites:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private static final serverCustomizedCipherSuites:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientCache:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

.field private final clientEnableStapling:Z

.field private final ephemeralKeyManager:Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;

.field private volatile helloCookieManagerBuilder:Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;

.field private isInitialized:Z

.field private keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverCache:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

.field private final serverEnableStapling:Z

.field private volatile statusResponseManager:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

.field private trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    nop

    .line 107
    const-string v0, "jdk.tls.client.cipherSuites"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getCustomizedCipherSuites(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->clientCustomizedCipherSuites:Ljava/util/Collection;

    .line 108
    nop

    .line 109
    const-string v0, "jdk.tls.server.cipherSuites"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getCustomizedCipherSuites(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->serverCustomizedCipherSuites:Ljava/util/Collection;

    .line 108
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 102
    const-string v0, "jdk.tls.client.enableStatusRequestExtension"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->clientEnableStapling:Z

    .line 104
    const-string v0, "jdk.tls.server.enableStatusRequestExtension"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->serverEnableStapling:Z

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->ephemeralKeyManager:Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;

    .line 115
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->clientCache:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 116
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->serverCache:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 117
    return-void
.end method

.method static synthetic access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 87
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getAvailableProtocols([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .line 87
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getApplicableSupportedCipherSuites(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Z

    .line 87
    invoke-static {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getApplicableEnabledCipherSuites(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private chooseKeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509ExtendedKeyManager;
    .locals 4
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_6

    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 193
    aget-object v1, p1, v0

    .line 194
    .local v1, "km":Ljavax/net/ssl/KeyManager;
    instance-of v2, v1, Ljavax/net/ssl/X509KeyManager;

    if-nez v2, :cond_0

    .line 195
    nop

    .line 192
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .restart local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    instance-of v2, v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 207
    :cond_1
    new-instance v2, Ljava/security/KeyManagementException;

    const-string v3, "FIPS mode: only OpenJSSE KeyManagers may be used"

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_2
    :goto_1
    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/X509ExtendedKeyManager;

    return-object v2

    .line 211
    :cond_3
    instance-of v2, v1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v2, :cond_4

    .line 212
    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/X509ExtendedKeyManager;

    return-object v2

    .line 215
    :cond_4
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_5

    const-string v2, "ssl,sslctx"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "X509KeyManager passed to SSLContext.init():  need an X509ExtendedKeyManager for SSLEngine use"

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_5
    new-instance v2, Lorg/openjsse/sun/security/ssl/AbstractKeyManagerWrapper;

    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v2, v3}, Lorg/openjsse/sun/security/ssl/AbstractKeyManagerWrapper;-><init>(Ljavax/net/ssl/X509KeyManager;)V

    return-object v2

    .line 224
    .end local v0    # "i":I
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_6
    sget-object v0, Lorg/openjsse/sun/security/ssl/DummyX509KeyManager;->INSTANCE:Ljavax/net/ssl/X509ExtendedKeyManager;

    return-object v0
.end method

.method private chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 3
    .param p1, "tm"    # [Ljavax/net/ssl/TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_4

    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 170
    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_3

    .line 171
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    new-instance v1, Ljava/security/KeyManagementException;

    const-string v2, "FIPS mode: only OpenJSSE TrustManagers may be used"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1
    :goto_1
    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v1, :cond_2

    .line 178
    aget-object v1, p1, v0

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    return-object v1

    .line 180
    :cond_2
    new-instance v1, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;

    aget-object v2, p1, v0

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    return-object v1

    .line 169
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_4
    sget-object v0, Lorg/openjsse/sun/security/ssl/DummyX509TrustManager;->INSTANCE:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method private static getApplicableCipherSuites(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 422
    .local p0, "allowedCipherSuites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 423
    .local v0, "suites":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 424
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 425
    .local v2, "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    goto :goto_0

    .line 429
    :cond_0
    const/4 v3, 0x0

    .line 430
    .local v3, "isSupported":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "ssl,sslctx,verbose"

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 431
    .local v5, "protocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-virtual {v2, v5}, Lorg/openjsse/sun/security/ssl/CipherSuite;->supports(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 432
    invoke-virtual {v8}, Lorg/openjsse/sun/security/ssl/SSLCipher;->isAvailable()Z

    move-result v8

    if-nez v8, :cond_2

    .line 433
    goto :goto_1

    .line 436
    :cond_2
    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->DEFAULT:Ljava/security/AlgorithmConstraints;

    sget-object v8, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 437
    invoke-static {v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    iget-object v9, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    .line 436
    const/4 v10, 0x0

    invoke-interface {v4, v8, v9, v10}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 439
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 440
    const/4 v3, 0x1

    goto :goto_2

    .line 441
    :cond_3
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_4

    .line 442
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore disabled cipher suite: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v4, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    .end local v5    # "protocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_5

    .line 451
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore unsupported cipher suite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    .end local v2    # "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .end local v3    # "isSupported":Z
    :cond_5
    goto/16 :goto_0

    .line 458
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private static getApplicableEnabledCipherSuites(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p1, "isClient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;Z)",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 399
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    if-eqz p1, :cond_0

    .line 400
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->clientCustomizedCipherSuites:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->clientCustomizedCipherSuites:Ljava/util/Collection;

    invoke-static {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getApplicableCipherSuites(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->serverCustomizedCipherSuites:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->serverCustomizedCipherSuites:Ljava/util/Collection;

    invoke-static {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getApplicableCipherSuites(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 412
    :cond_1
    invoke-static {}, Lorg/openjsse/sun/security/ssl/CipherSuite;->defaultCipherSuites()Ljava/util/Collection;

    move-result-object v0

    .line 411
    invoke-static {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getApplicableCipherSuites(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getApplicableSupportedCipherSuites(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 389
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/CipherSuite;->allowedCipherSuites()Ljava/util/Collection;

    move-result-object v0

    .line 388
    invoke-static {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getApplicableCipherSuites(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getAvailableProtocols([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;
    .locals 5
    .param p0, "protocolCandidates"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 527
    .local v0, "availableProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 529
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 530
    .local v3, "p":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-boolean v4, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isAvailable:Z

    if-eqz v4, :cond_0

    .line 531
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    .end local v3    # "p":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    :cond_1
    return-object v0
.end method

.method private static getCustomizedCipherSuites(Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 467
    invoke-static {p0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "property":Ljava/lang/String;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v2, "ssl,sslctx"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System property "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is set to \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x22

    if-ne v1, v5, :cond_1

    .line 476
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 477
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 481
    :cond_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 482
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "cipherSuiteNames":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 485
    .local v4, "cipherSuites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_6

    .line 486
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 487
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 488
    goto :goto_1

    .line 493
    :cond_2
    :try_start_0
    aget-object v6, v1, v5

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/CipherSuite;->nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .local v6, "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    nop

    .line 504
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 505
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 507
    :cond_3
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_5

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The current installed providers do not support cipher suite: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 494
    .end local v6    # "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :catch_0
    move-exception v6

    .line 495
    .local v6, "iae":Ljava/lang/IllegalArgumentException;
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown or unsupported cipher suite name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    :cond_4
    nop

    .line 485
    .end local v6    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 515
    .end local v5    # "i":I
    :cond_6
    return-object v4

    .line 518
    .end local v1    # "cipherSuiteNames":[Ljava/lang/String;
    .end local v4    # "cipherSuites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method abstract createSSLEngineImpl()Lorg/openjsse/javax/net/ssl/SSLEngine;
.end method

.method abstract createSSLEngineImpl(Ljava/lang/String;I)Lorg/openjsse/javax/net/ssl/SSLEngine;
.end method

.method protected bridge synthetic engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineCreateSSLEngine()Lorg/openjsse/javax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineCreateSSLEngine(Ljava/lang/String;I)Lorg/openjsse/javax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method protected engineCreateSSLEngine()Lorg/openjsse/javax/net/ssl/SSLEngine;
    .locals 2

    .line 232
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->createSSLEngineImpl()Lorg/openjsse/javax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineCreateSSLEngine(Ljava/lang/String;I)Lorg/openjsse/javax/net/ssl/SSLEngine;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 240
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->createSSLEngineImpl(Ljava/lang/String;I)Lorg/openjsse/javax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->clientCache:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    return-object v0
.end method

.method protected engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->serverCache:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    return-object v0
.end method

.method protected engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    .line 256
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V

    return-object v0

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .line 248
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isInitialized:Z

    .line 123
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->chooseKeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 125
    if-nez p2, :cond_0

    .line 128
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 129
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 130
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    .line 133
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 135
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 137
    if-nez p3, :cond_1

    .line 138
    invoke-static {}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_2

    .line 140
    :cond_1
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {p3}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 142
    :cond_2
    new-instance v0, Ljava/security/KeyManagementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIPS mode: SecureRandom must be from provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    .line 144
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_3
    :goto_1
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 155
    :goto_2
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v2, "ssl,sslctx"

    if-eqz v1, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    const-string v1, "trigger seeding of SecureRandom"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_4
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    .line 159
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_5

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    const-string v1, "done seeding of SecureRandom"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isInitialized:Z

    .line 164
    return-void
.end method

.method abstract getClientDefaultCipherSuites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end method

.method abstract getClientDefaultProtocolVersions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end method

.method getDefaultCipherSuites(Z)Ljava/util/List;
    .locals 1
    .param p1, "roleIsServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getServerDefaultCipherSuites()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getClientDefaultCipherSuites()Ljava/util/List;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0
.end method

.method getDefaultProtocolVersions(Z)Ljava/util/List;
    .locals 1
    .param p1, "roleIsServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getServerDefaultProtocolVersions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getClientDefaultProtocolVersions()Ljava/util/List;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0
.end method

.method getEphemeralKeyManager()Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->ephemeralKeyManager:Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;

    return-object v0
.end method

.method getHelloCookieManager(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/HelloCookieManager;
    .locals 2
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 290
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->helloCookieManagerBuilder:Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;

    if-nez v0, :cond_1

    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->helloCookieManagerBuilder:Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->helloCookieManagerBuilder:Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;

    .line 296
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 299
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->helloCookieManagerBuilder:Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/HelloCookieManager;

    move-result-object v0

    return-object v0
.end method

.method getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method abstract getServerDefaultCipherSuites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end method

.method abstract getServerDefaultProtocolVersions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end method

.method getStatusResponseManager()Lorg/openjsse/sun/security/ssl/StatusResponseManager;
    .locals 2

    .line 303
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->serverEnableStapling:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->statusResponseManager:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    if-nez v0, :cond_2

    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->statusResponseManager:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    if-nez v0, :cond_1

    .line 306
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl,sslctx"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "Initializing StatusResponseManager"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->statusResponseManager:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    .line 312
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 315
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->statusResponseManager:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    return-object v0
.end method

.method abstract getSupportedCipherSuites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end method

.method abstract getSupportedProtocolVersions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end method

.method getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    return-object v0
.end method

.method getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method abstract isDTLS()Z
.end method

.method isDefaultCipherSuiteList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;)Z"
        }
    .end annotation

    .line 365
    .local p1, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getServerDefaultCipherSuites()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getClientDefaultCipherSuites()Ljava/util/List;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 365
    :goto_1
    return v0
.end method

.method isDefaultProtocolVesions(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)Z"
        }
    .end annotation

    .line 356
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getServerDefaultProtocolVersions()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getClientDefaultProtocolVersions()Ljava/util/List;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 356
    :goto_1
    return v0
.end method

.method isStaplingEnabled(Z)Z
    .locals 1
    .param p1, "isClient"    # Z

    .line 378
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->clientEnableStapling:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->serverEnableStapling:Z

    :goto_0
    return v0
.end method
