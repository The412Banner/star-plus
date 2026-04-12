.class public Lcom/winlator/cmod/xserver/events/ConfigureRequest;
.super Lcom/winlator/cmod/xserver/events/Event;
.source "ConfigureRequest.java"


# instance fields
.field private final borderWidth:S

.field private final height:S

.field private final parent:Lcom/winlator/cmod/xserver/Window;

.field private final sibling:Lcom/winlator/cmod/xserver/Window;

.field private final stackMode:Lcom/winlator/cmod/xserver/Window$StackMode;

.field private final valueMask:Lcom/winlator/cmod/xserver/Bitmask;

.field private final width:S

.field private final window:Lcom/winlator/cmod/xserver/Window;

.field private final x:S

.field private final y:S


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSSLcom/winlator/cmod/xserver/Window$StackMode;Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 1
    .param p1, "parent"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "sibling"    # Lcom/winlator/cmod/xserver/Window;
    .param p4, "x"    # S
    .param p5, "y"    # S
    .param p6, "width"    # S
    .param p7, "height"    # S
    .param p8, "borderWidth"    # S
    .param p9, "stackMode"    # Lcom/winlator/cmod/xserver/Window$StackMode;
    .param p10, "valueMask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 23
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/events/Event;-><init>(I)V

    .line 24
    iput-object p1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->parent:Lcom/winlator/cmod/xserver/Window;

    .line 25
    iput-object p2, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->window:Lcom/winlator/cmod/xserver/Window;

    .line 26
    iput-object p3, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->sibling:Lcom/winlator/cmod/xserver/Window;

    .line 27
    iput-short p4, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->x:S

    .line 28
    iput-short p5, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->y:S

    .line 29
    iput-short p6, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->width:S

    .line 30
    iput-short p7, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->height:S

    .line 31
    iput-short p8, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->borderWidth:S

    .line 32
    if-eqz p9, :cond_0

    move-object v0, p9

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/cmod/xserver/Window$StackMode;->ABOVE:Lcom/winlator/cmod/xserver/Window$StackMode;

    :goto_0
    iput-object v0, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->stackMode:Lcom/winlator/cmod/xserver/Window$StackMode;

    .line 33
    iput-object p10, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->valueMask:Lcom/winlator/cmod/xserver/Bitmask;

    .line 34
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

    .line 38
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 39
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 40
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->stackMode:Lcom/winlator/cmod/xserver/Window$StackMode;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window$StackMode;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 41
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 42
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->parent:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 43
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->window:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 44
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->sibling:Lcom/winlator/cmod/xserver/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->sibling:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 45
    iget-short v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->x:S

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 46
    iget-short v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->y:S

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 47
    iget-short v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->width:S

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 48
    iget-short v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->height:S

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 49
    iget-short v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->borderWidth:S

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 50
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/ConfigureRequest;->valueMask:Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Bitmask;->getBits()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 51
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 53
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 38
    .restart local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method
