.class final Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;
.super Ljava/lang/Object;
.source "SupportedGroupsExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$EESupportedGroupsConsumer;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$EESupportedGroupsProducer;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsOnTradeAbsence;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsConsumer;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsProducer;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsStringizer;,
        Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chOnTradAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final sgsStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsProducer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 66
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsConsumer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 68
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsOnTradeAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsOnTradeAbsence;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->chOnTradAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 70
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsStringizer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->sgsStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$EESupportedGroupsProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$EESupportedGroupsProducer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 75
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$EESupportedGroupsConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$EESupportedGroupsConsumer;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;->eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
