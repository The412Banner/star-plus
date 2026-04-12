.class public final Lorg/newsclub/net/unix/AFPipe;
.super Ljava/nio/channels/Pipe;
.source "AFPipe.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFPipe$SourceChannel;,
        Lorg/newsclub/net/unix/AFPipe$SinkChannel;
    }
.end annotation


# instance fields
.field private final options:I

.field private final sinkChannel:Lorg/newsclub/net/unix/AFPipe$SinkChannel;

.field private final sinkCore:Lorg/newsclub/net/unix/AFCore;

.field private final sourceChannel:Lorg/newsclub/net/unix/AFPipe$SourceChannel;

.field private final sourceCore:Lorg/newsclub/net/unix/AFCore;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFSelectorProvider;Z)V
    .locals 3
    .param p2, "selectable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFSelectorProvider<",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    .local p1, "provider":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<*>;"
    invoke-direct {p0}, Ljava/nio/channels/Pipe;-><init>()V

    .line 44
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->ensureSupported()V

    .line 46
    new-instance v0, Lorg/newsclub/net/unix/AFCore;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/io/FileDescriptor;

    invoke-direct {v0, p0, v1}, Lorg/newsclub/net/unix/AFCore;-><init>(Ljava/lang/Object;Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFPipe;->sourceCore:Lorg/newsclub/net/unix/AFCore;

    .line 47
    new-instance v0, Lorg/newsclub/net/unix/AFCore;

    invoke-direct {v0, p0, v1}, Lorg/newsclub/net/unix/AFCore;-><init>(Ljava/lang/Object;Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFPipe;->sinkCore:Lorg/newsclub/net/unix/AFCore;

    .line 49
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe;->sourceCore:Lorg/newsclub/net/unix/AFCore;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lorg/newsclub/net/unix/AFPipe;->sinkCore:Lorg/newsclub/net/unix/AFCore;

    iget-object v1, v1, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, v1, p2}, Lorg/newsclub/net/unix/NativeUnixSocket;->initPipe(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)Z

    move-result v0

    .line 50
    .local v0, "isSocket":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    iput v1, p0, Lorg/newsclub/net/unix/AFPipe;->options:I

    .line 52
    new-instance v1, Lorg/newsclub/net/unix/AFPipe$SourceChannel;

    invoke-direct {v1, p0, p1}, Lorg/newsclub/net/unix/AFPipe$SourceChannel;-><init>(Lorg/newsclub/net/unix/AFPipe;Ljava/nio/channels/spi/SelectorProvider;)V

    iput-object v1, p0, Lorg/newsclub/net/unix/AFPipe;->sourceChannel:Lorg/newsclub/net/unix/AFPipe$SourceChannel;

    .line 53
    new-instance v1, Lorg/newsclub/net/unix/AFPipe$SinkChannel;

    invoke-direct {v1, p0, p1}, Lorg/newsclub/net/unix/AFPipe$SinkChannel;-><init>(Lorg/newsclub/net/unix/AFPipe;Ljava/nio/channels/spi/SelectorProvider;)V

    iput-object v1, p0, Lorg/newsclub/net/unix/AFPipe;->sinkChannel:Lorg/newsclub/net/unix/AFPipe$SinkChannel;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/newsclub/net/unix/AFPipe;)I
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFPipe;

    .line 34
    iget v0, p0, Lorg/newsclub/net/unix/AFPipe;->options:I

    return v0
.end method

.method static synthetic access$100(Lorg/newsclub/net/unix/AFPipe;)Lorg/newsclub/net/unix/AFCore;
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFPipe;

    .line 34
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe;->sourceCore:Lorg/newsclub/net/unix/AFCore;

    return-object v0
.end method

.method static synthetic access$200(Lorg/newsclub/net/unix/AFPipe;)Lorg/newsclub/net/unix/AFCore;
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFPipe;

    .line 34
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe;->sinkCore:Lorg/newsclub/net/unix/AFCore;

    return-object v0
.end method

.method public static open()Lorg/newsclub/net/unix/AFPipe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->provider()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openPipe()Lorg/newsclub/net/unix/AFPipe;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFPipe;->source()Lorg/newsclub/net/unix/AFPipe$SourceChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFPipe$SourceChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFPipe;->sink()Lorg/newsclub/net/unix/AFPipe$SinkChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->close()V

    .line 82
    nop

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFPipe;->sink()Lorg/newsclub/net/unix/AFPipe$SinkChannel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->close()V

    .line 82
    throw v0
.end method

.method getOptions()I
    .locals 1

    .line 179
    iget v0, p0, Lorg/newsclub/net/unix/AFPipe;->options:I

    return v0
.end method

.method public bridge synthetic sink()Ljava/nio/channels/Pipe$SinkChannel;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFPipe;->sink()Lorg/newsclub/net/unix/AFPipe$SinkChannel;

    move-result-object v0

    return-object v0
.end method

.method public sink()Lorg/newsclub/net/unix/AFPipe$SinkChannel;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe;->sinkChannel:Lorg/newsclub/net/unix/AFPipe$SinkChannel;

    return-object v0
.end method

.method sinkFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe;->sinkCore:Lorg/newsclub/net/unix/AFCore;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public bridge synthetic source()Ljava/nio/channels/Pipe$SourceChannel;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFPipe;->source()Lorg/newsclub/net/unix/AFPipe$SourceChannel;

    move-result-object v0

    return-object v0
.end method

.method public source()Lorg/newsclub/net/unix/AFPipe$SourceChannel;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe;->sourceChannel:Lorg/newsclub/net/unix/AFPipe$SourceChannel;

    return-object v0
.end method

.method sourceFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe;->sourceCore:Lorg/newsclub/net/unix/AFCore;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method
