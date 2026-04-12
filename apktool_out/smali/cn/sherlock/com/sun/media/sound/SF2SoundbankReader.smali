.class public Lcn/sherlock/com/sun/media/sound/SF2SoundbankReader;
.super Ljp/kshoji/javax/sound/midi/spi/SoundbankReader;
.source "SF2SoundbankReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/spi/SoundbankReader;-><init>()V

    return-void
.end method


# virtual methods
.method public getSoundbank(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    invoke-direct {v0, p1}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSoundbank(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/16 v0, 0x200

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 58
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    invoke-direct {v0, p1}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException;
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 61
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSoundbank(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    invoke-direct {v1, p1}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "ioe":Ljava/io/IOException;
    return-object v0

    .line 47
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 48
    .local v1, "e":Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException;
    return-object v0
.end method
