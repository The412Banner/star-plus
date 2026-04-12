.class final Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SunX509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    }
.end annotation


# static fields
.field private static final STRING0:[Ljava/lang/String;


# instance fields
.field private credentialsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;",
            ">;"
        }
    .end annotation
.end field

.field private final serverAliasCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 7
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    .line 135
    if-nez p1, :cond_0

    .line 136
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 140
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 141
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "alias":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1, v1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    .line 146
    .local v2, "key":Ljava/security/Key;
    instance-of v3, v2, Ljava/security/PrivateKey;

    if-nez v3, :cond_3

    .line 147
    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 150
    .local v3, "certs":[Ljava/security/cert/Certificate;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    aget-object v5, v3, v4

    instance-of v5, v5, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_4

    .line 152
    goto :goto_0

    .line 154
    :cond_4
    instance-of v5, v3, [Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_5

    .line 155
    array-length v5, v3

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .line 156
    .local v5, "tmp":[Ljava/security/cert/Certificate;
    array-length v6, v3

    invoke-static {v3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    move-object v3, v5

    .line 160
    .end local v5    # "tmp":[Ljava/security/cert/Certificate;
    :cond_5
    new-instance v4, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    move-object v5, v2

    check-cast v5, Ljava/security/PrivateKey;

    move-object v6, v3

    check-cast v6, [Ljava/security/cert/X509Certificate;

    check-cast v6, [Ljava/security/cert/X509Certificate;

    invoke-direct {v4, v5, v6}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 162
    .local v4, "cred":Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_6

    const-string v5, "keymanager"

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found key for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/Key;
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "cred":Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    :cond_6
    goto :goto_0

    .line 167
    .end local v0    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_7
    return-void
.end method

.method private static convertPrincipals([Ljava/security/Principal;)[Ljavax/security/auth/x500/X500Principal;
    .locals 5
    .param p0, "principals"    # [Ljava/security/Principal;

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 420
    aget-object v2, p0, v1

    .line 421
    .local v2, "p":Ljava/security/Principal;
    instance-of v3, v2, Ljavax/security/auth/x500/X500Principal;

    if-eqz v3, :cond_0

    .line 422
    move-object v3, v2

    check-cast v3, Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 425
    :cond_0
    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    goto :goto_1

    .line 426
    :catch_0
    move-exception v3

    .line 419
    .end local v2    # "p":Ljava/security/Principal;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/security/auth/x500/X500Principal;

    return-object v1
.end method

.method private getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 18
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 335
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 336
    return-object v1

    .line 338
    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 339
    new-array v3, v2, [Ljavax/security/auth/x500/X500Principal;

    .end local p2    # "issuers":[Ljava/security/Principal;
    .local v3, "issuers":[Ljava/security/Principal;
    goto :goto_0

    .line 338
    .end local v3    # "issuers":[Ljava/security/Principal;
    .restart local p2    # "issuers":[Ljava/security/Principal;
    :cond_1
    move-object/from16 v3, p2

    .line 341
    .end local p2    # "issuers":[Ljava/security/Principal;
    .restart local v3    # "issuers":[Ljava/security/Principal;
    :goto_0
    instance-of v4, v3, [Ljavax/security/auth/x500/X500Principal;

    if-nez v4, :cond_2

    .line 343
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->convertPrincipals([Ljava/security/Principal;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 346
    :cond_2
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 347
    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 348
    .local v4, "k":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "sigType":Ljava/lang/String;
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 350
    .end local v4    # "k":I
    .end local p1    # "keyType":Ljava/lang/String;
    .local v0, "keyType":Ljava/lang/String;
    goto :goto_1

    .line 351
    .end local v0    # "keyType":Ljava/lang/String;
    .end local v5    # "sigType":Ljava/lang/String;
    .restart local p1    # "keyType":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .line 354
    .end local p1    # "keyType":Ljava/lang/String;
    .restart local v0    # "keyType":Ljava/lang/String;
    .restart local v5    # "sigType":Ljava/lang/String;
    :goto_1
    move-object v4, v3

    check-cast v4, [Ljavax/security/auth/x500/X500Principal;

    check-cast v4, [Ljavax/security/auth/x500/X500Principal;

    .line 356
    .local v4, "x500Issuers":[Ljavax/security/auth/x500/X500Principal;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v6, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    iget-object v8, v7, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 361
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 362
    .local v10, "alias":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    .line 363
    .local v11, "credentials":Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    iget-object v12, v11, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    .line 365
    .local v12, "certs":[Ljava/security/cert/X509Certificate;
    aget-object v13, v12, v2

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 366
    goto :goto_2

    .line 368
    :cond_4
    if-eqz v5, :cond_6

    .line 369
    array-length v13, v12

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    .line 371
    aget-object v13, v12, v14

    .line 372
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    .line 371
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 373
    goto :goto_2

    .line 378
    :cond_5
    aget-object v13, v12, v2

    .line 379
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 380
    .local v13, "sigAlgName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WITH"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 381
    invoke-virtual {v5, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 382
    .local v14, "pattern":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 383
    goto :goto_2

    .line 388
    .end local v13    # "sigAlgName":Ljava/lang/String;
    .end local v14    # "pattern":Ljava/lang/String;
    :cond_6
    array-length v13, v3

    const-string v14, "matching alias: "

    const-string v15, "keymanager"

    if-nez v13, :cond_7

    .line 390
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    sget-boolean v13, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v13, :cond_b

    invoke-static {v15}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 392
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v2, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 395
    :cond_7
    nop

    .line 396
    invoke-virtual {v11}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->getIssuerX500Principals()Ljava/util/Set;

    move-result-object v13

    .line 397
    .local v13, "certIssuers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/security/auth/x500/X500Principal;>;"
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "i":I
    :goto_3
    array-length v2, v4

    if-ge v1, v2, :cond_a

    .line 398
    aget-object v2, v3, v1

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 399
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_8

    invoke-static {v15}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v2, v15}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v14

    goto :goto_4

    .line 400
    :cond_8
    const/4 v14, 0x0

    move v2, v14

    goto :goto_4

    .line 397
    :cond_9
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    .line 407
    .end local v1    # "i":I
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    .end local v10    # "alias":Ljava/lang/String;
    .end local v11    # "credentials":Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    .end local v12    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v13    # "certIssuers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/security/auth/x500/X500Principal;>;"
    :cond_b
    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 409
    :cond_c
    sget-object v1, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 410
    .local v1, "aliasStrings":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_d

    const/16 v17, 0x0

    goto :goto_5

    :cond_d
    move-object/from16 v17, v1

    :goto_5
    return-object v17
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 4
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 219
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 220
    return-object v0

    .line 223
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 224
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "aliases":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 226
    const/4 v0, 0x0

    aget-object v0, v2, v0

    return-object v0

    .line 223
    .end local v2    # "aliases":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 264
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 265
    return-object v0

    .line 270
    :cond_0
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "aliases":[Ljava/lang/String;
    goto :goto_1

    .line 271
    .end local v1    # "aliases":[Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 272
    .restart local v1    # "aliases":[Ljava/lang/String;
    if-nez v1, :cond_4

    .line 273
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v1

    .line 275
    if-nez v1, :cond_3

    .line 276
    sget-object v1, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    .line 278
    :cond_3
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    .line 284
    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0

    .line 286
    :cond_5
    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 178
    return-object v0

    .line 180
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    .line 181
    .local v1, "cred":Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    if-nez v1, :cond_1

    .line 182
    return-object v0

    .line 184
    :cond_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 314
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 194
    return-object v0

    .line 196
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    .line 197
    .local v1, "cred":Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    if-nez v1, :cond_1

    .line 198
    return-object v0

    .line 200
    :cond_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 324
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
