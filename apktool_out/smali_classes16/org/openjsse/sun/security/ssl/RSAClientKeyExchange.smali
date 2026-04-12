.class final Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange;
.super Ljava/lang/Object;
.source "RSAClientKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeConsumer;,
        Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeProducer;,
        Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;
    }
.end annotation


# static fields
.field static final rsaHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final rsaHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeConsumer;-><init>(Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange;->rsaHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeProducer;-><init>(Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange;->rsaHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
