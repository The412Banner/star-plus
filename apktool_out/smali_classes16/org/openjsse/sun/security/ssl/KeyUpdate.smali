.class final Lorg/openjsse/sun/security/ssl/KeyUpdate;
.super Ljava/lang/Object;
.source "KeyUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateProducer;,
        Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateConsumer;,
        Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateKickstartProducer;,
        Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;,
        Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;
    }
.end annotation


# static fields
.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateKickstartProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateKickstartProducer;-><init>(Lorg/openjsse/sun/security/ssl/KeyUpdate$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate;->kickstartProducer:Lorg/openjsse/sun/security/ssl/SSLProducer;

    .line 48
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateConsumer;-><init>(Lorg/openjsse/sun/security/ssl/KeyUpdate$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateProducer;-><init>(Lorg/openjsse/sun/security/ssl/KeyUpdate$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
