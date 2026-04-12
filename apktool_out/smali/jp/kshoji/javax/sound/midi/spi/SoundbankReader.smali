.class public abstract Ljp/kshoji/javax/sound/midi/spi/SoundbankReader;
.super Ljava/lang/Object;
.source "SoundbankReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract getSoundbank(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSoundbank(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSoundbank(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
