.class Lorg/newsclub/net/unix/AFTIPCSocketAddress$1;
.super Lorg/newsclub/net/unix/AFSocketAddressConfig;
.source "AFTIPCSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFSocketAddressConfig<",
        "Lorg/newsclub/net/unix/AFTIPCSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 646
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketAddressConfig;-><init>()V

    return-void
.end method

.method static synthetic lambda$addressConstructor$0(I[BLjava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 2
    .param p0, "x$0"    # I
    .param p1, "x$1"    # [B
    .param p2, "x$2"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 655
    new-instance v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;-><init>(I[BLjava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFTIPCSocketAddress$1;)V

    return-object v0
.end method


# virtual methods
.method protected addressConstructor()Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor<",
            "Lorg/newsclub/net/unix/AFTIPCSocketAddress;",
            ">;"
        }
    .end annotation

    .line 655
    new-instance v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$1$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 646
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$1;->parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method protected parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 1
    .param p1, "u"    # Ljava/net/URI;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 650
    invoke-static {p1, p2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected selectorProviderClassname()Ljava/lang/String;
    .locals 1

    .line 660
    const-string v0, "org.newsclub.net.unix.tipc.AFTIPCSelectorProvider"

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

    .line 665
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tipc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "http+tipc"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "https+tipc"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
