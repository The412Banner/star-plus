.class final Lorg/openjsse/sun/security/ssl/AlpnExtension;
.super Ljava/lang/Object;
.source "AlpnExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnAbsence;,
        Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnConsumer;,
        Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnProducer;,
        Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnAbsence;,
        Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnConsumer;,
        Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnProducer;,
        Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnStringizer;,
        Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;
    }
.end annotation


# static fields
.field static final alpnCharset:Ljava/nio/charset/Charset;

.field static final alpnStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final eeOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnProducer;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnConsumer;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 51
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnAbsence;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 53
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnProducer;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnConsumer;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 55
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnAbsence;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 59
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnProducer;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->eeNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnConsumer;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->eeOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 61
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnAbsence;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->eeOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnStringizer;-><init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/AlpnExtension;->alpnStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 69
    new-instance v0, Lorg/openjsse/sun/security/ssl/AlpnExtension$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/AlpnExtension$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, "alpnCharsetString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    const-string v0, "ISO_8859_1"

    .line 76
    :cond_1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/AlpnExtension;->alpnCharset:Ljava/nio/charset/Charset;

    .line 77
    .end local v0    # "alpnCharsetString":Ljava/lang/String;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "jdk.tls.alpnCharset"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
