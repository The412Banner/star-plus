.class public Lcom/winlator/cmod/xconnector/XInputStream;
.super Ljava/lang/Object;
.source "XInputStream.java"


# instance fields
.field private activeBuffer:Ljava/nio/ByteBuffer;

.field private buffer:Ljava/nio/ByteBuffer;

.field public final clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/winlator/cmod/xconnector/XInputStream;-><init>(Lcom/winlator/cmod/xconnector/ClientSocket;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/xconnector/ClientSocket;I)V
    .locals 1
    .param p1, "clientSocket"    # Lcom/winlator/cmod/xconnector/ClientSocket;
    .param p2, "initialCapacity"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    .line 20
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 21
    return-void
.end method

.method private growInputBufferIfNecessary()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 56
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 57
    iput-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 59
    .end local v0    # "newBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public getActivePosition()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public getAncillaryFd()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/ClientSocket;->getAncillaryFd()I

    move-result v0

    return v0
.end method

.method public read([B)V
    .locals 1
    .param p1, "result"    # [B

    .line 107
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 108
    return-void
.end method

.method public readByte()B
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public readByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "length"    # I

    .line 111
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 113
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    return-object v0
.end method

.method public readInt()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMoreData(Z)I
    .locals 4
    .param p1, "canReceiveAncillaryMessages"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 30
    .local v0, "newLimit":I
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 31
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 33
    .end local v0    # "newLimit":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 36
    :cond_2
    invoke-direct {p0}, Lcom/winlator/cmod/xconnector/XInputStream;->growInputBufferIfNecessary()V

    .line 37
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/ClientSocket;->recvAncillaryMsg(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/ClientSocket;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 39
    .local v0, "bytesRead":I
    :goto_1
    if-lez v0, :cond_4

    .line 40
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 41
    .local v1, "position":I
    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 42
    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 43
    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 45
    .end local v1    # "position":I
    :cond_4
    return v0
.end method

.method public readShort()S
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readString8(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I

    .line 118
    new-array v0, p1, [B

    .line 119
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->read([B)V

    .line 120
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 121
    .local v1, "str":Ljava/lang/String;
    neg-int v2, p1

    and-int/lit8 v2, v2, 0x3

    if-lez v2, :cond_0

    neg-int v2, p1

    and-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 122
    :cond_0
    return-object v1
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public setActivePosition(I)V
    .locals 1
    .param p1, "activePosition"    # I

    .line 71
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    return-void
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 62
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    :cond_0
    return-void
.end method

.method public skip(I)V
    .locals 2
    .param p1, "length"    # I

    .line 126
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    return-void
.end method
