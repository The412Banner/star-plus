.class final Lorg/openjsse/sun/security/ssl/ServerKeyExchange;
.super Ljava/lang/Object;
.source "ServerKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ServerKeyExchange$ServerKeyExchangeConsumer;,
        Lorg/openjsse/sun/security/ssl/ServerKeyExchange$ServerKeyExchangeProducer;
    }
.end annotation


# static fields
.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerKeyExchange$ServerKeyExchangeConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerKeyExchange$ServerKeyExchangeConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerKeyExchange;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 39
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerKeyExchange$ServerKeyExchangeProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerKeyExchange$ServerKeyExchangeProducer;-><init>(Lorg/openjsse/sun/security/ssl/ServerKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerKeyExchange;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
