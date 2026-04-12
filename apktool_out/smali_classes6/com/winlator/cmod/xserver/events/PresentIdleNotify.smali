.class public Lcom/winlator/cmod/xserver/events/PresentIdleNotify;
.super Lcom/winlator/cmod/xserver/events/Event;
.source "PresentIdleNotify.java"


# instance fields
.field private final eventId:I

.field private final idleFence:I

.field private final pixmap:Lcom/winlator/cmod/xserver/Pixmap;

.field private final serial:I

.field private final window:Lcom/winlator/cmod/xserver/Window;


# direct methods
.method public constructor <init>(ILcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Pixmap;II)V
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "pixmap"    # Lcom/winlator/cmod/xserver/Pixmap;
    .param p4, "serial"    # I
    .param p5, "idleFence"    # I

    .line 19
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/events/Event;-><init>(I)V

    .line 20
    iput p1, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->eventId:I

    .line 21
    iput-object p2, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->window:Lcom/winlator/cmod/xserver/Window;

    .line 22
    iput p4, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->serial:I

    .line 23
    iput-object p3, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->pixmap:Lcom/winlator/cmod/xserver/Pixmap;

    .line 24
    iput p5, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->idleFence:I

    .line 25
    return-void
.end method

.method public static getEventMask()I
    .locals 2

    .line 49
    const/4 v0, 0x1

    invoke-static {}, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->getEventType()S

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method

.method public static getEventType()S
    .locals 1

    .line 45
    const/4 v0, 0x2

    return v0
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

    .line 29
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 30
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 31
    const/16 v1, -0x67

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 32
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 34
    invoke-static {}, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->getEventType()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 35
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 36
    iget v1, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->eventId:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 37
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->window:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 38
    iget v1, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->serial:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 39
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->pixmap:Lcom/winlator/cmod/xserver/Pixmap;

    iget v1, v1, Lcom/winlator/cmod/xserver/Pixmap;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 40
    iget v1, p0, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->idleFence:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 42
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 29
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
