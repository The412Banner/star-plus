.class final Lorg/newsclub/net/unix/RAFChannelProvider;
.super Ljava/io/RandomAccessFile;
.source "RAFChannelProvider.java"

# interfaces
.implements Lorg/newsclub/net/unix/FileDescriptorAccess;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final fdObj:Ljava/io/FileDescriptor;

.field private final rafFdOrig:Ljava/io/FileDescriptor;

.field private final tempPath:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const-string v0, "jux"

    const-string v1, ".sock"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/newsclub/net/unix/RAFChannelProvider;-><init>(Ljava/io/FileDescriptor;Ljava/io/File;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;Ljava/io/File;)V
    .locals 4
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "tempPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const-string v0, "rw"

    invoke-direct {p0, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/RAFChannelProvider;->rafFdOrig:Ljava/io/FileDescriptor;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/RAFChannelProvider;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-object p2, p0, Lorg/newsclub/net/unix/RAFChannelProvider;->tempPath:Ljava/io/File;

    .line 46
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jux-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".sock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p2, v0

    .line 52
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create a temporary path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->deleteOnExit()V

    .line 58
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->ensureSupported()V

    .line 60
    iput-object p1, p0, Lorg/newsclub/net/unix/RAFChannelProvider;->fdObj:Ljava/io/FileDescriptor;

    .line 62
    invoke-virtual {p0}, Lorg/newsclub/net/unix/RAFChannelProvider;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 63
    .local v0, "rafFdObj":Ljava/io/FileDescriptor;
    iget-object v1, p0, Lorg/newsclub/net/unix/RAFChannelProvider;->rafFdOrig:Ljava/io/FileDescriptor;

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->copyFileDescriptor(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 64
    invoke-static {p1, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->copyFileDescriptor(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 65
    return-void
.end method

.method public static getFileChannel(Ljava/io/FileDescriptor;)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lorg/newsclub/net/unix/RAFChannelProvider;->getFileChannel0(Ljava/io/FileDescriptor;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method private static getFileChannel0(Ljava/io/FileDescriptor;)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/newsclub/net/unix/RAFChannelProvider;

    invoke-direct {v0, p0}, Lorg/newsclub/net/unix/RAFChannelProvider;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Lorg/newsclub/net/unix/RAFChannelProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/RAFChannelProvider;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/newsclub/net/unix/RAFChannelProvider;->rafFdOrig:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Lorg/newsclub/net/unix/RAFChannelProvider;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->copyFileDescriptor(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 76
    iget-object v0, p0, Lorg/newsclub/net/unix/RAFChannelProvider;->tempPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local p0    # "this":Lorg/newsclub/net/unix/RAFChannelProvider;
    :cond_0
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/newsclub/net/unix/RAFChannelProvider;->fdObj:Ljava/io/FileDescriptor;

    return-object v0
.end method
