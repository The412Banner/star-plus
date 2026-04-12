.class Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;
.super Ljava/lang/Object;
.source "StatusResponseManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/StatusResponseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OCSPFetchCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;",
        ">;"
    }
.end annotation


# instance fields
.field extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field ocspRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

.field responderIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/ResponderId;",
            ">;"
        }
    .end annotation
.end field

.field statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;


# direct methods
.method public constructor <init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;)V
    .locals 1
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager;
    .param p2, "info"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
    .param p3, "request"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 596
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    const-string v0, "Null StatusInfo not allowed"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    .line 599
    const-string v0, "Null OCSPStatusRequest not allowed"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->ocspRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 601
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->ocspRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->extensions:Ljava/util/List;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->extensions:Ljava/util/List;

    .line 602
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->ocspRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->responderIds:Ljava/util/List;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->responderIds:Ljava/util/List;

    .line 603
    return-void
.end method

.method private addToCache(Lsun/security/provider/certpath/CertId;Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;)V
    .locals 3
    .param p1, "certId"    # Lsun/security/provider/certpath/CertId;
    .param p2, "entry"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    .line 701
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->nextUpdate:Ljava/util/Date;

    const/4 v1, 0x0

    const-string v2, "respmgr"

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->access$100(Lorg/openjsse/sun/security/ssl/StatusResponseManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 702
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    const-string v0, "Not caching this OCSP response"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->access$200(Lorg/openjsse/sun/security/ssl/StatusResponseManager;)Lorg/openjsse/sun/security/util/Cache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 707
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added response for SN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 710
    invoke-virtual {p1}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 708
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    :cond_1
    :goto_0
    return-void
.end method

.method private getNextTaskDelay(Ljava/util/Date;)J
    .locals 5
    .param p1, "nextUpdate"    # Ljava/util/Date;

    .line 735
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->getCacheLifetime()I

    move-result v0

    .line 737
    .local v0, "lifetime":I
    if-eqz p1, :cond_1

    .line 738
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 740
    .local v1, "nuDiffSec":J
    if-lez v0, :cond_0

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    move-wide v1, v3

    .line 742
    .local v1, "delaySec":J
    goto :goto_1

    .line 743
    .end local v1    # "delaySec":J
    :cond_1
    if-lez v0, :cond_2

    int-to-long v1, v0

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 746
    .restart local v1    # "delaySec":J
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->call()Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
    .locals 7

    .line 615
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v1, 0x0

    const-string v2, "respmgr"

    if-eqz v0, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting fetch for SN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cid:Lsun/security/provider/certpath/CertId;

    .line 618
    invoke-virtual {v3}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    .line 616
    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responder:Ljava/net/URI;

    if-nez v0, :cond_2

    .line 627
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    const-string v0, "Null URI detected, OCSP fetch aborted"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    return-object v0

    .line 633
    :cond_2
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_3

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting fetch from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responder:Ljava/net/URI;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    :cond_3
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->access$000(Lorg/openjsse/sun/security/ssl/StatusResponseManager;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->responderIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 652
    :cond_4
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->extensions:Ljava/util/List;

    goto :goto_1

    :cond_5
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 654
    .local v0, "extsToSend":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    :goto_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cid:Lsun/security/provider/certpath/CertId;

    .line 655
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responder:Ljava/net/URI;

    .line 654
    invoke-static {v3, v4, v0}, Lsun/security/provider/certpath/OCSP;->getOCSPBytes(Ljava/util/List;Ljava/net/URI;Ljava/util/List;)[B

    move-result-object v3

    .line 658
    .local v3, "respBytes":[B
    if-eqz v3, :cond_7

    .line 660
    new-instance v4, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cid:Lsun/security/provider/certpath/CertId;

    invoke-direct {v4, v5, v3, v6}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;-><init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;[BLsun/security/provider/certpath/CertId;)V

    .line 664
    .local v4, "cacheEntry":Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_6

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 665
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OCSP Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->status:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    :cond_6
    iget-object v1, v4, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->status:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v5, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    if-ne v1, v5, :cond_8

    .line 671
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    iput-object v4, v1, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responseData:Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    .line 674
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cid:Lsun/security/provider/certpath/CertId;

    invoke-direct {p0, v1, v4}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->addToCache(Lsun/security/provider/certpath/CertId;Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;)V

    goto :goto_2

    .line 677
    .end local v4    # "cacheEntry":Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;
    :cond_7
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_8

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 678
    const-string v4, "No data returned from OCSP Responder"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    .end local v0    # "extsToSend":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .end local v3    # "respBytes":[B
    :cond_8
    :goto_2
    goto :goto_3

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "ioe":Ljava/io/IOException;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_9

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 684
    const-string v1, "Caught exception: "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$OCSPFetchCall;->statInfo:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    return-object v0
.end method
