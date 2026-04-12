.class final Lorg/openjsse/sun/security/ssl/Finished;
.super Ljava/lang/Object;
.source "Finished.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/Finished$T13FinishedConsumer;,
        Lorg/openjsse/sun/security/ssl/Finished$T13FinishedProducer;,
        Lorg/openjsse/sun/security/ssl/Finished$T12FinishedConsumer;,
        Lorg/openjsse/sun/security/ssl/Finished$T12FinishedProducer;,
        Lorg/openjsse/sun/security/ssl/Finished$T13VerifyDataGenerator;,
        Lorg/openjsse/sun/security/ssl/Finished$T12VerifyDataGenerator;,
        Lorg/openjsse/sun/security/ssl/Finished$T10VerifyDataGenerator;,
        Lorg/openjsse/sun/security/ssl/Finished$S30VerifyDataGenerator;,
        Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;,
        Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;,
        Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    }
.end annotation


# static fields
.field static final t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$T12FinishedConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/Finished$T12FinishedConsumer;-><init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$T12FinishedProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/Finished$T12FinishedProducer;-><init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished;->t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 61
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedConsumer;-><init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedProducer;-><init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished;->t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
