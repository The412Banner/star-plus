.class public abstract Lorg/openjsse/sun/security/validator/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# static fields
.field static final CHAIN0:[Ljava/security/cert/X509Certificate;

.field public static final TYPE_PKIX:Ljava/lang/String; = "PKIX"

.field public static final TYPE_SIMPLE:Ljava/lang/String; = "Simple"

.field public static final VAR_CODE_SIGNING:Ljava/lang/String; = "code signing"

.field public static final VAR_GENERIC:Ljava/lang/String; = "generic"

.field public static final VAR_JCE_SIGNING:Ljava/lang/String; = "jce signing"

.field public static final VAR_PLUGIN_CODE_SIGNING:Ljava/lang/String; = "plugin code signing"

.field public static final VAR_TLS_CLIENT:Ljava/lang/String; = "tls client"

.field public static final VAR_TLS_SERVER:Ljava/lang/String; = "tls server"

.field public static final VAR_TSA_SERVER:Ljava/lang/String; = "tsa server"


# instance fields
.field final endEntityChecker:Lorg/openjsse/sun/security/validator/EndEntityChecker;

.field private final type:Ljava/lang/String;

.field volatile validationDate:Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lorg/openjsse/sun/security/validator/Validator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/openjsse/sun/security/validator/Validator;->type:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lorg/openjsse/sun/security/validator/Validator;->variant:Ljava/lang/String;

    .line 160
    invoke-static {p1, p2}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/openjsse/sun/security/validator/EndEntityChecker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/validator/Validator;->endEntityChecker:Lorg/openjsse/sun/security/validator/EndEntityChecker;

    .line 161
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;)Lorg/openjsse/sun/security/validator/Validator;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "ks"    # Ljava/security/KeyStore;

    .line 169
    invoke-static {p2}, Lorg/openjsse/sun/security/validator/TrustStoreUtil;->getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/openjsse/sun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lorg/openjsse/sun/security/validator/Validator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)Lorg/openjsse/sun/security/validator/Validator;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/cert/PKIXBuilderParameters;

    .line 194
    const-string v0, "PKIX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Lorg/openjsse/sun/security/validator/PKIXValidator;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/validator/PKIXValidator;-><init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getInstance(PKIXBuilderParameters) can only be used with PKIX validator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lorg/openjsse/sun/security/validator/Validator;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lorg/openjsse/sun/security/validator/Validator;"
        }
    .end annotation

    .line 178
    .local p2, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const-string v0, "Simple"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lorg/openjsse/sun/security/validator/SimpleValidator;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/validator/SimpleValidator;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    .line 180
    :cond_0
    const-string v0, "PKIX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Lorg/openjsse/sun/security/validator/PKIXValidator;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/validator/PKIXValidator;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown validator type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
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
.end method

.method public abstract getTrustedCertificates()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public setValidationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "validationDate"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iput-object p1, p0, Lorg/openjsse/sun/security/validator/Validator;->validationDate:Ljava/util/Date;

    .line 306
    return-void
.end method

.method public final validate([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/openjsse/sun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 217
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjsse/sun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
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

    .line 231
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/openjsse/sun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 3
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

    .line 264
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local p3, "responseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual/range {p0 .. p5}, Lorg/openjsse/sun/security/validator/Validator;->engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 268
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lorg/openjsse/sun/security/validator/Validator;->type:Ljava/lang/String;

    const-string v2, "PKIX"

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    move v0, v1

    .line 277
    .local v0, "checkUnresolvedCritExts":Z
    iget-object v1, p0, Lorg/openjsse/sun/security/validator/Validator;->endEntityChecker:Lorg/openjsse/sun/security/validator/EndEntityChecker;

    invoke-virtual {v1, p1, p5, v0}, Lorg/openjsse/sun/security/validator/EndEntityChecker;->check([Ljava/security/cert/X509Certificate;Ljava/lang/Object;Z)V

    .line 281
    .end local v0    # "checkUnresolvedCritExts":Z
    :cond_1
    return-object p1
.end method
