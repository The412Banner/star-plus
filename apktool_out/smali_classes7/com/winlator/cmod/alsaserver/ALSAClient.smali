.class public Lcom/winlator/cmod/alsaserver/ALSAClient;
.super Ljava/lang/Object;
.source "ALSAClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;
    }
.end annotation


# instance fields
.field private bufferSize:I

.field private channelCount:B

.field private dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

.field private frameBytes:I

.field private playing:Z

.field private position:I

.field private sampleRate:I

.field private sharedBuffer:Ljava/nio/ByteBuffer;

.field private streamPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->U8:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    iput-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    .line 18
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->channelCount:B

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sampleRate:I

    .line 24
    iput-boolean v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->playing:Z

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    return-void
.end method

.method private native close(J)V
.end method

.method private native create(IBII)J
.end method

.method private native flush(J)V
.end method

.method private isValidBufferSize()Z
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->getBufferSizeInBytes()I

    move-result v0

    iget v1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->frameBytes:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->bufferSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native pause(J)V
.end method

.method private native start(J)V
.end method

.method private native stop(J)V
.end method

.method private native write(JLjava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public computeLatencyMillis()I
    .locals 2

    .line 148
    iget v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->bufferSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sampleRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public drain()V
    .locals 4

    .line 76
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/alsaserver/ALSAClient;->flush(J)V

    .line 77
    :cond_0
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->bufferSize:I

    return v0
.end method

.method public getBufferSizeInBytes()I
    .locals 2

    .line 140
    iget v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->bufferSize:I

    iget v1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->frameBytes:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getChannelCount()B
    .locals 1

    .line 128
    iget-byte v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->channelCount:B

    return v0
.end method

.method public getDataType()Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sampleRate:I

    return v0
.end method

.method public getSharedBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public pause()V
    .locals 4

    .line 69
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 70
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/alsaserver/ALSAClient;->pause(J)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->playing:Z

    .line 73
    :cond_0
    return-void
.end method

.method public pointer()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->position:I

    return v0
.end method

.method public prepare()V
    .locals 4

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->position:I

    .line 45
    iget-byte v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->channelCount:B

    iget-object v1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    iget-byte v1, v1, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->byteCount:B

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->frameBytes:I

    .line 46
    invoke-virtual {p0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->release()V

    .line 48
    invoke-direct {p0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->isValidBufferSize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->ordinal()I

    move-result v0

    iget-byte v1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->channelCount:B

    iget v2, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sampleRate:I

    iget v3, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->bufferSize:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/winlator/cmod/alsaserver/ALSAClient;->create(IBII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    .line 51
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->start()V

    .line 52
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->unmapSHMSegment(Ljava/nio/ByteBuffer;J)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    .line 37
    :cond_0
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/alsaserver/ALSAClient;->stop(J)V

    .line 38
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/alsaserver/ALSAClient;->close(J)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->playing:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    .line 41
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 112
    iput p1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->bufferSize:I

    .line 113
    return-void
.end method

.method public setChannelCount(I)V
    .locals 1
    .param p1, "channelCount"    # I

    .line 104
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->channelCount:B

    .line 105
    return-void
.end method

.method public setDataType(Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;)V
    .locals 0
    .param p1, "dataType"    # Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    .line 100
    iput-object p1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    .line 101
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .line 108
    iput p1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sampleRate:I

    .line 109
    return-void
.end method

.method public setSharedBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "sharedBuffer"    # Ljava/nio/ByteBuffer;

    .line 120
    iput-object p1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->sharedBuffer:Ljava/nio/ByteBuffer;

    .line 121
    return-void
.end method

.method public start()V
    .locals 4

    .line 55
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->playing:Z

    if-nez v0, :cond_0

    .line 56
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/alsaserver/ALSAClient;->start(J)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->playing:Z

    .line 59
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 62
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->playing:Z

    if-eqz v0, :cond_0

    .line 63
    iget-wide v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/alsaserver/ALSAClient;->stop(J)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->playing:Z

    .line 66
    :cond_0
    return-void
.end method

.method public writeDataToStream(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    sget-object v1, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->S16LE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    sget-object v1, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->FLOATLE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    sget-object v1, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->S16BE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->dataType:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    sget-object v1, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->FLOATBE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    if-ne v0, v1, :cond_3

    .line 84
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->playing:Z

    if-eqz v0, :cond_5

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->frameBytes:I

    div-int/2addr v0, v1

    .line 89
    .local v0, "numFrames":I
    iget-wide v1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->streamPtr:J

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->write(JLjava/nio/ByteBuffer;I)I

    move-result v1

    .line 90
    .local v1, "framesWritten":I
    if-lez v1, :cond_4

    iget v2, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/winlator/cmod/alsaserver/ALSAClient;->position:I

    .line 91
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    .end local v0    # "numFrames":I
    .end local v1    # "framesWritten":I
    :cond_5
    return-void
.end method
