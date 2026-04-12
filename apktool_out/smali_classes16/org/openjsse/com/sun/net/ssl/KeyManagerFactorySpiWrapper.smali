.class final Lorg/openjsse/com/sun/net/ssl/KeyManagerFactorySpiWrapper;
.super Lorg/openjsse/com/sun/net/ssl/KeyManagerFactorySpi;
.source "SSLSecurity.java"


# instance fields
.field private theKeyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "prov"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 450
    invoke-direct {p0}, Lorg/openjsse/com/sun/net/ssl/KeyManagerFactorySpi;-><init>()V

    .line 451
    nop

    .line 452
    invoke-static {p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/com/sun/net/ssl/KeyManagerFactorySpiWrapper;->theKeyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 453
    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Lorg/openjsse/com/sun/net/ssl/KeyManager;
    .locals 6

    .line 466
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/KeyManagerFactorySpiWrapper;->theKeyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 467
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 469
    .local v0, "kma":[Ljavax/net/ssl/KeyManager;
    array-length v1, v0

    new-array v1, v1, [Lorg/openjsse/com/sun/net/ssl/KeyManager;

    .line 471
    .local v1, "kmaw":[Lorg/openjsse/com/sun/net/ssl/KeyManager;
    const/4 v2, 0x0

    .local v2, "src":I
    const/4 v3, 0x0

    .local v3, "dst":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 472
    aget-object v4, v0, v2

    instance-of v4, v4, Lorg/openjsse/com/sun/net/ssl/KeyManager;

    if-nez v4, :cond_0

    .line 475
    aget-object v4, v0, v2

    instance-of v4, v4, Ljavax/net/ssl/X509KeyManager;

    if-eqz v4, :cond_1

    .line 476
    new-instance v4, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;

    aget-object v5, v0, v2

    check-cast v5, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v4, v5}, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;-><init>(Ljavax/net/ssl/X509KeyManager;)V

    aput-object v4, v1, v3

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 482
    :cond_0
    aget-object v4, v0, v2

    check-cast v4, Lorg/openjsse/com/sun/net/ssl/KeyManager;

    aput-object v4, v1, v3

    .line 483
    add-int/lit8 v3, v3, 0x1

    .line 485
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    :cond_2
    if-eq v3, v2, :cond_3

    .line 489
    new-array v4, v3, [Lorg/openjsse/com/sun/net/ssl/KeyManager;

    .line 490
    invoke-static {v1, v4}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->truncateArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/openjsse/com/sun/net/ssl/KeyManager;

    move-object v1, v4

    check-cast v1, [Lorg/openjsse/com/sun/net/ssl/KeyManager;

    .line 493
    :cond_3
    return-object v1
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/KeyManagerFactorySpiWrapper;->theKeyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 459
    return-void
.end method
