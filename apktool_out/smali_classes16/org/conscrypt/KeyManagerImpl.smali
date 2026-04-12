.class Lorg/conscrypt/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final hash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 6
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "pwd"    # [C

    .line 58
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    .line 62
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4

    .line 65
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    nop

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "alias":Ljava/lang/String;
    :try_start_1
    const-class v2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v1, v2}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_0

    .line 72
    :try_start_2
    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 73
    invoke-virtual {p1, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 80
    .local v2, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    goto :goto_1

    .line 74
    .end local v2    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_3
    invoke-virtual {p1, v1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    .line 78
    .local v3, "key":Ljava/security/PrivateKey;
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 79
    .local v4, "certs":[Ljava/security/cert/Certificate;
    new-instance v5, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {v5, v3, v4}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    move-object v2, v5

    .line 81
    .end local v3    # "key":Ljava/security/PrivateKey;
    .end local v4    # "certs":[Ljava/security/cert/Certificate;
    .local v2, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_1
    iget-object v3, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 87
    .end local v2    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_1
    move-exception v2

    goto :goto_3

    .line 85
    :catch_2
    move-exception v2

    goto :goto_2

    .line 83
    :catch_3
    move-exception v2

    .line 89
    :cond_0
    :goto_2
    nop

    .line 90
    .end local v1    # "alias":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 91
    :cond_1
    return-void

    .line 63
    .end local v0    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_4
    move-exception v0

    .line 64
    .local v0, "e":Ljava/security/KeyStoreException;
    return-void
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 22
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 158
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_f

    array-length v3, v0

    if-nez v3, :cond_0

    move-object/from16 v5, p0

    const/4 v0, 0x0

    goto/16 :goto_9

    .line 161
    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 162
    .local v3, "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v4, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v5, p0

    iget-object v6, v5, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 164
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 165
    .local v8, "alias":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v9}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v9

    .line 166
    .local v9, "chain":[Ljava/security/cert/Certificate;
    const/4 v10, 0x0

    aget-object v11, v9, v10

    .line 167
    .local v11, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, "certKeyAlg":Ljava/lang/String;
    instance-of v13, v11, Ljava/security/cert/X509Certificate;

    if-eqz v13, :cond_2

    .line 169
    move-object v13, v11

    check-cast v13, Ljava/security/cert/X509Certificate;

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 170
    :cond_2
    const/4 v13, 0x0

    :goto_2
    nop

    .line 171
    .local v13, "certSigAlg":Ljava/lang/String;
    array-length v14, v0

    move v15, v10

    :goto_3
    if-ge v15, v14, :cond_c

    aget-object v2, v0, v15

    .line 172
    .local v2, "keyAlgorithm":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 173
    goto/16 :goto_8

    .line 177
    :cond_3
    const/16 v10, 0x5f

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 178
    .local v10, "index":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_4

    .line 179
    const/4 v0, 0x0

    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v0, v21

    .local v0, "sigAlgorithm":Ljava/lang/String;
    goto :goto_4

    .line 181
    .end local v0    # "sigAlgorithm":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0    # "sigAlgorithm":Ljava/lang/String;
    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "sigAlgorithm":Ljava/lang/String;
    .local v16, "sigAlgorithm":Ljava/lang/String;
    invoke-virtual {v2, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, v16

    .line 185
    .end local v16    # "sigAlgorithm":Ljava/lang/String;
    .local v0, "keyAlgorithm":Ljava/lang/String;
    .local v2, "sigAlgorithm":Ljava/lang/String;
    :goto_4
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 186
    goto :goto_8

    .line 195
    :cond_5
    if-eqz v2, :cond_6

    if-eqz v13, :cond_6

    .line 196
    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 197
    goto :goto_8

    .line 200
    :cond_6
    if-eqz v1, :cond_b

    move-object/from16 v16, v0

    .end local v0    # "keyAlgorithm":Ljava/lang/String;
    .local v16, "keyAlgorithm":Ljava/lang/String;
    array-length v0, v1

    if-nez v0, :cond_7

    move-object/from16 v18, v2

    goto :goto_7

    .line 205
    :cond_7
    array-length v0, v9

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_a

    move/from16 v17, v0

    aget-object v0, v9, v1

    .line 206
    .local v0, "certFromChain":Ljava/security/cert/Certificate;
    move-object/from16 v18, v2

    .end local v2    # "sigAlgorithm":Ljava/lang/String;
    .local v18, "sigAlgorithm":Ljava/lang/String;
    instance-of v2, v0, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_8

    .line 208
    goto :goto_6

    .line 210
    :cond_8
    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 219
    .local v2, "xcertFromChain":Ljava/security/cert/X509Certificate;
    move-object/from16 v19, v0

    .end local v0    # "certFromChain":Ljava/security/cert/Certificate;
    .local v19, "certFromChain":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 220
    .local v0, "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 221
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v0    # "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    .end local v2    # "xcertFromChain":Ljava/security/cert/X509Certificate;
    .end local v19    # "certFromChain":Ljava/security/cert/Certificate;
    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_5

    .end local v18    # "sigAlgorithm":Ljava/lang/String;
    .local v2, "sigAlgorithm":Ljava/lang/String;
    :cond_a
    move-object/from16 v18, v2

    .end local v2    # "sigAlgorithm":Ljava/lang/String;
    .restart local v18    # "sigAlgorithm":Ljava/lang/String;
    goto :goto_8

    .line 200
    .end local v16    # "keyAlgorithm":Ljava/lang/String;
    .end local v18    # "sigAlgorithm":Ljava/lang/String;
    .local v0, "keyAlgorithm":Ljava/lang/String;
    .restart local v2    # "sigAlgorithm":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 201
    .end local v0    # "keyAlgorithm":Ljava/lang/String;
    .end local v2    # "sigAlgorithm":Ljava/lang/String;
    .restart local v16    # "keyAlgorithm":Ljava/lang/String;
    .restart local v18    # "sigAlgorithm":Ljava/lang/String;
    :goto_7
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    nop

    .line 171
    .end local v10    # "index":I
    .end local v16    # "keyAlgorithm":Ljava/lang/String;
    .end local v18    # "sigAlgorithm":Ljava/lang/String;
    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v10, 0x0

    goto :goto_3

    .line 225
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;>;"
    .end local v8    # "alias":Ljava/lang/String;
    .end local v9    # "chain":[Ljava/security/cert/Certificate;
    .end local v11    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "certKeyAlg":Ljava/lang/String;
    .end local v13    # "certSigAlg":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 226
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 227
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 229
    :cond_e
    const/4 v0, 0x0

    return-object v0

    .line 158
    .end local v3    # "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .end local v4    # "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v5, p0

    const/4 v0, 0x0

    .line 159
    :goto_9
    return-object v0
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    aget-object v1, v0, v1

    :goto_0
    return-object v1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    aget-object v1, v0, v1

    :goto_0
    return-object v1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 108
    return-object v0

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 112
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    instance-of v2, v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_2

    .line 113
    array-length v0, v1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 114
    .local v0, "xcerts":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 115
    aget-object v3, v1, v2

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v0, v2

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 120
    .end local v0    # "xcerts":[Ljava/security/cert/X509Certificate;
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    :cond_2
    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 137
    return-object v0

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v0, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    .line 142
    :cond_1
    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
