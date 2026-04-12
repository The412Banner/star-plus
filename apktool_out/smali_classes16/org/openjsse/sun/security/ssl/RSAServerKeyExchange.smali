.class final Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange;
.super Ljava/lang/Object;
.source "RSAServerKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeConsumer;,
        Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeProducer;,
        Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;
    }
.end annotation


# static fields
.field static final rsaHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final rsaHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeConsumer;-><init>(Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange;->rsaHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeProducer;-><init>(Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange;->rsaHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
