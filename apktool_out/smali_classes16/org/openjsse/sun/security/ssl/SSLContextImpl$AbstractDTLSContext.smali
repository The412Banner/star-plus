.class abstract Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractDTLSContext"
.end annotation


# static fields
.field private static final serverDefaultCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private static final serverDefaultProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1288
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->supportedProtocols:Ljava/util/List;

    .line 1294
    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->serverDefaultProtocols:Ljava/util/List;

    .line 1300
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->supportedProtocols:Ljava/util/List;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->supportedCipherSuites:Ljava/util/List;

    .line 1302
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->serverDefaultProtocols:Ljava/util/List;

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$200(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

    .line 1304
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1279
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl$1;

    .line 1279
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;-><init>()V

    return-void
.end method


# virtual methods
.method createSSLEngineImpl()Lorg/openjsse/javax/net/ssl/SSLEngine;
    .locals 1

    .line 1328
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method createSSLEngineImpl(Ljava/lang/String;I)Lorg/openjsse/javax/net/ssl/SSLEngine;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 1333
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected bridge synthetic engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 1279
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineCreateSSLEngine()Lorg/openjsse/javax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 0

    .line 1279
    invoke-super {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineCreateSSLEngine(Ljava/lang/String;I)Lorg/openjsse/javax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method getServerDefaultCipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 1323
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

    return-object v0
.end method

.method getServerDefaultProtocolVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 1318
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->serverDefaultProtocols:Ljava/util/List;

    return-object v0
.end method

.method getSupportedCipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 1313
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->supportedCipherSuites:Ljava/util/List;

    return-object v0
.end method

.method getSupportedProtocolVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 1308
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;->supportedProtocols:Ljava/util/List;

    return-object v0
.end method

.method isDTLS()Z
    .locals 1

    .line 1338
    const/4 v0, 0x1

    return v0
.end method
