.class final Lorg/openjsse/sun/security/ssl/ClientKeyExchange;
.super Ljava/lang/Object;
.source "ClientKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ClientKeyExchange$ClientKeyExchangeConsumer;,
        Lorg/openjsse/sun/security/ssl/ClientKeyExchange$ClientKeyExchangeProducer;
    }
.end annotation


# static fields
.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientKeyExchange$ClientKeyExchangeConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ClientKeyExchange$ClientKeyExchangeConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientKeyExchange;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 39
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientKeyExchange$ClientKeyExchangeProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ClientKeyExchange$ClientKeyExchangeProducer;-><init>(Lorg/openjsse/sun/security/ssl/ClientKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientKeyExchange;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
