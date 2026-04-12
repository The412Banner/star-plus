.class public abstract Lcom/winlator/cmod/xserver/requests/AtomRequests;
.super Ljava/lang/Object;
.source "AtomRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAtomName(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 35
    .local v0, "id":I
    if-ltz v0, :cond_2

    .line 36
    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getName(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    .line 40
    .local v2, "length":S
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v3

    .line 41
    .local v3, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 42
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 43
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 44
    add-int/lit8 v4, v2, 0x16

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 45
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeString8(Ljava/lang/String;)V

    .line 46
    const/16 v4, 0x16

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 48
    .end local v3    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 40
    .restart local v3    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v4

    .line 35
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "length":S
    .end local v3    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_2
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadAtom;

    invoke-direct {v1, v0}, Lcom/winlator/cmod/xserver/errors/BadAtom;-><init>(I)V

    throw v1
.end method

.method public static internAtom(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
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

    .line 17
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 18
    .local v0, "onlyIfExists":Z
    :goto_0
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 19
    .local v3, "length":S
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 20
    invoke-virtual {p1, v3}, Lcom/winlator/cmod/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    .local v4, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/winlator/cmod/xserver/Atom;->internAtom(Ljava/lang/String;)I

    move-result v5

    .line 22
    .local v5, "id":I
    :goto_1
    if-ltz v5, :cond_4

    .line 24
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v6

    .line 25
    .local v6, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 26
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 27
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 28
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 29
    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 30
    const/16 v1, 0x14

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 32
    .end local v6    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 24
    .restart local v6    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1

    .line 22
    .end local v6    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_4
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadAtom;

    invoke-direct {v1, v5}, Lcom/winlator/cmod/xserver/errors/BadAtom;-><init>(I)V

    throw v1
.end method
