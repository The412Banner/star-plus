.class final Lorg/openjsse/sun/security/ssl/DHClientKeyExchange;
.super Ljava/lang/Object;
.source "DHClientKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeConsumer;,
        Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeProducer;,
        Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;
    }
.end annotation


# static fields
.field static final dhHandshakeConsumer:Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeConsumer;

.field static final dhHandshakeProducer:Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeConsumer;-><init>(Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange;->dhHandshakeConsumer:Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeConsumer;

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeProducer;-><init>(Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange;->dhHandshakeProducer:Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
