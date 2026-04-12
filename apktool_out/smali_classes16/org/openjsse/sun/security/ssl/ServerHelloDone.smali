.class final Lorg/openjsse/sun/security/ssl/ServerHelloDone;
.super Ljava/lang/Object;
.source "ServerHelloDone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneConsumer;,
        Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneProducer;,
        Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneMessage;
    }
.end annotation


# static fields
.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHelloDone$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHelloDone;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 38
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneProducer;-><init>(Lorg/openjsse/sun/security/ssl/ServerHelloDone$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHelloDone;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
