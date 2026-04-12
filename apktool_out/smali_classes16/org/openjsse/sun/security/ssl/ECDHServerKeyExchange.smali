.class final Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange;
.super Ljava/lang/Object;
.source "ECDHServerKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeConsumer;,
        Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeProducer;,
        Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;
    }
.end annotation


# static fields
.field static final ecdheHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final ecdheHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange;->ecdheHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeProducer;-><init>(Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange;->ecdheHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
