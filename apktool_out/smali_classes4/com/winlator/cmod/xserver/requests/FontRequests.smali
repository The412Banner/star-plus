.class public abstract Lcom/winlator/cmod/xserver/requests/FontRequests;
.super Ljava/lang/Object;
.source "FontRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listFonts(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 23
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 24
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v0

    .line 25
    .local v0, "patternLength":S
    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    .line 27
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v1

    .line 28
    .local v1, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 29
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 30
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 31
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 32
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 33
    const/16 v2, 0x16

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 35
    .end local v1    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 27
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

.method public static openFont(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 15
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 16
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v0

    .line 17
    .local v0, "length":I
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "name":Ljava/lang/String;
    const-string v2, "cursor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    return-void

    .line 19
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "OpenFont supports only name: cursor."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
