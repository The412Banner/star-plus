.class final Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;
.super Ljava/lang/Object;
.source "ExtendedMasterSecretExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretAbsence;,
        Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretConsumer;,
        Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretProducer;,
        Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretAbsence;,
        Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretConsumer;,
        Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretProducer;,
        Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretStringizer;,
        Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final emsStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretProducer;-><init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 44
    new-instance v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 46
    new-instance v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretAbsence;-><init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretProducer;-><init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 51
    new-instance v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretConsumer;-><init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 53
    new-instance v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretAbsence;-><init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretStringizer;-><init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;->emsStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
