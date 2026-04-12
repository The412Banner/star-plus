.class public final Lorg/openjsse/sun/security/validator/PKIXValidator;
.super Lorg/openjsse/sun/security/validator/Validator;
.source "PKIXValidator.java"


# static fields
.field private static final ALLOW_NON_CA_ANCHOR:Z

.field private static final checkTLSRevocation:Z


# instance fields
.field private certPathLength:I

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private final parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

.field private final plugin:Z

.field private final trustedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedSubjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string v1, "com.sun.net.ssl.checkRevocation"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/validator/PKIXValidator;->checkTLSRevocation:Z

    .line 98
    invoke-static {}, Lorg/openjsse/sun/security/validator/PKIXValidator;->allowNonCaAnchor()Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/validator/PKIXValidator;->ALLOW_NON_CA_ANCHOR:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 4
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/cert/PKIXBuilderParameters;

    .line 142
    const-string v0, "PKIX"

    invoke-direct {p0, v0, p1}, Lorg/openjsse/sun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->certPathLength:I

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    .line 144
    invoke-virtual {p2}, Ljava/security/cert/PKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 145
    .local v1, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 146
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 147
    iget-object v3, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v1    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    iput-object p2, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    .line 153
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .line 158
    const-string v0, "plugin code signing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->plugin:Z

    .line 160
    invoke-direct {p0}, Lorg/openjsse/sun/security/validator/PKIXValidator;->setTrustedSubjects()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    .line 161
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p2, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const-string v0, "PKIX"

    invoke-direct {p0, v0, p1}, Lorg/openjsse/sun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->certPathLength:I

    .line 117
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v0, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 123
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    invoke-direct {v4, v2, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_1

    .line 127
    :cond_1
    :try_start_0
    new-instance v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v1, v0, v3}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    .line 128
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    nop

    .line 135
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/validator/PKIXValidator;->setDefaultParameters(Ljava/lang/String;)V

    .line 136
    const-string v1, "plugin code signing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->plugin:Z

    .line 138
    invoke-direct {p0}, Lorg/openjsse/sun/security/validator/PKIXValidator;->setTrustedSubjects()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    .line 139
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 129
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    .line 130
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static addResponses(Ljava/security/cert/PKIXBuilderParameters;[Ljava/security/cert/X509Certificate;Ljava/util/List;)V
    .locals 7
    .param p0, "pkixParams"    # Ljava/security/cert/PKIXBuilderParameters;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/PKIXBuilderParameters;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 488
    .local p2, "responseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Ljava/security/cert/PKIXBuilderParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 493
    invoke-virtual {p0}, Ljava/security/cert/PKIXBuilderParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 496
    .local v1, "checkerList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    .line 497
    .local v3, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v3, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v4, :cond_0

    .line 498
    move-object v2, v3

    check-cast v2, Ljava/security/cert/PKIXRevocationChecker;

    move-object v0, v2

    .line 499
    goto :goto_1

    .line 501
    .end local v3    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_0
    goto :goto_0

    .line 504
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 505
    const-string v2, "PKIX"

    .line 506
    invoke-static {v2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXRevocationChecker;

    move-object v0, v2

    .line 507
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_2
    nop

    .line 516
    invoke-virtual {v0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponses()Ljava/util/Map;

    move-result-object v2

    .line 517
    .local v2, "responseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    array-length v3, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->min(II)I

    move-result v3

    .line 518
    .local v3, "limit":I
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 519
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 520
    .local v5, "respBytes":[B
    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    aget-object v6, p1, v4

    .line 521
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 522
    aget-object v6, p1, v4

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .end local v5    # "respBytes":[B
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 528
    .end local v4    # "idx":I
    :cond_4
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    .line 529
    invoke-virtual {p0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setCertPathCheckers(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v0    # "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    .end local v1    # "checkerList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v2    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v3    # "limit":I
    goto :goto_3

    .line 530
    :catch_0
    move-exception v0

    .line 537
    :cond_5
    :goto_3
    return-void
.end method

.method private static allowNonCaAnchor()Z
    .locals 2

    .line 100
    nop

    .line 101
    const-string v0, "jdk.security.allowNonCaAnchor"

    invoke-static {v0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private doBuild([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/PKIXBuilderParameters;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 443
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-direct {p0, p3}, Lorg/openjsse/sun/security/validator/PKIXValidator;->setDate(Ljava/security/cert/PKIXBuilderParameters;)V

    .line 446
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 447
    .local v0, "selector":Ljava/security/cert/X509CertSelector;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 448
    invoke-virtual {p3, v0}, Ljava/security/cert/PKIXBuilderParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v1, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 454
    if-eqz p2, :cond_0

    .line 455
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 457
    :cond_0
    const-string v2, "Collection"

    new-instance v3, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v3, v1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v2

    .line 459
    .local v2, "store":Ljava/security/cert/CertStore;
    invoke-virtual {p3, v2}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 462
    const-string v3, "PKIX"

    invoke-static {v3}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v3

    .line 463
    .local v3, "builder":Ljava/security/cert/CertPathBuilder;
    nop

    .line 464
    invoke-virtual {v3, p3}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 466
    .local v4, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathBuilderResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/validator/PKIXValidator;->toArray(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 467
    .end local v0    # "selector":Ljava/security/cert/X509CertSelector;
    .end local v1    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "store":Ljava/security/cert/CertStore;
    .end local v3    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v4    # "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lsun/security/validator/ValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PKIX path building failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 382
    :try_start_0
    invoke-direct {p0, p2}, Lorg/openjsse/sun/security/validator/PKIXValidator;->setDate(Ljava/security/cert/PKIXBuilderParameters;)V

    .line 385
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    .line 387
    .local v0, "validator":Ljava/security/cert/CertPathValidator;
    array-length v1, p1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    .line 388
    .local v1, "newChain":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 389
    new-instance v3, Lsun/security/x509/X509CertImpl;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    aput-object v3, v1, v2

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v2

    .line 392
    .local v2, "path":Ljava/security/cert/CertPath;
    array-length v3, p1

    iput v3, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->certPathLength:I

    .line 393
    nop

    .line 394
    invoke-virtual {v0, v2, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 396
    .local v3, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/validator/PKIXValidator;->toArray(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 397
    .end local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .end local v1    # "newChain":[Ljava/security/cert/X509Certificate;
    .end local v2    # "path":Ljava/security/cert/CertPath;
    .end local v3    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lsun/security/validator/ValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PKIX path validation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 399
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSignatureValid(Ljava/util/List;Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p2, "sub"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")Z"
        }
    .end annotation

    .line 336
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    iget-boolean v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->plugin:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 337
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 339
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p2, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return v1

    .line 341
    :catch_0
    move-exception v3

    .line 342
    .local v3, "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 345
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 347
    :cond_1
    return v1
.end method

.method private setDate(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1
    .param p1, "params"    # Ljava/security/cert/PKIXBuilderParameters;

    .line 373
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->validationDate:Ljava/util/Date;

    .line 374
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p1, v0}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    .line 377
    :cond_0
    return-void
.end method

.method private setDefaultParameters(Ljava/lang/String;)V
    .locals 2
    .param p1, "variant"    # Ljava/lang/String;

    .line 211
    const-string v0, "tls server"

    if-eq p1, v0, :cond_1

    const-string v0, "tls client"

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    goto :goto_1

    .line 213
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    sget-boolean v1, Lorg/openjsse/sun/security/validator/PKIXValidator;->checkTLSRevocation:Z

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 217
    :goto_1
    return-void
.end method

.method private setTrustedSubjects()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "subjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/security/auth/x500/X500Principal;Ljava/util/List<Ljava/security/PublicKey;>;>;"
    iget-object v1, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 174
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 176
    .local v3, "dn":Ljavax/security/auth/x500/X500Principal;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    goto :goto_1

    .line 179
    .end local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .restart local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_1
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "dn":Ljavax/security/auth/x500/X500Principal;
    .end local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    goto :goto_0

    .line 185
    :cond_1
    return-object v0
.end method

.method private static toArray(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "path"    # Ljava/security/cert/CertPath;
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 353
    .local v0, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    .line 358
    invoke-static {v0}, Lorg/openjsse/sun/security/validator/PKIXValidator;->verifyTrustAnchor(Ljava/security/cert/X509Certificate;)V

    .line 360
    nop

    .line 361
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 362
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 363
    .local v2, "chain":[Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 364
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-object v0, v2, v3

    .line 365
    return-object v2

    .line 354
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v2    # "chain":[Ljava/security/cert/X509Certificate;
    :cond_0
    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string v2, "TrustAnchor must be specified as certificate"

    invoke-direct {v1, v2}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static verifyTrustAnchor(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p0, "trustedCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/validator/ValidatorException;
        }
    .end annotation

    .line 410
    sget-boolean v0, Lorg/openjsse/sun/security/validator/PKIXValidator;->ALLOW_NON_CA_ANCHOR:Z

    if-eqz v0, :cond_0

    .line 411
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 416
    return-void

    .line 420
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "TrustAnchor with subject \""

    if-eq v0, v1, :cond_4

    .line 429
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 430
    .local v0, "keyUsageBits":[Z
    if-eqz v0, :cond_3

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 431
    :cond_2
    new-instance v1, Lsun/security/validator/ValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 433
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not have keyCertSign bit set in KeyUsage extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_3
    :goto_0
    return-void

    .line 421
    .end local v0    # "keyUsageBits":[Z
    :cond_4
    new-instance v0, Lsun/security/validator/ValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a CA certificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p5, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/security/AlgorithmConstraints;",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 234
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local p3, "responseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz p1, :cond_b

    array-length v0, p1

    if-eqz v0, :cond_b

    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, "pkixParameters":Ljava/security/cert/PKIXBuilderParameters;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lsun/security/provider/certpath/PKIXExtendedParameters;

    iget-object v3, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    .line 243
    invoke-virtual {v3}, Ljava/security/cert/PKIXBuilderParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXBuilderParameters;

    instance-of v4, p5, Ljava/security/Timestamp;

    if-eqz v4, :cond_0

    move-object v4, p5

    check-cast v4, Ljava/security/Timestamp;

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget-object v5, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->variant:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lsun/security/provider/certpath/PKIXExtendedParameters;-><init>(Ljava/security/cert/PKIXBuilderParameters;Ljava/security/Timestamp;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 249
    goto :goto_1

    .line 247
    :catch_0
    move-exception v2

    .line 252
    :goto_1
    if-eqz p4, :cond_1

    .line 253
    new-instance v2, Lsun/security/provider/certpath/AlgorithmChecker;

    iget-object v3, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->variant:Ljava/lang/String;

    invoke-direct {v2, p4, v3}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXBuilderParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 258
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 259
    invoke-static {v0, p1, p3}, Lorg/openjsse/sun/security/validator/PKIXValidator;->addResponses(Ljava/security/cert/PKIXBuilderParameters;[Ljava/security/cert/X509Certificate;Ljava/util/List;)V

    .line 264
    :cond_2
    const/4 v2, 0x0

    .line 265
    .local v2, "prevIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_7

    .line 266
    aget-object v4, p1, v3

    .line 267
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 268
    .local v7, "dn":Ljavax/security/auth/x500/X500Principal;
    if-eqz v3, :cond_3

    invoke-virtual {v7, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 270
    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/validator/PKIXValidator;->doBuild([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 279
    :cond_3
    iget-object v8, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    .line 280
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    .line 281
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 282
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 281
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    .line 291
    :cond_4
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 265
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "dn":Ljavax/security/auth/x500/X500Principal;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 283
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "dn":Ljavax/security/auth/x500/X500Principal;
    :cond_5
    :goto_3
    if-nez v3, :cond_6

    .line 284
    new-array v1, v6, [Ljava/security/cert/X509Certificate;

    aget-object v6, p1, v5

    aput-object v6, v1, v5

    return-object v1

    .line 287
    :cond_6
    new-array v1, v3, [Ljava/security/cert/X509Certificate;

    .line 288
    .local v1, "newChain":[Ljava/security/cert/X509Certificate;
    invoke-static {p1, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    invoke-direct {p0, v1, v0}, Lorg/openjsse/sun/security/validator/PKIXValidator;->doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    return-object v5

    .line 295
    .end local v1    # "newChain":[Ljava/security/cert/X509Certificate;
    .end local v3    # "i":I
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "dn":Ljavax/security/auth/x500/X500Principal;
    :cond_7
    array-length v3, p1

    sub-int/2addr v3, v6

    aget-object v3, p1, v3

    .line 296
    .local v3, "last":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 297
    .local v4, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 298
    .local v7, "subject":Ljavax/security/auth/x500/X500Principal;
    iget-object v8, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    .line 299
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v8, v3}, Lorg/openjsse/sun/security/validator/PKIXValidator;->isSignatureValid(Ljava/util/List;Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 300
    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/validator/PKIXValidator;->doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 304
    :cond_8
    iget-boolean v8, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->plugin:Z

    if-eqz v8, :cond_a

    .line 308
    array-length v8, p1

    if-le v8, v6, :cond_9

    .line 309
    array-length v8, p1

    sub-int/2addr v8, v6

    new-array v8, v8, [Ljava/security/cert/X509Certificate;

    .line 311
    .local v8, "newChain":[Ljava/security/cert/X509Certificate;
    array-length v9, v8

    invoke-static {p1, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    :try_start_1
    new-instance v5, Ljava/security/cert/TrustAnchor;

    array-length v9, p1

    sub-int/2addr v9, v6

    aget-object v6, p1, v9

    invoke-direct {v5, v6, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 316
    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    nop

    .line 322
    invoke-direct {p0, v8, v0}, Lorg/openjsse/sun/security/validator/PKIXValidator;->doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    goto :goto_4

    .line 318
    :catch_1
    move-exception v1

    .line 320
    .local v1, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v5, Ljava/security/cert/CertificateException;

    invoke-direct {v5, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 326
    .end local v1    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .end local v8    # "newChain":[Ljava/security/cert/X509Certificate;
    :cond_9
    :goto_4
    new-instance v1, Lsun/security/validator/ValidatorException;

    sget-object v5, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    invoke-direct {v1, v5}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 331
    :cond_a
    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/validator/PKIXValidator;->doBuild([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 235
    .end local v0    # "pkixParameters":Ljava/security/cert/PKIXBuilderParameters;
    .end local v2    # "prevIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "last":Ljava/security/cert/X509Certificate;
    .end local v4    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .end local v7    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_b
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "null or zero-length certificate chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertPathLength()I
    .locals 1

    .line 203
    iget v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->certPathLength:I

    return v0
.end method

.method public getParameters()Ljava/security/cert/PKIXBuilderParameters;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    return-object v0
.end method

.method public getTrustedCertificates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    return-object v0
.end method
