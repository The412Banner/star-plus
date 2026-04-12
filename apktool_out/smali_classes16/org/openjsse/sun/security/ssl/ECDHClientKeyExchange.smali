.class final Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;
.super Ljava/lang/Object;
.source "ECDHClientKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHEClientKeyExchangeConsumer;,
        Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHEClientKeyExchangeProducer;,
        Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeConsumer;,
        Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeProducer;,
        Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;
    }
.end annotation


# static fields
.field static final ecdhHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final ecdhHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final ecdheHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final ecdheHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;->ecdhHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeProducer;-><init>(Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;->ecdhHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 61
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHEClientKeyExchangeConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHEClientKeyExchangeConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;->ecdheHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHEClientKeyExchangeProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHEClientKeyExchangeProducer;-><init>(Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;->ecdheHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
