.class public abstract Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
.super Ljava/lang/Object;
.source "AudioFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAudioFileFormat(Ljava/io/File;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAudioFileFormat(Ljava/net/URL;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAudioInputStream(Ljava/io/File;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAudioInputStream(Ljava/net/URL;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
