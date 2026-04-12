.class final Lorg/openjsse/sun/security/ssl/ServerNameExtension;
.super Ljava/lang/Object;
.source "ServerNameExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$EEServerNameConsumer;,
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$EEServerNameProducer;,
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNameConsumer;,
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNameProducer;,
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesStringizer;,
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesSpec;,
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameConsumer;,
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameProducer;,
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesStringizer;,
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameProducer;-><init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesStringizer;-><init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 61
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNameProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNameProducer;-><init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNameConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNameConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 65
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesStringizer;-><init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 68
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$EEServerNameProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$EEServerNameProducer;-><init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 70
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$EEServerNameConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$EEServerNameConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension;->eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
