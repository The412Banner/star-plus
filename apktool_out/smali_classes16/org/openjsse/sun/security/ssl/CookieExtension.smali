.class public Lorg/openjsse/sun/security/ssl/CookieExtension;
.super Ljava/lang/Object;
.source "CookieExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieReproducer;,
        Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieConsumer;,
        Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieProducer;,
        Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieUpdate;,
        Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieConsumer;,
        Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieProducer;,
        Lorg/openjsse/sun/security/ssl/CookieExtension$CookieStringizer;,
        Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final cookieStringizer:Lorg/openjsse/sun/security/ssl/CookieExtension$CookieStringizer;

.field static final hrrNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final hrrNetworkReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final hrrOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieProducer;-><init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CookieExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 44
    new-instance v0, Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CookieExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 46
    new-instance v0, Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieUpdate;-><init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CookieExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieProducer;-><init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CookieExtension;->hrrNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 51
    new-instance v0, Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CookieExtension;->hrrOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieReproducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieReproducer;-><init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CookieExtension;->hrrNetworkReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 57
    new-instance v0, Lorg/openjsse/sun/security/ssl/CookieExtension$CookieStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CookieExtension$CookieStringizer;-><init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CookieExtension;->cookieStringizer:Lorg/openjsse/sun/security/ssl/CookieExtension$CookieStringizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
