.class abstract Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractTLSContext"
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
    .locals 9

    .line 585
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 586
    new-array v0, v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v6, v0, v5

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v6, v0, v4

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v6, v0, v3

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v6, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->supportedProtocols:Ljava/util/List;

    .line 593
    new-array v0, v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v5

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->serverDefaultProtocols:Ljava/util/List;

    goto :goto_0

    .line 601
    :cond_0
    const/4 v0, 0x6

    new-array v6, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v7, v6, v5

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v7, v6, v4

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v7, v6, v3

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v7, v6, v2

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v7, v6, v1

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->supportedProtocols:Ljava/util/List;

    .line 610
    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v6, v0, v5

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v6, v0, v4

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v4, v0, v3

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v3, v0, v2

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v2, v0, v1

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v8

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->serverDefaultProtocols:Ljava/util/List;

    .line 621
    :goto_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->supportedProtocols:Ljava/util/List;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->supportedCipherSuites:Ljava/util/List;

    .line 623
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->serverDefaultProtocols:Ljava/util/List;

    invoke-static {v0, v5}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$200(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

    .line 625
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 577
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl$1;

    .line 577
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;-><init>()V

    return-void
.end method

.method static getSupportedProtocols()[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 7

    .line 663
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 664
    new-array v0, v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v5

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v2

    return-object v0

    .line 671
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v6, v0, v5

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v5, v0, v4

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v4, v0, v3

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v3, v0, v2

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method createSSLEngineImpl()Lorg/openjsse/javax/net/ssl/SSLEngine;
    .locals 1

    .line 649
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method createSSLEngineImpl(Ljava/lang/String;I)Lorg/openjsse/javax/net/ssl/SSLEngine;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 654
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected bridge synthetic engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 577
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineCreateSSLEngine()Lorg/openjsse/javax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 0

    .line 577
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

    .line 644
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

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

    .line 639
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->serverDefaultProtocols:Ljava/util/List;

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

    .line 634
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->supportedCipherSuites:Ljava/util/List;

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

    .line 629
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;->supportedProtocols:Ljava/util/List;

    return-object v0
.end method

.method isDTLS()Z
    .locals 1

    .line 659
    const/4 v0, 0x0

    return v0
.end method
