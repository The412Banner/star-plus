.class Lorg/newsclub/net/unix/AFUNIXSocket$1;
.super Ljava/lang/Object;
.source "AFUNIXSocket.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFSocket$Constructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFUNIXSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/newsclub/net/unix/AFSocket$Constructor<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;
    .locals 3
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Lorg/newsclub/net/unix/AFSocketFactory<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;)",
            "Lorg/newsclub/net/unix/AFSocket<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 40
    .local p2, "factory":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<Lorg/newsclub/net/unix/AFUNIXSocketAddress;>;"
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    new-instance v1, Lorg/newsclub/net/unix/AFUNIXSocketImpl;

    invoke-direct {v1, p1}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lorg/newsclub/net/unix/AFUNIXSocket;-><init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketFactory;Lorg/newsclub/net/unix/AFUNIXSocket$1;)V

    return-object v0
.end method
