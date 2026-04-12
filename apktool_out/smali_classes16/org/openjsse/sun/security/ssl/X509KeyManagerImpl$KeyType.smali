.class Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;
.super Ljava/lang/Object;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyType"
.end annotation


# instance fields
.field final keyAlgorithm:Ljava/lang/String;

.field final sigKeyAlgorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 338
    .local v0, "k":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 339
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;->keyAlgorithm:Ljava/lang/String;

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    goto :goto_0

    .line 342
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;->keyAlgorithm:Ljava/lang/String;

    .line 343
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    .line 345
    :goto_0
    return-void
.end method


# virtual methods
.method matches([Ljava/security/cert/Certificate;)Z
    .locals 5
    .param p1, "chain"    # [Ljava/security/cert/Certificate;

    .line 348
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;->keyAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    return v0

    .line 351
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 352
    return v2

    .line 354
    :cond_1
    array-length v1, p1

    if-le v1, v2, :cond_2

    .line 356
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    aget-object v1, p1, v2

    .line 357
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 361
    :cond_2
    aget-object v0, p1, v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 362
    .local v0, "issuer":Ljava/security/cert/X509Certificate;
    nop

    .line 363
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "sigAlgName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WITH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 365
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    return v3
.end method
