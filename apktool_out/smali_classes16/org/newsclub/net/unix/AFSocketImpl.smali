.class public abstract Lorg/newsclub/net/unix/AFSocketImpl;
.super Lorg/newsclub/net/unix/SocketImplShim;
.source "AFSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;,
        Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;,
        Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Lorg/newsclub/net/unix/SocketImplShim;"
    }
.end annotation


# static fields
.field private static final SHUTDOWN_RD_WR:I = 0x3

.field private static final SHUT_RD:I = 0x0

.field private static final SHUT_RD_WR:I = 0x2

.field private static final SHUT_WR:I = 0x1


# instance fields
.field private final addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation
.end field

.field final ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

.field private final bound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile closedInputStream:Z

.field private volatile closedOutputStream:Z

.field private final connected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

.field private createType:Ljava/lang/Boolean;

.field private implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocketImplExtensions<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final in:Lorg/newsclub/net/unix/AFInputStream;

.field private final out:Lorg/newsclub/net/unix/AFOutputStream;

.field private reuseAddr:Z

.field private shutdownState:I

.field private final socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method protected constructor <init>(Lorg/newsclub/net/unix/AFAddressFamily;Ljava/io/FileDescriptor;)V
    .locals 3
    .param p2, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;",
            "Ljava/io/FileDescriptor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    .local p1, "addressFamily":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-direct {p0}, Lorg/newsclub/net/unix/SocketImplShim;-><init>()V

    .line 54
    new-instance v0, Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->createType:Ljava/lang/Boolean;

    .line 58
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    iput-boolean v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->closedInputStream:Z

    .line 61
    iput-boolean v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->closedOutputStream:Z

    .line 66
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->reuseAddr:Z

    .line 68
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    iput v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    .line 73
    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;

    .line 160
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    .line 161
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->address:Ljava/net/InetAddress;

    .line 162
    new-instance v0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-direct {v0, p0, p2, v1, p1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;-><init>(Lorg/newsclub/net/unix/AFSocketImpl;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AncillaryDataSupport;Lorg/newsclub/net/unix/AFAddressFamily;)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    .line 163
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->fd:Ljava/io/FileDescriptor;

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 164
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->newInputStream()Lorg/newsclub/net/unix/AFInputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->in:Lorg/newsclub/net/unix/AFInputStream;

    .line 165
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->newOutputStream()Lorg/newsclub/net/unix/AFOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->out:Lorg/newsclub/net/unix/AFOutputStream;

    .line 166
    return-void
.end method

.method static synthetic access$400(Lorg/newsclub/net/unix/AFSocketImpl;)Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl;

    .line 47
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    return-object v0
.end method

.method static synthetic access$500(Lorg/newsclub/net/unix/AFSocketImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl;

    .line 47
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$602(Lorg/newsclub/net/unix/AFSocketImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->closedInputStream:Z

    return p1
.end method

.method static synthetic access$700(Lorg/newsclub/net/unix/AFSocketImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->checkClose()V

    return-void
.end method

.method static synthetic access$800(I)Z
    .locals 1
    .param p0, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->checkWriteInterruptedException(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lorg/newsclub/net/unix/AFSocketImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->closedOutputStream:Z

    return p1
.end method

.method private checkClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->closedInputStream:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->closedOutputStream:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->close()V

    .line 337
    :cond_0
    return-void
.end method

.method private static checkWriteInterruptedException(I)Z
    .locals 2
    .param p0, "bytesTransferred"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 542
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x1

    return v0

    .line 543
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Thread interrupted during write"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, "ex":Ljava/io/InterruptedIOException;
    iput p0, v0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 545
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 546
    throw v0
.end method

.method private static expectBoolean(Ljava/lang/Object;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 635
    if-eqz p0, :cond_0

    .line 640
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 636
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Value must not be null"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/net/SocketException;

    throw v0
.end method

.method private static expectInteger(Ljava/lang/Object;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 623
    if-eqz p0, :cond_0

    .line 628
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 624
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Value must not be null"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/net/SocketException;

    throw v0
.end method

.method private getOption0(I)Ljava/lang/Object;
    .locals 3
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 652
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 656
    iget-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->reuseAddr:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 659
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 660
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-static {v0, p1, v1, v2}, Lorg/newsclub/net/unix/AFSocketImpl;->getOptionDefault(Ljava/io/FileDescriptor;ILjava/util/concurrent/atomic/AtomicInteger;Lorg/newsclub/net/unix/AFAddressFamily;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 653
    .end local v0    # "fdesc":Ljava/io/FileDescriptor;
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final getOptionDefault(Ljava/io/FileDescriptor;ILjava/util/concurrent/atomic/AtomicInteger;Lorg/newsclub/net/unix/AFAddressFamily;)Ljava/lang/Object;
    .locals 4
    .param p0, "fdesc"    # Ljava/io/FileDescriptor;
    .param p1, "optID"    # I
    .param p2, "acceptTimeout"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 666
    .local p3, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 693
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 666
    sparse-switch p1, :sswitch_data_0

    .line 695
    :try_start_0
    new-instance v0, Ljava/net/SocketException;

    goto :goto_3

    .line 677
    :sswitch_0
    const/16 v0, 0x1005

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->getSocketOptionInt(Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 678
    const/16 v2, 0x1006

    invoke-static {p0, v2}, Lorg/newsclub/net/unix/NativeUnixSocket;->getSocketOptionInt(Ljava/io/FileDescriptor;I)I

    move-result v2

    .line 677
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 679
    .local v0, "v":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 681
    return-object v3

    .line 683
    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 687
    .end local v0    # "v":I
    :sswitch_1
    invoke-static {p0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->getSocketOptionInt(Ljava/io/FileDescriptor;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 691
    :sswitch_2
    invoke-static {p0, v1, p3}, Lorg/newsclub/net/unix/AFSocketAddress;->getInetAddress(Ljava/io/FileDescriptor;ZLorg/newsclub/net/unix/AFAddressFamily;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 669
    :sswitch_3
    :try_start_1
    invoke-static {p0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->getSocketOptionInt(Ljava/io/FileDescriptor;I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 670
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/net/SocketException;
    return-object v2

    .line 693
    .end local v0    # "e":Ljava/net/SocketException;
    :sswitch_4
    return-object v2

    .line 689
    :sswitch_5
    return-object v3

    .line 675
    :sswitch_6
    :try_start_2
    invoke-static {p0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->getSocketOptionInt(Ljava/io/FileDescriptor;I)I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 699
    :catch_1
    move-exception v0

    goto :goto_4

    .line 697
    :catch_2
    move-exception v0

    goto :goto_5

    .line 695
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "fdesc":Ljava/io/FileDescriptor;
    .end local p1    # "optID":I
    .end local p2    # "acceptTimeout":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local p3    # "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 700
    .local v0, "e":Ljava/lang/Exception;
    .restart local p0    # "fdesc":Ljava/io/FileDescriptor;
    .restart local p1    # "optID":I
    .restart local p2    # "acceptTimeout":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local p3    # "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    :goto_4
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Could not get option"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 698
    .local v0, "e":Ljava/net/SocketException;
    :goto_5
    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0xf -> :sswitch_2
        0x80 -> :sswitch_1
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_1
        0x1006 -> :sswitch_0
    .end sparse-switch
.end method

.method private isClosed()Z
    .locals 1

    .line 224
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->isClosed()Z

    move-result v0

    return v0
.end method

.method private setOption0(ILjava/lang/Object;)V
    .locals 2
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 710
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 713
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 714
    invoke-static {p2}, Lorg/newsclub/net/unix/AFSocketImpl;->expectBoolean(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->reuseAddr:Z

    .line 715
    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 719
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, p1, p2, v1}, Lorg/newsclub/net/unix/AFSocketImpl;->setOptionDefault(Ljava/io/FileDescriptor;ILjava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 720
    return-void

    .line 711
    .end local v0    # "fdesc":Ljava/io/FileDescriptor;
    :cond_2
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final setOptionDefault(Ljava/io/FileDescriptor;ILjava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 3
    .param p0, "fdesc"    # Ljava/io/FileDescriptor;
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "acceptTimeout"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 766
    sparse-switch p1, :sswitch_data_0

    .line 809
    :try_start_0
    new-instance v0, Ljava/net/SocketException;

    goto :goto_1

    .line 780
    :sswitch_0
    invoke-static {p2}, Lorg/newsclub/net/unix/AFSocketImpl;->expectInteger(Ljava/lang/Object;)I

    move-result v0

    .line 781
    .local v0, "timeout":I
    const/16 v1, 0x1005

    invoke-static {p0, v1, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->setSocketOptionInt(Ljava/io/FileDescriptor;II)V

    .line 782
    const/16 v1, 0x1006

    invoke-static {p0, v1, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->setSocketOptionInt(Ljava/io/FileDescriptor;II)V

    .line 783
    if-eqz p3, :cond_0

    .line 784
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 786
    :cond_0
    return-void

    .line 790
    .end local v0    # "timeout":I
    :sswitch_1
    invoke-static {p2}, Lorg/newsclub/net/unix/AFSocketImpl;->expectInteger(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->setSocketOptionInt(Ljava/io/FileDescriptor;II)V

    .line 791
    return-void

    .line 769
    :sswitch_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 770
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 771
    .local v0, "b":Z
    if-nez v0, :cond_1

    .line 774
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->setSocketOptionInt(Ljava/io/FileDescriptor;II)V

    .line 775
    return-void

    .line 772
    :cond_1
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Only accepting Boolean.FALSE here"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "fdesc":Ljava/io/FileDescriptor;
    .end local p1    # "optID":I
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "acceptTimeout":Ljava/util/concurrent/atomic/AtomicInteger;
    throw v1

    .line 777
    .end local v0    # "b":Z
    .restart local p0    # "fdesc":Ljava/io/FileDescriptor;
    .restart local p1    # "optID":I
    .restart local p2    # "value":Ljava/lang/Object;
    .restart local p3    # "acceptTimeout":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_2
    invoke-static {p2}, Lorg/newsclub/net/unix/AFSocketImpl;->expectInteger(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->setSocketOptionInt(Ljava/io/FileDescriptor;II)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 778
    return-void

    .line 794
    :sswitch_3
    :try_start_1
    invoke-static {p2}, Lorg/newsclub/net/unix/AFSocketImpl;->expectBoolean(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->setSocketOptionInt(Ljava/io/FileDescriptor;II)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 797
    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 798
    :goto_0
    return-void

    .line 807
    :sswitch_4
    return-void

    .line 804
    :sswitch_5
    return-void

    .line 800
    :sswitch_6
    :try_start_2
    invoke-static {p2}, Lorg/newsclub/net/unix/AFSocketImpl;->expectBoolean(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->setSocketOptionInt(Ljava/io/FileDescriptor;II)V

    .line 801
    return-void

    .line 813
    :catch_1
    move-exception v0

    goto :goto_2

    .line 811
    :catch_2
    move-exception v0

    goto :goto_3

    .line 809
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "fdesc":Ljava/io/FileDescriptor;
    .end local p1    # "optID":I
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "acceptTimeout":Ljava/util/concurrent/atomic/AtomicInteger;
    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    .restart local p0    # "fdesc":Ljava/io/FileDescriptor;
    .restart local p1    # "optID":I
    .restart local p2    # "value":Ljava/lang/Object;
    .restart local p3    # "acceptTimeout":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_2
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Error while setting option"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 812
    .local v0, "e":Ljava/net/SocketException;
    :goto_3
    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x80 -> :sswitch_2
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_1
        0x1006 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected final accept(Ljava/net/SocketImpl;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSocketImpl;->accept0(Ljava/net/SocketImpl;)Z

    .line 231
    return-void
.end method

.method final accept0(Ljava/net/SocketImpl;)Z
    .locals 12
    .param p1, "socket"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 235
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isClosed()Z

    move-result v1

    const-string v8, "Socket is closed"

    if-nez v1, :cond_5

    .line 237
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isBound()Z

    move-result v1

    const-string v2, "Socket is not bound"

    if-eqz v1, :cond_4

    .line 241
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    iget-object v1, v1, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->socketAddress:Lorg/newsclub/net/unix/AFSocketAddress;

    .line 242
    .local v1, "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v9

    .line 243
    .local v9, "boundSocketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    if-eqz v9, :cond_0

    .line 245
    iget-object v3, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    move-object v1, v9

    iput-object v9, v3, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->socketAddress:Lorg/newsclub/net/unix/AFSocketAddress;

    move-object v10, v1

    goto :goto_0

    .line 243
    :cond_0
    move-object v10, v1

    .line 248
    .end local v1    # "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    .local v10, "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    :goto_0
    if-eqz v10, :cond_3

    .line 253
    move-object v11, p1

    check-cast v11, Lorg/newsclub/net/unix/AFSocketImpl;

    .line 255
    .local v11, "si":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    :try_start_0
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-static {v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->access$200(Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;)V

    .line 256
    invoke-virtual {v10}, Lorg/newsclub/net/unix/AFSocketAddress;->getNativeAddressDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 257
    .local v1, "ab":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v4, v11, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v3, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    iget-object v3, v3, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->inode:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-object v3, p0, Lorg/newsclub/net/unix/AFSocketImpl;->socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 258
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 257
    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lorg/newsclub/net/unix/NativeUnixSocket;->accept(Ljava/nio/ByteBuffer;ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;JI)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 259
    nop

    .line 276
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-static {v2}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->access$300(Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;)V

    .line 259
    const/4 v2, 0x0

    return v2

    .line 262
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isClosed()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 276
    .end local v1    # "ab":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-static {v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->access$300(Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;)V

    .line 277
    nop

    .line 278
    invoke-virtual {v11, v10}, Lorg/newsclub/net/unix/AFSocketImpl;->setSocketAddress(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 279
    iget-object v1, v11, Lorg/newsclub/net/unix/AFSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 281
    return v2

    .line 264
    .restart local v1    # "ab":Ljava/nio/ByteBuffer;
    :cond_2
    :try_start_2
    iget-object v2, v11, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    goto :goto_1

    .line 265
    :catch_0
    move-exception v2

    .line 269
    :goto_1
    :try_start_3
    iget-object v2, v11, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lorg/newsclub/net/unix/NativeUnixSocket;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    goto :goto_2

    .line 270
    :catch_1
    move-exception v2

    .line 273
    :goto_2
    :try_start_4
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fdesc":Ljava/io/FileDescriptor;
    .end local v9    # "boundSocketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    .end local v10    # "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    .end local v11    # "si":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    .end local p1    # "socket":Ljava/net/SocketImpl;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    .end local v1    # "ab":Ljava/nio/ByteBuffer;
    .restart local v0    # "fdesc":Ljava/io/FileDescriptor;
    .restart local v9    # "boundSocketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    .restart local v10    # "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    .restart local v11    # "si":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    .restart local p1    # "socket":Ljava/net/SocketImpl;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-static {v2}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->access$300(Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;)V

    .line 277
    throw v1

    .line 249
    .end local v11    # "si":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    :cond_3
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    .end local v9    # "boundSocketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    .end local v10    # "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    :cond_4
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_5
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 301
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->getThreadLocalDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->available(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method

.method protected final bind(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    return-void
.end method

.method final bind(Ljava/net/SocketAddress;I)V
    .locals 5
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    if-eqz p1, :cond_2

    .line 308
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketAddress;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 314
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;

    if-ne p1, v0, :cond_0

    .line 315
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->inode:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 316
    return-void

    .line 319
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/newsclub/net/unix/AFSocketAddress;

    .line 321
    .local v0, "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocketImpl;->setSocketAddress(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 322
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getNativeAddressDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 323
    .local v1, "ab":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    iget-object v2, v2, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->inode:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v4, p0, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v3, v4, p2}, Lorg/newsclub/net/unix/NativeUnixSocket;->bind(Ljava/nio/ByteBuffer;ILjava/io/FileDescriptor;I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 324
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    .line 325
    return-void

    .line 309
    .end local v0    # "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    .end local v1    # "ab":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind to this type of address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot bind to null address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->shutdown()V

    .line 342
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->runCleaner()V

    .line 343
    return-void
.end method

.method protected final connect(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind to this type of address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final connect(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind to this type of address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final connect(Ljava/net/SocketAddress;I)V
    .locals 0
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketImpl;->connect0(Ljava/net/SocketAddress;I)Z

    .line 360
    return-void
.end method

.method final connect0(Ljava/net/SocketAddress;I)Z
    .locals 9
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 365
    return v1

    .line 366
    :cond_0
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

    if-ne p1, v0, :cond_1

    .line 367
    const/4 v0, 0x0

    return v0

    .line 370
    :cond_1
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketAddress;

    if-eqz v0, :cond_6

    .line 374
    move-object v0, p1

    check-cast v0, Lorg/newsclub/net/unix/AFSocketAddress;

    .line 375
    .local v0, "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getNativeAddressDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 376
    .local v2, "ab":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 377
    .local v3, "success":Z
    const/4 v4, 0x1

    .line 380
    .local v4, "ignoreSpuriousTimeout":Z
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    iget-object v6, p0, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v7, -0x1

    invoke-static {v2, v5, v6, v7, v8}, Lorg/newsclub/net/unix/NativeUnixSocket;->connect(Ljava/nio/ByteBuffer;ILjava/io/FileDescriptor;J)Z

    move-result v5
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 381
    goto :goto_1

    .line 382
    :catch_0
    move-exception v5

    .line 385
    .local v5, "e":Ljava/net/SocketTimeoutException;
    if-eqz v4, :cond_5

    .line 386
    const/16 v6, 0x1006

    invoke-virtual {p0, v6}, Lorg/newsclub/net/unix/AFSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v6

    .line 387
    .local v6, "o":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 388
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_5

    .line 389
    const/4 v4, 0x0

    .line 390
    goto :goto_0

    .line 392
    :cond_3
    if-nez v6, :cond_5

    .line 393
    const/4 v4, 0x0

    .line 394
    nop

    .line 399
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    .end local v6    # "o":Ljava/lang/Object;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    :goto_1
    if-eqz v3, :cond_4

    .line 401
    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocketImpl;->setSocketAddress(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 402
    iget-object v5, p0, Lorg/newsclub/net/unix/AFSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 404
    :cond_4
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    .line 405
    return v3

    .line 397
    .restart local v5    # "e":Ljava/net/SocketTimeoutException;
    :cond_5
    throw v5

    .line 371
    .end local v0    # "socketAddress":Lorg/newsclub/net/unix/AFSocketAddress;
    .end local v2    # "ab":Ljava/nio/ByteBuffer;
    .end local v3    # "success":Z
    .end local v4    # "ignoreSpuriousTimeout":Z
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    :cond_6
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot connect to this type of address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final create(Z)V
    .locals 2
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 413
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->createType:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->createType:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already created with different mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->createType:Ljava/lang/Boolean;

    .line 421
    :goto_0
    return-void

    .line 423
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->createType:Ljava/lang/Boolean;

    .line 424
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_3

    sget-object v1, Lorg/newsclub/net/unix/AFSocketType;->SOCK_STREAM:Lorg/newsclub/net/unix/AFSocketType;

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/newsclub/net/unix/AFSocketType;->SOCK_DGRAM:Lorg/newsclub/net/unix/AFSocketType;

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/AFSocketImpl;->createSocket(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketType;)V

    .line 425
    return-void

    .line 411
    :cond_4
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final createSocket(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketType;)V
    .locals 2
    .param p1, "fdTarget"    # Ljava/io/FileDescriptor;
    .param p2, "type"    # Lorg/newsclub/net/unix/AFSocketType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v0

    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFSocketType;->getId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->createSocket(Ljava/io/FileDescriptor;II)V

    .line 931
    return-void
.end method

.method final ensureAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "minSize"    # I

    .line 867
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AncillaryDataSupport;->ensureAncillaryReceiveBufferSize(I)V

    .line 868
    return-void
.end method

.method final getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation

    .line 934
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    return-object v0
.end method

.method getAncillaryDataSupport()Lorg/newsclub/net/unix/AncillaryDataSupport;
    .locals 1

    .line 871
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    return-object v0
.end method

.method final getAncillaryReceiveBufferSize()I
    .locals 1

    .line 859
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->getAncillaryReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method final getCore()Lorg/newsclub/net/unix/AFSocketCore;
    .locals 1

    .line 220
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    return-object v0
.end method

.method final getFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 187
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 892
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected final declared-synchronized getImplExtensions()Lorg/newsclub/net/unix/AFSocketImplExtensions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketImplExtensions<",
            "TA;>;"
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    monitor-enter p0

    .line 978
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFAddressFamily;->initImplExtensions(Lorg/newsclub/net/unix/AncillaryDataSupport;)Lorg/newsclub/net/unix/AFSocketImplExtensions;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;

    .line 981
    .end local p0    # "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 977
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .line 921
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    .line 922
    .local v0, "rsa":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    if-nez v0, :cond_0

    .line 923
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 925
    :cond_0
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->getInputStream()Lorg/newsclub/net/unix/AFInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected final getInputStream()Lorg/newsclub/net/unix/AFInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected/not bound"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    .line 433
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->in:Lorg/newsclub/net/unix/AFInputStream;

    return-object v0
.end method

.method final getLocalPort1()I
    .locals 1

    .line 911
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->localport:I

    return v0
.end method

.method final getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 903
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->localport:I

    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->getSocketAddress(Ljava/io/FileDescriptor;ZILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 648
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/AFSocketImpl;->getOption0(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 2
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

    .line 954
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketOption;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->getCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/newsclub/net/unix/AFSocketOption;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFSocketCore;->getOption(Lorg/newsclub/net/unix/AFSocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 957
    :cond_0
    invoke-static {p1}, Lorg/newsclub/net/unix/SocketOptionsMapper;->resolve(Ljava/net/SocketOption;)Ljava/lang/Integer;

    move-result-object v0

    .line 958
    .local v0, "optionId":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 959
    invoke-super {p0, p1}, Lorg/newsclub/net/unix/SocketImplShim;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 961
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/newsclub/net/unix/AFSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected final getOptionLenient(I)Ljava/lang/Object;
    .locals 2
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 731
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/AFSocketImpl;->getOption0(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/net/SocketException;
    sparse-switch p1, :sswitch_data_0

    .line 738
    throw v0

    .line 736
    :sswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->getOutputStream()Lorg/newsclub/net/unix/AFOutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected final getOutputStream()Lorg/newsclub/net/unix/AFOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected/not bound"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    .line 442
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->out:Lorg/newsclub/net/unix/AFOutputStream;

    return-object v0
.end method

.method final getRemotePort()I
    .locals 1

    .line 915
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->port:I

    return v0
.end method

.method final getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 907
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->port:I

    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->getSocketAddress(Ljava/io/FileDescriptor;ZILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method final isBound()Z
    .locals 3

    .line 206
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 207
    return v1

    .line 209
    :cond_0
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isClosed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 210
    return v2

    .line 212
    :cond_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->isConnected(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    return v1

    .line 216
    :cond_2
    return v2
.end method

.method final isConnected()Z
    .locals 3

    .line 192
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 193
    return v1

    .line 195
    :cond_0
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->isClosed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 196
    return v2

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0, v2}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->isConnected(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 200
    return v1

    .line 202
    :cond_2
    return v2
.end method

.method protected final listen(I)V
    .locals 1
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 448
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    if-gtz p1, :cond_0

    .line 449
    const/16 p1, 0x32

    .line 451
    :cond_0
    invoke-static {v0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->listen(Ljava/io/FileDescriptor;I)V

    .line 452
    return-void
.end method

.method protected final newInputStream()Lorg/newsclub/net/unix/AFInputStream;
    .locals 2

    .line 174
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    new-instance v0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;-><init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketImpl$1;)V

    return-object v0
.end method

.method protected final newOutputStream()Lorg/newsclub/net/unix/AFOutputStream;
    .locals 2

    .line 183
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    new-instance v0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;-><init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketImpl$1;)V

    return-object v0
.end method

.method final read(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "socketAddressBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->read(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method final receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->receive(Ljava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method final send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "target"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->write(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;I)I

    move-result v0

    return v0
.end method

.method protected final sendUrgentData(I)V
    .locals 1
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final setAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 863
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AncillaryDataSupport;->setAncillaryReceiveBufferSize(I)V

    .line 864
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 706
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    invoke-direct {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketImpl;->setOption0(ILjava/lang/Object;)V

    .line 707
    return-void
.end method

.method protected setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketOption;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl;->getCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/newsclub/net/unix/AFSocketOption;

    invoke-virtual {v0, v1, p2}, Lorg/newsclub/net/unix/AFSocketCore;->setOption(Lorg/newsclub/net/unix/AFSocketOption;Ljava/lang/Object;)V

    .line 941
    return-void

    .line 943
    :cond_0
    invoke-static {p1}, Lorg/newsclub/net/unix/SocketOptionsMapper;->resolve(Ljava/net/SocketOption;)Ljava/lang/Integer;

    move-result-object v0

    .line 944
    .local v0, "optionId":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 945
    invoke-super {p0, p1, p2}, Lorg/newsclub/net/unix/SocketImplShim;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    goto :goto_0

    .line 947
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lorg/newsclub/net/unix/AFSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 949
    :goto_0
    return-void
.end method

.method protected final setOptionLenient(ILjava/lang/Object;)V
    .locals 1
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 752
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketImpl;->setOption0(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    nop

    .line 761
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/net/SocketException;
    packed-switch p1, :pswitch_data_0

    .line 758
    throw v0

    .line 756
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method final setSocketAddress(Lorg/newsclub/net/unix/AFSocketAddress;)V
    .locals 2
    .param p1, "socketAddress"    # Lorg/newsclub/net/unix/AFSocketAddress;

    .line 285
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    if-nez p1, :cond_0

    .line 286
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->socketAddress:Lorg/newsclub/net/unix/AFSocketAddress;

    .line 287
    iput-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->address:Ljava/net/InetAddress;

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->localport:I

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    iput-object p1, v0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->socketAddress:Lorg/newsclub/net/unix/AFSocketAddress;

    .line 291
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->address:Ljava/net/InetAddress;

    .line 292
    iget v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->localport:I

    if-gtz v0, :cond_1

    .line 293
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->localport:I

    .line 296
    :cond_1
    :goto_0
    return-void
.end method

.method protected final shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFd()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 826
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    .line 827
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 828
    const/4 v1, 0x0

    iput v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    .line 830
    :cond_0
    return-void
.end method

.method protected final shutdownInput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFd()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 835
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    .line 836
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 837
    iget v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    .line 838
    iget v2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 839
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 840
    iput v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    .line 843
    :cond_0
    return-void
.end method

.method protected final shutdownOutput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFd()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 848
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    .line 849
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 850
    iget v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    .line 851
    iget v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 852
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 853
    const/4 v1, 0x0

    iput v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->shutdownState:I

    .line 856
    :cond_0
    return-void
.end method

.method protected supportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 967
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    sget-object v0, Lorg/newsclub/net/unix/SocketOptionsMapper;->SUPPORTED_SOCKET_OPTIONS:Ljava/util/Set;

    return-object v0
.end method

.method protected final supportsUrgentData()Z
    .locals 1

    .line 456
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 618
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/newsclub/net/unix/SocketImplShim;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    iget-object v1, v1, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->socketAddress:Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; bound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final updatePorts(II)V
    .locals 0
    .param p1, "local"    # I
    .param p2, "remote"    # I

    .line 896
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iput p1, p0, Lorg/newsclub/net/unix/AFSocketImpl;->localport:I

    .line 897
    if-ltz p2, :cond_0

    .line 898
    iput p2, p0, Lorg/newsclub/net/unix/AFSocketImpl;->port:I

    .line 900
    :cond_0
    return-void
.end method

.method final write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
