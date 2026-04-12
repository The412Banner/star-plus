.class public Lcom/winlator/cmod/xserver/events/Expose;
.super Lcom/winlator/cmod/xserver/events/Event;
.source "Expose.java"


# instance fields
.field private final height:S

.field private final width:S

.field private final window:Lcom/winlator/cmod/xserver/Window;

.field private final x:S

.field private final y:S


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/Window;)V
    .locals 1
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 17
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/events/Event;-><init>(I)V

    .line 18
    iput-object p1, p0, Lcom/winlator/cmod/xserver/events/Expose;->window:Lcom/winlator/cmod/xserver/Window;

    .line 19
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/winlator/cmod/xserver/events/Expose;->y:S

    .line 20
    iput-short v0, p0, Lcom/winlator/cmod/xserver/events/Expose;->x:S

    .line 21
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getWidth()S

    move-result v0

    iput-short v0, p0, Lcom/winlator/cmod/xserver/events/Expose;->width:S

    .line 22
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getHeight()S

    move-result v0

    iput-short v0, p0, Lcom/winlator/cmod/xserver/events/Expose;->height:S

    .line 23
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

    .line 27
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 28
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/Expose;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 30
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 31
    iget-object v2, p0, Lcom/winlator/cmod/xserver/events/Expose;->window:Lcom/winlator/cmod/xserver/Window;

    iget v2, v2, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 32
    iget-short v2, p0, Lcom/winlator/cmod/xserver/events/Expose;->x:S

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 33
    iget-short v2, p0, Lcom/winlator/cmod/xserver/events/Expose;->y:S

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 34
    iget-short v2, p0, Lcom/winlator/cmod/xserver/events/Expose;->width:S

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 35
    iget-short v2, p0, Lcom/winlator/cmod/xserver/events/Expose;->height:S

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 36
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 37
    const/16 v1, 0xe

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 39
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 27
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
