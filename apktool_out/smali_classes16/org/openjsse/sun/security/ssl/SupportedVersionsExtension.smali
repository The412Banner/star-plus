.class final Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;
.super Ljava/lang/Object;
.source "SupportedVersionsExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$HRRSupportedVersionsReproducer;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$HRRSupportedVersionsConsumer;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$HRRSupportedVersionsProducer;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsConsumer;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsProducer;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsStringizer;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsConsumer;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsProducer;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsStringizer;,
        Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final hrrNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final hrrOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final hrrReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final hrrStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsProducer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 46
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsConsumer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 48
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsStringizer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 51
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsProducer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 53
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsConsumer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 55
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsStringizer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$HRRSupportedVersionsProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$HRRSupportedVersionsProducer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->hrrNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$HRRSupportedVersionsConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$HRRSupportedVersionsConsumer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->hrrOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 62
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$HRRSupportedVersionsReproducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$HRRSupportedVersionsReproducer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->hrrReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsStringizer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;->hrrStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
