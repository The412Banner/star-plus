.class Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;
.super Ljava/io/InputStream;
.source "ModelByteBufferWavetable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Buffer8PlusInputStream"
.end annotation


# instance fields
.field private bigendian:Z

.field private framesize_pc:I

.field markpos:I

.field markpos2:I

.field pos:I

.field pos2:I

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)V
    .locals 2

    .line 51
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 47
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    .line 48
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos:I

    .line 49
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos2:I

    .line 52
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetformat(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetformat(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    .line 53
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetformat(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result p1

    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->bigendian:Z

    .line 54
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetbuffer(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    invoke-static {v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetbuffer8(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 118
    :try_start_0
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos:I

    .line 119
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 117
    .end local p0    # "this":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 103
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->read([BII)I

    move-result v0

    .line 104
    .local v0, "ret":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 105
    return v3

    .line 106
    :cond_0
    return v2
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->available()I

    move-result v0

    .line 58
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 59
    const/4 v1, -0x1

    return v1

    .line 60
    :cond_0
    if-le p3, v0, :cond_1

    .line 61
    move p3, v0

    .line 62
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    invoke-static {v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetbuffer(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->array()[B

    move-result-object v1

    .line 63
    .local v1, "buff1":[B
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    invoke-static {v2}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetbuffer8(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->array()[B

    move-result-object v2

    .line 64
    .local v2, "buff2":[B
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    int-to-long v3, v3

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    invoke-static {v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetbuffer(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 65
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    int-to-long v3, v3

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    invoke-static {v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetbuffer8(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    .line 66
    iget-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->bigendian:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 67
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 68
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    invoke-static {v1, v5, p1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/2addr v6, v3

    invoke-static {v2, v5, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/2addr v5, v6

    iput v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 71
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    add-int/2addr v5, v4

    iput v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    .line 67
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_0

    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 74
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, p3, :cond_4

    .line 75
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    invoke-static {v2, v5, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    add-int/lit8 v6, v3, 0x1

    iget v7, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    invoke-static {v1, v5, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/2addr v5, v6

    iput v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 78
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    add-int/2addr v5, v4

    iput v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    .line 74
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_1

    .line 81
    .end local v3    # "i":I
    :cond_4
    :goto_2
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    int-to-long v3, v3

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    invoke-static {v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetbuffer(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 82
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    int-to-long v3, v3

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    invoke-static {v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->-$$Nest$fgetbuffer8(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    .line 83
    return p3
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_0
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 124
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos2:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 122
    .end local p0    # "this":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->available()I

    move-result v0

    .line 88
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 89
    const-wide/16 v1, -0x1

    return-wide v1

    .line 90
    :cond_0
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 91
    int-to-long p1, v0

    .line 92
    :cond_1
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    int-to-long v1, v1

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    div-long v3, p1, v3

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 93
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    int-to-long v1, v1

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    div-long v3, p1, v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    .line 94
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    return-wide v1
.end method
