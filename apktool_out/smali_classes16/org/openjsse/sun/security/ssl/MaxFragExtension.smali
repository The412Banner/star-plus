.class final Lorg/openjsse/sun/security/ssl/MaxFragExtension;
.super Ljava/lang/Object;
.source "MaxFragExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthUpdate;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthConsumer;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthProducer;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthUpdate;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthConsumer;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthProducer;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$CHMaxFragmentLengthConsumer;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$CHMaxFragmentLengthProducer;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenStringizer;,
        Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final eeOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final maxFragLenStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final shOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$CHMaxFragmentLengthProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$CHMaxFragmentLengthProducer;-><init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 44
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$CHMaxFragmentLengthConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$CHMaxFragmentLengthConsumer;-><init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 47
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthProducer;-><init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthConsumer;-><init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 51
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthUpdate;-><init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->shOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthProducer;-><init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthConsumer;-><init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthUpdate;-><init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->eeOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 61
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenStringizer;-><init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension;->maxFragLenStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
