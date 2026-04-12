.class final Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;
.super Ljava/lang/Object;
.source "ServerHello.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyExchangeProperties"
.end annotation


# instance fields
.field final cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

.field final keyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

.field final possessions:[Lorg/openjsse/sun/security/ssl/SSLPossession;


# direct methods
.method private constructor <init>(Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SSLKeyExchange;[Lorg/openjsse/sun/security/ssl/SSLPossession;)V
    .locals 0
    .param p1, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;
    .param p2, "keyExchange"    # Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .param p3, "possessions"    # [Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 472
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;->keyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    .line 473
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;->possessions:[Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 474
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SSLKeyExchange;[Lorg/openjsse/sun/security/ssl/SSLPossession;Lorg/openjsse/sun/security/ssl/ServerHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CipherSuite;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .param p3, "x2"    # [Lorg/openjsse/sun/security/ssl/SSLPossession;
    .param p4, "x3"    # Lorg/openjsse/sun/security/ssl/ServerHello$1;

    .line 464
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;-><init>(Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SSLKeyExchange;[Lorg/openjsse/sun/security/ssl/SSLPossession;)V

    return-void
.end method
