.class public Lcom/winlator/cmod/xserver/events/ConfigureNotify;
.super Lcom/winlator/cmod/xserver/events/Event;
.source "ConfigureNotify.java"


# instance fields
.field private final aboveSibling:Lcom/winlator/cmod/xserver/Window;

.field private final borderWidth:S

.field private final event:Lcom/winlator/cmod/xserver/Window;

.field private final height:S

.field private final overrideRedirect:Z

.field private final width:S

.field private final window:Lcom/winlator/cmod/xserver/Window;

.field private final x:S

.field private final y:S


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;IIIIIZ)V
    .locals 1
    .param p1, "event"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "aboveSibling"    # Lcom/winlator/cmod/xserver/Window;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "borderWidth"    # I
    .param p9, "overrideRedirect"    # Z

    .line 21
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/events/Event;-><init>(I)V

    .line 22
    iput-object p1, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->event:Lcom/winlator/cmod/xserver/Window;

    .line 23
    iput-object p2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->window:Lcom/winlator/cmod/xserver/Window;

    .line 24
    iput-object p3, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->aboveSibling:Lcom/winlator/cmod/xserver/Window;

    .line 25
    int-to-short v0, p4

    iput-short v0, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->x:S

    .line 26
    int-to-short v0, p5

    iput-short v0, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->y:S

    .line 27
    int-to-short v0, p6

    iput-short v0, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->width:S

    .line 28
    int-to-short v0, p7

    iput-short v0, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->height:S

    .line 29
    int-to-short v0, p8

    iput-short v0, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->borderWidth:S

    .line 30
    iput-boolean p9, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->overrideRedirect:Z

    .line 31
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

    .line 35
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 36
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 38
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 39
    iget-object v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->event:Lcom/winlator/cmod/xserver/Window;

    iget v2, v2, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 40
    iget-object v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->window:Lcom/winlator/cmod/xserver/Window;

    iget v2, v2, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 41
    iget-object v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->aboveSibling:Lcom/winlator/cmod/xserver/Window;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->aboveSibling:Lcom/winlator/cmod/xserver/Window;

    iget v2, v2, Lcom/winlator/cmod/xserver/Window;->id:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 42
    iget-short v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->x:S

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 43
    iget-short v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->y:S

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 44
    iget-short v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->width:S

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 45
    iget-short v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->height:S

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 46
    iget-short v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->borderWidth:S

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 47
    iget-boolean v2, p0, Lcom/winlator/cmod/xserver/events/ConfigureNotify;->overrideRedirect:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 48
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 50
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 35
    .restart local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method
