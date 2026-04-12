.class public abstract Lcom/winlator/cmod/xserver/requests/ExtensionRequests;
.super Ljava/lang/Object;
.source "ExtensionRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryExtension(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 7
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v0

    .line 17
    .local v0, "length":S
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/xserver/XServer;->getExtensionByName(Ljava/lang/String;)Lcom/winlator/cmod/xserver/extensions/Extension;

    move-result-object v2

    .line 20
    .local v2, "extension":Lcom/winlator/cmod/xserver/extensions/Extension;
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v3

    .line 21
    .local v3, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 22
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 23
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 24
    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 26
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 28
    invoke-interface {v2}, Lcom/winlator/cmod/xserver/extensions/Extension;->getMajorOpcode()B

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 29
    invoke-interface {v2}, Lcom/winlator/cmod/xserver/extensions/Extension;->getFirstEventId()B

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 30
    invoke-interface {v2}, Lcom/winlator/cmod/xserver/extensions/Extension;->getFirstErrorId()B

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 31
    const/16 v4, 0x14

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 35
    const/16 v4, 0x17

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 38
    .end local v3    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 20
    .restart local v3    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4
.end method
