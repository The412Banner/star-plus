.class final Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;
.super Ljava/lang/Object;
.source "SymantecTLSPolicy.java"


# static fields
.field private static final APRIL_16_2019:Ljava/time/LocalDate;

.field private static final DECEMBER_31_2019:Ljava/time/LocalDate;

.field private static final EXEMPT_SUBCAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field private static final FINGERPRINTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 46
    sget-object v0, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    .line 47
    const/16 v1, 0x7e3

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->DECEMBER_31_2019:Ljava/time/LocalDate;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->EXEMPT_SUBCAS:Ljava/util/Map;

    .line 54
    sget-object v0, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->EXEMPT_SUBCAS:Ljava/util/Map;

    const-string v2, "AC2B922ECFD5E01711772FEA8ED372DE9D1E2245FCE3F57A9CDBEC77296A424B"

    sget-object v3, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->DECEMBER_31_2019:Ljava/time/LocalDate;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->EXEMPT_SUBCAS:Ljava/util/Map;

    const-string v2, "A4FE7C7F15155F3F0AEF7AAA83CF6E06DEB97CA3F909DF920AC1490882D488ED"

    sget-object v3, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->DECEMBER_31_2019:Ljava/time/LocalDate;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    const/16 v2, 0x10

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "FF856A2D251DCD88D36656F450126798CFABAADE40799C722DE4D2B5DB36A73A"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "37D51006C512EAAB626421F1EC8C92013FC5F82AE98EE533EB4619B8DEB4D06C"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "5EDB7AC43B82A06A8761E8D7BE4979EBF2611F7DD79BF91C1C6B566A219ED766"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "B478B812250DF878635C2AA7EC7D155EAA625EE82916E2CD294361886CD1FBD4"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "A0459B9F63B22559F5FA5D4C6DB3F9F72FF19342033578F073BF1D1B46CBB912"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "8D722F81A9C113C0791DF136A2966DB26C950A971DB46B4199F4EA54B78BFB9F"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "A4310D50AF18A6447190372A86AFAF8B951FFB431D837F1E5688B45971ED1557"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "4B03F45807AD70F21BFC2CAE71C9FDE4604C064CF5FFB686BAE5DBAAD7FDD34C"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "3F9F27D583204B9E09C8A3D2066C4B57D3A2479C3693650880505698105DBCE9"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "3A43E220FE7F3EA9653D1E21742EAC2B75C20FD8980305BC502CAF8C2D9B41A1"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "A4B6B3996FC2F306B3FD8681BD63413D8C5009CC4FA329C2CCF0E2FA1B140305"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "83CE3C1229688A593D485F81973C0F9195431EDA37CC5E36430E79C7A888638B"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "EB04CF5EB1F39AFA762F2BB120F296CBA520C1B97DB1589565B81CB9A17B7244"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "69DDD7EA90BB57C93E135DC85EA6FCD5480B603239BDC454FC758B2A26CF7F79"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "9ACFAB7E43C8D880D06B262A94DEEEE4B4659989C3D0CAF19BAF6405E41AB7DF"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "2399561127A57125DE8CEFEA610DDF2FA078B5C8067F4E828290BFB860E84B3C"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->FINGERPRINTS:Ljava/util/Set;

    .line 149
    sget-object v0, Ljava/time/Month;->APRIL:Ljava/time/Month;

    .line 150
    invoke-static {v1, v0, v2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->APRIL_16_2019:Ljava/time/LocalDate;

    .line 149
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkDistrust([Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/validator/ValidatorException;
        }
    .end annotation

    .line 162
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    .line 163
    .local v0, "anchor":Ljava/security/cert/X509Certificate;
    sget-object v1, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->FINGERPRINTS:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->fingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    .line 165
    .local v1, "notBefore":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v2

    sget-object v3, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    .line 168
    .local v2, "ldNotBefore":Ljava/time/LocalDate;
    array-length v3, p0

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 169
    array-length v3, p0

    sub-int/2addr v3, v4

    aget-object v3, p0, v3

    .line 170
    .local v3, "subCA":Ljava/security/cert/X509Certificate;
    sget-object v4, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->EXEMPT_SUBCAS:Ljava/util/Map;

    invoke-static {v3}, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->fingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/LocalDate;

    .line 171
    .local v4, "distrustDate":Ljava/time/LocalDate;
    if-eqz v4, :cond_0

    .line 173
    invoke-static {v2, v4, v0}, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->checkNotBefore(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/security/cert/X509Certificate;)V

    .line 174
    return-void

    .line 178
    .end local v3    # "subCA":Ljava/security/cert/X509Certificate;
    .end local v4    # "distrustDate":Ljava/time/LocalDate;
    :cond_0
    sget-object v3, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->APRIL_16_2019:Ljava/time/LocalDate;

    invoke-static {v2, v3, v0}, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->checkNotBefore(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/security/cert/X509Certificate;)V

    .line 180
    .end local v1    # "notBefore":Ljava/util/Date;
    .end local v2    # "ldNotBefore":Ljava/time/LocalDate;
    :cond_1
    return-void
.end method

.method private static checkNotBefore(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p0, "notBeforeDate"    # Ljava/time/LocalDate;
    .param p1, "distrustDate"    # Ljava/time/LocalDate;
    .param p2, "anchor"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/validator/ValidatorException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 192
    :cond_0
    new-instance v0, Lsun/security/validator/ValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TLS Server certificate issued after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and anchored by a distrusted legacy Symantec root CA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lsun/security/validator/ValidatorException;->T_UNTRUSTED_CERT:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p2}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0
.end method

.method private static fingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 183
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    const-string v1, "SHA-256"

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    .line 184
    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 185
    invoke-static {v1, p0}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0
.end method
