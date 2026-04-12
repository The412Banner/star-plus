.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.super Ljava/lang/Object;
.source "CertStatusExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseConsumer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseProducer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqV2Consumer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqV2Producer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqV2Consumer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqV2Producer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestsStringizer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqConsumer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqProducer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqConsumer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqProducer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRespStringizer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestStringizer;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;,
        Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;
    }
.end annotation


# static fields
.field static final certStatusReqStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final certStatusReqV2Stringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final certStatusRespStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chV2NetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chV2OnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final ctNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final ctOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final shV2NetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shV2OnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 55
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->ctNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 65
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->ctOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 68
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestStringizer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->certStatusReqStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 71
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqV2Producer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqV2Producer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->chV2NetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqV2Consumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqV2Consumer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->chV2OnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 76
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqV2Producer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqV2Producer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->shV2NetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 78
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqV2Consumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqV2Consumer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->shV2OnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 81
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestsStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestsStringizer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->certStatusReqV2Stringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 84
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRespStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRespStringizer;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension;->certStatusRespStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
