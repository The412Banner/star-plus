.class public Lcom/winlator/cmod/xserver/events/MappingNotify;
.super Lcom/winlator/cmod/xserver/events/Event;
.source "MappingNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/events/MappingNotify$Request;
    }
.end annotation


# instance fields
.field private final count:B

.field private final firstKeycode:B

.field private final request:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/events/MappingNotify$Request;BI)V
    .locals 1
    .param p1, "request"    # Lcom/winlator/cmod/xserver/events/MappingNotify$Request;
    .param p2, "firstKeycode"    # B
    .param p3, "count"    # I

    .line 15
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/events/Event;-><init>(I)V

    .line 16
    iput-object p1, p0, Lcom/winlator/cmod/xserver/events/MappingNotify;->request:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    .line 17
    iput-byte p2, p0, Lcom/winlator/cmod/xserver/events/MappingNotify;->firstKeycode:B

    .line 18
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/winlator/cmod/xserver/events/MappingNotify;->count:B

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
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/MappingNotify;->code:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 25
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 26
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 27
    iget-object v1, p0, Lcom/winlator/cmod/xserver/events/MappingNotify;->request:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 28
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/MappingNotify;->firstKeycode:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 29
    iget-byte v1, p0, Lcom/winlator/cmod/xserver/events/MappingNotify;->count:B

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 30
    const/16 v1, 0x19

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
