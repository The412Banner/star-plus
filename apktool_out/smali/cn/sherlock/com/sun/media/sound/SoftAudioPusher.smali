.class public Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;
.super Ljava/lang/Object;
.source "SoftAudioPusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile active:Z

.field private ais:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

.field private audiothread:Ljava/lang/Thread;

.field private buffer:[B

.field private sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;


# direct methods
.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/SourceDataLine;Lcn/sherlock/javax/sound/sampled/AudioInputStream;I)V
    .locals 1
    .param p1, "sourceDataLine"    # Lcn/sherlock/javax/sound/sampled/SourceDataLine;
    .param p2, "ais"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .param p3, "workbuffersizer"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->active:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    .line 47
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->ais:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 48
    new-array v0, p3, [B

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->buffer:[B

    .line 49
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    .line 50
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->buffer:[B

    .line 75
    .local v0, "buffer":[B
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->ais:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 76
    .local v1, "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    .line 79
    .local v2, "sourceDataLine":Lcn/sherlock/javax/sound/sampled/SourceDataLine;
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    iget-boolean v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->active:Z

    if-eqz v4, :cond_1

    .line 81
    invoke-virtual {v1, v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->read([B)I

    move-result v4

    .line 82
    .local v4, "count":I
    if-gez v4, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    invoke-interface {v2, v0, v3, v4}, Lcn/sherlock/javax/sound/sampled/SourceDataLine;->write([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .end local v4    # "count":I
    goto :goto_0

    .line 89
    :cond_1
    :goto_1
    goto :goto_2

    .line 86
    :catch_0
    move-exception v4

    .line 87
    .local v4, "e":Ljava/io/IOException;
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->active:Z

    .line 91
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 54
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->active:Z

    .line 56
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->audiothread:Ljava/lang/Thread;

    .line 57
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->audiothread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 58
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->audiothread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 59
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->audiothread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 52
    .end local p0    # "this":Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 64
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->active:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->audiothread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    goto :goto_0

    .line 68
    .end local p0    # "this":Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;
    :catch_0
    move-exception v0

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
