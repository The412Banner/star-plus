.class public Lcom/winlator/cmod/xserver/extensions/SyncExtension;
.super Ljava/lang/Object;
.source "SyncExtension.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/extensions/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/extensions/SyncExtension$ClientOpcodes;
    }
.end annotation


# static fields
.field public static final MAJOR_OPCODE:B = -0x68t


# instance fields
.field private final fences:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private awaitFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 9
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getRemainingRequestLength()I

    move-result v1

    .line 99
    .local v1, "length":I
    div-int/lit8 v2, v1, 0x4

    new-array v2, v2, [I

    .line 100
    .local v2, "ids":[I
    const/4 v3, 0x0

    .line 102
    .local v3, "i":I
    :goto_0
    if-eqz v1, :cond_0

    .line 103
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v5

    aput v5, v2, v3

    .line 104
    add-int/lit8 v1, v1, -0x4

    move v3, v4

    goto :goto_0

    .line 107
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    .line 109
    .local v4, "anyTriggered":Z
    :cond_1
    array-length v5, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget v7, v2, v6

    .line 110
    .local v7, "id":I
    iget-object v8, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_3

    .line 111
    iget-object v8, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    move v4, v8

    .line 112
    if-eqz v4, :cond_2

    goto :goto_2

    .line 109
    .end local v7    # "id":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 110
    .restart local v7    # "id":I
    :cond_3
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadFence;

    invoke-direct {v5, v7}, Lcom/winlator/cmod/xserver/errors/BadFence;-><init>(I)V

    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    throw v5

    .line 115
    .end local v7    # "id":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_4
    :goto_2
    if-eqz v4, :cond_1

    .line 116
    .end local v1    # "length":I
    .end local v2    # "ids":[I
    .end local v3    # "i":I
    .end local v4    # "anyTriggered":Z
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 56
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 57
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 59
    .local v1, "id":I
    iget-object v2, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    .line 61
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 62
    .local v2, "initiallyTriggered":Z
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 64
    iget-object v3, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 65
    .end local v1    # "id":I
    .end local v2    # "initiallyTriggered":Z
    monitor-exit v0

    .line 66
    return-void

    .line 59
    .restart local v1    # "id":I
    :cond_1
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    throw v2

    .line 65
    .end local v1    # "id":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 91
    .local v1, "id":I
    iget-object v2, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 93
    .end local v1    # "id":I
    monitor-exit v0

    .line 94
    return-void

    .line 91
    .restart local v1    # "id":I
    :cond_0
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadFence;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/xserver/errors/BadFence;-><init>(I)V

    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    throw v2

    .line 93
    .end local v1    # "id":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 5
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 79
    .local v1, "id":I
    iget-object v2, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 82
    .local v2, "triggered":Z
    if-eqz v2, :cond_0

    .line 84
    iget-object v3, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 85
    .end local v1    # "id":I
    .end local v2    # "triggered":Z
    monitor-exit v0

    .line 86
    return-void

    .line 82
    .restart local v1    # "id":I
    .restart local v2    # "triggered":Z
    :cond_0
    new-instance v3, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v3}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    throw v3

    .line 79
    .end local v2    # "triggered":Z
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_1
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadFence;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/xserver/errors/BadFence;-><init>(I)V

    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    throw v2

    .line 85
    .end local v1    # "id":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private triggerFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 71
    .local v1, "id":I
    iget-object v2, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 73
    .end local v1    # "id":I
    monitor-exit v0

    .line 74
    return-void

    .line 71
    .restart local v1    # "id":I
    :cond_0
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadFence;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/xserver/errors/BadFence;-><init>(I)V

    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    throw v2

    .line 73
    .end local v1    # "id":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getFirstErrorId()B
    .locals 1

    .line 40
    const/16 v0, -0x80

    return v0
.end method

.method public getFirstEventId()B
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getMajorOpcode()B
    .locals 1

    .line 35
    const/16 v0, -0x68

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "SYNC"

    return-object v0
.end method

.method public handleRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 2
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v0

    .line 122
    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_0

    .line 139
    :pswitch_0
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 136
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->awaitFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 137
    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->destroyFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 134
    goto :goto_0

    .line 130
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->resetFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 131
    goto :goto_0

    .line 127
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->triggerFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 128
    goto :goto_0

    .line 124
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->createFence(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 125
    nop

    .line 141
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTriggered(I)V
    .locals 3
    .param p1, "id"    # I

    .line 49
    iget-object v0, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->fences:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 51
    :cond_0
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
