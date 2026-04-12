.class public final Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;
.super Lorg/newsclub/net/unix/AFSocketFactory;
.source "AFSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedAddressSocketFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFSocketFactory<",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private final forceAddr:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "address"    # Ljava/net/SocketAddress;

    .line 147
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketFactory;-><init>()V

    .line 148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->forceAddr:Ljava/net/SocketAddress;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;

    .line 138
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->forceAddr:Ljava/net/SocketAddress;

    return-object v0
.end method


# virtual methods
.method public addressFromHost(Ljava/lang/String;I)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->forceAddr:Ljava/net/SocketAddress;

    return-object v0
.end method

.method protected connectTo(Lorg/newsclub/net/unix/AFSocketAddress;)Ljava/net/Socket;
    .locals 2
    .param p1, "addr"    # Lorg/newsclub/net/unix/AFSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 191
    .local v0, "sock":Ljava/net/Socket;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->forceAddr:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 192
    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->forceAddr:Ljava/net/SocketAddress;

    instance-of v0, v0, Lorg/newsclub/net/unix/AFSocketAddress;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->forceAddr:Ljava/net/SocketAddress;

    check-cast v0, Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->newSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    .line 166
    .local v0, "socket":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<*>;"
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->forceAddr:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFSocket;->forceConnectAddress(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocket;

    .line 167
    return-object v0

    .line 169
    .end local v0    # "socket":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<*>;"
    :cond_0
    new-instance v0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory$1;

    invoke-direct {v0, p0}, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory$1;-><init>(Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1}, Ljava/net/SocketException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/net/SocketException;
    throw v0
.end method

.method public isHostnameSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    return v0
.end method
