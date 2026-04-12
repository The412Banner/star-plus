.class final enum Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;
.super Ljava/lang/Enum;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

.field public static final enum CLIENT:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

.field public static final enum NONE:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

.field public static final enum SERVER:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;


# instance fields
.field final validEku:Ljava/util/Set;
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
    .locals 8

    .line 557
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->NONE:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 561
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "2.5.29.37.0"

    aput-object v5, v4, v3

    const-string v6, "1.3.6.1.5.5.7.3.2"

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v4, "CLIENT"

    invoke-direct {v0, v4, v7, v1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 566
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    new-instance v1, Ljava/util/HashSet;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "1.3.6.1.5.5.7.3.1"

    aput-object v3, v4, v7

    const-string v3, "2.16.840.1.113730.4.1"

    aput-object v3, v4, v2

    const/4 v3, 0x3

    const-string v5, "1.3.6.1.4.1.311.10.3.3"

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v2, v1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 554
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->NONE:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->$VALUES:[Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 573
    .local p3, "validEku":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 574
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->validEku:Ljava/util/Set;

    .line 575
    return-void
.end method

.method private static getBit([ZI)Z
    .locals 1
    .param p0, "keyUsage"    # [Z
    .param p1, "bit"    # I

    .line 578
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-boolean v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 554
    const-class v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;
    .locals 1

    .line 554
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->$VALUES:[Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    return-object v0
.end method


# virtual methods
.method check(Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "date"    # Ljava/util/Date;
    .param p4, "idAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;"
        }
    .end annotation

    .line 589
    .local p3, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->NONE:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    if-ne p0, v0, :cond_0

    .line 590
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v0

    .line 596
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    .line 597
    .local v0, "certEku":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->validEku:Ljava/util/Set;

    .line 598
    invoke-static {v1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    sget-object v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v1

    .line 605
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v1

    .line 606
    .local v1, "ku":[Z
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 607
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "algorithm":Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    move-result v4

    .line 609
    .local v4, "supportsDigitalSignature":Z
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    sparse-switch v5, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v5, "RSASSA-PSS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_1
    const-string v5, "RSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :sswitch_2
    const-string v5, "DSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :sswitch_3
    const-string v5, "EC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_1

    :sswitch_4
    const-string v5, "DH"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 638
    :pswitch_0
    if-nez v4, :cond_3

    .line 639
    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v2

    .line 647
    :cond_3
    sget-object v5, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    if-ne p0, v5, :cond_5

    invoke-static {v1, v7}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    move-result v5

    if-nez v5, :cond_5

    .line 648
    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v2

    .line 632
    :pswitch_1
    invoke-static {v1, v7}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    move-result v5

    if-nez v5, :cond_5

    .line 633
    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v2

    .line 626
    :pswitch_2
    if-nez v4, :cond_5

    .line 627
    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v2

    .line 620
    :pswitch_3
    if-nez v4, :cond_5

    sget-object v5, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    if-ne p0, v5, :cond_5

    .line 621
    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v2

    .line 613
    :pswitch_4
    if-nez v4, :cond_5

    .line 614
    sget-object v5, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    if-eq p0, v5, :cond_4

    invoke-static {v1, v6}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    move-result v5

    if-nez v5, :cond_5

    .line 615
    :cond_4
    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 656
    .end local v0    # "certEku":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "ku":[Z
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v4    # "supportsDigitalSignature":Z
    :cond_5
    :goto_2
    nop

    .line 659
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 662
    nop

    .line 664
    if-eqz p3, :cond_a

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 665
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SNIServerName;

    .line 666
    .local v1, "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v1}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-nez v3, :cond_9

    .line 668
    instance-of v0, v1, Ljavax/net/ssl/SNIHostName;

    const-string v3, "keymanager"

    if-nez v0, :cond_7

    .line 670
    :try_start_2
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    .line 671
    invoke-virtual {v1}, Ljavax/net/ssl/SNIServerName;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/net/ssl/SNIHostName;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 681
    goto :goto_4

    .line 672
    :catch_0
    move-exception v0

    .line 674
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_6

    .line 675
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal server name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    :cond_6
    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->INSENSITIVE:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v2

    .line 683
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_7
    :goto_4
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SNIHostName;

    .line 684
    invoke-virtual {v0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "hostname":Ljava/lang/String;
    :try_start_3
    invoke-static {v0, p1, p4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 698
    goto :goto_5

    .line 689
    :catch_1
    move-exception v4

    .line 690
    .local v4, "e":Ljava/security/cert/CertificateException;
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_8

    .line 691
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate identity does not match Server Name Inidication (SNI): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    :cond_8
    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->INSENSITIVE:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v2

    .line 702
    .end local v0    # "hostname":Ljava/lang/String;
    .end local v1    # "serverName":Ljavax/net/ssl/SNIServerName;
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :cond_9
    goto :goto_3

    .line 705
    :cond_a
    :goto_5
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v0

    .line 660
    :catch_2
    move-exception v0

    .line 661
    .local v0, "e":Ljava/security/cert/CertificateException;
    sget-object v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXPIRED:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v1

    .line 653
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v0

    .line 655
    .restart local v0    # "e":Ljava/security/cert/CertificateException;
    sget-object v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x884 -> :sswitch_4
        0x89e -> :sswitch_3
        0x10992 -> :sswitch_2
        0x13e20 -> :sswitch_1
        0x69d3b2a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValidator()Ljava/lang/String;
    .locals 1

    .line 709
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    if-ne p0, v0, :cond_0

    .line 710
    const-string v0, "tls client"

    return-object v0

    .line 711
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    if-ne p0, v0, :cond_1

    .line 712
    const-string v0, "tls server"

    return-object v0

    .line 714
    :cond_1
    const-string v0, "generic"

    return-object v0
.end method
