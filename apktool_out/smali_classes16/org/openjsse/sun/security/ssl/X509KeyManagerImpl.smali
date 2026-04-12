.class final Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "X509KeyManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;,
        Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;,
        Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;,
        Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;,
        Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap;
    }
.end annotation


# static fields
.field private static verificationDate:Ljava/util/Date;


# instance fields
.field private final builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final entryCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/Reference<",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uidCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Ljava/security/KeyStore$Builder;)V
    .locals 1
    .param p1, "builder"    # Ljava/security/KeyStore$Builder;

    .line 88
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;-><init>(Ljava/util/List;)V

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/KeyStore$Builder;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "builders":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore$Builder;>;"
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->uidCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap;-><init>(Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$1;)V

    .line 95
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    .line 96
    return-void
.end method

.method private chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;
    .locals 8
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "checkType"    # Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p4, "constraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;[",
            "Ljava/security/Principal;",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;",
            "Ljava/security/AlgorithmConstraints;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 399
    .local p1, "keyTypeList":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;[Ljavax/security/auth/x500/X500Principal;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;[Ljavax/security/auth/x500/X500Principal;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "checkType"    # Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p4, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p5, "certificateAuthorities"    # [Ljavax/security/auth/x500/X500Principal;
    .param p7, "idAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;[",
            "Ljava/security/Principal;",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;",
            "Ljava/security/AlgorithmConstraints;",
            "[",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 408
    .local p1, "keyTypeList":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    .local p6, "requestedServerNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    move-object/from16 v11, p0

    if-eqz p1, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v13, p2

    goto/16 :goto_4

    .line 412
    :cond_0
    move-object/from16 v13, p2

    invoke-direct {v11, v13}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;

    move-result-object v14

    .line 413
    .local v14, "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    const/4 v0, 0x0

    .line 414
    .local v0, "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v11, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    move-object v10, v0

    move v9, v1

    .end local v0    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v1    # "i":I
    .local v9, "i":I
    .local v10, "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v15, "n":I
    :goto_0
    const-string v0, "keymanager"

    const/4 v8, 0x0

    if-ge v9, v15, :cond_5

    .line 416
    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v2, v9

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v12, v8

    move-object/from16 v8, p5

    move/from16 v16, v9

    .end local v9    # "i":I
    .local v16, "i":I
    move-object/from16 v9, p6

    move-object/from16 v17, v10

    .end local v10    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v17, "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    move-object/from16 v10, p7

    :try_start_0
    invoke-direct/range {v1 .. v10}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getAliases(ILjava/util/List;Ljava/util/Set;ZLorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;[Ljavax/security/auth/x500/X500Principal;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 419
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    if-eqz v1, :cond_4

    .line 423
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;

    .line 424
    .local v2, "status":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    iget-object v3, v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    sget-object v4, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v3, v4, :cond_2

    .line 425
    :try_start_1
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyMgr: choosing key: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    :cond_1
    invoke-direct {v11, v2}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->makeAlias(Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 435
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v2    # "status":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :catch_0
    move-exception v0

    move-object/from16 v10, v17

    goto :goto_3

    .line 430
    .restart local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v2    # "status":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :cond_2
    move-object/from16 v3, v17

    .end local v17    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v3, "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    if-nez v3, :cond_3

    .line 431
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v10, v0

    .end local v3    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v0    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_1

    .line 435
    .end local v0    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v2    # "status":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .restart local v3    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :catch_1
    move-exception v0

    move-object v10, v3

    goto :goto_3

    .line 430
    .restart local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v2    # "status":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :cond_3
    move-object v10, v3

    .line 433
    .end local v3    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v10    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_1
    :try_start_3
    invoke-interface {v10, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 435
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v2    # "status":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :catch_2
    move-exception v0

    goto :goto_3

    .line 419
    .end local v10    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v17    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_4
    move-object/from16 v3, v17

    .end local v17    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v3    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    move-object v10, v3

    .line 437
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v3    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v10    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_2
    goto :goto_3

    .line 435
    .end local v10    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v17    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :catch_3
    move-exception v0

    move-object/from16 v3, v17

    move-object v10, v3

    .line 414
    .end local v17    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v10    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_3
    add-int/lit8 v9, v16, 0x1

    .end local v16    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    :cond_5
    move v12, v8

    move/from16 v16, v9

    move-object v3, v10

    .line 439
    .end local v9    # "i":I
    .end local v10    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v15    # "n":I
    .restart local v3    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    if-nez v3, :cond_7

    .line 440
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 441
    const-string v0, "KeyMgr: no matching key found"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    :cond_6
    const/4 v1, 0x0

    return-object v1

    .line 445
    :cond_7
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 446
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_8

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 447
    const-string v0, "KeyMgr: no good matching key found, returning best match out of"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    :cond_8
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;

    invoke-direct {v11, v0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->makeAlias(Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    .end local v3    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v14    # "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_9
    move-object/from16 v13, p2

    .line 409
    :goto_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private static conformsToAlgorithmConstraints(Ljava/security/AlgorithmConstraints;[Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .locals 7
    .param p0, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p1, "chain"    # [Ljava/security/cert/Certificate;
    .param p2, "variant"    # Ljava/lang/String;

    .line 896
    const-string v0, "keymanager"

    new-instance v1, Lsun/security/provider/certpath/AlgorithmChecker;

    invoke-direct {v1, p0, p2}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;Ljava/lang/String;)V

    .line 899
    .local v1, "checker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 908
    nop

    .line 911
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 912
    aget-object v5, p1, v3

    .line 915
    .local v5, "cert":Ljava/security/cert/Certificate;
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 923
    nop

    .line 911
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 916
    .restart local v5    # "cert":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v4

    .line 917
    .local v4, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    const-string v0, "Certificate does not conform to algorithm constraints"

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    :cond_0
    return v2

    .line 926
    .end local v3    # "i":I
    .end local v4    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    return v4

    .line 900
    :catch_1
    move-exception v3

    .line 902
    .local v3, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_2

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    const-string v0, "Cannot initialize algorithm constraints checker"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    :cond_2
    return v2
.end method

.method private getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;

    .line 193
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lorg/openjsse/javax/net/ssl/SSLSocket;

    if-eqz v1, :cond_2

    .line 196
    move-object v1, p1

    check-cast v1, Lorg/openjsse/javax/net/ssl/SSLSocket;

    .line 197
    .local v1, "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 199
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v2, :cond_1

    .line 200
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    const/4 v3, 0x0

    .line 203
    .local v3, "peerSupportedSignAlgs":[Ljava/lang/String;
    instance-of v4, v2, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    if-eqz v4, :cond_0

    .line 204
    move-object v4, v2

    check-cast v4, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    .line 206
    .local v4, "extSession":Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
    nop

    .line 207
    invoke-virtual {v4}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v3

    .line 210
    .end local v4    # "extSession":Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
    :cond_0
    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v4, v1, v3, v0}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Lorg/openjsse/javax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    return-object v4

    .line 215
    .end local v3    # "peerSupportedSignAlgs":[Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v3, v1, v0}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Lorg/openjsse/javax/net/ssl/SSLSocket;Z)V

    return-object v3

    .line 218
    .end local v1    # "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    .end local v2    # "session":Ljavax/net/ssl/SSLSession;
    :cond_2
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lorg/openjsse/javax/net/ssl/SSLSocket;

    invoke-direct {v1, v2, v0}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Lorg/openjsse/javax/net/ssl/SSLSocket;Z)V

    return-object v1
.end method

.method private getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;
    .locals 4
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 223
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 225
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_1

    .line 226
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    const/4 v2, 0x0

    .line 229
    .local v2, "peerSupportedSignAlgs":[Ljava/lang/String;
    instance-of v3, v1, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    if-eqz v3, :cond_0

    .line 230
    move-object v3, v1

    check-cast v3, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    .line 232
    .local v3, "extSession":Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
    nop

    .line 233
    invoke-virtual {v3}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v2

    .line 236
    .end local v3    # "extSession":Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
    :cond_0
    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v3, p1, v2, v0}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    return-object v3

    .line 242
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    .end local v2    # "peerSupportedSignAlgs":[Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v1, p1, v0}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-object v1
.end method

.method private getAliases(ILjava/util/List;Ljava/util/Set;ZLorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;[Ljavax/security/auth/x500/X500Principal;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 24
    .param p1, "builderIndex"    # I
    .param p4, "findAll"    # Z
    .param p5, "checkType"    # Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p6, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p7, "certificateAuthorities"    # [Ljavax/security/auth/x500/X500Principal;
    .param p9, "idAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/Principal;",
            ">;Z",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;",
            "Ljava/security/AlgorithmConstraints;",
            "[",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 762
    .local p2, "keyTypes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    .local p3, "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    .local p8, "requestedServerNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p0

    iget-object v0, v4, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    move/from16 v11, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/security/KeyStore$Builder;

    .line 763
    .local v12, "builder":Ljava/security/KeyStore$Builder;
    invoke-virtual {v12}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v13

    .line 764
    .local v13, "ks":Ljava/security/KeyStore;
    const/4 v0, 0x0

    .line 765
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    sget-object v5, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->verificationDate:Ljava/util/Date;

    .line 766
    .local v5, "date":Ljava/util/Date;
    const/4 v6, 0x0

    .line 767
    .local v6, "preferred":Z
    invoke-virtual {v13}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v14

    move-object v15, v0

    move/from16 v16, v6

    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v6    # "preferred":Z
    .local v14, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .local v15, "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v16, "preferred":Z
    :goto_0
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 768
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 770
    .local v10, "alias":Ljava/lang/String;
    invoke-virtual {v13, v10}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 774
    :cond_0
    invoke-virtual {v13, v10}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v9

    .line 775
    .local v9, "chain":[Ljava/security/cert/Certificate;
    if-eqz v9, :cond_17

    array-length v0, v9

    if-nez v0, :cond_1

    .line 777
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 780
    :cond_1
    const/4 v0, 0x0

    .line 781
    .local v0, "incompatible":Z
    array-length v6, v9

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_3

    aget-object v7, v9, v8

    .line 782
    .local v7, "cert":Ljava/security/cert/Certificate;
    move/from16 v18, v0

    .end local v0    # "incompatible":Z
    .local v18, "incompatible":Z
    instance-of v0, v7, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_2

    .line 784
    const/4 v0, 0x1

    .line 785
    .end local v18    # "incompatible":Z
    .restart local v0    # "incompatible":Z
    move/from16 v18, v0

    goto :goto_2

    .line 781
    .end local v0    # "incompatible":Z
    .end local v7    # "cert":Ljava/security/cert/Certificate;
    .restart local v18    # "incompatible":Z
    :cond_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v18

    goto :goto_1

    .end local v18    # "incompatible":Z
    .restart local v0    # "incompatible":Z
    :cond_3
    move/from16 v18, v0

    .line 788
    .end local v0    # "incompatible":Z
    .restart local v18    # "incompatible":Z
    :goto_2
    if-eqz v18, :cond_4

    .line 789
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 793
    :cond_4
    const/4 v0, -0x1

    .line 794
    .local v0, "keyIndex":I
    const/4 v6, 0x0

    .line 795
    .local v6, "j":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v19, v6

    .end local v6    # "j":I
    .local v19, "j":I
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;

    .line 796
    .local v6, "keyType":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;
    invoke-virtual {v6, v9}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;->matches([Ljava/security/cert/Certificate;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 797
    move/from16 v0, v19

    .line 798
    move v8, v0

    goto :goto_4

    .line 800
    :cond_5
    nop

    .end local v6    # "keyType":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;
    add-int/lit8 v19, v19, 0x1

    .line 801
    goto :goto_3

    .line 795
    :cond_6
    move v8, v0

    .line 802
    .end local v0    # "keyIndex":I
    .local v8, "keyIndex":I
    :goto_4
    const/4 v0, -0x1

    const-string v6, "Ignore alias "

    const-string v7, "keymanager"

    if-ne v8, v0, :cond_8

    .line 803
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_7

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": key algorithm does not match"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 803
    :cond_7
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 810
    :cond_8
    if-eqz v1, :cond_c

    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "found":Z
    move/from16 v20, v0

    .end local v0    # "found":Z
    .local v20, "found":Z
    array-length v0, v9

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_a

    aget-object v21, v9, v4

    .line 813
    .local v21, "cert":Ljava/security/cert/Certificate;
    move-object/from16 v22, v21

    check-cast v22, Ljava/security/cert/X509Certificate;

    .line 814
    .local v22, "xcert":Ljava/security/cert/X509Certificate;
    move/from16 v23, v0

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 815
    const/4 v0, 0x1

    .line 816
    .end local v20    # "found":Z
    .restart local v0    # "found":Z
    goto :goto_6

    .line 812
    .end local v0    # "found":Z
    .end local v21    # "cert":Ljava/security/cert/Certificate;
    .end local v22    # "xcert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "found":Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v23

    goto :goto_5

    :cond_a
    move/from16 v0, v20

    .line 819
    .end local v20    # "found":Z
    .restart local v0    # "found":Z
    :goto_6
    if-nez v0, :cond_c

    .line 820
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_b

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": issuers do not match"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 820
    :cond_b
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 831
    .end local v0    # "found":Z
    :cond_c
    if-eqz v3, :cond_10

    .line 832
    const/4 v0, 0x0

    .line 834
    .local v0, "foundCertificateAuthority":Z
    array-length v4, v9

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_7
    if-ltz v4, :cond_f

    if-nez v0, :cond_f

    .line 835
    aget-object v20, v9, v4

    check-cast v20, Ljava/security/cert/X509Certificate;

    .line 838
    .local v20, "cert":Ljava/security/cert/X509Certificate;
    array-length v1, v3

    move/from16 v21, v0

    const/4 v11, 0x0

    .end local v0    # "foundCertificateAuthority":Z
    .local v21, "foundCertificateAuthority":Z
    :goto_8
    if-ge v11, v1, :cond_e

    move/from16 v22, v1

    aget-object v1, v3, v11

    .line 840
    .local v1, "ca":Ljavax/security/auth/x500/X500Principal;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_d

    .line 841
    const/4 v0, 0x1

    move/from16 v21, v0

    .line 845
    :cond_d
    goto :goto_9

    .line 843
    :catch_0
    move-exception v0

    .line 838
    .end local v1    # "ca":Ljavax/security/auth/x500/X500Principal;
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v22

    goto :goto_8

    .line 834
    .end local v20    # "cert":Ljava/security/cert/X509Certificate;
    :cond_e
    add-int/lit8 v4, v4, -0x1

    move/from16 v11, p1

    move-object/from16 v1, p3

    move/from16 v0, v21

    goto :goto_7

    .line 848
    .end local v4    # "i":I
    .end local v21    # "foundCertificateAuthority":Z
    .restart local v0    # "foundCertificateAuthority":Z
    :cond_f
    if-nez v0, :cond_10

    .line 849
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 854
    .end local v0    # "foundCertificateAuthority":Z
    :cond_10
    if-eqz v2, :cond_12

    .line 856
    invoke-virtual/range {p5 .. p5}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->getValidator()Ljava/lang/String;

    move-result-object v0

    .line 855
    invoke-static {v2, v9, v0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->conformsToAlgorithmConstraints(Ljava/security/AlgorithmConstraints;[Ljava/security/cert/Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 858
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_11

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": certificate list does not conform to algorithm constraints"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 858
    :cond_11
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    goto/16 :goto_b

    .line 866
    :cond_12
    if-nez v5, :cond_13

    .line 867
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .end local v5    # "date":Ljava/util/Date;
    .local v0, "date":Ljava/util/Date;
    goto :goto_a

    .line 866
    .end local v0    # "date":Ljava/util/Date;
    .restart local v5    # "date":Ljava/util/Date;
    :cond_13
    move-object v0, v5

    .line 869
    .end local v5    # "date":Ljava/util/Date;
    .restart local v0    # "date":Ljava/util/Date;
    :goto_a
    const/4 v1, 0x0

    aget-object v1, v9, v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 870
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    move-object/from16 v7, p9

    invoke-virtual {v4, v1, v0, v11, v7}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->check(Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    move-result-object v1

    .line 872
    .local v1, "checkResult":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;
    new-instance v17, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;

    move-object/from16 v5, v17

    move/from16 v6, p1

    move v7, v8

    move/from16 v20, v8

    .end local v8    # "keyIndex":I
    .local v20, "keyIndex":I
    move-object v8, v10

    move-object/from16 v21, v9

    .end local v9    # "chain":[Ljava/security/cert/Certificate;
    .local v21, "chain":[Ljava/security/cert/Certificate;
    move-object/from16 v22, v10

    .end local v10    # "alias":Ljava/lang/String;
    .local v22, "alias":Ljava/lang/String;
    move-object v10, v1

    invoke-direct/range {v5 .. v10}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;-><init>(IILjava/lang/String;[Ljava/security/cert/Certificate;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;)V

    .line 875
    .local v5, "status":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    if-nez v16, :cond_14

    sget-object v6, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    if-ne v1, v6, :cond_14

    if-nez v20, :cond_14

    .line 876
    const/4 v6, 0x1

    move/from16 v16, v6

    .line 878
    :cond_14
    if-eqz v16, :cond_15

    if-nez p4, :cond_15

    .line 881
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 883
    :cond_15
    if-nez v15, :cond_16

    .line 884
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 886
    :cond_16
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    .end local v1    # "checkResult":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;
    .end local v5    # "status":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .end local v18    # "incompatible":Z
    .end local v19    # "j":I
    .end local v20    # "keyIndex":I
    .end local v21    # "chain":[Ljava/security/cert/Certificate;
    .end local v22    # "alias":Ljava/lang/String;
    move-object/from16 v4, p0

    move/from16 v11, p1

    move-object/from16 v1, p3

    move-object v5, v0

    goto/16 :goto_0

    .line 775
    .end local v0    # "date":Ljava/util/Date;
    .local v5, "date":Ljava/util/Date;
    .restart local v9    # "chain":[Ljava/security/cert/Certificate;
    .restart local v10    # "alias":Ljava/lang/String;
    :cond_17
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .line 767
    .end local v9    # "chain":[Ljava/security/cert/Certificate;
    .end local v10    # "alias":Ljava/lang/String;
    :goto_b
    move-object/from16 v4, p0

    move/from16 v11, p1

    move-object/from16 v1, p3

    goto/16 :goto_0

    :cond_18
    move-object/from16 v4, p5

    move-object/from16 v11, p8

    .line 889
    .end local v14    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    return-object v15
.end method

.method private getCertificateAuthorities(Ljava/net/Socket;)[Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;

    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/openjsse/javax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 247
    move-object v0, p1

    check-cast v0, Lorg/openjsse/javax/net/ssl/SSLSocket;

    .line 248
    .local v0, "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getCertificateAuthorities(Ljavax/net/ssl/SSLSession;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1

    .line 250
    .end local v0    # "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCertificateAuthorities(Ljavax/net/ssl/SSLEngine;)[Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getCertificateAuthorities(Ljavax/net/ssl/SSLSession;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCertificateAuthorities(Ljavax/net/ssl/SSLSession;)[Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    instance-of v0, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v0, :cond_0

    .line 264
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getCertificateAuthorities()[Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 12
    .param p1, "alias"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 283
    return-object v0

    .line 287
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 288
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/security/KeyStore$PrivateKeyEntry;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 289
    .local v2, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_0
    if-eqz v2, :cond_2

    .line 290
    return-object v2

    .line 294
    :cond_2
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 295
    .local v4, "firstDot":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 296
    .local v3, "secondDot":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 301
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .line 302
    :try_start_0
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 303
    .local v5, "builderIndex":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "keyStoreAlias":Ljava/lang/String;
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/KeyStore$Builder;

    .line 305
    .local v7, "builder":Ljava/security/KeyStore$Builder;
    invoke-virtual {v7}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v8

    .line 306
    .local v8, "ks":Ljava/security/KeyStore;
    nop

    .line 307
    invoke-virtual {v7, p1}, Ljava/security/KeyStore$Builder;->getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v9

    .line 308
    .local v9, "newEntry":Ljava/security/KeyStore$Entry;
    instance-of v10, v9, Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v10, :cond_4

    .line 310
    return-object v0

    .line 312
    :cond_4
    move-object v10, v9

    check-cast v10, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v2, v10

    .line 313
    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v10, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    return-object v2

    .line 315
    .end local v5    # "builderIndex":I
    .end local v6    # "keyStoreAlias":Ljava/lang/String;
    .end local v7    # "builder":Ljava/security/KeyStore$Builder;
    .end local v8    # "ks":Ljava/security/KeyStore;
    .end local v9    # "newEntry":Ljava/security/KeyStore$Entry;
    :catch_0
    move-exception v5

    .line 317
    .local v5, "e":Ljava/lang/Exception;
    return-object v0

    .line 298
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    return-object v0
.end method

.method private getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;
    .locals 2
    .param p1, "issuers"    # [Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    .line 509
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 512
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static varargs getKeyTypes([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "keyTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;"
        }
    .end annotation

    .line 372
    if-eqz p0, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 378
    .local v3, "keyType":Ljava/lang/String;
    new-instance v4, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;

    invoke-direct {v4, v3}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v3    # "keyType":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    return-object v1

    .line 374
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeAlias(Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;
    .locals 3
    .param p1, "entry"    # Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->uidCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toAliases(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 499
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 500
    .local v0, "s":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 501
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;

    .line 502
    .local v3, "result":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-direct {p0, v3}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->makeAlias(Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 503
    .end local v3    # "result":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
    move v1, v4

    goto :goto_0

    .line 504
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 128
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 129
    invoke-direct {p0, p3}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    .line 128
    invoke-direct {p0, v0, p2, v1, v2}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 135
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 136
    invoke-direct {p0, p3}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    .line 135
    invoke-direct {p0, v0, p2, v1, v2}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 10
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 162
    invoke-direct {p0, p3}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    move-result-object v6

    .line 163
    invoke-direct {p0, p3}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getCertificateAuthorities(Ljavax/net/ssl/SSLEngine;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 164
    invoke-static {p3}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->getRequestedServerNames(Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    move-result-object v8

    .line 161
    const-string v9, "HTTPS"

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;[Ljavax/security/auth/x500/X500Principal;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 10
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 143
    invoke-direct {p0, p3}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;

    move-result-object v6

    .line 144
    invoke-direct {p0, p3}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getCertificateAuthorities(Ljava/net/Socket;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 145
    invoke-static {p3}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->getRequestedServerNames(Ljava/net/Socket;)Ljava/util/List;

    move-result-object v8

    .line 142
    const-string v9, "HTTPS"

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;[Ljavax/security/auth/x500/X500Principal;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliases(Ljava/lang/String;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;
    .locals 21
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "checkType"    # Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p4, "constraints"    # Ljava/security/AlgorithmConstraints;

    .line 462
    move-object/from16 v11, p0

    const/4 v12, 0x0

    if-nez p1, :cond_0

    .line 463
    return-object v12

    .line 466
    :cond_0
    move-object/from16 v13, p2

    invoke-direct {v11, v13}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;

    move-result-object v14

    .line 467
    .local v14, "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p1, v0, v15

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 468
    .local v16, "keyTypeList":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    const/4 v0, 0x0

    .line 469
    .local v0, "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v11, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    move-object v9, v0

    move v8, v1

    .end local v0    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v1    # "i":I
    .local v8, "i":I
    .local v9, "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v10, "n":I
    :goto_0
    if-ge v8, v10, :cond_3

    .line 471
    const/4 v0, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x1

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move v2, v8

    move-object/from16 v3, v16

    move-object v4, v14

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v19, v8

    .end local v8    # "i":I
    .local v19, "i":I
    move-object/from16 v8, v18

    move-object v12, v9

    .end local v9    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v12, "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    move-object v9, v0

    move/from16 v20, v10

    .end local v10    # "n":I
    .local v20, "n":I
    move-object/from16 v10, v17

    :try_start_0
    invoke-direct/range {v1 .. v10}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getAliases(ILjava/util/List;Ljava/util/Set;ZLorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;[Ljavax/security/auth/x500/X500Principal;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 474
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    if-eqz v0, :cond_2

    .line 475
    if-nez v12, :cond_1

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v1

    .end local v12    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v1, "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_1

    .line 475
    .end local v1    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v12    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_1
    move-object v9, v12

    .line 478
    .end local v12    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v9    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_1
    :try_start_1
    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 480
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :catch_0
    move-exception v0

    goto :goto_3

    .line 474
    .end local v9    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v0    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v12    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_2
    move-object v9, v12

    .line 482
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v12    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v9    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_2
    goto :goto_3

    .line 480
    .end local v9    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v12    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :catch_1
    move-exception v0

    move-object v9, v12

    .line 469
    .end local v12    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v9    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_3
    add-int/lit8 v8, v19, 0x1

    move/from16 v10, v20

    const/4 v12, 0x0

    .end local v19    # "i":I
    .restart local v8    # "i":I
    goto :goto_0

    .end local v20    # "n":I
    .restart local v10    # "n":I
    :cond_3
    move/from16 v19, v8

    move-object v12, v9

    move/from16 v20, v10

    .line 484
    .end local v8    # "i":I
    .end local v9    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v10    # "n":I
    .restart local v12    # "allResults":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    const-string v0, "keymanager"

    if-eqz v12, :cond_6

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 490
    :cond_4
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 491
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 492
    const-string v0, "KeyMgr: getting aliases"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :cond_5
    invoke-direct {v11, v12}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->toAliases(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 485
    :cond_6
    :goto_4
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_7

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 486
    const-string v0, "KeyMgr: no matching alias found"

    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    .line 115
    .local v0, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    check-cast v1, [Ljava/security/cert/X509Certificate;

    .line 115
    :goto_0
    return-object v1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 179
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    .line 122
    .local v0, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 184
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
