.class public Lcom/winlator/cmod/xconnector/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field public final clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

.field protected connected:Z

.field private final connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

.field private inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

.field private outputStream:Lcom/winlator/cmod/xconnector/XOutputStream;

.field protected pollThread:Ljava/lang/Thread;

.field protected shutdownFd:I

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xconnector/XConnectorEpoll;Lcom/winlator/cmod/xconnector/ClientSocket;)V
    .locals 0
    .param p1, "connector"    # Lcom/winlator/cmod/xconnector/XConnectorEpoll;
    .param p2, "clientSocket"    # Lcom/winlator/cmod/xconnector/ClientSocket;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/winlator/cmod/xconnector/Client;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    .line 19
    iput-object p2, p0, Lcom/winlator/cmod/xconnector/Client;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    .line 20
    return-void
.end method


# virtual methods
.method public createIOStreams()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/Client;->inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/xconnector/Client;->outputStream:Lcom/winlator/cmod/xconnector/XOutputStream;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/winlator/cmod/xconnector/XInputStream;

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/Client;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget-object v2, p0, Lcom/winlator/cmod/xconnector/Client;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    invoke-virtual {v2}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->getInitialInputBufferCapacity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xconnector/XInputStream;-><init>(Lcom/winlator/cmod/xconnector/ClientSocket;I)V

    iput-object v0, p0, Lcom/winlator/cmod/xconnector/Client;->inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

    .line 25
    new-instance v0, Lcom/winlator/cmod/xconnector/XOutputStream;

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/Client;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget-object v2, p0, Lcom/winlator/cmod/xconnector/Client;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    invoke-virtual {v2}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->getInitialOutputBufferCapacity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;-><init>(Lcom/winlator/cmod/xconnector/ClientSocket;I)V

    iput-object v0, p0, Lcom/winlator/cmod/xconnector/Client;->outputStream:Lcom/winlator/cmod/xconnector/XOutputStream;

    .line 26
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/Client;->inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/XInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 27
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/Client;->outputStream:Lcom/winlator/cmod/xconnector/XOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 28
    return-void

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public getInputStream()Lcom/winlator/cmod/xconnector/XInputStream;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/Client;->inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

    return-object v0
.end method

.method public getOutputStream()Lcom/winlator/cmod/xconnector/XOutputStream;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/Client;->outputStream:Lcom/winlator/cmod/xconnector/XOutputStream;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/Client;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method protected requestShutdown()V
    .locals 4

    .line 48
    const/16 v0, 0x8

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 50
    new-instance v1, Lcom/winlator/cmod/xconnector/ClientSocket;

    iget v2, p0, Lcom/winlator/cmod/xconnector/Client;->shutdownFd:I

    invoke-direct {v1, v2}, Lcom/winlator/cmod/xconnector/ClientSocket;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xconnector/ClientSocket;->write(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 53
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/winlator/cmod/xconnector/Client;->tag:Ljava/lang/Object;

    .line 44
    return-void
.end method
