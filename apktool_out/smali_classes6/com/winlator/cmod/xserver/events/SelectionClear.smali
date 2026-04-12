.class public Lcom/winlator/cmod/xserver/events/SelectionClear;
.super Lcom/winlator/cmod/xserver/events/Event;
.source "SelectionClear.java"


# instance fields
.field private final owner:Lcom/winlator/cmod/xserver/Window;

.field private final selection:I

.field private final timestamp:I


# direct methods
.method public constructor <init>(ILcom/winlator/cmod/xserver/Window;I)V
    .locals 1
    .param p1, "timestamp"    # I
    .param p2, "owner"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "selection"    # I

    .line 15
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/events/Event;-><init>(I)V

    .line 16
    iput p1, p0, Lcom/winlator/cmod/xserver/events/SelectionClear;->timestamp:I

    .line 17
    iput-object p2, p0, Lcom/winlator/cmod/xserver/events/SelectionClear;->owner:Lcom/winlator/cmod/xserver/Window;

    .line 18
    iput p3, p0, Lcom/winlator/cmod/xserver/events/SelectionClear;->selection:I

    .line 19
    return-void
.end method


# virtual methods
.method public send(SLcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "sequenceNumber"    # S
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 24
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/SelectionClear;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 25
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 26
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 27
    iget v1, p0, Lcom/winlator/cmod/xserver/events/SelectionClear;->timestamp:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 28
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/SelectionClear;->owner:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 29
    iget v1, p0, Lcom/winlator/cmod/xserver/events/SelectionClear;->selection:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 30
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 32
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 23
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
