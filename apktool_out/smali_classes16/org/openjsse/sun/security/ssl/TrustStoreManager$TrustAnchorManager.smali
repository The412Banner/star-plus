.class final Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;
.super Ljava/lang/Object;
.source "TrustStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/TrustStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrustAnchorManager"
.end annotation


# instance fields
.field private csRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation
.end field

.field private descriptor:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

.field private ksRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->descriptor:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 249
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->ksRef:Ljava/lang/ref/WeakReference;

    .line 250
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->csRef:Ljava/lang/ref/WeakReference;

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/TrustStoreManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$1;

    .line 231
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;-><init>()V

    return-void
.end method

.method private static loadKeyStore(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/security/KeyStore;
    .locals 9
    .param p0, "descriptor"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$400(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "trustmanager"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 339
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$500(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 342
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "No available key store"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_0
    return-object v4

    .line 350
    :cond_1
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$600(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$700(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .local v0, "ks":Ljava/security/KeyStore;
    goto :goto_0

    .line 353
    .end local v0    # "ks":Ljava/security/KeyStore;
    :cond_2
    nop

    .line 354
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$700(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$600(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-static {v0, v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 357
    .restart local v0    # "ks":Ljava/security/KeyStore;
    :goto_0
    const/4 v5, 0x0

    .line 358
    .local v5, "password":[C
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$800(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 359
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$800(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 362
    :cond_3
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$400(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 363
    :try_start_0
    new-instance v1, Lsun/security/action/OpenFileInputStreamAction;

    .line 364
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$500(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v1, v6}, Lsun/security/action/OpenFileInputStreamAction;-><init>(Ljava/io/File;)V

    .line 363
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v0, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 374
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_4
    goto :goto_2

    .line 363
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    .end local v0    # "ks":Ljava/security/KeyStore;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "password":[C
    .end local p0    # "descriptor":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 366
    .restart local v0    # "ks":Ljava/security/KeyStore;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "password":[C
    .restart local p0    # "descriptor":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    :catchall_1
    move-exception v7

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v8

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ks":Ljava/security/KeyStore;
    .end local v5    # "password":[C
    .end local p0    # "descriptor":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    :cond_5
    :goto_1
    throw v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "password":[C
    .restart local p0    # "descriptor":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_6

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not available key store: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 370
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$400(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 369
    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :cond_6
    return-object v4

    .line 376
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_7
    invoke-virtual {v0, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 379
    :goto_2
    return-object v0
.end method

.method private static loadTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;
    .locals 1
    .param p0, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 386
    if-nez p0, :cond_0

    .line 387
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 390
    :cond_0
    invoke-static {p0}, Lorg/openjsse/sun/security/validator/TrustStoreUtil;->getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized getKeyStore(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/security/KeyStore;
    .locals 4
    .param p1, "descriptor"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->descriptor:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 262
    .local v0, "temporaryDesc":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->ksRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore;

    .line 263
    .local v1, "ks":Ljava/security/KeyStore;
    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 264
    monitor-exit p0

    return-object v1

    .line 268
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    const-string v2, "trustmanager"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    const-string v2, "Reload the trust store"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_1
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->loadKeyStore(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/security/KeyStore;

    move-result-object v2

    move-object v1, v2

    .line 273
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->descriptor:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 274
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->ksRef:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    monitor-exit p0

    return-object v1

    .line 260
    .end local v0    # "temporaryDesc":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    .end local v1    # "ks":Ljava/security/KeyStore;
    .end local p1    # "descriptor":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized getTrustedCerts(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/util/Set;
    .locals 6
    .param p1, "descriptor"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "ks":Ljava/security/KeyStore;
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->descriptor:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 290
    .local v1, "temporaryDesc":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->csRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 291
    .local v2, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 293
    monitor-exit p0

    return-object v2

    .line 296
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->descriptor:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    goto :goto_0

    .line 300
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;
    :cond_1
    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->ksRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore;

    move-object v0, v3

    goto :goto_0

    .line 304
    :cond_2
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->descriptor:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 309
    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 310
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_3

    const-string v4, "trustmanager"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    const-string v4, "Reload the trust store"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :cond_3
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->loadKeyStore(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/security/KeyStore;

    move-result-object v4

    move-object v0, v4

    .line 317
    :cond_4
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_5

    const-string v4, "trustmanager"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 318
    const-string v4, "Reload trust certs"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :cond_5
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->loadTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;

    move-result-object v4

    move-object v2, v4

    .line 322
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_6

    const-string v4, "trustmanager"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reloaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trust certs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :cond_6
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->csRef:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    monitor-exit p0

    return-object v2

    .line 287
    .end local v0    # "ks":Ljava/security/KeyStore;
    .end local v1    # "temporaryDesc":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    .end local v2    # "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local p1    # "descriptor":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
