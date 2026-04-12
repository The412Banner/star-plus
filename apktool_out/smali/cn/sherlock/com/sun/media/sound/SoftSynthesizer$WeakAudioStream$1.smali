.class Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;
.super Ljava/lang/Object;
.source "SoftSynthesizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->read([BII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _jitter_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

.field _pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

.field _sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;)V
    .locals 1
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    .line 115
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->_pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    .line 117
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->jitter_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->_jitter_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 118
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->_sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->_pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->stop()V

    .line 122
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->_jitter_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->_jitter_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->_sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream$1;->_sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    invoke-interface {v0}, Lcn/sherlock/javax/sound/sampled/SourceDataLine;->close()V

    .line 130
    :cond_1
    return-void
.end method
