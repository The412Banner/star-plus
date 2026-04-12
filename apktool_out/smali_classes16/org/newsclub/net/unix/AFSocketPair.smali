.class public abstract Lorg/newsclub/net/unix/AFSocketPair;
.super Lorg/newsclub/net/unix/CloseablePair;
.source "AFSocketPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/newsclub/net/unix/AFSomeSocket;",
        ">",
        "Lorg/newsclub/net/unix/CloseablePair<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/newsclub/net/unix/AFSomeSocket;Lorg/newsclub/net/unix/AFSomeSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketPair;, "Lorg/newsclub/net/unix/AFSocketPair<TT;>;"
    .local p1, "a":Lorg/newsclub/net/unix/AFSomeSocket;, "TT;"
    .local p2, "b":Lorg/newsclub/net/unix/AFSomeSocket;, "TT;"
    invoke-direct {p0, p1, p2}, Lorg/newsclub/net/unix/CloseablePair;-><init>(Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Lorg/newsclub/net/unix/AFSomeSocket;Lorg/newsclub/net/unix/AFSomeSocket;Ljava/io/Closeable;)V
    .locals 0
    .param p3, "alsoClose"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Ljava/io/Closeable;",
            ")V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketPair;, "Lorg/newsclub/net/unix/AFSocketPair<TT;>;"
    .local p1, "a":Lorg/newsclub/net/unix/AFSomeSocket;, "TT;"
    .local p2, "b":Lorg/newsclub/net/unix/AFSomeSocket;, "TT;"
    invoke-direct {p0, p1, p2, p3}, Lorg/newsclub/net/unix/CloseablePair;-><init>(Ljava/io/Closeable;Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final getSocket1()Lorg/newsclub/net/unix/AFSomeSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketPair;, "Lorg/newsclub/net/unix/AFSocketPair<TT;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketPair;->getFirst()Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFSomeSocket;

    return-object v0
.end method

.method public final getSocket2()Lorg/newsclub/net/unix/AFSomeSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketPair;, "Lorg/newsclub/net/unix/AFSocketPair<TT;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketPair;->getSecond()Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFSomeSocket;

    return-object v0
.end method
