.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;
.super Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;
.source "CertStatusExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OCSPStatusResponse"
.end annotation


# instance fields
.field final ocspResponse:Lsun/security/provider/certpath/OCSPResponse;


# direct methods
.method private constructor <init>(B[B)V
    .locals 2
    .param p1, "statusType"    # B
    .param p2, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;-><init>(B[B)V

    .line 504
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 510
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse;

    invoke-direct {v0, p2}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;->ocspResponse:Lsun/security/provider/certpath/OCSPResponse;

    .line 511
    return-void

    .line 505
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid OCSP status response: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(B[BLorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V
    .locals 0
    .param p1, "x0"    # B
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;-><init>(B[B)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 515
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"certificate status response type\": {0}\n\"OCSP status response\": \'{\'\n{1}\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 522
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-byte v1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;->statusType:B

    .line 523
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->nameOf(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;->ocspResponse:Lsun/security/provider/certpath/OCSPResponse;

    .line 524
    invoke-virtual {v2}, Lsun/security/provider/certpath/OCSPResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 527
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
