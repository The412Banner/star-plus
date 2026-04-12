.class public final Lorg/newsclub/net/unix/AFPipe$SinkChannel;
.super Ljava/nio/channels/Pipe$SinkChannel;
.source "AFPipe.java"

# interfaces
.implements Lorg/newsclub/net/unix/FileDescriptorAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SinkChannel"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/newsclub/net/unix/AFPipe;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFPipe;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/newsclub/net/unix/AFPipe;
    .param p2, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 135
    iput-object p1, p0, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->this$0:Lorg/newsclub/net/unix/AFPipe;

    .line 136
    invoke-direct {p0, p2}, Ljava/nio/channels/Pipe$SinkChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 137
    return-void
.end method


# virtual methods
.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->this$0:Lorg/newsclub/net/unix/AFPipe;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFPipe;->access$200(Lorg/newsclub/net/unix/AFPipe;)Lorg/newsclub/net/unix/AFCore;

    move-result-object v0

    iget-object v0, v0, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->this$0:Lorg/newsclub/net/unix/AFPipe;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFPipe;->access$200(Lorg/newsclub/net/unix/AFPipe;)Lorg/newsclub/net/unix/AFCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFCore;->close()V

    .line 165
    return-void
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->this$0:Lorg/newsclub/net/unix/AFPipe;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFPipe;->access$200(Lorg/newsclub/net/unix/AFPipe;)Lorg/newsclub/net/unix/AFCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFCore;->implConfigureBlocking(Z)V

    .line 160
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->this$0:Lorg/newsclub/net/unix/AFPipe;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFPipe;->access$200(Lorg/newsclub/net/unix/AFPipe;)Lorg/newsclub/net/unix/AFCore;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->this$0:Lorg/newsclub/net/unix/AFPipe;

    invoke-static {v1}, Lorg/newsclub/net/unix/AFPipe;->access$000(Lorg/newsclub/net/unix/AFPipe;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/newsclub/net/unix/AFCore;->write(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;I)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    if-nez p3, :cond_0

    .line 142
    const-wide/16 v0, 0x0

    return-wide v0

    .line 144
    :cond_0
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
