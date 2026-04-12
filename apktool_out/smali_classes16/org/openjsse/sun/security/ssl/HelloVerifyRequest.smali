.class final Lorg/openjsse/sun/security/ssl/HelloVerifyRequest;
.super Ljava/lang/Object;
.source "HelloVerifyRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestConsumer;,
        Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestProducer;,
        Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;
    }
.end annotation


# static fields
.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestConsumer;-><init>(Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 41
    new-instance v0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestProducer;-><init>(Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
