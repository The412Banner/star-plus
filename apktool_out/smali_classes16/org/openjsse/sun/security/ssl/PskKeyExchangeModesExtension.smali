.class final Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;
.super Ljava/lang/Object;
.source "PskKeyExchangeModesExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesOnTradeAbsence;,
        Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesOnLoadAbsence;,
        Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesProducer;,
        Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesConsumer;,
        Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesStringizer;,
        Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;,
        Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chOnTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final pkemStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesProducer;-><init>(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 43
    new-instance v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesConsumer;-><init>(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesOnLoadAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesOnLoadAbsence;-><init>(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 47
    new-instance v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesOnTradeAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesOnTradeAbsence;-><init>(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->chOnTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesStringizer;-><init>(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;->pkemStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
