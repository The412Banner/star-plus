.class public Lorg/openjsse/sun/security/util/HostnameChecker;
.super Ljava/lang/Object;
.source "HostnameChecker.java"


# static fields
.field private static final ALTNAME_DNS:I = 0x2

.field private static final ALTNAME_IP:I = 0x7

.field private static final INSTANCE_LDAP:Lorg/openjsse/sun/security/util/HostnameChecker;

.field private static final INSTANCE_TLS:Lorg/openjsse/sun/security/util/HostnameChecker;

.field public static final TYPE_LDAP:B = 0x2t

.field public static final TYPE_TLS:B = 0x1t


# instance fields
.field private final checkType:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lorg/openjsse/sun/security/util/HostnameChecker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/util/HostnameChecker;-><init>(B)V

    sput-object v0, Lorg/openjsse/sun/security/util/HostnameChecker;->INSTANCE_TLS:Lorg/openjsse/sun/security/util/HostnameChecker;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/util/HostnameChecker;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/util/HostnameChecker;-><init>(B)V

    sput-object v0, Lorg/openjsse/sun/security/util/HostnameChecker;->INSTANCE_LDAP:Lorg/openjsse/sun/security/util/HostnameChecker;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .param p1, "checkType"    # B

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-byte p1, p0, Lorg/openjsse/sun/security/util/HostnameChecker;->checkType:B

    .line 70
    return-void
.end method

.method public static getInstance(B)Lorg/openjsse/sun/security/util/HostnameChecker;
    .locals 3
    .param p0, "checkType"    # B

    .line 77
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 78
    sget-object v0, Lorg/openjsse/sun/security/util/HostnameChecker;->INSTANCE_TLS:Lorg/openjsse/sun/security/util/HostnameChecker;

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 80
    sget-object v0, Lorg/openjsse/sun/security/util/HostnameChecker;->INSTANCE_LDAP:Lorg/openjsse/sun/security/util/HostnameChecker;

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown check type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSubjectX500Name(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X500Name;
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 249
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    .line 250
    .local v0, "subjectDN":Ljava/security/Principal;
    instance-of v1, v0, Lsun/security/x509/X500Name;

    if-eqz v1, :cond_0

    .line 251
    move-object v1, v0

    check-cast v1, Lsun/security/x509/X500Name;

    return-object v1

    .line 253
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 254
    .local v1, "subjectX500":Ljavax/security/auth/x500/X500Principal;
    new-instance v2, Lsun/security/x509/X500Name;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X500Name;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 256
    .end local v0    # "subjectDN":Ljava/security/Principal;
    .end local v1    # "subjectX500":Ljavax/security/auth/x500/X500Principal;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1}, Ljava/security/cert/CertificateParsingException;-><init>()V

    .line 258
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertificateParsingException;

    throw v1
.end method

.method private static hasIllegalWildcard(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "chainsToPublicCA"    # Z

    .line 318
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_8

    const-string v1, "*."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 330
    .local v0, "lastWildcardIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 331
    return v3

    .line 334
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "afterWildcard":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 338
    .local v5, "firstDotIndex":I
    if-ne v5, v1, :cond_3

    .line 339
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_2

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate domain name has illegal wildcard, no dot after wildcard character: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_2
    return v2

    .line 347
    :cond_3
    if-nez p1, :cond_4

    .line 348
    return v3

    .line 353
    :cond_4
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "wildcardedDomain":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "z."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 355
    invoke-static {v6}, Lorg/openjsse/sun/security/util/RegisteredDomain;->from(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lorg/openjsse/sun/security/util/HostnameChecker$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lorg/openjsse/sun/security/util/HostnameChecker$$ExternalSyntheticLambda0;-><init>()V

    .line 356
    invoke-virtual {v6, v7}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lorg/openjsse/sun/security/util/HostnameChecker$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lorg/openjsse/sun/security/util/HostnameChecker$$ExternalSyntheticLambda1;-><init>()V

    .line 357
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 358
    .local v6, "templateDomainSuffix":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 359
    return v3

    .line 363
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 364
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_6

    .line 365
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Certificate domain name has illegal wildcard for top-level public suffix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_6
    return v2

    .line 372
    :cond_7
    return v3

    .line 319
    .end local v0    # "lastWildcardIndex":I
    .end local v1    # "wildcardedDomain":Ljava/lang/String;
    .end local v4    # "afterWildcard":Ljava/lang/String;
    .end local v5    # "firstDotIndex":I
    .end local v6    # "templateDomainSuffix":Ljava/lang/String;
    :cond_8
    :goto_0
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_9

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate domain name has illegal single wildcard character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_9
    return v2
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 123
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv4LiteralAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isMatched(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;
    .param p3, "chainsToPublicCA"    # Z

    .line 277
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 278
    invoke-static {p2}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p2, v1

    .line 285
    nop

    .line 287
    invoke-static {p2, p3}, Lorg/openjsse/sun/security/util/HostnameChecker;->hasIllegalWildcard(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    return v0

    .line 297
    :cond_0
    :try_start_1
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    const/16 v2, 0x2a

    const/16 v3, 0x7a

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    nop

    .line 303
    iget-byte v1, p0, Lorg/openjsse/sun/security/util/HostnameChecker;->checkType:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 304
    invoke-static {p1, p2}, Lorg/openjsse/sun/security/util/HostnameChecker;->matchAllWildcards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 305
    :cond_1
    iget-byte v1, p0, Lorg/openjsse/sun/security/util/HostnameChecker;->checkType:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 306
    invoke-static {p1, p2}, Lorg/openjsse/sun/security/util/HostnameChecker;->matchLeftmostWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 308
    :cond_2
    return v0

    .line 298
    :catch_0
    move-exception v1

    .line 300
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    return v0

    .line 279
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 280
    .local v1, "re":Ljava/lang/RuntimeException;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_3

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to normalize to Unicode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :cond_3
    return v0
.end method

.method static synthetic lambda$hasIllegalWildcard$0(Lorg/openjsse/sun/security/util/RegisteredDomain;)Z
    .locals 2
    .param p0, "d"    # Lorg/openjsse/sun/security/util/RegisteredDomain;

    .line 356
    invoke-interface {p0}, Lorg/openjsse/sun/security/util/RegisteredDomain;->type()Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;->ICANN:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static matchAllWildcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;

    .line 387
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 388
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 389
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v0, "nameSt":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 392
    .local v1, "templateSt":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 393
    return v4

    .line 396
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-static {v2, v3}, Lorg/openjsse/sun/security/util/HostnameChecker;->matchWildCards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    return v4

    .line 402
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private matchDNS(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V
    .locals 7
    .param p1, "expectedName"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "chainsToPublicCA"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 192
    :try_start_0
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    nop

    .line 198
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 199
    .local v0, "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-eqz v0, :cond_3

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "foundDNS":Z
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 202
    .local v3, "next":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 203
    const/4 v1, 0x1

    .line 204
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    .local v4, "dnsName":Ljava/lang/String;
    invoke-direct {p0, p1, v4, p3}, Lorg/openjsse/sun/security/util/HostnameChecker;->isMatched(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    return-void

    .line 209
    .end local v3    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "dnsName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    .line 213
    :cond_2
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No subject alternative DNS name matching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    .end local v1    # "foundDNS":Z
    :cond_3
    :goto_1
    invoke-static {p2}, Lorg/openjsse/sun/security/util/HostnameChecker;->getSubjectX500Name(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X500Name;

    move-result-object v1

    .line 218
    .local v1, "subjectName":Lsun/security/x509/X500Name;
    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    .line 219
    invoke-virtual {v1, v2}, Lsun/security/x509/X500Name;->findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v2

    .line 220
    .local v2, "derValue":Lsun/security/util/DerValue;
    if-eqz v2, :cond_6

    .line 222
    :try_start_1
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "cname":Ljava/lang/String;
    sget-object v4, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v3, v4}, Ljava/text/Normalizer;->isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 227
    invoke-direct {p0, p1, v3, p3}, Lorg/openjsse/sun/security/util/HostnameChecker;->isMatched(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    return-void

    .line 232
    .end local v3    # "cname":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 224
    .restart local v3    # "cname":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a formal name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v1    # "subjectName":Lsun/security/x509/X500Name;
    .end local v2    # "derValue":Lsun/security/util/DerValue;
    .end local p1    # "expectedName":Ljava/lang/String;
    .end local p2    # "cert":Ljava/security/cert/X509Certificate;
    .end local p3    # "chainsToPublicCA":Z
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    .end local v3    # "cname":Ljava/lang/String;
    .restart local v0    # "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .restart local v1    # "subjectName":Lsun/security/x509/X500Name;
    .restart local v2    # "derValue":Lsun/security/util/DerValue;
    .restart local p1    # "expectedName":Ljava/lang/String;
    .restart local p2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "chainsToPublicCA":Z
    :catch_0
    move-exception v3

    .line 234
    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No name matching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    .end local v0    # "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v1    # "subjectName":Lsun/security/x509/X500Name;
    .end local v2    # "derValue":Lsun/security/util/DerValue;
    .end local v3    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal given domain name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static matchIP(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p0, "expectedIP"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 142
    .local v0, "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-eqz v0, :cond_4

    .line 146
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 148
    .local v2, "next":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 149
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    return-void

    .line 157
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 158
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 157
    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 159
    return-void

    .line 162
    :catch_0
    move-exception v4

    goto :goto_1

    .line 161
    :catch_1
    move-exception v4

    .line 162
    :cond_1
    :goto_1
    nop

    .line 165
    .end local v2    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "ipAddress":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 166
    :cond_3
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No subject alternative names matching IP address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_4
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "No subject alternative names present"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static matchLeftmostWildcard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;

    .line 417
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 418
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 421
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 422
    .local v1, "templateIdx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 424
    .local v0, "nameIdx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 426
    :cond_0
    if-ne v0, v2, :cond_1

    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 429
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-static {v3, v4}, Lorg/openjsse/sun/security/util/HostnameChecker;->matchWildCards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 433
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 436
    :cond_2
    return v2
.end method

.method private static matchWildCards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;

    .line 447
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 448
    .local v1, "wildcardIdx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 449
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 451
    :cond_0
    const/4 v3, 0x1

    .line 452
    .local v3, "isBeginning":Z
    const-string v4, ""

    .line 453
    .local v4, "beforeWildcard":Ljava/lang/String;
    move-object v5, p1

    .line 455
    .local v5, "afterWildcard":Ljava/lang/String;
    :goto_0
    if-eq v1, v2, :cond_3

    .line 458
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 459
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 461
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 462
    .local v7, "beforeStartIdx":I
    if-eq v7, v2, :cond_2

    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    goto :goto_1

    .line 466
    :cond_1
    const/4 v3, 0x0

    .line 469
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 471
    .end local v7    # "beforeStartIdx":I
    goto :goto_0

    .line 464
    .restart local v7    # "beforeStartIdx":I
    :cond_2
    :goto_1
    return v6

    .line 472
    .end local v7    # "beforeStartIdx":I
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "expectedName"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjsse/sun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V

    .line 111
    return-void
.end method

.method public match(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V
    .locals 2
    .param p1, "expectedName"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "chainsToPublicCA"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 97
    if-eqz p1, :cond_1

    .line 101
    invoke-static {p1}, Lorg/openjsse/sun/security/util/HostnameChecker;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p1, p2}, Lorg/openjsse/sun/security/util/HostnameChecker;->matchIP(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/sun/security/util/HostnameChecker;->matchDNS(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Hostname or IP address is undefined."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
