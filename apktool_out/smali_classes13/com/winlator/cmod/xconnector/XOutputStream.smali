.class public Lcom/winlator/cmod/xconnector/XOutputStream;
.super Ljava/lang/Object;
.source "XOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xconnector/XOutputStream$OutputStreamLock;
    }
.end annotation


# static fields
.field private static final ZERO:[B


# instance fields
.field private ancillaryFd:I

.field public buffer:Ljava/nio/ByteBuffer;

.field public final clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetlock(Lcom/winlator/cmod/xconnector/XOutputStream;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mflush(Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/xconnector/XOutputStream;->flush()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/16 v0, 0x40

    new-array v0, v0, [B

    sput-object v0, Lcom/winlator/cmod/xconnector/XOutputStream;->ZERO:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;-><init>(Lcom/winlator/cmod/xconnector/ClientSocket;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/xconnector/ClientSocket;I)V
    .locals 1
    .param p1, "clientSocket"    # Lcom/winlator/cmod/xconnector/ClientSocket;
    .param p2, "initialCapacity"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->ancillaryFd:I

    .line 22
    iput-object p1, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    .line 23
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 24
    return-void
.end method

.method private ensureSpaceIsAvailable(I)V
    .locals 3
    .param p1, "length"    # I

    .line 99
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 100
    .local v0, "position":I
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v1, p1, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 102
    .local v1, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iput-object v1, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 105
    return-void
.end method

.method private flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 84
    iget v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->ancillaryFd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->ancillaryFd:I

    invoke-virtual {v0, v2, v3}, Lcom/winlator/cmod/xconnector/ClientSocket;->sendAncillaryMsg(Ljava/nio/ByteBuffer;I)V

    .line 86
    iput v1, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->ancillaryFd:I

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/ClientSocket;->write(Ljava/nio/ByteBuffer;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 92
    :cond_1
    return-void
.end method


# virtual methods
.method public lock()Lcom/winlator/cmod/xconnector/XStreamLock;
    .locals 1

    .line 95
    new-instance v0, Lcom/winlator/cmod/xconnector/XOutputStream$OutputStreamLock;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/xconnector/XOutputStream$OutputStreamLock;-><init>(Lcom/winlator/cmod/xconnector/XOutputStream;)V

    return-object v0
.end method

.method public setAncillaryFd(I)V
    .locals 0
    .param p1, "ancillaryFd"    # I

    .line 31
    iput p1, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->ancillaryFd:I

    .line 32
    return-void
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 27
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->ensureSpaceIsAvailable(I)V

    .line 73
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 74
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 63
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->write([BII)V

    .line 64
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 67
    invoke-direct {p0, p3}, Lcom/winlator/cmod/xconnector/XOutputStream;->ensureSpaceIsAvailable(I)V

    .line 68
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 69
    return-void
.end method

.method public writeByte(B)V
    .locals 1
    .param p1, "value"    # B

    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->ensureSpaceIsAvailable(I)V

    .line 36
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "value"    # I

    .line 45
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->ensureSpaceIsAvailable(I)V

    .line 46
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "value"    # J

    .line 50
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->ensureSpaceIsAvailable(I)V

    .line 51
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 52
    return-void
.end method

.method public writePad(I)V
    .locals 2
    .param p1, "length"    # I

    .line 77
    sget-object v0, Lcom/winlator/cmod/xconnector/XOutputStream;->ZERO:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->write([BII)V

    .line 78
    return-void
.end method

.method public writeShort(S)V
    .locals 1
    .param p1, "value"    # S

    .line 40
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->ensureSpaceIsAvailable(I)V

    .line 41
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 42
    return-void
.end method

.method public writeString8(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/winlator/cmod/xserver/XServer;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 56
    .local v0, "bytes":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    neg-int v1, v1

    and-int/lit8 v1, v1, 0x3

    .line 57
    .local v1, "length":I
    array-length v2, v0

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->ensureSpaceIsAvailable(I)V

    .line 58
    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 59
    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public writeSuccessReply(II)V
    .locals 3
    .param p1, "sequenceNumber"    # I
    .param p2, "replyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 125
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 126
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 127
    int-to-short v1, p1

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 129
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 131
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 124
    .restart local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
