.class public Lcn/sherlock/javax/sound/sampled/AudioInputStream;
.super Ljava/io/InputStream;
.source "AudioInputStream.java"


# instance fields
.field protected format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

.field protected frameLength:J

.field protected framePos:J

.field protected frameSize:I

.field private markPushBackBuffer:[B

.field private markPushBackLen:I

.field private markpos:J

.field private pushBackBuffer:[B

.field private pushBackLen:I

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p3, "length"    # J

    .line 108
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackBuffer:[B

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    .line 90
    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackBuffer:[B

    .line 95
    iput v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackLen:I

    .line 110
    iput-object p2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 111
    iput-wide p3, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    .line 112
    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    iput v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    .line 116
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    if-gtz v0, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    .line 120
    :cond_1
    iput-object p1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    .line 122
    iput-wide v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markpos:J

    .line 123
    return-void
.end method


# virtual methods
.method public available()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 356
    .local v0, "temp":I
    iget-wide v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    div-int v1, v0, v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    iget-wide v5, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 357
    iget-wide v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    iget-wide v3, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    mul-int/2addr v1, v2

    return v1

    .line 359
    :cond_0
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 371
    return-void
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 1

    .line 154
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    return-wide v0
.end method

.method public mark(I)V
    .locals 4
    .param p1, "readlimit"    # I

    .line 384
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 385
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-wide v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    iput-wide v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markpos:J

    .line 388
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    iput v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackLen:I

    .line 389
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackLen:I

    if-lez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackBuffer:[B

    if-nez v0, :cond_0

    .line 391
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackBuffer:[B

    .line 393
    :cond_0
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackBuffer:[B

    iget-object v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackBuffer:[B

    iget v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackLen:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :cond_1
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 431
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 184
    new-array v0, v1, [B

    .line 185
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->read([B)I

    move-result v1

    .line 186
    .local v1, "temp":I
    if-gtz v1, :cond_0

    .line 188
    const/4 v2, -0x1

    return v2

    .line 190
    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 181
    .end local v0    # "data":[B
    .end local v1    # "temp":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot read a single byte if frame size > 1"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    rem-int v0, p3, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    rem-int v0, p3, v0

    sub-int/2addr p3, v0

    .line 242
    if-nez p3, :cond_0

    .line 243
    return v1

    .line 247
    :cond_0
    iget-wide v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 248
    iget-wide v3, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    iget-wide v5, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 249
    return v2

    .line 253
    :cond_1
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    div-int v0, p3, v0

    int-to-long v3, v0

    iget-wide v5, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    iget-wide v7, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 254
    iget-wide v3, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    iget-wide v5, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    iget v3, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    mul-int p3, v0, v3

    .line 259
    :cond_2
    const/4 v0, 0x0

    .line 260
    .local v0, "bytesRead":I
    move v3, p2

    .line 264
    .local v3, "thisOff":I
    iget v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    if-lez v4, :cond_3

    iget v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    if-lt p3, v4, :cond_3

    .line 265
    iget-object v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackBuffer:[B

    iget v5, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    invoke-static {v4, v1, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    add-int/2addr v3, v4

    .line 268
    iget v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    sub-int/2addr p3, v4

    .line 269
    iget v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    add-int/2addr v0, v4

    .line 270
    iput v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    .line 273
    :cond_3
    iget-object v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 274
    .local v4, "thisBytesRead":I
    if-ne v4, v2, :cond_4

    .line 275
    return v2

    .line 277
    :cond_4
    if-lez v4, :cond_5

    .line 278
    add-int/2addr v0, v4

    .line 280
    :cond_5
    if-lez v0, :cond_8

    .line 281
    iget v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    rem-int v2, v0, v2

    iput v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    .line 282
    iget v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    if-lez v2, :cond_7

    .line 285
    iget-object v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackBuffer:[B

    if-nez v2, :cond_6

    .line 286
    iget v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackBuffer:[B

    .line 288
    :cond_6
    add-int v2, p2, v0

    iget v5, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackBuffer:[B

    iget v6, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    invoke-static {p1, v2, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    sub-int/2addr v0, v1

    .line 293
    :cond_7
    iget-wide v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    iget v5, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    div-int v5, v0, v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    .line 295
    :cond_8
    return v0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 409
    iget-wide v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markpos:J

    iput-wide v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    .line 411
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackLen:I

    iput v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    .line 412
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    if-lez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackBuffer:[B

    if-nez v0, :cond_0

    .line 414
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackBuffer:[B

    .line 416
    :cond_0
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markPushBackBuffer:[B

    iget-object v1, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackBuffer:[B

    iget v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->pushBackLen:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    :cond_1
    return-void
.end method

.method public skip(J)J
    .locals 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 312
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    sub-long/2addr p1, v0

    .line 315
    :cond_0
    iget-wide v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 317
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    iget-wide v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    iget-wide v6, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    sub-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 318
    iget-wide v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameLength:J

    iget-wide v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    sub-long/2addr v0, v4

    iget v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    int-to-long v4, v4

    mul-long p1, v0, v4

    .line 321
    :cond_1
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 324
    .local v0, "temp":J
    iget v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    int-to-long v4, v4

    rem-long v4, v0, v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_3

    .line 329
    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 330
    iget-wide v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    iget v4, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->frameSize:I

    int-to-long v4, v4

    div-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->framePos:J

    .line 332
    :cond_2
    return-wide v0

    .line 327
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not skip an integer number of frames."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
