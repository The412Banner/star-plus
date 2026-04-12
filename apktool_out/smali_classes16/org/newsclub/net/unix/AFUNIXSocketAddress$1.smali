.class Lorg/newsclub/net/unix/AFUNIXSocketAddress$1;
.super Lorg/newsclub/net/unix/AFSocketAddressConfig;
.source "AFUNIXSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFUNIXSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFSocketAddressConfig<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketAddressConfig;-><init>()V

    return-void
.end method

.method static synthetic lambda$addressConstructor$0(I[BLjava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 2
    .param p0, "x$0"    # I
    .param p1, "x$1"    # [B
    .param p2, "x$2"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;-><init>(I[BLjava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFUNIXSocketAddress$1;)V

    return-object v0
.end method


# virtual methods
.method protected addressConstructor()Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress$1$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public bridge synthetic parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress$1;->parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p1, "u"    # Ljava/net/URI;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 62
    invoke-static {p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected selectorProviderClassname()Ljava/lang/String;
    .locals 1

    .line 72
    const-class v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected uriSchemes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "unix"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "http+unix"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "https+unix"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
