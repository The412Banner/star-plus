.class public Lcom/winlator/cmod/xserver/extensions/BigReqExtension;
.super Ljava/lang/Object;
.source "BigReqExtension.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/extensions/Extension;


# static fields
.field public static final MAJOR_OPCODE:B = -0x64t

.field private static final MAX_REQUEST_LENGTH:I = 0x3fffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstErrorId()B
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstEventId()B
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getMajorOpcode()B
    .locals 1

    .line 23
    const/16 v0, -0x64

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 18
    const-string v0, "BIG-REQUESTS"

    return-object v0
.end method

.method public handleRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p3}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 39
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 41
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v2

    invoke-virtual {p3, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 42
    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 43
    const v1, 0x3fffff

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 44
    const/16 v1, 0x14

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 46
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 38
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
