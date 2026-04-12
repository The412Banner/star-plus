.class Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedTLSContext"
.end annotation


# static fields
.field private static final clientDefaultCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private static final clientDefaultProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final reservedException:Ljava/lang/IllegalArgumentException;

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 942
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->reservedException:Ljava/lang/IllegalArgumentException;

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->reservedException:Ljava/lang/IllegalArgumentException;

    .line 943
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->reservedException:Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_0

    .line 944
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->customizedClientProtocols:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->customizedProtocols(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->clientDefaultProtocols:Ljava/util/List;

    .line 946
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->customizedServerProtocols:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->customizedProtocols(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->serverDefaultProtocols:Ljava/util/List;

    .line 949
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->clientDefaultProtocols:Ljava/util/List;

    .line 950
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$200(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->clientDefaultCipherSuites:Ljava/util/List;

    .line 952
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->serverDefaultProtocols:Ljava/util/List;

    .line 953
    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$200(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

    goto :goto_0

    .line 958
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->clientDefaultProtocols:Ljava/util/List;

    .line 959
    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->serverDefaultProtocols:Ljava/util/List;

    .line 960
    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->clientDefaultCipherSuites:Ljava/util/List;

    .line 961
    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

    .line 963
    :goto_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1010
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl$1;)V

    .line 1011
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->reservedException:Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_0

    .line 1014
    return-void

    .line 1012
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->reservedException:Ljava/lang/IllegalArgumentException;

    throw v0
.end method

.method private static customizedProtocols(ZLjava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "client"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 967
    .local p1, "customized":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .local v0, "refactored":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 969
    .local v2, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-boolean v3, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-nez v3, :cond_0

    .line 970
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    .end local v2    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    goto :goto_0

    .line 976
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 977
    if-eqz p0, :cond_2

    .line 978
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->getProtocols()[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v1

    .local v1, "candidates":[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_1

    .line 980
    .end local v1    # "candidates":[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_2
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->getSupportedProtocols()[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v1

    .restart local v1    # "candidates":[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_1

    .line 984
    .end local v1    # "candidates":[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_3
    nop

    .line 985
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 988
    .restart local v1    # "candidates":[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_1
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method static getProtocols()[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 7

    .line 992
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 993
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

    .line 1000
    :cond_0
    const/4 v0, 0x5

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

    return-object v0
.end method


# virtual methods
.method getClientDefaultCipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 1028
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->clientDefaultCipherSuites:Ljava/util/List;

    return-object v0
.end method

.method getClientDefaultProtocolVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 1018
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->clientDefaultProtocols:Ljava/util/List;

    return-object v0
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

    .line 1033
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

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

    .line 1023
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->serverDefaultProtocols:Ljava/util/List;

    return-object v0
.end method
