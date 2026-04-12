.class final Lorg/openjsse/sun/security/ssl/HelloRequest;
.super Ljava/lang/Object;
.source "HelloRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestConsumer;,
        Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestProducer;,
        Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestKickstartProducer;,
        Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestMessage;
    }
.end annotation


# static fields
.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestKickstartProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestKickstartProducer;-><init>(Lorg/openjsse/sun/security/ssl/HelloRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/HelloRequest;->kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

    .line 39
    new-instance v0, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestConsumer;-><init>(Lorg/openjsse/sun/security/ssl/HelloRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/HelloRequest;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 41
    new-instance v0, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestProducer;-><init>(Lorg/openjsse/sun/security/ssl/HelloRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/HelloRequest;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
