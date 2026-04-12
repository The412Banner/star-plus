.class final Lorg/openjsse/sun/security/ssl/DHServerKeyExchange;
.super Ljava/lang/Object;
.source "DHServerKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeConsumer;,
        Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeProducer;,
        Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;
    }
.end annotation


# static fields
.field static final dhHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final dhHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeConsumer;-><init>(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange;->dhHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeProducer;-><init>(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange;->dhHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
