.class public abstract Lorg/newsclub/net/unix/AFUNIXSocketFactory;
.super Lorg/newsclub/net/unix/AFSocketFactory;
.source "AFUNIXSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFUNIXSocketFactory$URIScheme;,
        Lorg/newsclub/net/unix/AFUNIXSocketFactory$SystemProperty;,
        Lorg/newsclub/net/unix/AFUNIXSocketFactory$FactoryArg;,
        Lorg/newsclub/net/unix/AFUNIXSocketFactory$DefaultSocketHostnameSocketFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFSocketFactory<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketFactory;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected bridge synthetic connectTo(Lorg/newsclub/net/unix/AFSocketAddress;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketFactory;->connectTo(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object p1

    return-object p1
.end method

.method protected connectTo(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 1
    .param p1, "addr"    # Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lorg/newsclub/net/unix/AFUNIXSocket;->connectTo(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->newInstance(Lorg/newsclub/net/unix/AFUNIXSocketFactory;)Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method
