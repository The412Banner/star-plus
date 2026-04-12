.class final Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;
.super Ljava/lang/Object;
.source "SignatureAlgorithmsExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesAbsence;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesUpdate;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesConsumer;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesProducer;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnTradeAbsence;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnLoadAbsence;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesUpdate;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesConsumer;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesProducer;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesStringizer;,
        Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chOnTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final crNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final crOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final crOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final crOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesProducer;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 47
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesConsumer;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnLoadAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnLoadAbsence;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 51
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesUpdate;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 53
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnTradeAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnTradeAbsence;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->chOnTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesProducer;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->crNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesConsumer;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->crOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesAbsence;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->crOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 62
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesUpdate;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->crOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 65
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesStringizer;-><init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;->ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
