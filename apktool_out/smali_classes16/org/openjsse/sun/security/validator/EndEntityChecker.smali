.class Lorg/openjsse/sun/security/validator/EndEntityChecker;
.super Ljava/lang/Object;
.source "EndEntityChecker.java"


# static fields
.field private static final KU_KEY_AGREEMENT:I = 0x4

.field private static final KU_KEY_ENCIPHERMENT:I = 0x2

.field private static final KU_SERVER_ENCRYPTION:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SERVER_SIGNATURE:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SIGNATURE:I = 0x0

.field private static final NSCT_CODE_SIGNING:Ljava/lang/String; = "object_signing"

.field private static final NSCT_SSL_CLIENT:Ljava/lang/String; = "ssl_client"

.field private static final NSCT_SSL_SERVER:Ljava/lang/String; = "ssl_server"

.field private static final OID_EKU_ANY_USAGE:Ljava/lang/String; = "2.5.29.37.0"

.field private static final OID_EKU_CODE_SIGNING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.3"

.field private static final OID_EKU_MS_SGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final OID_EKU_NS_SGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final OID_EKU_TIME_STAMPING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.8"

.field private static final OID_EKU_TLS_CLIENT:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final OID_EKU_TLS_SERVER:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final OID_EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field private static final OID_SUBJECT_ALT_NAME:Ljava/lang/String; = "2.5.29.17"


# instance fields
.field private final type:Ljava/lang/String;

.field private final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DHE_DSS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DHE_RSA"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ECDHE_ECDSA"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "ECDHE_RSA"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "RSA_EXPORT"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v7, "UNKNOWN"

    aput-object v7, v0, v1

    .line 110
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->KU_SERVER_SIGNATURE:Ljava/util/Collection;

    .line 114
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "RSA"

    aput-object v1, v0, v2

    .line 115
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->KU_SERVER_ENCRYPTION:Ljava/util/Collection;

    .line 118
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DH_DSS"

    aput-object v1, v0, v2

    const-string v1, "DH_RSA"

    aput-object v1, v0, v3

    const-string v1, "ECDH_ECDSA"

    aput-object v1, v0, v4

    const-string v1, "ECDH_RSA"

    aput-object v1, v0, v5

    .line 119
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;

    .line 118
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->type:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private checkCodeSigning(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
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

    .line 322
    .local p2, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    const-string v0, "1.3.6.1.5.5.7.3.3"

    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string v1, "jce signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    const-string v0, "object_signing"

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "2.16.840.1.113730.1.1"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_0
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Netscape cert type does not permit use for code signing"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 346
    :cond_1
    :goto_0
    const-string v0, "2.5.29.15"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 347
    const-string v0, "2.5.29.37"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 348
    return-void

    .line 329
    :cond_2
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Extended key usage does not permit use for code signing"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 323
    :cond_3
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "KeyUsage does not allow digital signatures"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0
.end method

.method private checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "expectedEKU"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 210
    .local p2, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "eku":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 212
    return v1

    .line 214
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "2.5.29.37.0"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "bit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 225
    .local v0, "keyUsage":[Z
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 226
    return v1

    .line 228
    :cond_0
    array-length v2, v0

    if-le v2, p2, :cond_1

    aget-boolean v2, v0, p2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkRemainingExtensions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 190
    .local p1, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "2.5.29.19"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 196
    const-string v0, "2.5.29.17"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate contains unsupported critical extensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkTLSClient(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
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

    .line 238
    .local p2, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    const-string v0, "1.3.6.1.5.5.7.3.2"

    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const-string v0, "ssl_client"

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "2.5.29.15"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 258
    const-string v0, "2.5.29.37"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 259
    const-string v0, "2.16.840.1.113730.1.1"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 260
    return-void

    .line 251
    :cond_0
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Netscape cert type does not permit use for SSL client"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 245
    :cond_1
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Extended key usage does not permit use for TLS client authentication"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 239
    :cond_2
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "KeyUsage does not allow digital signatures"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0
.end method

.method private checkTLSServer(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
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

    .line 270
    .local p3, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->KU_SERVER_ENCRYPTION:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "KeyUsage does not allow key encipherment"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 276
    :cond_1
    sget-object v0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->KU_SERVER_SIGNATURE:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 278
    :cond_2
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "KeyUsage does not allow digital signatures"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 282
    :cond_3
    sget-object v0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 292
    :goto_0
    const-string v0, "1.3.6.1.5.5.7.3.1"

    invoke-direct {p0, p1, p3, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 295
    const-string v0, "1.3.6.1.4.1.311.10.3.3"

    invoke-direct {p0, p1, p3, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 296
    const-string v0, "2.16.840.1.113730.4.1"

    invoke-direct {p0, p1, p3, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 297
    :cond_4
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Extended key usage does not permit use for TLS server authentication"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 304
    :cond_5
    :goto_1
    const-string v0, "ssl_server"

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 311
    const-string v0, "2.5.29.15"

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 312
    const-string v0, "2.5.29.37"

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    const-string v0, "2.16.840.1.113730.1.1"

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 314
    return-void

    .line 305
    :cond_6
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Netscape cert type does not permit use for SSL server"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 284
    :cond_7
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "KeyUsage does not allow key agreement"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 289
    :cond_8
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown authType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkTSAServer(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
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

    .line 357
    .local p2, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    const-string v0, "1.3.6.1.5.5.7.3.8"

    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "2.5.29.15"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 378
    const-string v0, "2.5.29.37"

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 379
    return-void

    .line 371
    :cond_0
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Extended key usage does not permit use for TSA server"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 364
    :cond_1
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "Certificate does not contain an extended key usage extension required for a TSA server"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0

    .line 358
    :cond_2
    new-instance v0, Lsun/security/validator/ValidatorException;

    const-string v1, "KeyUsage does not allow digital signatures"

    sget-object v2, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v0
.end method

.method private getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 177
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 180
    :cond_0
    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/openjsse/sun/security/validator/EndEntityChecker;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "variant"    # Ljava/lang/String;

    .line 133
    new-instance v0, Lorg/openjsse/sun/security/validator/EndEntityChecker;

    invoke-direct {v0, p0, p1}, Lorg/openjsse/sun/security/validator/EndEntityChecker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method check([Ljava/security/cert/X509Certificate;Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "parameter"    # Ljava/lang/Object;
    .param p3, "checkUnresolvedCritExts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    .line 143
    .local v1, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string v3, "tls server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    aget-object v0, p1, v0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkTLSServer(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string v3, "tls client"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    aget-object v0, p1, v0

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkTLSClient(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v2, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string v3, "code signing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    aget-object v0, p1, v0

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v2, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string v3, "jce signing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    aget-object v0, p1, v0

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    goto :goto_0

    .line 151
    :cond_4
    iget-object v2, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string v3, "plugin code signing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    aget-object v0, p1, v0

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    goto :goto_0

    .line 153
    :cond_5
    iget-object v2, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string v3, "tsa server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    aget-object v0, p1, v0

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkTSAServer(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 160
    :goto_0
    if-eqz p3, :cond_6

    .line 161
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    .line 166
    :cond_6
    sget-object v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy;->POLICIES:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    .line 167
    .local v2, "policy":Lorg/openjsse/sun/security/validator/CADistrustPolicy;
    iget-object v3, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lorg/openjsse/sun/security/validator/CADistrustPolicy;->checkDistrust(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    .line 168
    .end local v2    # "policy":Lorg/openjsse/sun/security/validator/CADistrustPolicy;
    goto :goto_1

    .line 169
    :cond_7
    return-void

    .line 156
    :cond_8
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown variant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
