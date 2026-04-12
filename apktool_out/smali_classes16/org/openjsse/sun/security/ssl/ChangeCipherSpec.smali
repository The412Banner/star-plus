.class final Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;
.super Ljava/lang/Object;
.source "ChangeCipherSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T13ChangeCipherSpecConsumer;,
        Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecConsumer;,
        Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecProducer;
    }
.end annotation


# static fields
.field static final t10Consumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final t10Producer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final t13Consumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;->t10Consumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 47
    new-instance v0, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecProducer;-><init>(Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;->t10Producer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T13ChangeCipherSpecConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T13ChangeCipherSpecConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;->t13Consumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
