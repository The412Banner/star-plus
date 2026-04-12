.class Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1;
.super Lorg/newsclub/net/unix/AFAddressFamilyConfig;
.source "AFUNIXSelectorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFUNIXSelectorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFAddressFamilyConfig<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public datagramChannelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFDatagramChannel<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 81
    const-class v0, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    return-object v0
.end method

.method public datagramSocketClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFDatagramSocket<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 71
    const-class v0, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;

    return-object v0
.end method

.method public datagramSocketConstructor()Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFDatagramSocket$Constructor<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXDatagramSocket$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public serverSocketChannelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 66
    const-class v0, Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    return-object v0
.end method

.method public serverSocketClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 51
    const-class v0, Lorg/newsclub/net/unix/AFUNIXServerSocket;

    return-object v0
.end method

.method public serverSocketConstructor()Lorg/newsclub/net/unix/AFServerSocket$Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocket$Constructor<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public socketChannelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 61
    const-class v0, Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    return-object v0
.end method

.method public socketClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFSocket<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 41
    const-class v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    return-object v0
.end method

.method public socketConstructor()Lorg/newsclub/net/unix/AFSocket$Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocket$Constructor<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method
