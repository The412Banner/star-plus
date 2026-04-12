.class Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;
.super Ljava/io/InputStream;
.source "SoftJitterCorrector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JitterStream"
.end annotation


# static fields
.field static MAX_BUFFER_SIZE:I


# instance fields
.field active:Z

.field bbuffer:[B

.field bbuffer_max:I

.field bbuffer_pos:I

.field buffers:[[B

.field buffers_mutex:Ljava/lang/Object;

.field readpos:I

.field stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

.field thread:Ljava/lang/Thread;

.field w:I

.field w_count:I

.field w_max_tol:I

.field w_min:I

.field w_min_tol:I

.field writepos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/high16 v0, 0x100000

    sput v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->MAX_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;II)V
    .locals 6
    .param p1, "s"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .param p2, "buffersize"    # I
    .param p3, "smallbuffersize"    # I

    .line 116
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->active:Z

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    .line 49
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    .line 51
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    .line 54
    const/16 v2, 0x3e8

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_count:I

    .line 55
    const/4 v2, 0x2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min_tol:I

    .line 56
    const/16 v3, 0xa

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_max_tol:I

    .line 57
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w:I

    .line 58
    const/4 v4, -0x1

    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    .line 60
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    .line 61
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer_max:I

    .line 62
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer:[B

    .line 117
    div-int v4, p2, p3

    mul-int/2addr v4, v3

    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_count:I

    .line 118
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_count:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    .line 119
    iput v5, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_count:I

    .line 120
    :cond_0
    div-int v4, p2, p3

    add-int/2addr v4, v3

    new-array v2, v2, [I

    aput p3, v2, v0

    aput v4, v2, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    .line 122
    sget v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->MAX_BUFFER_SIZE:I

    div-int/2addr v1, p3

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer_max:I

    .line 123
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 126
    new-instance v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;

    invoke-direct {v1, p0}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;-><init>(Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;)V

    .line 218
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->thread:Ljava/lang/Thread;

    .line 219
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->thread:Ljava/lang/Thread;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 220
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 221
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 268
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer:[B

    array-length v0, v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    monitor-enter p0

    .line 226
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->active:Z

    .line 227
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :try_start_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 233
    :goto_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->close()V

    .line 234
    return-void

    .line 227
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public commit()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    .line 107
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    array-length v3, v3

    if-le v1, v3, :cond_0

    .line 108
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0xa

    .line 109
    .local v1, "newsize":I
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    array-length v3, v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 110
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    const/4 v5, 0x0

    aget-object v3, v3, v5

    array-length v3, v3

    new-array v4, v4, [I

    aput v3, v4, v2

    aput v1, v4, v5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    .line 112
    .end local v1    # "newsize":I
    :cond_0
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fillBuffer()V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->nextReadBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer:[B

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    .line 246
    return-void
.end method

.method public nextReadBuffer()[B
    .locals 5

    .line 65
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    if-le v1, v2, :cond_1

    .line 67
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    sub-int/2addr v1, v2

    .line 68
    .local v1, "w_m":I
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    if-ge v1, v2, :cond_0

    .line 69
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    .line 71
    :cond_0
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    .line 72
    .local v2, "buffpos":I
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    .line 73
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    array-length v4, v4

    rem-int v4, v2, v4

    aget-object v3, v3, v4

    monitor-exit v0

    return-object v3

    .line 75
    .end local v1    # "w_m":I
    .end local v2    # "buffpos":I
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    .line 76
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w:I

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :goto_0
    const-wide/16 v2, 0x1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    nop

    .line 85
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_2
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    if-le v2, v3, :cond_2

    .line 87
    const/4 v2, 0x0

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w:I

    .line 88
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    .line 89
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w:I

    .line 90
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    .line 91
    .local v1, "buffpos":I
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    .line 92
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    array-length v3, v3

    rem-int v3, v1, v3

    aget-object v2, v2, v3

    monitor-exit v0

    return-object v2

    .line 94
    .end local v1    # "buffpos":I
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    return-object v1

    .line 77
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public nextWriteBuffer()[B
    .locals 4

    .line 99
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    monitor-exit v0

    return-object v1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 238
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 239
    return v2

    .line 240
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 249
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer:[B

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->fillBuffer()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer:[B

    array-length v0, v0

    .line 252
    .local v0, "bbuffer_len":I
    add-int v1, p2, p3

    .line 253
    .local v1, "offlen":I
    :goto_0
    if-ge p2, v1, :cond_3

    .line 254
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->available()I

    move-result v2

    if-nez v2, :cond_1

    .line 255
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->fillBuffer()V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer:[B

    .line 258
    .local v2, "bbuffer":[B
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    .line 259
    .local v3, "bbuffer_pos":I
    :goto_1
    if-ge p2, v1, :cond_2

    if-ge v3, v0, :cond_2

    .line 260
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .local v4, "off":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "bbuffer_pos":I
    .local v5, "bbuffer_pos":I
    aget-byte v3, v2, v3

    aput-byte v3, p1, p2

    move p2, v4

    move v3, v5

    goto :goto_1

    .line 261
    .end local v4    # "off":I
    .end local v5    # "bbuffer_pos":I
    .restart local v3    # "bbuffer_pos":I
    .restart local p2    # "off":I
    :cond_2
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    .line 262
    .end local v2    # "bbuffer":[B
    .end local v3    # "bbuffer_pos":I
    goto :goto_0

    .line 264
    :cond_3
    return p3
.end method
