.class Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedDTLSContext"
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

.field private static reservedException:Ljava/lang/IllegalArgumentException;

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

    .line 1416
    const/4 v0, 0x0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->reservedException:Ljava/lang/IllegalArgumentException;

    .line 1425
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->reservedException:Ljava/lang/IllegalArgumentException;

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->reservedException:Ljava/lang/IllegalArgumentException;

    .line 1426
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->reservedException:Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_0

    .line 1427
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->customizedClientProtocols:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->customizedProtocols(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->clientDefaultProtocols:Ljava/util/List;

    .line 1429
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->customizedServerProtocols:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->customizedProtocols(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->serverDefaultProtocols:Ljava/util/List;

    .line 1432
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->clientDefaultProtocols:Ljava/util/List;

    .line 1433
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$200(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->clientDefaultCipherSuites:Ljava/util/List;

    .line 1435
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->serverDefaultProtocols:Ljava/util/List;

    .line 1436
    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$200(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

    goto :goto_0

    .line 1441
    :cond_0
    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->clientDefaultProtocols:Ljava/util/List;

    .line 1442
    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->serverDefaultProtocols:Ljava/util/List;

    .line 1443
    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->clientDefaultCipherSuites:Ljava/util/List;

    .line 1444
    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

    .line 1446
    :goto_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1476
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl$1;)V

    .line 1477
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->reservedException:Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_0

    .line 1480
    return-void

    .line 1478
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->reservedException:Ljava/lang/IllegalArgumentException;

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

    .line 1450
    .local p1, "customized":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1451
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

    .line 1452
    .local v2, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-boolean v3, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v3, :cond_0

    .line 1453
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    .end local v2    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    goto :goto_0

    .line 1459
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1460
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const/4 v2, 0x0

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v3, v1, v2

    .line 1464
    .local v1, "candidates":[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-nez p0, :cond_3

    .line 1465
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1468
    .end local v1    # "candidates":[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_2
    nop

    .line 1469
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1470
    .restart local v1    # "candidates":[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1473
    :cond_3
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v2

    return-object v2
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

    .line 1494
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->clientDefaultCipherSuites:Ljava/util/List;

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

    .line 1484
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->clientDefaultProtocols:Ljava/util/List;

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

    .line 1499
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->serverDefaultCipherSuites:Ljava/util/List;

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

    .line 1489
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;->serverDefaultProtocols:Ljava/util/List;

    return-object v0
.end method
