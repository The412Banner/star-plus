.class final Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
.super Ljava/lang/Object;
.source "StatusResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/StatusResponseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StaplingParameters"
.end annotation


# instance fields
.field final responseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation
.end field

.field final statReqData:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

.field final statReqType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

.field final statusRespExt:Lorg/openjsse/sun/security/ssl/SSLExtension;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLExtension;Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;Ljava/util/Map;)V
    .locals 0
    .param p1, "ext"    # Lorg/openjsse/sun/security/ssl/SSLExtension;
    .param p2, "type"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    .param p3, "req"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/SSLExtension;",
            "Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;",
            "Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;",
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;)V"
        }
    .end annotation

    .line 955
    .local p4, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->statusRespExt:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 957
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->statReqType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    .line 958
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->statReqData:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 959
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->responseMap:Ljava/util/Map;

    .line 960
    return-void
.end method
