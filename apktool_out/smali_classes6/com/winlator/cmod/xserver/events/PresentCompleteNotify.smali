.class public Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;
.super Lcom/winlator/cmod/xserver/events/Event;
.source "PresentCompleteNotify.java"


# instance fields
.field private final eventId:I

.field private final kind:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

.field private final mode:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;

.field private final msc:J

.field private final serial:I

.field private final ust:J

.field private final window:Lcom/winlator/cmod/xserver/Window;


# direct methods
.method public constructor <init>(ILcom/winlator/cmod/xserver/Window;ILcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;JJ)V
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "serial"    # I
    .param p4, "kind"    # Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;
    .param p5, "mode"    # Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;
    .param p6, "ust"    # J
    .param p8, "msc"    # J

    .line 20
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/events/Event;-><init>(I)V

    .line 21
    iput p1, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->eventId:I

    .line 22
    iput-object p2, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->window:Lcom/winlator/cmod/xserver/Window;

    .line 23
    iput p3, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->serial:I

    .line 24
    iput-object p4, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->kind:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    .line 25
    iput-object p5, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->mode:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;

    .line 26
    iput-wide p6, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->ust:J

    .line 27
    iput-wide p8, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->msc:J

    .line 28
    return-void
.end method

.method public static getEventMask()I
    .locals 2

    .line 53
    const/4 v0, 0x1

    invoke-static {}, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->getEventType()S

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method

.method public static getEventType()S
    .locals 1

    .line 49
    const/4 v0, 0x1

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

    .line 32
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 33
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 34
    const/16 v1, -0x67

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 35
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 36
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 37
    invoke-static {}, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->getEventType()S

    move-result v1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 38
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->kind:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 39
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->mode:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 40
    iget v1, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->eventId:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 41
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->window:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 42
    iget v1, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->serial:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 43
    iget-wide v1, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->ust:J

    invoke-virtual {p2, v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeLong(J)V

    .line 44
    iget-wide v1, p0, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->msc:J

    invoke-virtual {p2, v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 46
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 32
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
