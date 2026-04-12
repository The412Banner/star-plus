.class public Lcom/winlator/cmod/xserver/events/PropertyNotify;
.super Lcom/winlator/cmod/xserver/events/Event;
.source "PropertyNotify.java"


# instance fields
.field private final atom:I

.field private final deleted:Z

.field private final timestamp:I

.field private final window:Lcom/winlator/cmod/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/Window;IZ)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "atom"    # I
    .param p3, "deleted"    # Z

    .line 16
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/events/Event;-><init>(I)V

    .line 17
    iput-object p1, p0, Lcom/winlator/cmod/xserver/events/PropertyNotify;->window:Lcom/winlator/cmod/xserver/Window;

    .line 18
    iput p2, p0, Lcom/winlator/cmod/xserver/events/PropertyNotify;->atom:I

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/winlator/cmod/xserver/events/PropertyNotify;->timestamp:I

    .line 20
    iput-boolean p3, p0, Lcom/winlator/cmod/xserver/events/PropertyNotify;->deleted:Z

    .line 21
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

    .line 25
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 26
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/PropertyNotify;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 27
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 28
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 29
    iget-object v2, p0, Lcom/winlator/cmod/xserver/events/PropertyNotify;->window:Lcom/winlator/cmod/xserver/Window;

    iget v2, v2, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 30
    iget v2, p0, Lcom/winlator/cmod/xserver/events/PropertyNotify;->atom:I

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 31
    iget v2, p0, Lcom/winlator/cmod/xserver/events/PropertyNotify;->timestamp:I

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 32
    iget-boolean v2, p0, Lcom/winlator/cmod/xserver/events/PropertyNotify;->deleted:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 33
    const/16 v1, 0xf

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 35
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 25
    .restart local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method
