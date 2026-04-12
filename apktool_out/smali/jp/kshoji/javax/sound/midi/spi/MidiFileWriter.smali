.class public abstract Ljp/kshoji/javax/sound/midi/spi/MidiFileWriter;
.super Ljava/lang/Object;
.source "MidiFileWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMidiFileTypes()[I
.end method

.method public abstract getMidiFileTypes(Ljp/kshoji/javax/sound/midi/Sequence;)[I
.end method

.method public isFileTypeSupported(I)Z
    .locals 5
    .param p1, "fileType"    # I

    .line 42
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/spi/MidiFileWriter;->getMidiFileTypes()[I

    move-result-object v0

    .line 43
    .local v0, "supported":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 44
    .local v4, "element":I
    if-ne p1, v4, :cond_0

    .line 45
    const/4 v1, 0x1

    return v1

    .line 43
    .end local v4    # "element":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    return v2
.end method

.method public isFileTypeSupported(ILjp/kshoji/javax/sound/midi/Sequence;)Z
    .locals 5
    .param p1, "fileType"    # I
    .param p2, "sequence"    # Ljp/kshoji/javax/sound/midi/Sequence;

    .line 59
    invoke-virtual {p0, p2}, Ljp/kshoji/javax/sound/midi/spi/MidiFileWriter;->getMidiFileTypes(Ljp/kshoji/javax/sound/midi/Sequence;)[I

    move-result-object v0

    .line 60
    .local v0, "supported":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 61
    .local v4, "element":I
    if-ne p1, v4, :cond_0

    .line 62
    const/4 v1, 0x1

    return v1

    .line 60
    .end local v4    # "element":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_1
    return v2
.end method

.method public abstract write(Ljp/kshoji/javax/sound/midi/Sequence;ILjava/io/File;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljp/kshoji/javax/sound/midi/Sequence;ILjava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
