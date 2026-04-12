.class public Lcn/sherlock/com/sun/media/sound/RIFFReader;
.super Ljava/io/InputStream;
.source "RIFFReader.java"


# instance fields
.field private avail:J

.field private ckSize:J

.field private filepointer:J

.field private fourcc:Ljava/lang/String;

.field private lastiterator:Lcn/sherlock/com/sun/media/sound/RIFFReader;

.field private riff_type:Ljava/lang/String;

.field private root:Lcn/sherlock/com/sun/media/sound/RIFFReader;

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    .line 41
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->riff_type:Ljava/lang/String;

    .line 42
    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->ckSize:J

    .line 45
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->lastiterator:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    .line 49
    instance-of v3, p1, Lcn/sherlock/com/sun/media/sound/RIFFReader;

    if-eqz v3, :cond_0

    .line 50
    move-object v3, p1

    check-cast v3, Lcn/sherlock/com/sun/media/sound/RIFFReader;

    iget-object v3, v3, Lcn/sherlock/com/sun/media/sound/RIFFReader;->root:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->root:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    goto :goto_0

    .line 52
    :cond_0
    iput-object p0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->root:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    .line 54
    :goto_0
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->stream:Ljava/io/InputStream;

    .line 55
    const-wide/32 v3, 0x7fffffff

    iput-wide v3, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    .line 56
    iput-wide v3, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->ckSize:J

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v3

    .line 62
    .local v3, "b":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 63
    const-string v4, ""

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->fourcc:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->riff_type:Ljava/lang/String;

    .line 67
    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    .line 68
    return-void

    .line 70
    :cond_2
    if-eqz v3, :cond_1

    .line 71
    nop

    .line 74
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 75
    .local v1, "fourcc":[B
    const/4 v2, 0x0

    int-to-byte v4, v3

    aput-byte v4, v1, v2

    .line 76
    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v2, v4}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readFully([BII)V

    .line 77
    new-instance v2, Ljava/lang/String;

    const-string v4, "ascii"

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->fourcc:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v5

    iput-wide v5, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->ckSize:J

    .line 80
    iget-wide v5, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->ckSize:J

    iput-wide v5, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    .line 82
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v5, "RIFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v5, "LIST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    :cond_3
    new-array v0, v0, [B

    .line 84
    .local v0, "format":[B
    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readFully([B)V

    .line 85
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->riff_type:Ljava/lang/String;

    .line 87
    .end local v0    # "format":[B
    :cond_4
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 203
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

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

    .line 327
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->finish()V

    .line 328
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->root:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    if-ne p0, v0, :cond_0

    .line 329
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 330
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->stream:Ljava/io/InputStream;

    .line 331
    return-void
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 208
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    invoke-virtual {p0, v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->skipBytes(J)J

    .line 210
    :cond_0
    return-void
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->root:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    iget-wide v0, v0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    return-wide v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->fourcc:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->ckSize:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->riff_type:Ljava/lang/String;

    return-object v0
.end method

.method public hasNextChunk()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->lastiterator:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->lastiterator:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->finish()V

    .line 96
    :cond_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextChunk()Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->lastiterator:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->lastiterator:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->finish()V

    .line 102
    :cond_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_1
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFReader;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->lastiterator:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    .line 105
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->lastiterator:Lcn/sherlock/com/sun/media/sound/RIFFReader;

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 122
    return v1

    .line 123
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 124
    .local v0, "b":I
    if-ne v0, v1, :cond_1

    .line 125
    return v1

    .line 126
    :cond_1
    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    .line 127
    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    .line 128
    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 133
    return v1

    .line 134
    :cond_0
    int-to-long v4, p3

    iget-wide v6, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->stream:Ljava/io/InputStream;

    iget-wide v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    long-to-int v4, v4

    invoke-virtual {v0, p1, p2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 136
    .local v0, "rlen":I
    if-eq v0, v1, :cond_1

    .line 137
    iget-wide v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    .line 138
    :cond_1
    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    .line 139
    return v0

    .line 141
    .end local v0    # "rlen":I
    :cond_2
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 142
    .local v0, "ret":I
    if-ne v0, v1, :cond_3

    .line 143
    return v1

    .line 144
    :cond_3
    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    .line 145
    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    .line 146
    return v0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v0

    .line 227
    .local v0, "ch":I
    if-ltz v0, :cond_0

    .line 229
    int-to-byte v1, v0

    return v1

    .line 228
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readFully([BII)V

    .line 152
    return-void
.end method

.method public final readFully([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    if-ltz p3, :cond_3

    .line 157
    :goto_0
    if-lez p3, :cond_2

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read([BII)I

    move-result v0

    .line 159
    .local v0, "s":I
    if-ltz v0, :cond_1

    .line 161
    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 163
    :cond_0
    add-int/2addr p2, v0

    .line 164
    sub-int/2addr p3, v0

    .line 165
    .end local v0    # "s":I
    goto :goto_0

    .line 160
    .restart local v0    # "s":I
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 166
    .end local v0    # "s":I
    :cond_2
    return-void

    .line 156
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v0

    .line 246
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v1

    .line 247
    .local v1, "ch2":I
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v2

    .line 248
    .local v2, "ch3":I
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v3

    .line 249
    .local v3, "ch4":I
    if-ltz v0, :cond_3

    .line 251
    if-ltz v1, :cond_2

    .line 253
    if-ltz v2, :cond_1

    .line 255
    if-ltz v3, :cond_0

    .line 257
    shl-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v0

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x18

    or-int/2addr v4, v5

    return v4

    .line 256
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 254
    :cond_1
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 252
    :cond_2
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 250
    :cond_3
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
.end method

.method public readLong()J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v0

    int-to-long v0, v0

    .line 263
    .local v0, "ch1":J
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v2

    int-to-long v2, v2

    .line 264
    .local v2, "ch2":J
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v4

    int-to-long v4, v4

    .line 265
    .local v4, "ch3":J
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v6

    int-to-long v6, v6

    .line 266
    .local v6, "ch4":J
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v8

    int-to-long v8, v8

    .line 267
    .local v8, "ch5":J
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v10

    int-to-long v10, v10

    .line 268
    .local v10, "ch6":J
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v12

    int-to-long v12, v12

    .line 269
    .local v12, "ch7":J
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v14

    int-to-long v14, v14

    .line 270
    .local v14, "ch8":J
    const-wide/16 v16, 0x0

    cmp-long v18, v0, v16

    if-ltz v18, :cond_7

    .line 272
    cmp-long v18, v2, v16

    if-ltz v18, :cond_6

    .line 274
    cmp-long v18, v4, v16

    if-ltz v18, :cond_5

    .line 276
    cmp-long v18, v6, v16

    if-ltz v18, :cond_4

    .line 278
    cmp-long v18, v8, v16

    if-ltz v18, :cond_3

    .line 280
    cmp-long v18, v10, v16

    if-ltz v18, :cond_2

    .line 282
    cmp-long v18, v12, v16

    if-ltz v18, :cond_1

    .line 284
    cmp-long v16, v14, v16

    if-ltz v16, :cond_0

    .line 286
    const/16 v16, 0x8

    shl-long v16, v2, v16

    or-long v16, v0, v16

    const/16 v18, 0x10

    shl-long v18, v4, v18

    or-long v16, v16, v18

    const/16 v18, 0x18

    shl-long v18, v6, v18

    or-long v16, v16, v18

    const/16 v18, 0x20

    shl-long v18, v8, v18

    or-long v16, v16, v18

    const/16 v18, 0x28

    shl-long v18, v10, v18

    or-long v16, v16, v18

    const/16 v18, 0x30

    shl-long v18, v12, v18

    or-long v16, v16, v18

    const/16 v18, 0x38

    shl-long v18, v14, v18

    or-long v16, v16, v18

    return-wide v16

    .line 285
    :cond_0
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16

    .line 283
    :cond_1
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16

    .line 281
    :cond_2
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16

    .line 279
    :cond_3
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16

    .line 277
    :cond_4
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16

    .line 275
    :cond_5
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16

    .line 273
    :cond_6
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16

    .line 271
    :cond_7
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v0

    .line 235
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v1

    .line 236
    .local v1, "ch2":I
    if-ltz v0, :cond_1

    .line 238
    if-ltz v1, :cond_0

    .line 240
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    int-to-short v2, v2

    return v2

    .line 239
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 237
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readString(I)Ljava/lang/String;
    .locals 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-array v0, p1, [B

    .line 215
    .local v0, "buff":[B
    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readFully([B)V

    .line 216
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    const-string v3, "ascii"

    if-ge v1, v2, :cond_1

    .line 217
    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    .line 218
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    .line 216
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v0

    .line 293
    .local v0, "ch":I
    if-ltz v0, :cond_0

    .line 295
    return v0

    .line 294
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readUnsignedInt()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v0

    int-to-long v0, v0

    .line 312
    .local v0, "ch1":J
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v2

    int-to-long v2, v2

    .line 313
    .local v2, "ch2":J
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v4

    int-to-long v4, v4

    .line 314
    .local v4, "ch3":J
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v6

    int-to-long v6, v6

    .line 315
    .local v6, "ch4":J
    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-ltz v10, :cond_3

    .line 317
    cmp-long v10, v2, v8

    if-ltz v10, :cond_2

    .line 319
    cmp-long v10, v4, v8

    if-ltz v10, :cond_1

    .line 321
    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 323
    const/16 v8, 0x8

    shl-long v8, v2, v8

    add-long/2addr v8, v0

    const/16 v10, 0x10

    shl-long v10, v4, v10

    or-long/2addr v8, v10

    const/16 v10, 0x18

    shl-long v10, v6, v10

    or-long/2addr v8, v10

    return-wide v8

    .line 322
    :cond_0
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 320
    :cond_1
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 318
    :cond_2
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 316
    :cond_3
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8
.end method

.method public readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v0

    .line 301
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->read()I

    move-result v1

    .line 302
    .local v1, "ch2":I
    if-ltz v0, :cond_1

    .line 304
    if-ltz v1, :cond_0

    .line 306
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    return v2

    .line 305
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 303
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public skip(J)J
    .locals 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, -0x1

    if-nez v0, :cond_0

    .line 185
    return-wide v4

    .line 186
    :cond_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->stream:Ljava/io/InputStream;

    iget-wide v6, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 188
    .local v0, "len":J
    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 189
    iget-wide v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    .line 190
    :cond_1
    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    .line 191
    return-wide v0

    .line 193
    .end local v0    # "len":J
    :cond_2
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 194
    .local v0, "ret":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    .line 195
    return-wide v4

    .line 196
    :cond_3
    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->avail:J

    .line 197
    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFReader;->filepointer:J

    .line 198
    return-wide v0
.end method

.method public final skipBytes(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 170
    return-wide v0

    .line 171
    :cond_0
    const-wide/16 v2, 0x0

    .line 172
    .local v2, "skipped":J
    :goto_0
    cmp-long v4, v2, p1

    if-eqz v4, :cond_3

    .line 173
    sub-long v4, p1, v2

    invoke-virtual {p0, v4, v5}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->skip(J)J

    move-result-wide v4

    .line 174
    .local v4, "s":J
    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    .line 175
    goto :goto_1

    .line 176
    :cond_1
    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    .line 177
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 178
    :cond_2
    add-long/2addr v2, v4

    .line 179
    .end local v4    # "s":J
    goto :goto_0

    .line 180
    :cond_3
    :goto_1
    return-wide v2
.end method
