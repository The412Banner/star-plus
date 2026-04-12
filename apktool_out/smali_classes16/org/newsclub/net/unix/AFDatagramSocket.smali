.class public abstract Lorg/newsclub/net/unix/AFDatagramSocket;
.super Ljava/net/DatagramSocket;
.source "AFDatagramSocket.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFSomeSocket;
.implements Lorg/newsclub/net/unix/AFSocketExtensions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/net/DatagramSocket;",
        "Lorg/newsclub/net/unix/AFSomeSocket;",
        "Lorg/newsclub/net/unix/AFSocketExtensions;"
    }
.end annotation


# static fields
.field private static final WILDCARD_ADDRESS:Ljava/net/InetSocketAddress;


# instance fields
.field private final ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

.field private final channel:Lorg/newsclub/net/unix/AFDatagramChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFDatagramChannel<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final created:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final deleteOnClose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final impl:Lorg/newsclub/net/unix/AFDatagramSocketImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFDatagramSocketImpl<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    sput-object v0, Lorg/newsclub/net/unix/AFDatagramSocket;->WILDCARD_ADDRESS:Ljava/net/InetSocketAddress;

    return-void
.end method

.method protected constructor <init>(Lorg/newsclub/net/unix/AFDatagramSocketImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFDatagramSocketImpl<",
            "TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    .local p1, "impl":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->deleteOnClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->newChannel()Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->channel:Lorg/newsclub/net/unix/AFDatagramChannel;

    .line 61
    iput-object p1, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->impl:Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    .line 62
    iget-object v0, p1, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    .line 63
    return-void
.end method

.method protected static final newInstance(Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;)Lorg/newsclub/net/unix/AFDatagramSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFDatagramSocket$Constructor<",
            "TA;>;)",
            "Lorg/newsclub/net/unix/AFDatagramSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    .local p0, "constructor":Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;, "Lorg/newsclub/net/unix/AFDatagramSocket$Constructor<TA;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;->newSocket(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method protected static final newInstance(Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFDatagramSocket;
    .locals 5
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "localPort"    # I
    .param p3, "remotePort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFDatagramSocket$Constructor<",
            "TA;>;",
            "Ljava/io/FileDescriptor;",
            "II)",
            "Lorg/newsclub/net/unix/AFDatagramSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    .local p0, "constructor":Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;, "Lorg/newsclub/net/unix/AFDatagramSocket$Constructor<TA;>;"
    if-nez p1, :cond_0

    .line 135
    invoke-static {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->newInstance(Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;)Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-static {p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->socketStatus(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 142
    .local v0, "status":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 146
    invoke-interface {p0, p1}, Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;->newSocket(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v1

    .line 147
    .local v1, "socket":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->updatePorts(II)V

    .line 149
    packed-switch v0, :pswitch_data_0

    .line 159
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

    .line 151
    :pswitch_0
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFDatagramSocket;->internalDummyConnect()V

    .line 152
    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFDatagramSocket;->internalDummyBind()V

    .line 155
    goto :goto_0

    .line 157
    :pswitch_2
    nop

    .line 162
    :goto_0
    return-object v1

    .line 143
    .end local v1    # "socket":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    :cond_1
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a valid socket"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v0    # "status":I
    :cond_2
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Invalid file descriptor"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized bind(Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    monitor-enter p0

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isBound()Z

    move-result v0

    .line 273
    .local v0, "isBound":Z
    if-eqz v0, :cond_0

    .line 274
    sget-object v1, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_0

    .line 275
    monitor-exit p0

    return-void

    .line 279
    .end local p0    # "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isClosed()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_7

    .line 282
    if-nez v0, :cond_2

    .line 284
    :try_start_2
    sget-object v1, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-super {p0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/nio/channels/AlreadyBoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/net/SocketException;
    :try_start_3
    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "already bound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 292
    :cond_1
    throw v1

    .line 285
    .end local v1    # "e":Ljava/net/SocketException;
    .end local v2    # "message":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 294
    :goto_0
    nop

    .line 297
    :cond_2
    :goto_1
    sget-object v1, Lorg/newsclub/net/unix/AFDatagramSocket;->WILDCARD_ADDRESS:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 299
    .local v1, "isWildcardBind":Z
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 300
    :cond_3
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->socketAddressClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->preprocessSocketAddress(Ljava/lang/Class;Ljava/net/SocketAddress;Lorg/newsclub/net/unix/AFSocketAddressFromHostname;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v2

    :cond_4
    :goto_2
    nop

    .line 301
    .local v2, "epoint":Lorg/newsclub/net/unix/AFSocketAddress;
    instance-of v3, v2, Lorg/newsclub/net/unix/SentinelSocketAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    .line 302
    monitor-exit p0

    return-void

    .line 306
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->bind(Lorg/newsclub/net/unix/AFSocketAddress;)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    goto :goto_3

    .line 307
    :catch_2
    move-exception v3

    .line 308
    .local v3, "e":Ljava/net/SocketException;
    if-eqz v1, :cond_6

    .line 315
    .end local v3    # "e":Ljava/net/SocketException;
    :goto_3
    monitor-exit p0

    return-void

    .line 311
    .restart local v3    # "e":Ljava/net/SocketException;
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->close()V

    .line 312
    throw v3

    .line 280
    .end local v1    # "isWildcardBind":Z
    .end local v2    # "epoint":Lorg/newsclub/net/unix/AFSocketAddress;
    .end local v3    # "e":Ljava/net/SocketException;
    :cond_7
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    .end local v0    # "isBound":Z
    .end local p1    # "addr":Ljava/net/SocketAddress;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 4

    .line 246
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->close()V

    .line 250
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isBound()Z

    move-result v0

    .line 251
    .local v0, "wasBound":Z
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->deleteOnClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 253
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/newsclub/net/unix/AFInetAddress;->isSupportedAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->unwrap(Ljava/net/InetAddress;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v2

    .line 256
    .local v2, "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFSocketAddress;->hasFilename()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFSocketAddress;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v2    # "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    :cond_1
    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    .line 266
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_2
    :goto_0
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    .line 267
    return-void
.end method

.method public final connect(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 167
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot connect to InetAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized connect(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    monitor-enter p0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->internalDummyBind()V

    .line 216
    .end local p0    # "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->internalDummyConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :try_start_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->socketAddressClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->preprocessSocketAddress(Ljava/lang/Class;Ljava/net/SocketAddress;Lorg/newsclub/net/unix/AFSocketAddressFromHostname;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->connect(Lorg/newsclub/net/unix/AFSocketAddress;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    nop

    .line 225
    monitor-exit p0

    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/net/SocketException;
    throw v0

    .line 212
    .end local v0    # "e":Ljava/net/SocketException;
    .end local p1    # "addr":Ljava/net/SocketAddress;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ensureAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "minSize"    # I

    .line 384
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AncillaryDataSupport;->ensureAncillaryReceiveBufferSize(I)V

    .line 385
    return-void
.end method

.method final getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFDatagramSocketImpl<",
            "TA;>;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 361
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->impl:Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    return-object v0
.end method

.method final getAFImpl(Z)Lorg/newsclub/net/unix/AFDatagramSocketImpl;
    .locals 1
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/newsclub/net/unix/AFDatagramSocketImpl<",
            "TA;>;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    return-object v0

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->impl:Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    return-object v0
.end method

.method protected final getAncillaryDataSupport()Lorg/newsclub/net/unix/AncillaryDataSupport;
    .locals 1

    .line 78
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    return-object v0
.end method

.method public final getAncillaryReceiveBufferSize()I
    .locals 1

    .line 374
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->getAncillaryReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getChannel()Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFDatagramChannel<",
            "TA;>;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->channel:Lorg/newsclub/net/unix/AFDatagramChannel;

    return-object v0
.end method

.method public final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getImplExtensions()Lorg/newsclub/net/unix/AFSocketImplExtensions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketImplExtensions<",
            "TA;>;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl(Z)Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getImplExtensions()Lorg/newsclub/net/unix/AFSocketImplExtensions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    return-object v1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    return-object v1

    .line 325
    :cond_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    monitor-enter p0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 229
    .end local p0    # "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final internalDummyBind()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 209
    return-void
.end method

.method final internalDummyConnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_DONT_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-super {p0, v0}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 205
    return-void
.end method

.method public final isBound()Z
    .locals 1

    .line 239
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-super {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->impl:Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public final isClosed()Z
    .locals 1

    .line 389
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-super {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public final isConnected()Z
    .locals 1

    .line 234
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-super {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->impl:Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

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

    .line 338
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->deleteOnClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected abstract newChannel()Lorg/newsclub/net/unix/AFDatagramChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFDatagramChannel<",
            "TA;>;"
        }
    .end annotation
.end method

.method public final peek(Ljava/net/DatagramPacket;)V
    .locals 2
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    monitor-enter p1

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    .line 187
    monitor-exit p1

    .line 188
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v0

    .line 187
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final receive(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 406
    return-void
.end method

.method public final send(Ljava/net/DatagramPacket;)V
    .locals 2
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    monitor-enter p1

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->internalDummyBind()V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    .line 200
    monitor-exit p1

    .line 201
    return-void

    .line 194
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v0

    .line 200
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 379
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AncillaryDataSupport;->setAncillaryReceiveBufferSize(I)V

    .line 380
    return-void
.end method

.method public final setDeleteOnClose(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 350
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->deleteOnClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 351
    return-void
.end method

.method protected final socketAddressClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocket;->impl:Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->getSocketAddressClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
