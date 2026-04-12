.class public abstract Lorg/newsclub/net/unix/AFSocketChannel;
.super Ljava/nio/channels/SocketChannel;
.source "AFSocketChannel.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFSomeSocket;
.implements Lorg/newsclub/net/unix/AFSocketExtensions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/nio/channels/SocketChannel;",
        "Lorg/newsclub/net/unix/AFSomeSocket;",
        "Lorg/newsclub/net/unix/AFSocketExtensions;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final afSocket:Lorg/newsclub/net/unix/AFSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final connectPending:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 41
    return-void
.end method

.method protected constructor <init>(Lorg/newsclub/net/unix/AFSocket;Lorg/newsclub/net/unix/AFSelectorProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;",
            "Lorg/newsclub/net/unix/AFSelectorProvider<",
            "TA;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    .local p1, "socket":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    .local p2, "sp":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-direct {p0, p2}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->connectPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFSocket;

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    .line 56
    return-void
.end method

.method protected static final open(Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;)Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier<",
            "TA;>;)",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p0, "supplier":Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;, "Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier<TA;>;"
    invoke-interface {p0}, Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;->newInstance()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method protected static final open(Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 3
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier<",
            "TA;>;",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    .local p0, "supplier":Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;, "Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier<TA;>;"
    invoke-static {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->open(Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;)Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    .line 111
    .local v0, "sc":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    nop

    .line 120
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 112
    :catchall_0
    move-exception v1

    .line 114
    .local v1, "x":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    goto :goto_0

    .line 115
    :catchall_1
    move-exception v2

    .line 116
    .local v2, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 118
    .end local v2    # "suppressed":Ljava/lang/Throwable;
    :goto_0
    throw v1
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSocketChannel;->bind(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSocketChannel;->bind(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public final bind(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocket;->bind(Ljava/net/SocketAddress;)V

    .line 161
    return-object p0
.end method

.method public final connect(Ljava/net/SocketAddress;)Z
    .locals 3
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/newsclub/net/unix/AFSocket;->connect0(Ljava/net/SocketAddress;I)Z

    move-result v0

    .line 199
    .local v0, "connected":Z
    if-nez v0, :cond_0

    .line 200
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketChannel;->connectPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    :cond_0
    return v0
.end method

.method public final ensureAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "minSize"    # I

    .line 291
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocket;->ensureAncillaryReceiveBufferSize(I)V

    .line 292
    return-void
.end method

.method public final finishConnect()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 208
    return v1

    .line 209
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->isConnectionPending()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 210
    return v2

    .line 213
    :cond_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->finishConnect(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    nop

    :goto_1
    move v0, v1

    .line 215
    .local v0, "connected":Z
    if-eqz v0, :cond_4

    .line 216
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketChannel;->connectPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    :cond_4
    return v0
.end method

.method final getAFCore()Lorg/newsclub/net/unix/AFSocketCore;
    .locals 1

    .line 295
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    return-object v0
.end method

.method protected final getAFSocket()Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    return-object v0
.end method

.method public final getAncillaryReceiveBufferSize()I
    .locals 1

    .line 281
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getAncillaryReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->getLocalAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

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

    .line 266
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketOption;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/newsclub/net/unix/AFSocketOption;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFSocketCore;->getOption(Lorg/newsclub/net/unix/AFSocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    invoke-static {p1}, Lorg/newsclub/net/unix/SocketOptionsMapper;->resolve(Ljava/net/SocketOption;)Ljava/lang/Integer;

    move-result-object v0

    .line 131
    .local v0, "optionId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/newsclub/net/unix/AFSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 132
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "unsupported option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->getRemoteAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getRemoteAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->close()V

    .line 272
    return-void
.end method

.method protected final implConfigureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketCore;->implConfigureBlocking(Z)V

    .line 277
    return-void
.end method

.method public final isConnected()Z
    .locals 3

    .line 184
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->isConnected()Z

    move-result v0

    .line 185
    .local v0, "connected":Z
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketChannel;->connectPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    :cond_0
    return v0
.end method

.method public final isConnectionPending()Z
    .locals 1

    .line 193
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->connectPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/newsclub/net/unix/AFSocketImpl;->read(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final read([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    if-nez p3, :cond_0

    .line 239
    const-wide/16 v0, 0x0

    return-wide v0

    .line 242
    :cond_0
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final setAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 286
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocket;->setAncillaryReceiveBufferSize(I)V

    .line 287
    return-void
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public final setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketOption;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/newsclub/net/unix/AFSocketOption;

    invoke-virtual {v0, v1, p2}, Lorg/newsclub/net/unix/AFSocketCore;->setOption(Lorg/newsclub/net/unix/AFSocketOption;Ljava/lang/Object;)V

    .line 142
    return-object p0

    .line 144
    :cond_0
    invoke-static {p1}, Lorg/newsclub/net/unix/SocketOptionsMapper;->resolve(Ljava/net/SocketOption;)Ljava/lang/Integer;

    move-result-object v0

    .line 145
    .local v0, "optionId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lorg/newsclub/net/unix/AFSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 150
    return-object p0

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "unsupported option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic shutdownInput()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->shutdownInput()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public final shutdownInput()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownInput()V

    .line 167
    return-object p0
.end method

.method public bridge synthetic shutdownOutput()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->shutdownOutput()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public final shutdownOutput()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownOutput()V

    .line 173
    return-object p0
.end method

.method public bridge synthetic socket()Ljava/net/Socket;
    .locals 1

    .line 41
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketChannel;->socket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    return-object v0
.end method

.method public final socket()Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    return-object v0
.end method

.method public final supportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    sget-object v0, Lorg/newsclub/net/unix/SocketOptionsMapper;->SUPPORTED_SOCKET_OPTIONS:Ljava/util/Set;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 305
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocket;->toStringSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketImpl;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    if-nez p3, :cond_0

    .line 248
    const-wide/16 v0, 0x0

    return-wide v0

    .line 251
    :cond_0
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
