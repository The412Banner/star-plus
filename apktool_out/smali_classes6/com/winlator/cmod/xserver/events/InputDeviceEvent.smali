.class public Lcom/winlator/cmod/xserver/events/InputDeviceEvent;
.super Lcom/winlator/cmod/xserver/events/Event;
.source "InputDeviceEvent.java"


# instance fields
.field private final child:Lcom/winlator/cmod/xserver/Window;

.field private final detail:B

.field private final event:Lcom/winlator/cmod/xserver/Window;

.field private final eventX:S

.field private final eventY:S

.field private final root:Lcom/winlator/cmod/xserver/Window;

.field private final rootX:S

.field private final rootY:S

.field private final state:Lcom/winlator/cmod/xserver/Bitmask;

.field private final timestamp:I


# direct methods
.method public constructor <init>(IBLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "detail"    # B
    .param p3, "root"    # Lcom/winlator/cmod/xserver/Window;
    .param p4, "event"    # Lcom/winlator/cmod/xserver/Window;
    .param p5, "child"    # Lcom/winlator/cmod/xserver/Window;
    .param p6, "rootX"    # S
    .param p7, "rootY"    # S
    .param p8, "eventX"    # S
    .param p9, "eventY"    # S
    .param p10, "state"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 23
    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/events/Event;-><init>(I)V

    .line 24
    iput-byte p2, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->detail:B

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->timestamp:I

    .line 26
    iput-object p3, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->root:Lcom/winlator/cmod/xserver/Window;

    .line 27
    iput-object p4, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->event:Lcom/winlator/cmod/xserver/Window;

    .line 28
    iput-object p5, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->child:Lcom/winlator/cmod/xserver/Window;

    .line 29
    iput-short p6, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->rootX:S

    .line 30
    iput-short p7, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->rootY:S

    .line 31
    iput-short p8, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->eventX:S

    .line 32
    iput-short p9, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->eventY:S

    .line 33
    iput-object p10, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->state:Lcom/winlator/cmod/xserver/Bitmask;

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
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 40
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->detail:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 41
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 42
    iget v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->timestamp:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 43
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->root:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 44
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->event:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 45
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->child:Lcom/winlator/cmod/xserver/Window;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->child:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 46
    iget-short v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->rootX:S

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 47
    iget-short v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->rootY:S

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 48
    iget-short v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->eventX:S

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 49
    iget-short v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->eventY:S

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 50
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;->state:Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Bitmask;->getBits()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 52
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 54
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
