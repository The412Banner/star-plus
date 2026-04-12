.class public Lcom/winlator/cmod/xserver/errors/XRequestError;
.super Ljava/lang/Exception;
.source "XRequestError.java"


# instance fields
.field private final code:B

.field private final data:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/winlator/cmod/xserver/errors/XRequestError;->code:B

    .line 17
    iput p2, p0, Lcom/winlator/cmod/xserver/errors/XRequestError;->data:I

    .line 18
    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 21
    iget-byte v0, p0, Lcom/winlator/cmod/xserver/errors/XRequestError;->code:B

    return v0
.end method

.method public getData()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/winlator/cmod/xserver/errors/XRequestError;->data:I

    return v0
.end method

.method public sendError(Lcom/winlator/cmod/xserver/XClient;B)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "opcode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getOutputStream()Lcom/winlator/cmod/xconnector/XOutputStream;

    move-result-object v0

    .line 30
    .local v0, "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v1

    .line 31
    .local v1, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 32
    iget-byte v2, p0, Lcom/winlator/cmod/xserver/errors/XRequestError;->code:B

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 33
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 34
    iget v2, p0, Lcom/winlator/cmod/xserver/errors/XRequestError;->data:I

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 35
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 36
    invoke-virtual {v0, p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 37
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 39
    .end local v1    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 30
    .restart local v1    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method
