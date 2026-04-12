.class final Lorg/openjsse/sun/security/ssl/ClientHello;
.super Ljava/lang/Object;
.source "ClientHello.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ClientHello$D13ClientHelloConsumer;,
        Lorg/openjsse/sun/security/ssl/ClientHello$D12ClientHelloConsumer;,
        Lorg/openjsse/sun/security/ssl/ClientHello$T13ClientHelloConsumer;,
        Lorg/openjsse/sun/security/ssl/ClientHello$T12ClientHelloConsumer;,
        Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloConsumer;,
        Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloProducer;,
        Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloKickstartProducer;,
        Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    }
.end annotation


# static fields
.field private static final d12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field private static final d13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

.field private static final t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field private static final t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloKickstartProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloKickstartProducer;-><init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

    .line 52
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloProducer;-><init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 57
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientHello$T12ClientHelloConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$T12ClientHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 59
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientHello$T13ClientHelloConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$T13ClientHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 61
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientHello$D12ClientHelloConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$D12ClientHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->d12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientHello$D13ClientHelloConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$D13ClientHelloConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->d13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 49
    sget-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method

.method static synthetic access$700()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 49
    sget-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->d13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method

.method static synthetic access$800()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 49
    sget-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->d12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method

.method static synthetic access$900()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;
    .locals 1

    .line 49
    sget-object v0, Lorg/openjsse/sun/security/ssl/ClientHello;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    return-object v0
.end method
