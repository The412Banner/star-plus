.class final Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;
.super Ljava/lang/Object;
.source "ECPointFormatsExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$SHECPointFormatsConsumer;,
        Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$CHECPointFormatsConsumer;,
        Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$CHECPointFormatsProducer;,
        Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;,
        Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsStringizer;,
        Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final epfStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$CHECPointFormatsProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$CHECPointFormatsProducer;-><init>(Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$CHECPointFormatsConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$CHECPointFormatsConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 48
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$SHECPointFormatsConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$SHECPointFormatsConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 51
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsStringizer;-><init>(Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;->epfStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
