.class public final Lorg/newsclub/net/unix/AFUNIXSocketFactory$SystemProperty;
.super Lorg/newsclub/net/unix/AFUNIXSocketFactory$DefaultSocketHostnameSocketFactory;
.source "AFUNIXSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFUNIXSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemProperty"
.end annotation


# static fields
.field private static final PROP_SOCKET_DEFAULT:Ljava/lang/String; = "org.newsclub.net.unix.socket.default"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFUNIXSocketFactory$DefaultSocketHostnameSocketFactory;-><init>()V

    .line 144
    return-void
.end method


# virtual methods
.method public bridge synthetic addressFromHost(Ljava/lang/String;I)Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketFactory$SystemProperty;->addressFromHost(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public addressFromHost(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 148
    const-string v0, "org.newsclub.net.unix.socket.default"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "socketFile":Ljava/io/File;
    invoke-static {v1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v2

    return-object v2

    .line 150
    .end local v1    # "socketFile":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Property not configured: org.newsclub.net.unix.socket.default"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
