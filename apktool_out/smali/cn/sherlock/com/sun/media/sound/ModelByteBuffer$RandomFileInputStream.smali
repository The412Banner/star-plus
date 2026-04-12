.class Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;
.super Ljava/io/InputStream;
.source "ModelByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RandomFileInputStream"
.end annotation


# instance fields
.field private left:J

.field private mark:J

.field private markleft:J

.field private raf:Ljava/io/RandomAccessFile;

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->this$0:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->mark:J

    .line 55
    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->markleft:J

    .line 58
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->-$$Nest$fgetroot(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->-$$Nest$fgetfile(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 59
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->-$$Nest$fgetroot(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->-$$Nest$fgetfileoffset(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    .line 61
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 65
    const v0, 0x7fffffff

    return v0

    .line 66
    :cond_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 135
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->mark:J

    .line 72
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->markleft:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_0

    .line 70
    .end local p0    # "this":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 73
    .restart local p1    # "readlimit":I
    :catch_0
    move-exception v0

    .line 76
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 127
    .local v0, "b":I
    if-ne v0, v1, :cond_1

    .line 128
    return v1

    .line 129
    :cond_1
    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    .line 130
    return v0
.end method

.method public read([B)I
    .locals 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    array-length v0, p1

    .line 112
    .local v0, "len":I
    int-to-long v1, v0

    iget-wide v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 113
    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    long-to-int v0, v1

    .line 114
    :cond_0
    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 115
    return v2

    .line 116
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 117
    if-ne v0, v2, :cond_2

    .line 118
    return v2

    .line 119
    :cond_2
    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    .line 120
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    int-to-long v0, p3

    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 100
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    long-to-int p3, v0

    .line 101
    :cond_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 102
    return v1

    .line 103
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    .line 104
    if-ne p3, v1, :cond_2

    .line 105
    return v1

    .line 106
    :cond_2
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    .line 107
    return p3
.end method

.method public declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->mark:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 84
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->markleft:J

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 89
    return-wide v0

    .line 90
    :cond_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 91
    iget-wide p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    .line 92
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 93
    .local v0, "p":J
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    add-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 94
    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;->left:J

    .line 95
    return-wide p1
.end method
