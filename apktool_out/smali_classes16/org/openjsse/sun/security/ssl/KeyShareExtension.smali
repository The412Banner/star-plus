.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareConsumer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareReproducer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareProducer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareStringizer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareSpec;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareAbsence;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareConsumer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareProducer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareStringizer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareOnTradeAbsence;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareConsumer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareProducer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareStringizer;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;,
        Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chOnTradAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final hrrNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final hrrNetworkReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final hrrOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final hrrStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareProducer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareConsumer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 62
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareOnTradeAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareOnTradeAbsence;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->chOnTradAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareStringizer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 67
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareProducer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 69
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareConsumer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 71
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareAbsence;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareStringizer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 76
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareProducer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->hrrNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 78
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareConsumer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->hrrOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 80
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareReproducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareReproducer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->hrrNetworkReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 82
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareStringizer;-><init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension;->hrrStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
