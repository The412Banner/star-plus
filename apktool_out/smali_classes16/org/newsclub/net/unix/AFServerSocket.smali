.class public abstract Lorg/newsclub/net/unix/AFServerSocket;
.super Ljava/net/ServerSocket;
.source "AFServerSocket.java"

# interfaces
.implements Lorg/newsclub/net/unix/FileDescriptorAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFServerSocket$Constructor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/net/ServerSocket;",
        "Lorg/newsclub/net/unix/FileDescriptorAccess;"
    }
.end annotation


# instance fields
.field private bindFilter:Lorg/newsclub/net/unix/SocketAddressFilter;

.field private boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final channel:Lorg/newsclub/net/unix/AFServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "*>;"
        }
    .end annotation
.end field

.field private final closeables:Lorg/newsclub/net/unix/Closeables;

.field private final created:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final deleteOnClose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final implementation:Lorg/newsclub/net/unix/AFSocketImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    .line 45
    new-instance v0, Lorg/newsclub/net/unix/Closeables;

    invoke-direct {v0}, Lorg/newsclub/net/unix/Closeables;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->closeables:Lorg/newsclub/net/unix/Closeables;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->deleteOnClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->newChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->channel:Lorg/newsclub/net/unix/AFServerSocketChannel;

    .line 85
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFServerSocket;->newImpl(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->implementation:Lorg/newsclub/net/unix/AFSocketImpl;

    .line 86
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->implementation:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->initServerImpl(Ljava/net/ServerSocket;Lorg/newsclub/net/unix/AFSocketImpl;)V

    .line 88
    invoke-virtual {p0, v1}, Lorg/newsclub/net/unix/AFServerSocket;->setReuseAddress(Z)V

    .line 89
    return-void
.end method

.method protected static bindOn(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Lorg/newsclub/net/unix/AFSocketAddress;)Lorg/newsclub/net/unix/AFServerSocket;
    .locals 1
    .param p1, "addr"    # Lorg/newsclub/net/unix/AFSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFServerSocket$Constructor<",
            "TA;>;",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ")",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    .local p0, "instanceSupplier":Lorg/newsclub/net/unix/AFServerSocket$Constructor;, "Lorg/newsclub/net/unix/AFServerSocket$Constructor<TA;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    .line 176
    .local v0, "socket":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 177
    return-object v0
.end method

.method protected static bindOn(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Lorg/newsclub/net/unix/AFSocketAddress;Z)Lorg/newsclub/net/unix/AFServerSocket;
    .locals 1
    .param p2, "deleteOnClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFServerSocket$Constructor<",
            "TA;>;TA;Z)",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    .local p0, "instanceSupplier":Lorg/newsclub/net/unix/AFServerSocket$Constructor;, "Lorg/newsclub/net/unix/AFServerSocket$Constructor<TA;>;"
    .local p1, "addr":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    .line 194
    .local v0, "socket":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 195
    invoke-virtual {v0, p2}, Lorg/newsclub/net/unix/AFServerSocket;->setDeleteOnClose(Z)V

    .line 196
    return-object v0
.end method

.method protected static forceBindOn(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Lorg/newsclub/net/unix/AFSocketAddress;)Lorg/newsclub/net/unix/AFServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFServerSocket$Constructor<",
            "TA;>;TA;)",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    .local p0, "instanceSupplier":Lorg/newsclub/net/unix/AFServerSocket$Constructor;, "Lorg/newsclub/net/unix/AFServerSocket$Constructor<TA;>;"
    .local p1, "forceAddr":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    .line 212
    .local v0, "socket":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFServerSocket;->forceBindAddress(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v1

    return-object v1
.end method

.method public static isSupported()Z
    .locals 1

    .line 405
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$forceBindAddress$0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "endpoint"    # Ljava/net/SocketAddress;
    .param p1, "orig"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method protected static newInstance(Lorg/newsclub/net/unix/AFServerSocket$Constructor;)Lorg/newsclub/net/unix/AFServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFServerSocket$Constructor<",
            "TA;>;)",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    .local p0, "instanceSupplier":Lorg/newsclub/net/unix/AFServerSocket$Constructor;, "Lorg/newsclub/net/unix/AFServerSocket$Constructor<TA;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    return-object v0
.end method

.method protected static newInstance(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFServerSocket;
    .locals 5
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "localPort"    # I
    .param p3, "remotePort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFServerSocket$Constructor<",
            "TA;>;",
            "Ljava/io/FileDescriptor;",
            "II)",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    .local p0, "instanceSupplier":Lorg/newsclub/net/unix/AFServerSocket$Constructor;, "Lorg/newsclub/net/unix/AFServerSocket$Constructor<TA;>;"
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    invoke-static {p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->socketStatus(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 139
    .local v0, "status":I
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 142
    invoke-interface {p0, p1}, Lorg/newsclub/net/unix/AFServerSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v1

    .line 143
    .local v1, "socket":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/newsclub/net/unix/AFSocketImpl;->updatePorts(II)V

    .line 145
    packed-switch v0, :pswitch_data_0

    .line 157
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid socketStatus response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :pswitch_0
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Not a ServerSocket"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :pswitch_1
    sget-object v2, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {v1, v2}, Lorg/newsclub/net/unix/AFServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 151
    nop

    .line 152
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFServerSocket;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v2

    .line 151
    const/4 v3, 0x0

    invoke-static {p1, v3, p2, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->getSocketAddress(Ljava/io/FileDescriptor;ZILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/newsclub/net/unix/AFServerSocket;->setBoundEndpoint(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 153
    goto :goto_0

    .line 155
    :pswitch_2
    nop

    .line 160
    :goto_0
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v2

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFServerSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/newsclub/net/unix/AFSocketImpl;->setSocketAddress(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 161
    return-object v1

    .line 140
    .end local v1    # "socket":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    :cond_1
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a valid socket"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic accept()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->accept()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    return-object v0
.end method

.method public accept()Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket;->accept1(Z)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    return-object v0
.end method

.method accept1(Z)Lorg/newsclub/net/unix/AFSocket;
    .locals 5
    .param p1, "throwOnFail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->newSocketInstance()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    .line 296
    .local v0, "as":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iget-object v1, p0, Lorg/newsclub/net/unix/AFServerSocket;->implementation:Lorg/newsclub/net/unix/AFSocketImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl(Z)Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/newsclub/net/unix/AFSocketImpl;->accept0(Ljava/net/SocketImpl;)Z

    move-result v1

    .line 297
    .local v1, "success":Z
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    if-nez v1, :cond_2

    .line 303
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object v3

    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFServerSocketChannel;->isBlocking()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    return-object v2

    .line 309
    :cond_0
    new-instance v2, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v2

    .line 312
    :cond_1
    return-object v2

    .line 316
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl(Z)Lorg/newsclub/net/unix/AFSocketImpl;

    .line 317
    sget-object v2, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {v0, v2}, Lorg/newsclub/net/unix/AFSocket;->connect(Ljava/net/SocketAddress;)V

    .line 318
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v2

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFSocketImpl;->getLocalPort1()I

    move-result v3

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/newsclub/net/unix/AFSocketImpl;->getRemotePort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/newsclub/net/unix/AFSocketImpl;->updatePorts(II)V

    .line 320
    return-object v0

    .line 299
    :cond_3
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final addCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 387
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->closeables:Lorg/newsclub/net/unix/Closeables;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/Closeables;->add(Ljava/io/Closeable;)Z

    .line 388
    return-void
.end method

.method protected final addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    return-object v0
.end method

.method public final bind(Ljava/net/SocketAddress;I)V
    .locals 6
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 237
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->bindFilter:Lorg/newsclub/net/unix/SocketAddressFilter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->bindFilter:Lorg/newsclub/net/unix/SocketAddressFilter;

    invoke-interface {v0, p1}, Lorg/newsclub/net/unix/SocketAddressFilter;->apply(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object p1

    .line 239
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .local v0, "bindErrorOk":Z
    :goto_0
    goto :goto_1

    .line 241
    .end local v0    # "bindErrorOk":Z
    :cond_1
    const/4 v0, 0x0

    .line 244
    .restart local v0    # "bindErrorOk":Z
    :goto_1
    instance-of v3, p1, Lorg/newsclub/net/unix/AFSocketAddress;

    if-eqz v3, :cond_6

    .line 251
    :try_start_0
    move-object v3, p1

    check-cast v3, Lorg/newsclub/net/unix/AFSocketAddress;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .local v3, "endpointCast":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    nop

    .line 257
    :try_start_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v4

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getReuseAddress()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v4, p1, v1}, Lorg/newsclub/net/unix/AFSocketImpl;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    nop

    .line 266
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketImpl;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/newsclub/net/unix/AFServerSocket;->setBoundEndpoint(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 267
    iget-object v1, p0, Lorg/newsclub/net/unix/AFServerSocket;->boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;

    if-nez v1, :cond_3

    .line 268
    invoke-virtual {p0, v3}, Lorg/newsclub/net/unix/AFServerSocket;->setBoundEndpoint(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 271
    :cond_3
    sget-object v1, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;

    if-ne p1, v1, :cond_4

    .line 272
    return-void

    .line 275
    :cond_4
    iget-object v1, p0, Lorg/newsclub/net/unix/AFServerSocket;->implementation:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v1, p2}, Lorg/newsclub/net/unix/AFSocketImpl;->listen(I)V

    .line 276
    return-void

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/net/SocketException;
    if-eqz v0, :cond_5

    .line 261
    return-void

    .line 263
    :cond_5
    throw v1

    .line 252
    .end local v1    # "e":Ljava/net/SocketException;
    .end local v3    # "endpointCast":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    :catch_1
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can only bind to specific endpoints"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 245
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only bind to endpoints of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/newsclub/net/unix/AFSocketAddress;

    .line 246
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    .end local v0    # "bindErrorOk":Z
    :cond_7
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bindHook(Lorg/newsclub/net/unix/SocketAddressFilter;)Lorg/newsclub/net/unix/AFServerSocket;
    .locals 0
    .param p1, "hook"    # Lorg/newsclub/net/unix/SocketAddressFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/SocketAddressFilter;",
            ")",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;"
        }
    .end annotation

    .line 526
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iput-object p1, p0, Lorg/newsclub/net/unix/AFServerSocket;->bindFilter:Lorg/newsclub/net/unix/SocketAddressFilter;

    .line 527
    return-object p0
.end method

.method public declared-synchronized close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    monitor-enter p0

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 339
    monitor-exit p0

    return-void

    .line 342
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isLocalSocketAddressValid()Z

    move-result v0

    .line 344
    .local v0, "localSocketAddressValid":Z
    iget-object v1, p0, Lorg/newsclub/net/unix/AFServerSocket;->boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 346
    .local v1, "endpoint":Lorg/newsclub/net/unix/AFSocketAddress;
    const/4 v2, 0x0

    .line 348
    .local v2, "superException":Ljava/io/IOException;
    :try_start_2
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 351
    goto :goto_0

    .line 349
    .end local p0    # "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    :catch_0
    move-exception v3

    .line 350
    .local v3, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 352
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    iget-object v3, p0, Lorg/newsclub/net/unix/AFServerSocket;->implementation:Lorg/newsclub/net/unix/AFSocketImpl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 354
    :try_start_4
    iget-object v3, p0, Lorg/newsclub/net/unix/AFServerSocket;->implementation:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFSocketImpl;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    goto :goto_1

    .line 355
    :catch_1
    move-exception v3

    .line 356
    .restart local v3    # "e":Ljava/io/IOException;
    if-nez v2, :cond_1

    .line 357
    move-object v2, v3

    goto :goto_1

    .line 359
    :cond_1
    :try_start_5
    invoke-virtual {v2, v3}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 364
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 366
    .local v3, "ex":Ljava/io/IOException;
    :try_start_6
    iget-object v4, p0, Lorg/newsclub/net/unix/AFServerSocket;->closeables:Lorg/newsclub/net/unix/Closeables;

    invoke-virtual {v4, v2}, Lorg/newsclub/net/unix/Closeables;->close(Ljava/io/IOException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 368
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketAddress;->hasFilename()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 369
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isDeleteOnClose()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 370
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketAddress;->getFile()Ljava/io/File;

    move-result-object v4

    .line 371
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 372
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not delete socket file after close: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v3, v5

    .line 374
    .end local v4    # "f":Ljava/io/File;
    :cond_3
    nop

    .line 376
    :cond_4
    if-nez v3, :cond_5

    .line 379
    monitor-exit p0

    return-void

    .line 377
    :cond_5
    :try_start_8
    throw v3

    .line 368
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketAddress;->hasFilename()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    .line 369
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isDeleteOnClose()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 370
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketAddress;->getFile()Ljava/io/File;

    move-result-object v5

    .line 371
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 372
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not delete socket file after close: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 375
    .end local v5    # "f":Ljava/io/File;
    :cond_6
    throw v4

    .line 337
    .end local v0    # "localSocketAddressValid":Z
    .end local v1    # "endpoint":Lorg/newsclub/net/unix/AFSocketAddress;
    .end local v2    # "superException":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public final forceBindAddress(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFServerSocket;
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    new-instance v0, Lorg/newsclub/net/unix/AFServerSocket$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/newsclub/net/unix/AFServerSocket$$ExternalSyntheticLambda0;-><init>(Ljava/net/SocketAddress;)V

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket;->bindHook(Lorg/newsclub/net/unix/SocketAddressFilter;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    return-object v0
.end method

.method final getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "TA;>;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 493
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->implementation:Lorg/newsclub/net/unix/AFSocketImpl;

    return-object v0
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "*>;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->channel:Lorg/newsclub/net/unix/AFServerSocketChannel;

    return-object v0
.end method

.method public final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->implementation:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPort()I
    .locals 1

    .line 450
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket;->setBoundEndpoint(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;

    if-nez v0, :cond_1

    .line 454
    const/4 v0, -0x1

    return v0

    .line 456
    :cond_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getLocalPort1()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFServerSocket;->setBoundEndpoint(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;

    return-object v0
.end method

.method public final isBound()Z
    .locals 1

    .line 280
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 285
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-super {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->implementation:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isDeleteOnClose()Z
    .locals 1

    .line 469
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->deleteOnClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isLocalSocketAddressValid()Z
    .locals 2

    .line 426
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 427
    return v1

    .line 430
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    .line 431
    .local v0, "addr":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    if-nez v0, :cond_1

    .line 432
    return v1

    .line 434
    :cond_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketImpl;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected abstract newChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract newImpl(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFSocketImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            ")",
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract newSocketInstance()Lorg/newsclub/net/unix/AFSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final removeCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 396
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->closeables:Lorg/newsclub/net/unix/Closeables;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/Closeables;->remove(Ljava/io/Closeable;)Z

    .line 397
    return-void
.end method

.method final setBoundEndpoint(Lorg/newsclub/net/unix/AFSocketAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    .local p1, "addr":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    iput-object p1, p0, Lorg/newsclub/net/unix/AFServerSocket;->boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;

    .line 440
    if-nez p1, :cond_0

    .line 441
    const/4 v0, -0x1

    .local v0, "port":I
    goto :goto_0

    .line 443
    .end local v0    # "port":I
    :cond_0
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketAddress;->getPort()I

    move-result v0

    .line 445
    .restart local v0    # "port":I
    :goto_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/newsclub/net/unix/AFSocketImpl;->updatePorts(II)V

    .line 446
    return-void
.end method

.method public final setDeleteOnClose(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 482
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket;->deleteOnClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 483
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 333
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocket;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFServerSocket;->boundEndpoint:Lorg/newsclub/net/unix/AFSocketAddress;

    goto :goto_0

    :cond_0
    const-string v1, "unbound"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
