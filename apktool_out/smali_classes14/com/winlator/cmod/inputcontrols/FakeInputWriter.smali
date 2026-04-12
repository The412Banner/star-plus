.class public Lcom/winlator/cmod/inputcontrols/FakeInputWriter;
.super Ljava/lang/Object;
.source "FakeInputWriter.java"


# static fields
.field public static final ABS_BRAKE:S = 0xas

.field public static final ABS_GAS:S = 0x9s

.field public static final ABS_HAT0X:S = 0x10s

.field public static final ABS_HAT0Y:S = 0x11s

.field public static final ABS_RX:S = 0x3s

.field public static final ABS_RY:S = 0x4s

.field public static final ABS_X:S = 0x0s

.field public static final ABS_Y:S = 0x1s

.field public static final BTN_A:S = 0x130s

.field public static final BTN_B:S = 0x131s

.field public static final BTN_SELECT:S = 0x13as

.field public static final BTN_START:S = 0x13bs

.field public static final BTN_THUMBL:S = 0x13ds

.field public static final BTN_THUMBR:S = 0x13es

.field public static final BTN_TL:S = 0x136s

.field public static final BTN_TR:S = 0x137s

.field public static final BTN_X:S = 0x133s

.field public static final BTN_Y:S = 0x134s

.field private static final BUFFER_SIZE:I = 0x1e0

.field private static final BUTTON_MAP:[S

.field private static final EVENT_SIZE:I = 0x18

.field public static final EV_ABS:S = 0x3s

.field public static final EV_KEY:S = 0x1s

.field public static final EV_MSC:S = 0x4s

.field public static final EV_SYN:S = 0x0s

.field private static final MAX_EVENTS_PER_UPDATE:I = 0x14

.field public static final MSC_SCAN:S = 0x4s

.field public static final SYN_REPORT:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "FakeInputWriter"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private channel:Ljava/nio/channels/FileChannel;

.field private volatile destroyed:Z

.field private final eventFile:Ljava/io/File;

.field private hasChanges:Z

.field private isOpen:Z

.field private final prevButtonStates:[Z

.field private prevHatX:I

.field private prevHatY:I

.field private prevThumbLX:I

.field private prevThumbLY:I

.field private prevThumbRX:I

.field private prevThumbRY:I

.field private prevTriggerL:I

.field private prevTriggerR:I

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->BUTTON_MAP:[S

    return-void

    :array_0
    .array-data 2
        0x130s
        0x131s
        0x133s
        0x134s
        0x136s
        0x137s
        0x13as
        0x13bs
        0x13ds
        0x13es
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "fakeInputPath"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->isOpen:Z

    .line 61
    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->destroyed:Z

    .line 63
    const/16 v1, 0xc

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevButtonStates:[Z

    .line 67
    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->hasChanges:Z

    .line 70
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    .line 71
    const/16 v0, 0x1e0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 72
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    return-void
.end method

.method private writeAxis(SI[II)V
    .locals 1
    .param p1, "code"    # S
    .param p2, "value"    # I
    .param p3, "prevRef"    # [I
    .param p4, "index"    # I

    .line 229
    aget v0, p3, p4

    if-ne v0, p2, :cond_0

    .line 230
    return-void

    .line 231
    :cond_0
    aput p2, p3, p4

    .line 232
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 233
    return-void
.end method

.method private writeButton(IZ)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "pressed"    # Z

    .line 219
    if-ltz p1, :cond_2

    sget-object v0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->BUTTON_MAP:[S

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevButtonStates:[Z

    aget-boolean v0, v0, p1

    if-ne v0, p2, :cond_1

    .line 222
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevButtonStates:[Z

    aput-boolean p2, v0, p1

    .line 224
    sget-object v0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->BUTTON_MAP:[S

    aget-short v0, v0, p1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v1, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 225
    sget-object v0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->BUTTON_MAP:[S

    aget-short v0, v0, p1

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p2}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 226
    return-void

    .line 220
    :cond_2
    :goto_0
    return-void
.end method

.method private writeEvent(SSI)V
    .locals 7
    .param p1, "type"    # S
    .param p2, "code"    # S
    .param p3, "value"    # I

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 210
    .local v0, "timeMs":J
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x3e8

    div-long v5, v0, v3

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 211
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    rem-long v5, v0, v3

    mul-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 212
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 213
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 214
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 215
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->hasChanges:Z

    .line 216
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_0

    .line 103
    .end local p0    # "this":Lcom/winlator/cmod/inputcontrols/FakeInputWriter;
    :catch_0
    move-exception v0

    .line 105
    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->channel:Ljava/nio/channels/FileChannel;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->raf:Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 109
    :try_start_3
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    goto :goto_1

    .line 110
    :catch_1
    move-exception v0

    .line 112
    :goto_1
    :try_start_4
    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->raf:Ljava/io/RandomAccessFile;

    .line 114
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->isOpen:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 4

    monitor-enter p0

    .line 199
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->destroyed:Z

    .line 200
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->reset()V

    .line 201
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->close()V

    .line 202
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 204
    .local v0, "deleted":Z
    const-string v1, "FakeInputWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted fake input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v0    # "deleted":Z
    .end local p0    # "this":Lcom/winlator/cmod/inputcontrols/FakeInputWriter;
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->isOpen:Z

    return v0
.end method

.method public declared-synchronized open()Z
    .locals 5

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    monitor-exit p0

    return v1

    .line 78
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 79
    monitor-exit p0

    return v2

    .line 82
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 83
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 87
    .end local p0    # "this":Lcom/winlator/cmod/inputcontrols/FakeInputWriter;
    :cond_2
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->raf:Ljava/io/RandomAccessFile;

    .line 88
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 89
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->channel:Ljava/nio/channels/FileChannel;

    .line 90
    iput-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->isOpen:Z

    .line 91
    const-string v0, "FakeInputWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opened fake input: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    monitor-exit p0

    return v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "FakeInputWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    monitor-exit p0

    return v1

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 5

    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->isOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->open()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 126
    .end local p0    # "this":Lcom/winlator/cmod/inputcontrols/FakeInputWriter;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->hasChanges:Z

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->BUTTON_MAP:[S

    array-length v2, v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge v1, v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevButtonStates:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevButtonStates:[Z

    aput-boolean v0, v2, v1

    .line 133
    sget-object v2, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->BUTTON_MAP:[S

    aget-short v2, v2, v1

    invoke-direct {p0, v3, v3, v2}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 134
    sget-object v2, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->BUTTON_MAP:[S

    aget-short v2, v2, v1

    invoke-direct {p0, v4, v2, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 130
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbLX:I

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    .line 140
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbLX:I

    .line 141
    invoke-direct {p0, v2, v0, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 143
    :cond_3
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbLY:I

    if-eqz v1, :cond_4

    .line 144
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbLY:I

    .line 145
    invoke-direct {p0, v2, v4, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 147
    :cond_4
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbRX:I

    if-eqz v1, :cond_5

    .line 148
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbRX:I

    .line 149
    invoke-direct {p0, v2, v2, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 151
    :cond_5
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbRY:I

    if-eqz v1, :cond_6

    .line 152
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbRY:I

    .line 153
    invoke-direct {p0, v2, v3, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 155
    :cond_6
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevTriggerL:I

    if-eqz v1, :cond_7

    .line 156
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevTriggerL:I

    .line 157
    const/16 v1, 0xa

    invoke-direct {p0, v2, v1, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 159
    :cond_7
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevTriggerR:I

    if-eqz v1, :cond_8

    .line 160
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevTriggerR:I

    .line 161
    const/16 v1, 0x9

    invoke-direct {p0, v2, v1, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 163
    :cond_8
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevHatX:I

    if-eqz v1, :cond_9

    .line 164
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevHatX:I

    .line 165
    const/16 v1, 0x10

    invoke-direct {p0, v2, v1, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 167
    :cond_9
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevHatY:I

    if-eqz v1, :cond_a

    .line 168
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevHatY:I

    .line 169
    const/16 v1, 0x11

    invoke-direct {p0, v2, v1, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 172
    :cond_a
    iget-boolean v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->hasChanges:Z

    if-eqz v1, :cond_b

    .line 173
    invoke-direct {p0, v0, v0, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 174
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->channel:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v1, "FakeInputWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset write error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_1
    const-string v0, "FakeInputWriter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset fake input to neutral state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized softRelease()V
    .locals 3

    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->reset()V

    .line 190
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->close()V

    .line 191
    const-string v0, "FakeInputWriter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Soft released fake input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->eventFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 188
    .end local p0    # "this":Lcom/winlator/cmod/inputcontrols/FakeInputWriter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeGamepadState(Lcom/winlator/cmod/inputcontrols/GamepadState;)V
    .locals 12
    .param p1, "state"    # Lcom/winlator/cmod/inputcontrols/GamepadState;

    .line 236
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->isOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->open()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->hasChanges:Z

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 244
    int-to-byte v2, v1

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeButton(IZ)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_1
    iget v1, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    const v3, 0x46fffe00    # 32767.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 249
    .local v1, "lx":I
    iget v4, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 250
    .local v4, "ly":I
    iget v5, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 251
    .local v5, "rx":I
    iget v6, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    mul-float/2addr v6, v3

    float-to-int v3, v6

    .line 253
    .local v3, "ry":I
    iget v6, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbLX:I

    const/4 v7, 0x3

    if-eq v1, v6, :cond_2

    .line 254
    iput v1, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbLX:I

    .line 255
    invoke-direct {p0, v7, v0, v1}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 257
    :cond_2
    iget v6, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbLY:I

    const/4 v8, 0x1

    if-eq v4, v6, :cond_3

    .line 258
    iput v4, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbLY:I

    .line 259
    invoke-direct {p0, v7, v8, v4}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 261
    :cond_3
    iget v6, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbRX:I

    if-eq v5, v6, :cond_4

    .line 262
    iput v5, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbRX:I

    .line 263
    invoke-direct {p0, v7, v7, v5}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 265
    :cond_4
    iget v6, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbRY:I

    if-eq v3, v6, :cond_5

    .line 266
    iput v3, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevThumbRY:I

    .line 267
    const/4 v6, 0x4

    invoke-direct {p0, v7, v6, v3}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 271
    :cond_5
    iget v6, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    .line 272
    .local v6, "tl":I
    iget v10, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    mul-float/2addr v10, v9

    float-to-int v9, v10

    .line 273
    .local v9, "tr":I
    iget v10, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevTriggerL:I

    if-eq v6, v10, :cond_6

    .line 274
    iput v6, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevTriggerL:I

    .line 275
    invoke-direct {p0, v7, v2, v6}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 277
    :cond_6
    iget v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevTriggerR:I

    if-eq v9, v2, :cond_7

    .line 278
    iput v9, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevTriggerR:I

    .line 279
    const/16 v2, 0x9

    invoke-direct {p0, v7, v2, v9}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 283
    :cond_7
    iget-object v2, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v2, v2, v7

    const/4 v10, -0x1

    if-eqz v2, :cond_8

    move v2, v10

    goto :goto_1

    :cond_8
    iget-object v2, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_9

    move v2, v8

    goto :goto_1

    :cond_9
    move v2, v0

    .line 284
    .local v2, "hatX":I
    :goto_1
    iget-object v11, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v11, v11, v0

    if-eqz v11, :cond_a

    move v8, v10

    goto :goto_2

    :cond_a
    iget-object v10, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    const/4 v11, 0x2

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_b

    goto :goto_2

    :cond_b
    move v8, v0

    .line 285
    .local v8, "hatY":I
    :goto_2
    iget v10, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevHatX:I

    if-eq v2, v10, :cond_c

    .line 286
    iput v2, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevHatX:I

    .line 287
    const/16 v10, 0x10

    invoke-direct {p0, v7, v10, v2}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 289
    :cond_c
    iget v10, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevHatY:I

    if-eq v8, v10, :cond_d

    .line 290
    iput v8, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->prevHatY:I

    .line 291
    const/16 v10, 0x11

    invoke-direct {p0, v7, v10, v8}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 295
    :cond_d
    iget-boolean v7, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->hasChanges:Z

    if-eqz v7, :cond_e

    .line 296
    invoke-direct {p0, v0, v0, v0}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeEvent(SSI)V

    .line 297
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->channel:Ljava/nio/channels/FileChannel;

    iget-object v7, p0, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_3

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Write error: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "FakeInputWriter"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e
    :goto_3
    return-void
.end method
