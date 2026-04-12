.class public final Lorg/openjsse/sun/security/validator/SimpleValidator;
.super Lorg/openjsse/sun/security/validator/Validator;
.source "SimpleValidator.java"


# static fields
.field private static final NSCT_CODE_SIGNING_CA:Ljava/lang/String; = "object_signing_ca"

.field private static final NSCT_SSL_CA:Ljava/lang/String; = "ssl_ca"

.field static final OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

.field static final OID_BASIC_CONSTRAINTS:Ljava/lang/String; = "2.5.29.19"

.field static final OID_EKU_ANY_USAGE:Ljava/lang/String; = "2.5.29.37.0"

.field static final OID_EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field static final OID_KEY_USAGE:Ljava/lang/String; = "2.5.29.15"

.field static final OID_NETSCAPE_CERT_TYPE:Ljava/lang/String; = "2.16.840.1.113730.1.1"


# instance fields
.field private final trustedCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedX500Principals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    sput-object v0, Lorg/openjsse/sun/security/validator/SimpleValidator;->OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
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

    .line 99
    .local p2, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const-string v0, "Simple"

    invoke-direct {p0, v0, p1}, Lorg/openjsse/sun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object p2, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->trustedCerts:Ljava/util/Collection;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    .line 103
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 104
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 105
    .local v2, "principal":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 106
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez v3, :cond_0

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 110
    iget-object v4, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method private buildTrustedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 12
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    .local v0, "c":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 378
    aget-object v2, p1, v1

    .line 379
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v2}, Lorg/openjsse/sun/security/validator/SimpleValidator;->getTrustedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 380
    .local v3, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_0

    .line 381
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v4, Lorg/openjsse/sun/security/validator/SimpleValidator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    return-object v4

    .line 384
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "trustedCert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "i":I
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    .line 389
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 390
    .local v2, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 391
    .local v3, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v4, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 392
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v4, :cond_4

    .line 393
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 394
    .local v5, "matchedCert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v6

    .line 395
    .local v6, "certImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v6}, Lsun/security/x509/X509CertImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v7

    .line 396
    .local v7, "akid":Lsun/security/x509/KeyIdentifier;
    if-eqz v7, :cond_3

    .line 397
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 399
    .local v9, "sup":Ljava/security/cert/X509Certificate;
    invoke-static {v9}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v10

    .line 400
    .local v10, "supCert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getSubjectKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v11

    invoke-virtual {v7, v11}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 401
    move-object v5, v9

    .line 402
    goto :goto_2

    .line 404
    .end local v9    # "sup":Ljava/security/cert/X509Certificate;
    .end local v10    # "supCert":Lsun/security/x509/X509CertImpl;
    :cond_2
    goto :goto_1

    .line 407
    :cond_3
    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v8, Lorg/openjsse/sun/security/validator/SimpleValidator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/security/cert/X509Certificate;

    return-object v8

    .line 412
    .end local v5    # "matchedCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v7    # "akid":Lsun/security/x509/KeyIdentifier;
    :cond_4
    new-instance v5, Lsun/security/validator/ValidatorException;

    sget-object v6, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    invoke-direct {v5, v6}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;)V

    throw v5
.end method

.method private checkBasicConstraints(Ljava/security/cert/X509Certificate;Ljava/util/Set;I)I
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "maxPathLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 318
    .local p2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "2.5.29.19"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    .line 321
    .local v0, "constraints":I
    if-ltz v0, :cond_3

    .line 328
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    if-lez p3, :cond_0

    .line 334
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 330
    :cond_0
    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string v2, "Violated path length constraints"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 337
    :cond_1
    :goto_0
    if-le p3, v0, :cond_2

    .line 338
    move p3, v0

    .line 341
    :cond_2
    return p3

    .line 322
    :cond_3
    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string v2, "End user tried to act as a CA"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1
.end method

.method private checkExtensions(Ljava/security/cert/X509Certificate;I)I
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "maxPathLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 233
    .local v0, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 238
    :cond_0
    nop

    .line 239
    invoke-direct {p0, p1, v0, p2}, Lorg/openjsse/sun/security/validator/SimpleValidator;->checkBasicConstraints(Ljava/security/cert/X509Certificate;Ljava/util/Set;I)I

    move-result v1

    .line 242
    .local v1, "pathLenConstraint":I
    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/validator/SimpleValidator;->checkKeyUsage(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 245
    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/validator/SimpleValidator;->checkNetscapeCertType(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 247
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    return v1

    .line 248
    :cond_1
    new-instance v2, Lsun/security/validator/ValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate contains unknown critical extensions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v2
.end method

.method private checkKeyUsage(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 351
    .local p2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "2.5.29.15"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 353
    const-string v0, "2.5.29.37"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 357
    .local v0, "keyUsageInfo":[Z
    if-eqz v0, :cond_1

    .line 359
    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string v2, "Wrong key usage: expected keyCertSign"

    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 365
    :cond_1
    :goto_0
    return-void
.end method

.method private checkNetscapeCertType(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 258
    .local p2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    const-string v1, "tls client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "2.16.840.1.113730.1.1"

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    .line 261
    const-string v2, "tls server"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 269
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    const-string v2, "code signing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    .line 270
    const-string v2, "jce signing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_3
    :goto_0
    const-string v0, "object_signing_ca"

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 272
    :cond_4
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Invalid Netscape CertType extension for code signing CA certificate"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 262
    :cond_5
    :goto_1
    const-string v0, "ssl_ca"

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 268
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 281
    :goto_2
    return-void

    .line 263
    :cond_6
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Invalid Netscape CertType extension for SSL CA certificate"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0
.end method

.method static getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "type"    # Ljava/lang/String;

    .line 290
    :try_start_0
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 291
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    .line 292
    .local v0, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v2, Lorg/openjsse/sun/security/validator/SimpleValidator;->OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

    .line 293
    .local v2, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v3

    check-cast v3, Lsun/security/x509/NetscapeCertTypeExtension;

    .line 294
    .local v3, "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    if-nez v3, :cond_0

    .line 295
    return v1

    .line 297
    .end local v0    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    goto :goto_0

    .line 298
    .end local v3    # "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    :cond_1
    const-string v0, "2.16.840.1.113730.1.1"

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 299
    .local v0, "extVal":[B
    if-nez v0, :cond_2

    .line 300
    return v1

    .line 302
    :cond_2
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 303
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    .line 304
    .local v2, "encoded":[B
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v3

    .line 305
    invoke-virtual {v3}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v3

    move-object v2, v3

    .line 306
    new-instance v3, Lsun/security/x509/NetscapeCertTypeExtension;

    invoke-direct {v3, v2}, Lsun/security/x509/NetscapeCertTypeExtension;-><init>([B)V

    .line 308
    .end local v0    # "extVal":[B
    .end local v1    # "in":Lsun/security/util/DerInputStream;
    .end local v2    # "encoded":[B
    .restart local v3    # "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    :goto_0
    invoke-virtual {v3, p1}, Lsun/security/x509/NetscapeCertTypeExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 309
    .local v0, "val":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 310
    .end local v0    # "val":Ljava/lang/Boolean;
    .end local v3    # "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method private getTrustedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 422
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 423
    .local v0, "certSubjectName":Ljava/security/Principal;
    iget-object v1, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 424
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 425
    return-object v2

    .line 428
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 429
    .local v3, "certIssuerName":Ljava/security/Principal;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 431
    .local v4, "certPublicKey":Ljava/security/PublicKey;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 432
    .local v6, "mycert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 433
    return-object p1

    .line 435
    :cond_1
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 436
    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 439
    goto :goto_0

    .line 443
    :cond_3
    return-object v6

    .line 445
    .end local v6    # "mycert":Ljava/security/cert/X509Certificate;
    :cond_4
    return-object v2
.end method


# virtual methods
.method engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 16
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

    .line 130
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local p3, "responseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    const-string v3, "Untrusted certificate: "

    if-eqz v0, :cond_7

    array-length v4, v0

    if-eqz v4, :cond_7

    .line 136
    invoke-direct/range {p0 .. p1}, Lorg/openjsse/sun/security/validator/SimpleValidator;->buildTrustedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 139
    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .local v4, "chain":[Ljava/security/cert/X509Certificate;
    iget-object v0, v1, Lorg/openjsse/sun/security/validator/SimpleValidator;->validationDate:Ljava/util/Date;

    .line 140
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 141
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v0, v5

    goto :goto_0

    .line 140
    :cond_0
    move-object v5, v0

    .line 145
    .end local v0    # "date":Ljava/util/Date;
    .local v5, "date":Ljava/util/Date;
    :goto_0
    new-instance v0, Lsun/security/provider/certpath/UntrustedChecker;

    invoke-direct {v0}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    move-object v6, v0

    .line 148
    .local v6, "untrustedChecker":Lsun/security/provider/certpath/UntrustedChecker;
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v7, v4, v0

    .line 150
    .local v7, "anchorCert":Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-virtual {v6, v7}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_3

    .line 155
    nop

    .line 158
    new-instance v0, Ljava/security/cert/TrustAnchor;

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v9, v0

    .line 159
    .local v9, "anchor":Ljava/security/cert/TrustAnchor;
    new-instance v0, Lsun/security/provider/certpath/AlgorithmChecker;

    iget-object v10, v1, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/lang/String;)V

    move-object v10, v0

    .line 163
    .local v10, "defaultAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v0, 0x0

    .line 164
    .local v0, "appAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    if-eqz v2, :cond_1

    .line 165
    new-instance v11, Lsun/security/provider/certpath/AlgorithmChecker;

    iget-object v12, v1, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    invoke-direct {v11, v9, v2, v8, v12}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;Ljava/util/Date;Ljava/lang/String;)V

    move-object v0, v11

    move-object v8, v0

    goto :goto_1

    .line 164
    :cond_1
    move-object v8, v0

    .line 171
    .end local v0    # "appAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .local v8, "appAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    :goto_1
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    .line 172
    .local v0, "maxPathLength":I
    array-length v11, v4

    add-int/lit8 v11, v11, -0x2

    move v12, v11

    move v11, v0

    .end local v0    # "maxPathLength":I
    .local v11, "maxPathLength":I
    .local v12, "i":I
    :goto_2
    if-ltz v12, :cond_6

    .line 173
    add-int/lit8 v0, v12, 0x1

    aget-object v13, v4, v0

    .line 174
    .local v13, "issuerCert":Ljava/security/cert/X509Certificate;
    aget-object v14, v4, v12

    .line 180
    .local v14, "cert":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 185
    nop

    .line 191
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 192
    if-eqz v8, :cond_2

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    :cond_2
    nop

    .line 201
    iget-object v0, v1, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    const-string v15, "code signing"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lorg/openjsse/sun/security/validator/SimpleValidator;->variant:Ljava/lang/String;

    .line 202
    const-string v15, "jce signing"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    invoke-virtual {v14, v5}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 207
    :cond_3
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 208
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v15

    .line 207
    invoke-virtual {v0, v15}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    :try_start_3
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 219
    nop

    .line 222
    if-eqz v12, :cond_4

    .line 223
    invoke-direct {v1, v14, v11}, Lorg/openjsse/sun/security/validator/SimpleValidator;->checkExtensions(Ljava/security/cert/X509Certificate;I)I

    move-result v0

    move v11, v0

    .line 172
    .end local v13    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local v14    # "cert":Ljava/security/cert/X509Certificate;
    :cond_4
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 216
    .restart local v13    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local v14    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lsun/security/validator/ValidatorException;

    sget-object v15, Lsun/security/validator/ValidatorException;->T_SIGNATURE_ERROR:Ljava/lang/Object;

    invoke-direct {v3, v15, v14, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v3

    .line 209
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_5
    new-instance v0, Lsun/security/validator/ValidatorException;

    sget-object v3, Lsun/security/validator/ValidatorException;->T_NAME_CHAINING:Ljava/lang/Object;

    invoke-direct {v0, v3, v14}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 195
    :catch_1
    move-exception v0

    .line 196
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lsun/security/validator/ValidatorException;

    sget-object v15, Lsun/security/validator/ValidatorException;->T_ALGORITHM_DISABLED:Ljava/lang/Object;

    invoke-direct {v3, v15, v14, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v3

    .line 181
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_2
    move-exception v0

    .line 182
    .restart local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v15, Lsun/security/validator/ValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lsun/security/validator/ValidatorException;->T_UNTRUSTED_CERT:Ljava/lang/Object;

    invoke-direct {v15, v1, v3, v14, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v15

    .line 227
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v12    # "i":I
    .end local v13    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local v14    # "cert":Ljava/security/cert/X509Certificate;
    :cond_6
    return-object v4

    .line 151
    .end local v8    # "appAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .end local v9    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v10    # "defaultAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .end local v11    # "maxPathLength":I
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 152
    .restart local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v1, Lsun/security/validator/ValidatorException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lsun/security/validator/ValidatorException;->T_UNTRUSTED_CERT:Ljava/lang/Object;

    invoke-direct {v1, v3, v8, v7, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v4    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "untrustedChecker":Lsun/security/provider/certpath/UntrustedChecker;
    .end local v7    # "anchorCert":Ljava/security/cert/X509Certificate;
    .restart local p1    # "chain":[Ljava/security/cert/X509Certificate;
    :cond_7
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v3, "null or zero-length certificate chain"

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 117
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/SimpleValidator;->trustedCerts:Ljava/util/Collection;

    return-object v0
.end method
