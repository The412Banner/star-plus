.class final Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;
.super Ljava/lang/Object;
.source "RenegoInfoExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoAbsence;,
        Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoConsumer;,
        Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoProducer;,
        Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$CHRenegotiationInfoAbsence;,
        Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$CHRenegotiationInfoConsumer;,
        Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$CHRenegotiationInfoProducer;,
        Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoStringizer;,
        Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final rniStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$CHRenegotiationInfoProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$CHRenegotiationInfoProducer;-><init>(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$CHRenegotiationInfoConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$CHRenegotiationInfoConsumer;-><init>(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 75
    new-instance v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$CHRenegotiationInfoAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$CHRenegotiationInfoAbsence;-><init>(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 78
    new-instance v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoProducer;-><init>(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 80
    new-instance v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoConsumer;-><init>(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 82
    new-instance v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoAbsence;-><init>(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 85
    new-instance v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoStringizer;-><init>(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;->rniStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
