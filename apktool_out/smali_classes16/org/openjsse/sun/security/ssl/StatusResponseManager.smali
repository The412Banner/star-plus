.class final Lorg/openjsse/sun/security/ssl/StatusResponseManager;
.super Ljava/lang/Object;
.source "StatusResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;,
        Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;,
        Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;,
        Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHE_LIFETIME:I = 0xe10

.field private static final DEFAULT_CACHE_SIZE:I = 0x100

.field private static final DEFAULT_CORE_THREADS:I = 0x8


# instance fields
.field private final cacheCapacity:I

.field private final cacheLifetime:I

.field private final defaultResponder:Ljava/net/URI;

.field private final ignoreExtensions:Z

.field private final respOverride:Z

.field private final responseCache:Lorg/openjsse/sun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjsse/sun/security/util/Cache<",
            "Lsun/security/provider/certpath/CertId;",
            "Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method constructor <init>()V
    .locals 9

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "jdk.tls.stapling.cacheSize"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, "cap":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheCapacity:I

    .line 83
    new-instance v2, Lsun/security/action/GetIntegerAction;

    const-string v3, "jdk.tls.stapling.cacheLifetime"

    const/16 v4, 0xe10

    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 86
    .local v2, "life":I
    if-lez v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput v3, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheLifetime:I

    .line 88
    nop

    .line 89
    const-string v3, "jdk.tls.stapling.responderURI"

    invoke-static {v3}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "uriStr":Ljava/lang/String;
    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 94
    :catch_0
    move-exception v4

    .line 95
    .local v4, "urise":Ljava/net/URISyntaxException;
    const/4 v5, 0x0

    .local v5, "tmpURI":Ljava/net/URI;
    goto :goto_3

    .line 92
    .end local v4    # "urise":Ljava/net/URISyntaxException;
    .end local v5    # "tmpURI":Ljava/net/URI;
    :cond_2
    const/4 v4, 0x0

    :goto_2
    move-object v5, v4

    .line 96
    .restart local v5    # "tmpURI":Ljava/net/URI;
    nop

    .line 97
    :goto_3
    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->defaultResponder:Ljava/net/URI;

    .line 99
    new-instance v4, Lsun/security/action/GetBooleanAction;

    const-string v6, "jdk.tls.stapling.responderOverride"

    invoke-direct {v4, v6}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->respOverride:Z

    .line 101
    new-instance v4, Lsun/security/action/GetBooleanAction;

    const-string v6, "jdk.tls.stapling.ignoreExtensions"

    invoke-direct {v4, v6}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->ignoreExtensions:Z

    .line 104
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v6, Lorg/openjsse/sun/security/ssl/StatusResponseManager$1;

    invoke-direct {v6, p0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$1;-><init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/16 v8, 0x8

    invoke-direct {v4, v8, v6, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 113
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 114
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V

    .line 116
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v6, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 117
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 118
    iget v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheCapacity:I

    iget v4, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheLifetime:I

    invoke-static {v1, v4}, Lorg/openjsse/sun/security/util/Cache;->newSoftMemoryCache(II)Lorg/openjsse/sun/security/util/Cache;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->responseCache:Lorg/openjsse/sun/security/util/Cache;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lorg/openjsse/sun/security/ssl/StatusResponseManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    .line 61
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->ignoreExtensions:Z

    return v0
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/ssl/StatusResponseManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    .line 61
    iget v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheLifetime:I

    return v0
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/ssl/StatusResponseManager;)Lorg/openjsse/sun/security/util/Cache;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    .line 61
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->responseCache:Lorg/openjsse/sun/security/util/Cache;

    return-object v0
.end method

.method private getFromCache(Lsun/security/provider/certpath/CertId;Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;)Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;
    .locals 6
    .param p1, "cid"    # Lsun/security/provider/certpath/CertId;
    .param p2, "ocspRequest"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 396
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "respmgr"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Extension;

    .line 397
    .local v1, "ext":Ljava/security/cert/Extension;
    invoke-interface {v1}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lsun/security/x509/PKIXExtensions;->OCSPNonce_Id:Lsun/security/util/ObjectIdentifier;

    .line 398
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 399
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "Nonce extension found, skipping cache check"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 405
    .end local v1    # "ext":Ljava/security/cert/Extension;
    :cond_1
    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->responseCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    .line 412
    .local v0, "respEntry":Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;
    if-eqz v0, :cond_4

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->nextUpdate:Ljava/util/Date;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->nextUpdate:Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 413
    invoke-virtual {v1, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    const-string v1, "nextUpdate threshold exceeded, purging from cache"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :cond_3
    const/4 v0, 0x0

    .line 421
    :cond_4
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_6

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check cache for SN"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    invoke-virtual {p1}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_5

    const-string v3, "HIT"

    goto :goto_1

    :cond_5
    const-string v3, "MISS"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 422
    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    :cond_6
    return-object v0
.end method

.method static final processStapling(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;)Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .locals 24
    .param p0, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 752
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 753
    .local v1, "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    const/4 v2, 0x0

    .line 754
    .local v2, "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    const/4 v3, 0x0

    .line 755
    .local v3, "type":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    const/4 v4, 0x0

    .line 761
    .local v4, "req":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isStaplingEnabled(Z)Z

    move-result v5

    const-string v8, "ssl,handshake"

    if-eqz v5, :cond_21

    iget-boolean v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v5, :cond_0

    move-object/from16 v16, v1

    goto/16 :goto_d

    .line 769
    :cond_0
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    .line 771
    .local v5, "exts":Ljava/util/Map;, "Ljava/util/Map<Lorg/openjsse/sun/security/ssl/SSLExtension;Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;>;"
    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;

    .line 773
    .local v9, "statReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;
    sget-object v10, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 774
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;

    .line 784
    .local v10, "statReqV2":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;
    const-string v11, "ssl,handshake,verbose"

    if-eqz v10, :cond_c

    iget-object v12, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v12}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v12

    if-nez v12, :cond_c

    .line 785
    sget-boolean v12, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v12, :cond_1

    invoke-static {v11}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 786
    const-string v12, "SH Processing status_request_v2 extension"

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    :cond_1
    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 790
    const/4 v12, -0x1

    .line 791
    .local v12, "ocspIdx":I
    const/4 v13, -0x1

    .line 792
    .local v13, "ocspMultiIdx":I
    iget-object v14, v10, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;->certStatusRequests:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 793
    .local v14, "reqItems":[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
    const/4 v15, 0x0

    .local v15, "pos":I
    :goto_0
    array-length v7, v14

    if-ge v15, v7, :cond_8

    const/4 v7, -0x1

    if-eq v12, v7, :cond_3

    if-ne v13, v7, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_4

    .line 795
    :cond_3
    :goto_1
    aget-object v7, v14, v15

    .line 796
    .local v7, "item":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
    iget-byte v6, v7, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->statusType:B

    .line 797
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->valueOf(B)Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    move-result-object v6

    .line 798
    .local v6, "curType":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    if-gez v12, :cond_6

    move-object/from16 v16, v1

    .end local v1    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .local v16, "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    sget-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v6, v1, :cond_5

    .line 799
    move-object v1, v7

    check-cast v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 802
    .local v1, "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    move-object/from16 v17, v2

    .end local v2    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v17, "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->responderIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 803
    move v12, v15

    .line 805
    .end local v1    # "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    :cond_4
    goto :goto_3

    .line 798
    .end local v17    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v2    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_5
    move-object/from16 v17, v2

    .end local v2    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v17    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    goto :goto_2

    .end local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .end local v17    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v1, "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .restart local v2    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 805
    .end local v1    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .end local v2    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .restart local v17    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :goto_2
    if-gez v13, :cond_4

    sget-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v6, v1, :cond_4

    .line 807
    move-object v1, v7

    check-cast v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 810
    .local v1, "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->responderIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 811
    move v2, v15

    move v13, v2

    .line 794
    .end local v1    # "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    .end local v6    # "curType":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    .end local v7    # "item":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
    :cond_7
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    const/4 v6, 0x0

    goto :goto_0

    .line 793
    .end local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .end local v17    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v1, "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .restart local v2    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_8
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 815
    .end local v1    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .end local v2    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v15    # "pos":I
    .restart local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .restart local v17    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :goto_4
    if-ltz v13, :cond_9

    .line 816
    aget-object v4, v14, v13

    .line 817
    iget-byte v1, v4, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->statusType:B

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->valueOf(B)Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    move-result-object v3

    move-object/from16 v2, v17

    goto :goto_5

    .line 818
    :cond_9
    if-ltz v12, :cond_a

    .line 819
    aget-object v4, v14, v12

    .line 820
    iget-byte v1, v4, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->statusType:B

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->valueOf(B)Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    move-result-object v3

    move-object/from16 v2, v17

    goto :goto_5

    .line 822
    :cond_a
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_b

    .line 823
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 824
    const-string v1, "Warning: No suitable request found in the status_request_v2 extension."

    const/4 v2, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    .end local v12    # "ocspIdx":I
    .end local v13    # "ocspMultiIdx":I
    .end local v14    # "reqItems":[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
    :cond_b
    move-object/from16 v2, v17

    goto :goto_5

    .line 784
    .end local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .end local v17    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v1    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .restart local v2    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_c
    move-object/from16 v16, v1

    .line 838
    .end local v1    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .restart local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    :goto_5
    if-eqz v9, :cond_10

    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    if-nez v4, :cond_10

    .line 840
    :cond_d
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_e

    invoke-static {v11}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 841
    const-string v1, "SH Processing status_request extension"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    :cond_e
    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 844
    iget-object v1, v9, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->statusRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->statusType:B

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->valueOf(B)Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    move-result-object v3

    .line 846
    sget-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v3, v1, :cond_10

    .line 849
    iget-object v1, v9, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->statusRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    check-cast v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 851
    .local v1, "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->responderIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 852
    move-object v4, v1

    goto :goto_6

    .line 854
    :cond_f
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_10

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 855
    const-string v6, "Warning: No suitable request found in the status_request extension."

    const/4 v7, 0x0

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6, v11}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    .end local v1    # "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    :cond_10
    :goto_6
    if-eqz v3, :cond_1f

    if-eqz v4, :cond_1f

    if-nez v2, :cond_11

    goto/16 :goto_c

    .line 874
    :cond_11
    const/4 v1, 0x0

    .line 875
    .local v1, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 876
    .local v7, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v11, v7, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v11, :cond_12

    .line 877
    move-object v1, v7

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 878
    goto :goto_8

    .line 880
    .end local v7    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_12
    goto :goto_7

    .line 882
    :cond_13
    :goto_8
    if-nez v1, :cond_15

    .line 883
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_14

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 884
    const-string v6, "Warning: no X.509 certificates found.  Stapling is disabled."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    :cond_14
    const/4 v6, 0x0

    return-object v6

    .line 891
    :cond_15
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    .line 892
    .local v6, "certs":[Ljava/security/cert/X509Certificate;
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 893
    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getStatusResponseManager()Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    move-result-object v7

    .line 894
    .local v7, "statRespMgr":Lorg/openjsse/sun/security/ssl/StatusResponseManager;
    if-eqz v7, :cond_1d

    .line 899
    iget-object v11, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 900
    invoke-virtual {v11}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v11

    if-eqz v11, :cond_16

    sget-object v11, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    move-object/from16 v18, v11

    goto :goto_9

    :cond_16
    move-object/from16 v18, v3

    .line 902
    .local v18, "fetchType":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    :goto_9
    iget-wide v11, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->statusRespTimeout:J

    sget-object v23, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v17, v7

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-wide/from16 v21, v11

    invoke-virtual/range {v17 .. v23}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->get(Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;[Ljava/security/cert/X509Certificate;JLjava/util/concurrent/TimeUnit;)Ljava/util/Map;

    move-result-object v11

    .line 904
    .local v11, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 905
    sget-boolean v12, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v12, :cond_17

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 906
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response manager returned "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 907
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " entries."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    .line 906
    invoke-static {v12, v14}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    :cond_17
    sget-object v12, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v3, v12, :cond_1a

    .line 912
    const/4 v12, 0x0

    aget-object v13, v6, v12

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 913
    .local v12, "respDER":[B
    if-eqz v12, :cond_18

    array-length v13, v12

    if-gtz v13, :cond_1a

    .line 914
    :cond_18
    sget-boolean v13, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v13, :cond_19

    .line 915
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 916
    const-string v8, "Warning: Null or zero-length response found for leaf certificate. Stapling is disabled."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v8, v13}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    :cond_19
    const/4 v8, 0x0

    return-object v8

    .line 923
    .end local v12    # "respDER":[B
    :cond_1a
    new-instance v8, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    invoke-direct {v8, v2, v3, v4, v11}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;-><init>(Lorg/openjsse/sun/security/ssl/SSLExtension;Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;Ljava/util/Map;)V

    move-object/from16 v16, v8

    .end local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .local v8, "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    goto :goto_a

    .line 925
    .end local v8    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .restart local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    :cond_1b
    sget-boolean v12, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v12, :cond_1c

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 926
    const-string v8, "Warning: no OCSP responses obtained.  Stapling is disabled."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    .end local v18    # "fetchType":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    :cond_1c
    :goto_a
    goto :goto_b

    .line 933
    .end local v11    # "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    :cond_1d
    sget-boolean v11, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v11, :cond_1e

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 934
    const-string v8, "Warning: lazy initialization of the StatusResponseManager failed.  Stapling is disabled."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v11}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    :cond_1e
    const/16 v16, 0x0

    .line 941
    :goto_b
    return-object v16

    .line 866
    .end local v1    # "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .end local v6    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v7    # "statRespMgr":Lorg/openjsse/sun/security/ssl/StatusResponseManager;
    :cond_1f
    :goto_c
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_20

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 867
    const-string v1, "No suitable status_request or status_request_v2, stapling is disabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    :cond_20
    const/4 v1, 0x0

    return-object v1

    .line 761
    .end local v5    # "exts":Ljava/util/Map;, "Ljava/util/Map<Lorg/openjsse/sun/security/ssl/SSLExtension;Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;>;"
    .end local v9    # "statReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;
    .end local v10    # "statReqV2":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;
    .end local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .local v1, "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    :cond_21
    move-object/from16 v16, v1

    .line 762
    .end local v1    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    .restart local v16    # "params":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    :goto_d
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_22

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 763
    const-string v1, "Staping disabled or is a resumed session"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 175
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "respmgr"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Clearing response cache"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->responseCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/util/Cache;->clear()V

    .line 179
    return-void
.end method

.method get(Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;[Ljava/security/cert/X509Certificate;JLjava/util/concurrent/TimeUnit;)Ljava/util/Map;
    .locals 16
    .param p1, "type"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    .param p2, "request"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
    .param p3, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;",
            "Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation

    .line 268
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 269
    .local v4, "responseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 271
    .local v5, "requestList":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;>;"
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v6, 0x0

    const-string v7, "respmgr"

    if-eqz v0, :cond_0

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Beginning check: Type = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", Chain length = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v8, v3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_0
    array-length v0, v3

    const/4 v8, 0x2

    if-ge v0, v8, :cond_1

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 284
    :cond_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    const-string v8, "Exception during CertId creation: "

    const/4 v9, 0x1

    if-ne v2, v0, :cond_4

    .line 287
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 288
    .local v0, "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    new-instance v10, Lsun/security/provider/certpath/CertId;

    aget-object v9, v3, v9

    new-instance v11, Lsun/security/x509/SerialNumber;

    aget-object v12, v3, v6

    .line 289
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v11, v12}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v10, v9, v11}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V

    move-object v9, v10

    .line 290
    .local v9, "cid":Lsun/security/provider/certpath/CertId;
    invoke-direct {v1, v9, v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->getFromCache(Lsun/security/provider/certpath/CertId;Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;)Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    move-result-object v10

    .line 291
    .local v10, "cacheEntry":Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;
    if-eqz v10, :cond_2

    .line 292
    aget-object v11, v3, v6

    iget-object v12, v10, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->ocspBytes:[B

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 294
    :cond_2
    new-instance v11, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    aget-object v12, v3, v6

    invoke-direct {v11, v1, v12, v9}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;-><init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/CertId;)V

    .line 295
    .local v11, "sInfo":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
    new-instance v12, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;

    invoke-direct {v12, v1, v11, v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;-><init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v0    # "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    .end local v9    # "cid":Lsun/security/provider/certpath/CertId;
    .end local v10    # "cacheEntry":Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;
    .end local v11    # "sInfo":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "exc":Ljava/io/IOException;
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v9, :cond_3

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 299
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .end local v0    # "exc":Ljava/io/IOException;
    :cond_3
    :goto_0
    goto/16 :goto_4

    .line 303
    :cond_4
    sget-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v2, v0, :cond_8

    .line 308
    move-object/from16 v10, p2

    check-cast v10, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 310
    .local v10, "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "ctr":I
    :goto_1
    array-length v0, v3

    sub-int/2addr v0, v9

    if-ge v11, v0, :cond_7

    .line 314
    :try_start_1
    new-instance v0, Lsun/security/provider/certpath/CertId;

    add-int/lit8 v12, v11, 0x1

    aget-object v12, v3, v12

    new-instance v13, Lsun/security/x509/SerialNumber;

    aget-object v14, v3, v11

    .line 315
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v14

    invoke-direct {v13, v14}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v12, v13}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V

    .line 316
    .local v0, "cid":Lsun/security/provider/certpath/CertId;
    nop

    .line 317
    invoke-direct {v1, v0, v10}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->getFromCache(Lsun/security/provider/certpath/CertId;Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;)Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    move-result-object v12

    .line 318
    .local v12, "cacheEntry":Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;
    if-eqz v12, :cond_5

    .line 319
    aget-object v13, v3, v11

    iget-object v14, v12, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->ocspBytes:[B

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 321
    :cond_5
    new-instance v13, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    aget-object v14, v3, v11

    invoke-direct {v13, v1, v14, v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;-><init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/CertId;)V

    .line 322
    .local v13, "sInfo":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
    new-instance v14, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;

    invoke-direct {v14, v1, v13, v10}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;-><init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;)V

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    .end local v0    # "cid":Lsun/security/provider/certpath/CertId;
    .end local v12    # "cacheEntry":Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;
    .end local v13    # "sInfo":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
    :goto_2
    goto :goto_3

    .line 324
    :catch_1
    move-exception v0

    .line 325
    .local v0, "exc":Ljava/io/IOException;
    sget-boolean v12, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v12, :cond_6

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 326
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    .end local v0    # "exc":Ljava/io/IOException;
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 331
    .end local v10    # "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    .end local v11    # "ctr":I
    :cond_7
    goto :goto_4

    .line 332
    :cond_8
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_9

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported status request type: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 344
    :try_start_2
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    .line 345
    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    :try_start_3
    invoke-virtual {v0, v5, v8, v9, v10}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    .line 349
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/Future;

    .line 350
    .local v12, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;>;"
    invoke-interface {v12}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v13

    if-nez v13, :cond_a

    .line 351
    goto :goto_5

    .line 354
    :cond_a
    invoke-interface {v12}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v13

    if-nez v13, :cond_d

    .line 355
    invoke-interface {v12}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    .line 356
    .local v13, "info":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
    if-eqz v13, :cond_b

    iget-object v14, v13, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responseData:Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    if-eqz v14, :cond_b

    .line 357
    iget-object v14, v13, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cert:Ljava/security/cert/X509Certificate;

    iget-object v15, v13, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responseData:Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    iget-object v15, v15, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->ocspBytes:[B

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 359
    :cond_b
    sget-boolean v14, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v14, :cond_c

    .line 360
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 361
    const-string v14, "Completed task had no response data"

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    .end local v13    # "info":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
    :cond_c
    :goto_6
    goto :goto_7

    .line 365
    :cond_d
    sget-boolean v13, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v13, :cond_e

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 366
    const-string v13, "Found cancelled task"

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2

    .line 369
    .end local v12    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;>;"
    :cond_e
    :goto_7
    goto :goto_5

    .line 375
    .end local v0    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;>;>;"
    :cond_f
    goto :goto_a

    .line 370
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_8
    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    .line 372
    .local v0, "exc":Ljava/lang/Exception;
    :goto_9
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_11

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 373
    const-string v6, "Exception when getting data: "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 341
    .end local v0    # "exc":Ljava/lang/Exception;
    :cond_10
    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    .line 378
    :cond_11
    :goto_a
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getCacheCapacity()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheCapacity:I

    return v0
.end method

.method getCacheLifetime()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheLifetime:I

    return v0
.end method

.method getDefaultResponder()Ljava/net/URI;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->defaultResponder:Ljava/net/URI;

    return-object v0
.end method

.method getIgnoreExtensions()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->ignoreExtensions:Z

    return v0
.end method

.method getURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    .line 210
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "respmgr"

    if-eqz v0, :cond_1

    .line 211
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "OCSP NoCheck extension found.  OCSP will be skipped"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->defaultResponder:Ljava/net/URI;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->respOverride:Z

    if-eqz v0, :cond_3

    .line 217
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder override: URI is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->defaultResponder:Ljava/net/URI;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->defaultResponder:Ljava/net/URI;

    return-object v0

    .line 223
    :cond_3
    invoke-static {p1}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;

    move-result-object v0

    .line 224
    .local v0, "certURI":Ljava/net/URI;
    if-eqz v0, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->defaultResponder:Ljava/net/URI;

    :goto_0
    return-object v1
.end method

.method getURIOverride()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->respOverride:Z

    return v0
.end method

.method shutdown()V
    .locals 2

    .line 232
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "respmgr"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shutting down "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getActiveCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " active threads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 237
    return-void
.end method

.method size()I
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->responseCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/util/Cache;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusResponseManager: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Core threads: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->threadMgr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, ", Cache timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheLifetime:I

    if-lez v1, :cond_0

    .line 436
    iget v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheLifetime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 438
    :cond_0
    const-string v1, " indefinite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :goto_0
    const-string v1, ", Cache MaxSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheCapacity:I

    if-lez v1, :cond_1

    .line 443
    iget v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->cacheCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 445
    :cond_1
    const-string v1, " unbounded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :goto_1
    const-string v1, ", Default URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->defaultResponder:Ljava/net/URI;

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->defaultResponder:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 452
    :cond_2
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
