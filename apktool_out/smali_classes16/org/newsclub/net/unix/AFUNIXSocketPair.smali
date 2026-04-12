.class public final Lorg/newsclub/net/unix/AFUNIXSocketPair;
.super Lorg/newsclub/net/unix/AFSocketPair;
.source "AFUNIXSocketPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/newsclub/net/unix/AFSomeSocket;",
        ">",
        "Lorg/newsclub/net/unix/AFSocketPair<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFSomeSocket;Lorg/newsclub/net/unix/AFSomeSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lorg/newsclub/net/unix/AFUNIXSocketPair;, "Lorg/newsclub/net/unix/AFUNIXSocketPair<TT;>;"
    .local p1, "socket1":Lorg/newsclub/net/unix/AFSomeSocket;, "TT;"
    .local p2, "socket2":Lorg/newsclub/net/unix/AFSomeSocket;, "TT;"
    invoke-direct {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketPair;-><init>(Lorg/newsclub/net/unix/AFSomeSocket;Lorg/newsclub/net/unix/AFSomeSocket;)V

    .line 31
    return-void
.end method

.method public static open()Lorg/newsclub/net/unix/AFUNIXSocketPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFUNIXSocketPair<",
            "Lorg/newsclub/net/unix/AFUNIXSocketChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->provider()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openSocketChannelPair()Lorg/newsclub/net/unix/AFUNIXSocketPair;

    move-result-object v0

    return-object v0
.end method

.method public static openDatagram()Lorg/newsclub/net/unix/AFUNIXSocketPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFUNIXSocketPair<",
            "Lorg/newsclub/net/unix/AFUNIXDatagramChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->provider()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openDatagramChannelPair()Lorg/newsclub/net/unix/AFUNIXSocketPair;

    move-result-object v0

    return-object v0
.end method
