.class public Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;
.super Ljava/io/InputStream;
.source "SoftSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WeakAudioStream"
.end annotation


# instance fields
.field private converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

.field private framesize:I

.field public jitter_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

.field public pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

.field private samplesize:I

.field public volatile silent_samples:J

.field private silentbuffer:[F

.field public sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

.field private volatile stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

.field private weak_stream_link:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/sherlock/javax/sound/sampled/AudioInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V
    .locals 3
    .param p1, "stream"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 141
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    .line 70
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->jitter_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 71
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    .line 72
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->framesize:I

    .line 76
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silentbuffer:[F

    .line 142
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->weak_stream_link:Ljava/lang/ref/WeakReference;

    .line 144
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 145
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->samplesize:I

    .line 146
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->framesize:I

    .line 147
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 86
    .local v0, "local_stream":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->available()I

    move-result v1

    return v1

    .line 88
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->weak_stream_link:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 157
    .local v0, "astream":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->close()V

    .line 159
    :cond_0
    return-void
.end method

.method public getAudioInputStream()Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 4

    .line 151
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 93
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 94
    return v2

    .line 95
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 100
    .local v0, "local_stream":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->read([BII)I

    move-result v1

    return v1

    .line 104
    :cond_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->samplesize:I

    div-int v1, p3, v1

    .line 105
    .local v1, "flen":I
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silentbuffer:[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silentbuffer:[F

    array-length v2, v2

    if-ge v2, v1, :cond_2

    .line 106
    :cond_1
    new-array v2, v1, [F

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silentbuffer:[F

    .line 107
    :cond_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silentbuffer:[F

    invoke-virtual {v2, v3, v1, p1, p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toByteArray([FI[BI)[B

    .line 109
    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->framesize:I

    div-int v4, p3, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    .line 111
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->weak_stream_link:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 114
    new-instance v2, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;

    invoke-direct {v2, p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;-><init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;)V

    .line 132
    .local v2, "runnable":Ljava/lang/Runnable;
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    .line 133
    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->jitter_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 134
    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    .line 135
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 137
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_3
    return p3
.end method

.method public setInputStream(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V
    .locals 0
    .param p1, "stream"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 81
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 82
    return-void
.end method
