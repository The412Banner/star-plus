.class abstract Lorg/newsclub/net/unix/AFUNIXSocketFactory$DefaultSocketHostnameSocketFactory;
.super Lorg/newsclub/net/unix/AFUNIXSocketFactory;
.source "AFUNIXSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFUNIXSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DefaultSocketHostnameSocketFactory"
.end annotation


# static fields
.field private static final PROP_SOCKET_HOSTNAME:Ljava/lang/String; = "org.newsclub.net.unix.socket.hostname"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFUNIXSocketFactory;-><init>()V

    .line 70
    return-void
.end method

.method private static getDefaultSocketHostname()Ljava/lang/String;
    .locals 2

    .line 78
    const-string v0, "org.newsclub.net.unix.socket.hostname"

    const-string v1, "localhost"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic connectTo(Lorg/newsclub/net/unix/AFSocketAddress;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    check-cast p1, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    invoke-super {p0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketFactory;->connectTo(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object p1

    return-object p1
.end method

.method public final isHostnameSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocketFactory$DefaultSocketHostnameSocketFactory;->getDefaultSocketHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
