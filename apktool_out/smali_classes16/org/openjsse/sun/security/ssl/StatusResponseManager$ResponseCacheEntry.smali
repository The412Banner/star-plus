.class Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;
.super Ljava/lang/Object;
.source "StatusResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/StatusResponseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseCacheEntry"
.end annotation


# instance fields
.field final nextUpdate:Ljava/util/Date;

.field final ocspBytes:[B

.field final respId:Lsun/security/provider/certpath/ResponderId;

.field final singleResp:Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

.field final status:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;[BLsun/security/provider/certpath/CertId;)V
    .locals 4
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager;
    .param p2, "responseBytes"    # [B
    .param p3, "cid"    # Lsun/security/provider/certpath/CertId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const-string v0, "Non-null responseBytes required"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 552
    const-string v0, "Non-null Cert ID required"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 554
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->ocspBytes:[B

    .line 555
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->ocspBytes:[B

    invoke-direct {v0, v1}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V

    .line 556
    .local v0, "oResp":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual {v0}, Lsun/security/provider/certpath/OCSPResponse;->getResponseStatus()Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->status:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 557
    invoke-virtual {v0}, Lsun/security/provider/certpath/OCSPResponse;->getResponderId()Lsun/security/provider/certpath/ResponderId;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->respId:Lsun/security/provider/certpath/ResponderId;

    .line 558
    invoke-virtual {v0, p3}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->singleResp:Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    .line 559
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->status:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v2, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    if-ne v1, v2, :cond_1

    .line 560
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->singleResp:Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->singleResp:Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getNextUpdate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->nextUpdate:Ljava/util/Date;

    goto :goto_0

    .line 565
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find SingleResponse for SN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 567
    invoke-virtual {p3}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->nextUpdate:Ljava/util/Date;

    .line 572
    :goto_0
    return-void
.end method
