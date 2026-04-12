.class Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;
.super Ljava/lang/Object;
.source "StatusResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/StatusResponseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusInfo"
.end annotation


# instance fields
.field final cert:Ljava/security/cert/X509Certificate;

.field final cid:Lsun/security/provider/certpath/CertId;

.field final responder:Ljava/net/URI;

.field responseData:Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager;
    .param p2, "subjectCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    new-instance v0, Lsun/security/provider/certpath/CertId;

    new-instance v1, Lsun/security/x509/SerialNumber;

    .line 478
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, p3, v1}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V

    .line 477
    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;-><init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/CertId;)V

    .line 479
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/CertId;)V
    .locals 1
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager;
    .param p2, "subjectCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "certId"    # Lsun/security/provider/certpath/CertId;

    .line 488
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cert:Ljava/security/cert/X509Certificate;

    .line 490
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cid:Lsun/security/provider/certpath/CertId;

    .line 491
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->getURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responder:Ljava/net/URI;

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responseData:Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    .line 493
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;)V
    .locals 1
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager;
    .param p2, "orig"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;

    .line 503
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cert:Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cert:Ljava/security/cert/X509Certificate;

    .line 505
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cid:Lsun/security/provider/certpath/CertId;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cid:Lsun/security/provider/certpath/CertId;

    .line 506
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responder:Ljava/net/URI;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responder:Ljava/net/URI;

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responseData:Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    .line 508
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n\tCert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cert:Ljava/security/cert/X509Certificate;

    .line 519
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 518
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    const-string v1, "\n\tSerial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    const-string v1, "\n\tResponder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responder:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 522
    const-string v1, "\n\tResponse data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responseData:Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StatusInfo;->responseData:Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/StatusResponseManager$ResponseCacheEntry;->ocspBytes:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "<NULL>"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
