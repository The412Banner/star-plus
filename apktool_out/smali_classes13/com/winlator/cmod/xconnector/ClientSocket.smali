.class public Lcom/winlator/cmod/xconnector/ClientSocket;
.super Ljava/lang/Object;
.source "ClientSocket.java"


# instance fields
.field private final ancillaryFds:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final fd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xconnector/ClientSocket;->ancillaryFds:Ljava/util/ArrayDeque;

    .line 20
    iput p1, p0, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    .line 21
    return-void
.end method

.method private native read(ILjava/nio/ByteBuffer;II)I
.end method

.method private native recvAncillaryMsg(ILjava/nio/ByteBuffer;II)I
.end method

.method private native sendAncillaryMsg(ILjava/nio/ByteBuffer;II)I
.end method

.method private native write(ILjava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public addAncillaryFd(I)V
    .locals 2
    .param p1, "ancillaryFd"    # I

    .line 33
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/ClientSocket;->ancillaryFds:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public getAncillaryFd()I
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/winlator/cmod/xconnector/ClientSocket;->hasAncillaryFds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xconnector/ClientSocket;->ancillaryFds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public hasAncillaryFds()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/ClientSocket;->ancillaryFds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 38
    .local v0, "position":I
    iget v1, p0, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/winlator/cmod/xconnector/ClientSocket;->read(ILjava/nio/ByteBuffer;II)I

    move-result v1

    .line 39
    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 40
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    return v1

    .line 43
    :cond_0
    if-nez v1, :cond_1

    .line 44
    const/4 v2, -0x1

    return v2

    .line 46
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to read data."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public recvAncillaryMsg(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 59
    .local v0, "position":I
    iget v1, p0, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/winlator/cmod/xconnector/ClientSocket;->recvAncillaryMsg(ILjava/nio/ByteBuffer;II)I

    move-result v1

    .line 60
    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 61
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    return v1

    .line 64
    :cond_0
    if-nez v1, :cond_1

    .line 65
    const/4 v2, -0x1

    return v2

    .line 67
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to receive ancillary messages."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendAncillaryMsg(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "ancillaryFd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget v0, p0, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/winlator/cmod/xconnector/ClientSocket;->sendAncillaryMsg(ILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 72
    .local v0, "bytesSent":I
    if-ltz v0, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    return-void

    .line 75
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to send ancillary messages."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget v0, p0, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/winlator/cmod/xconnector/ClientSocket;->write(ILjava/nio/ByteBuffer;I)I

    move-result v0

    .line 51
    .local v0, "bytesWritten":I
    if-ltz v0, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 54
    :cond_0
    const-string v1, "ClientSocket"

    const-string v2, "Failed to write data."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void
.end method
