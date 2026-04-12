.class public Lcn/sherlock/com/sun/media/sound/SF2Soundbank;
.super Ljava/lang/Object;
.source "SF2Soundbank.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/Soundbank;


# instance fields
.field protected comments:Ljava/lang/String;

.field protected copyright:Ljava/lang/String;

.field protected creationDate:Ljava/lang/String;

.field protected engineers:Ljava/lang/String;

.field private instruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2Instrument;",
            ">;"
        }
    .end annotation
.end field

.field private largeFormat:Z

.field private layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2Layer;",
            ">;"
        }
    .end annotation
.end field

.field protected major:I

.field protected minor:I

.field protected name:Ljava/lang/String;

.field protected product:Ljava/lang/String;

.field protected romName:Ljava/lang/String;

.field protected romVersionMajor:I

.field protected romVersionMinor:I

.field private sampleData:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

.field private sampleData24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

.field private sampleFile:Ljava/io/File;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2Sample;",
            ">;"
        }
    .end annotation
.end field

.field protected targetEngine:Ljava/lang/String;

.field protected tools:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->major:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->minor:I

    .line 59
    const-string v0, "EMU8000"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "untitled"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romName:Ljava/lang/String;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMajor:I

    .line 66
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMinor:I

    .line 68
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->creationDate:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->engineers:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->product:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->copyright:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->comments:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->tools:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 81
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 82
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleFile:Ljava/io/File;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->largeFormat:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->major:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->minor:I

    .line 59
    const-string v1, "EMU8000"

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "untitled"

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romName:Ljava/lang/String;

    .line 65
    const/4 v2, -0x1

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMajor:I

    .line 66
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMinor:I

    .line 68
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->creationDate:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->engineers:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->product:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->copyright:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->comments:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->tools:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 81
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 82
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleFile:Ljava/io/File;

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->largeFormat:Z

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    .line 102
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->largeFormat:Z

    .line 103
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleFile:Ljava/io/File;

    .line 104
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 106
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->readSoundbank(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    nop

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->major:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->minor:I

    .line 59
    const-string v0, "EMU8000"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "untitled"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romName:Ljava/lang/String;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMajor:I

    .line 66
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMinor:I

    .line 68
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->creationDate:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->engineers:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->product:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->copyright:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->comments:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->tools:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 81
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 82
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleFile:Ljava/io/File;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->largeFormat:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    .line 113
    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->readSoundbank(Ljava/io/InputStream;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->major:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->minor:I

    .line 59
    const-string v0, "EMU8000"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "untitled"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romName:Ljava/lang/String;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMajor:I

    .line 66
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMinor:I

    .line 68
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->creationDate:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->engineers:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->product:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->copyright:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->comments:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->tools:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 81
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 82
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleFile:Ljava/io/File;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->largeFormat:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    .line 93
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 95
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->readSoundbank(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    nop

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    throw v1
.end method

.method private readInfoChunk(Lcn/sherlock/com/sun/media/sound/RIFFReader;)V
    .locals 3
    .param p1, "riff"    # Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    nop

    :goto_0
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->hasNextChunk()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->nextChunk()Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-result-object v0

    .line 142
    .local v0, "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "format":Ljava/lang/String;
    const-string v2, "ifil"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->major:I

    .line 145
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->minor:I

    goto/16 :goto_1

    .line 146
    :cond_0
    const-string v2, "isng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    goto/16 :goto_1

    .line 148
    :cond_1
    const-string v2, "INAM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 150
    :cond_2
    const-string v2, "irom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romName:Ljava/lang/String;

    goto/16 :goto_1

    .line 152
    :cond_3
    const-string v2, "iver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMajor:I

    .line 154
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMinor:I

    goto/16 :goto_1

    .line 155
    :cond_4
    const-string v2, "ICRD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->creationDate:Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_5
    const-string v2, "IENG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 158
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->engineers:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_6
    const-string v2, "IPRD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 160
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->product:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_7
    const-string v2, "ICOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 162
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->copyright:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_8
    const-string v2, "ICMT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 164
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->comments:Ljava/lang/String;

    goto :goto_1

    .line 165
    :cond_9
    const-string v2, "ISFT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 166
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->tools:Ljava/lang/String;

    .line 169
    .end local v0    # "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .end local v1    # "format":Ljava/lang/String;
    :cond_a
    :goto_1
    goto/16 :goto_0

    .line 170
    :cond_b
    return-void
.end method

.method private readPdtaChunk(Lcn/sherlock/com/sun/media/sound/RIFFReader;)V
    .locals 28
    .param p1, "riff"    # Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v1, "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v2, "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v4, "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v5, "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v6, "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v7, "instruments_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v8, "instruments_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->hasNextChunk()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->nextChunk()Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-result-object v9

    .line 243
    .local v9, "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "format":Ljava/lang/String;
    const-string/jumbo v11, "phdr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/16 v12, 0x14

    if-eqz v11, :cond_3

    .line 246
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v11

    rem-int/lit8 v11, v11, 0x26

    if-nez v11, :cond_2

    .line 248
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v11

    div-int/lit8 v11, v11, 0x26

    .line 249
    .local v11, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_1

    .line 250
    new-instance v14, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    invoke-direct {v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;-><init>(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V

    .line 251
    .local v14, "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    invoke-virtual {v9, v12}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->name:Ljava/lang/String;

    .line 252
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v15

    iput v15, v14, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    .line 253
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v15

    iput v15, v14, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    .line 254
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    move/from16 v16, v13

    .end local v13    # "i":I
    .local v16, "i":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v12

    iput-wide v12, v14, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->library:J

    .line 256
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v12

    iput-wide v12, v14, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->genre:J

    .line 257
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v12

    iput-wide v12, v14, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->morphology:J

    .line 258
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v12, v11, -0x1

    move/from16 v13, v16

    .end local v16    # "i":I
    .restart local v13    # "i":I
    if-eq v13, v12, :cond_0

    .line 260
    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v14    # "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/16 v12, 0x14

    goto :goto_1

    .line 262
    .end local v11    # "count":I
    .end local v13    # "i":I
    :cond_1
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    goto/16 :goto_1a

    .line 247
    :cond_2
    new-instance v11, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;

    invoke-direct {v11}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;-><init>()V

    throw v11

    .line 262
    :cond_3
    const-string/jumbo v11, "pbag"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_10

    .line 264
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v11

    rem-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_f

    .line 266
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v11

    div-int/lit8 v11, v11, 0x4

    .line 270
    .restart local v11    # "count":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v14

    .line 271
    .local v14, "gencount":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v15

    .line 272
    .local v15, "modcount":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v14, :cond_4

    .line 273
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 274
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v15, :cond_5

    .line 275
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 276
    :cond_5
    nop

    .end local v14    # "gencount":I
    .end local v15    # "modcount":I
    add-int/lit8 v11, v11, -0x1

    .line 279
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 281
    .local v12, "offset":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    if-ge v14, v12, :cond_9

    .line 282
    if-eqz v11, :cond_8

    .line 284
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v15

    .line 285
    .local v15, "gencount":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v13

    .line 286
    .local v13, "modcount":I
    :goto_5
    move/from16 v16, v12

    .end local v12    # "offset":I
    .local v16, "offset":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v15, :cond_6

    .line 287
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v12, v16

    goto :goto_5

    .line 286
    :cond_6
    const/4 v12, 0x0

    .line 288
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v13, :cond_7

    .line 289
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 290
    :cond_7
    nop

    .end local v13    # "modcount":I
    .end local v15    # "gencount":I
    add-int/lit8 v11, v11, -0x1

    .line 281
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v16

    const/4 v13, 0x0

    goto :goto_4

    .line 283
    .end local v16    # "offset":I
    .restart local v12    # "offset":I
    :cond_8
    move/from16 v16, v12

    .end local v12    # "offset":I
    .restart local v16    # "offset":I
    new-instance v12, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;

    invoke-direct {v12}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;-><init>()V

    throw v12

    .line 281
    .end local v16    # "offset":I
    .restart local v12    # "offset":I
    :cond_9
    move/from16 v16, v12

    .line 293
    .end local v12    # "offset":I
    .end local v14    # "i":I
    .restart local v16    # "offset":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_e

    .line 294
    add-int/lit8 v13, v12, 0x1

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 295
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v13, v14

    .line 296
    .local v13, "zone_count":I
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 297
    .local v14, "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    const/4 v15, 0x0

    .local v15, "ii":I
    :goto_8
    if-ge v15, v13, :cond_d

    .line 298
    if-eqz v11, :cond_c

    .line 300
    move-object/from16 v18, v1

    .end local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .local v18, "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v1

    .line 301
    .local v1, "gencount":I
    move-object/from16 v19, v2

    .end local v2    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v2

    .line 302
    .local v2, "modcount":I
    new-instance v17, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;

    invoke-direct/range {v17 .. v17}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;-><init>()V

    move-object/from16 v20, v17

    .line 303
    .local v20, "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    move/from16 v17, v13

    .end local v13    # "zone_count":I
    .local v17, "zone_count":I
    iget-object v13, v14, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->regions:Ljava/util/List;

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    .end local v20    # "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    .local v14, "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    .local v21, "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v13, v1, :cond_a

    .line 305
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 306
    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v13, v2, :cond_b

    .line 307
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 308
    :cond_b
    nop

    .end local v1    # "gencount":I
    .end local v2    # "modcount":I
    .end local v14    # "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    add-int/lit8 v11, v11, -0x1

    .line 297
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v14, v21

    goto :goto_8

    .line 299
    .end local v17    # "zone_count":I
    .end local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .end local v19    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    .local v1, "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .local v2, "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "zone_count":I
    .local v14, "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    :cond_c
    move-object/from16 v18, v1

    .end local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    new-instance v1, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;-><init>()V

    throw v1

    .line 297
    .end local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    :cond_d
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v17, v13

    move-object/from16 v21, v14

    .line 293
    .end local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .end local v2    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "zone_count":I
    .end local v14    # "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    .end local v15    # "ii":I
    .restart local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v19    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .end local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .end local v19    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v2    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_e
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 311
    .end local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .end local v2    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "count":I
    .end local v12    # "i":I
    .end local v16    # "offset":I
    .restart local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v19    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    goto/16 :goto_1a

    .line 265
    .end local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .end local v19    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v2    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_f
    move-object/from16 v18, v1

    .end local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    new-instance v1, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;-><init>()V

    throw v1

    .line 311
    .end local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    :cond_10
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .end local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .end local v2    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v19    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v1, "pmod"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 313
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 314
    new-instance v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/SF2Modulator;-><init>()V

    .line 315
    .local v2, "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v11

    iput v11, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->sourceOperator:I

    .line 316
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v11

    iput v11, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->destinationOperator:I

    .line 317
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readShort()S

    move-result v11

    iput-short v11, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amount:S

    .line 318
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v11

    iput v11, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amountSourceOperator:I

    .line 319
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v11

    iput v11, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->transportOperator:I

    .line 320
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;

    .line 321
    .local v11, "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    if-eqz v11, :cond_11

    .line 322
    iget-object v12, v11, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->modulators:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v2    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    .end local v11    # "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    .end local v1    # "i":I
    goto/16 :goto_1a

    .line 324
    :cond_13
    const-string/jumbo v1, "pgen"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 326
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 327
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v2

    .line 328
    .local v2, "operator":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readShort()S

    move-result v11

    .line 329
    .local v11, "amount":S
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;

    .line 330
    .local v12, "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    if-eqz v12, :cond_14

    .line 331
    iget-object v13, v12, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->generators:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v2    # "operator":I
    .end local v11    # "amount":S
    .end local v12    # "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    .end local v1    # "i":I
    goto/16 :goto_1a

    .line 333
    :cond_16
    const-string v1, "inst"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 335
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v1

    rem-int/lit8 v1, v1, 0x16

    if-nez v1, :cond_19

    .line 337
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v1

    div-int/lit8 v1, v1, 0x16

    .line 338
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_18

    .line 339
    new-instance v11, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    invoke-direct {v11, v0}, Lcn/sherlock/com/sun/media/sound/SF2Layer;-><init>(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V

    .line 340
    .local v11, "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    const/16 v12, 0x14

    invoke-virtual {v9, v12}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SF2Layer;->name:Ljava/lang/String;

    .line 341
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v12, v1, -0x1

    if-eq v2, v12, :cond_17

    .line 344
    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v11    # "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 346
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_18
    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    goto/16 :goto_1a

    .line 336
    :cond_19
    new-instance v1, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;-><init>()V

    throw v1

    .line 346
    :cond_1a
    const-string v1, "ibag"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 348
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_26

    .line 350
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 354
    .restart local v1    # "count":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v2

    .line 355
    .local v2, "gencount":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v11

    .line 356
    .local v11, "modcount":I
    :goto_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v2, :cond_1b

    .line 357
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 356
    :cond_1b
    const/4 v12, 0x0

    .line 358
    :goto_f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v13, v11, :cond_1c

    .line 359
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 360
    :cond_1c
    nop

    .end local v2    # "gencount":I
    .end local v11    # "modcount":I
    add-int/lit8 v1, v1, -0x1

    .line 363
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 365
    .local v2, "offset":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_10
    if-ge v11, v2, :cond_20

    .line 366
    if-eqz v1, :cond_1f

    .line 368
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v12

    .line 369
    .local v12, "gencount":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v13

    .line 370
    .local v13, "modcount":I
    :goto_11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v14, v12, :cond_1d

    .line 371
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 370
    :cond_1d
    const/4 v14, 0x0

    .line 372
    :goto_12
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v15, v13, :cond_1e

    .line 373
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 374
    :cond_1e
    nop

    .end local v12    # "gencount":I
    .end local v13    # "modcount":I
    add-int/lit8 v1, v1, -0x1

    .line 365
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 367
    :cond_1f
    new-instance v12, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;

    invoke-direct {v12}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;-><init>()V

    throw v12

    .line 377
    .end local v11    # "i":I
    :cond_20
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_13
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_25

    .line 378
    add-int/lit8 v12, v11, 0x1

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int/2addr v12, v13

    .line 379
    .local v12, "zone_count":I
    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    .line 380
    .local v13, "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    const/4 v14, 0x0

    .local v14, "ii":I
    :goto_14
    if-ge v14, v12, :cond_24

    .line 381
    if-eqz v1, :cond_23

    .line 383
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v15

    .line 384
    .local v15, "gencount":I
    move/from16 v16, v2

    .end local v2    # "offset":I
    .restart local v16    # "offset":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v2

    .line 385
    .local v2, "modcount":I
    new-instance v17, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;

    invoke-direct/range {v17 .. v17}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;-><init>()V

    move-object/from16 v20, v17

    .line 386
    .local v20, "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    move-object/from16 v17, v3

    .end local v3    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .local v17, "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    iget-object v3, v13, Lcn/sherlock/com/sun/media/sound/SF2Layer;->regions:Ljava/util/List;

    move-object/from16 v21, v4

    move-object/from16 v4, v20

    .end local v20    # "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    .local v4, "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    .local v21, "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :goto_15
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v15, :cond_21

    .line 388
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 389
    :cond_21
    :goto_16
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_22

    .line 390
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 391
    :cond_22
    nop

    .end local v2    # "modcount":I
    .end local v4    # "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    .end local v15    # "gencount":I
    add-int/lit8 v1, v1, -0x1

    .line 380
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v21

    goto :goto_14

    .line 382
    .end local v16    # "offset":I
    .end local v17    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v21    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .local v2, "offset":I
    .restart local v3    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .local v4, "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    :cond_23
    move/from16 v16, v2

    .end local v2    # "offset":I
    .restart local v16    # "offset":I
    new-instance v2, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;-><init>()V

    throw v2

    .line 380
    .end local v16    # "offset":I
    .restart local v2    # "offset":I
    :cond_24
    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    .line 377
    .end local v2    # "offset":I
    .end local v3    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v4    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v12    # "zone_count":I
    .end local v13    # "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .end local v14    # "ii":I
    .restart local v16    # "offset":I
    .restart local v17    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v21    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .end local v16    # "offset":I
    .end local v17    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v21    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v2    # "offset":I
    .restart local v3    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v4    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    :cond_25
    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    .line 395
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v3    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v4    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v11    # "i":I
    .restart local v17    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v21    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    goto/16 :goto_1a

    .line 349
    .end local v17    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v21    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v3    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v4    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    :cond_26
    new-instance v1, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;-><init>()V

    throw v1

    .line 395
    :cond_27
    move-object/from16 v17, v3

    move-object/from16 v21, v4

    .end local v3    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v4    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v17    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v21    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    const-string v1, "imod"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 398
    new-instance v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/SF2Modulator;-><init>()V

    .line 399
    .local v2, "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->sourceOperator:I

    .line 400
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->destinationOperator:I

    .line 401
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readShort()S

    move-result v3

    iput-short v3, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amount:S

    .line 402
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amountSourceOperator:I

    .line 403
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->transportOperator:I

    .line 404
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;

    .line 405
    .local v3, "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    if-eqz v3, :cond_28

    .line 406
    iget-object v4, v3, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->modulators:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v2    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    .end local v3    # "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_29
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    .end local v1    # "i":I
    goto/16 :goto_1a

    .line 408
    :cond_2a
    const-string v1, "igen"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 410
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_18
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 411
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v2

    .line 412
    .local v2, "operator":I
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readShort()S

    move-result v3

    .line 413
    .local v3, "amount":S
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;

    .line 414
    .local v4, "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    if-eqz v4, :cond_2b

    .line 415
    iget-object v11, v4, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->generators:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .end local v2    # "operator":I
    .end local v3    # "amount":S
    .end local v4    # "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    .end local v1    # "i":I
    goto/16 :goto_1a

    .line 417
    :cond_2d
    const-string/jumbo v1, "shdr"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 419
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2e

    if-nez v1, :cond_33

    .line 421
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v1

    div-int/lit8 v1, v1, 0x2e

    .line 422
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_32

    .line 423
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    invoke-direct {v3, v0}, Lcn/sherlock/com/sun/media/sound/SF2Sample;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;)V

    .line 424
    .local v3, "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    const/16 v4, 0x14

    invoke-virtual {v9, v4}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->name:Ljava/lang/String;

    .line 425
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v11

    .line 426
    .local v11, "start":J
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v13

    .line 427
    .local v13, "end":J
    iget-object v15, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    const-wide/16 v22, 0x2

    mul-long v24, v11, v22

    mul-long v26, v13, v22

    const/16 v16, 0x1

    move-object/from16 v22, v15

    move-wide/from16 v23, v24

    move-wide/from16 v25, v26

    move/from16 v27, v16

    invoke-virtual/range {v22 .. v27}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->subbuffer(JJZ)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v15

    iput-object v15, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 428
    iget-object v15, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    if-eqz v15, :cond_2e

    .line 429
    iget-object v15, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    const/16 v27, 0x1

    move-object/from16 v22, v15

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    invoke-virtual/range {v22 .. v27}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->subbuffer(JJZ)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v15

    iput-object v15, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 437
    :cond_2e
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v15

    move-object/from16 v20, v5

    .end local v5    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .local v20, "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    sub-long v4, v15, v11

    iput-wide v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    .line 438
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v4

    sub-long/2addr v4, v11

    iput-wide v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    .line 439
    iget-wide v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    const-wide/16 v15, 0x0

    cmp-long v4, v4, v15

    move-object/from16 v23, v6

    .end local v6    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v23, "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v5, -0x1

    if-gez v4, :cond_2f

    .line 440
    iput-wide v5, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    .line 441
    :cond_2f
    iget-wide v5, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    cmp-long v4, v5, v15

    if-gez v4, :cond_30

    .line 442
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    .line 443
    :cond_30
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleRate:J

    .line 444
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedByte()I

    move-result v4

    iput v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->originalPitch:I

    .line 445
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readByte()B

    move-result v4

    iput-byte v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->pitchCorrection:B

    .line 446
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v4

    iput v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleLink:I

    .line 447
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v4

    iput v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleType:I

    .line 448
    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_31

    .line 449
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    .end local v3    # "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    .end local v11    # "start":J
    .end local v13    # "end":J
    :cond_31
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v20

    move-object/from16 v6, v23

    goto/16 :goto_19

    .end local v20    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .end local v23    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .restart local v6    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_32
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    .end local v5    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .end local v6    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .restart local v23    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1a

    .line 420
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v20    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .end local v23    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .restart local v6    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_33
    new-instance v1, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;-><init>()V

    throw v1

    .line 417
    :cond_34
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    .line 452
    .end local v5    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .end local v6    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .end local v10    # "format":Ljava/lang/String;
    .restart local v20    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .restart local v23    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1a
    move-object/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v6, v23

    goto/16 :goto_0

    .line 454
    .end local v17    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .end local v19    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .end local v21    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v23    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .local v2, "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .local v4, "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v5    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .restart local v6    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_35
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    .end local v1    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .end local v2    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v4    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v5    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .end local v6    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "presets_splits_gen":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v18    # "presets":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    .restart local v19    # "presets_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    .restart local v21    # "presets_splits_mod":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .restart local v23    # "instruments_bagNdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 455
    .local v1, "liter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/SF2Layer;>;"
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    .line 457
    .local v2, "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    iget-object v3, v2, Lcn/sherlock/com/sun/media/sound/SF2Layer;->regions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 458
    .local v3, "siter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;>;"
    const/4 v4, 0x0

    .line 459
    .local v4, "globalsplit":Lcn/sherlock/com/sun/media/sound/SF2Region;
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 460
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;

    .line 461
    .local v5, "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    iget-object v6, v5, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->generators:Ljava/util/Map;

    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_36

    .line 462
    iget-object v6, v5, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->generators:Ljava/util/Map;

    .line 463
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 462
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    .line 464
    .local v6, "sampleid":I
    iget-object v10, v5, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->generators:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    iput-object v9, v5, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->sample:Lcn/sherlock/com/sun/media/sound/SF2Sample;

    .line 466
    .end local v6    # "sampleid":I
    goto :goto_1d

    .line 467
    :cond_36
    move-object v4, v5

    .line 469
    .end local v5    # "split":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    :goto_1d
    goto :goto_1c

    .line 470
    :cond_37
    if-eqz v4, :cond_38

    .line 471
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 472
    new-instance v5, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    invoke-direct {v5}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;-><init>()V

    .line 473
    .local v5, "gsplit":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    iget-object v6, v4, Lcn/sherlock/com/sun/media/sound/SF2Region;->generators:Ljava/util/Map;

    iput-object v6, v5, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->generators:Ljava/util/Map;

    .line 474
    iget-object v6, v4, Lcn/sherlock/com/sun/media/sound/SF2Region;->modulators:Ljava/util/List;

    iput-object v6, v5, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->modulators:Ljava/util/List;

    .line 475
    invoke-virtual {v2, v5}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->setGlobalZone(Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;)V

    .line 477
    .end local v2    # "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .end local v3    # "siter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;>;"
    .end local v4    # "globalsplit":Lcn/sherlock/com/sun/media/sound/SF2Region;
    .end local v5    # "gsplit":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    :cond_38
    goto :goto_1b

    .line 480
    :cond_39
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 481
    .local v2, "iiter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/SF2Instrument;>;"
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 482
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 483
    .local v3, "instrument":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    iget-object v4, v3, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->regions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 484
    .local v4, "siter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    const/4 v5, 0x0

    .line 485
    .local v5, "globalsplit":Lcn/sherlock/com/sun/media/sound/SF2Region;
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 486
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;

    .line 487
    .local v6, "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    iget-object v9, v6, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->generators:Ljava/util/Map;

    const/16 v10, 0x29

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3a

    .line 488
    iget-object v9, v6, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->generators:Ljava/util/Map;

    .line 489
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 488
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    .line 490
    .local v9, "instrumentid":I
    iget-object v11, v6, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->generators:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    iput-object v10, v6, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->layer:Lcn/sherlock/com/sun/media/sound/SF2Layer;

    .line 492
    .end local v9    # "instrumentid":I
    goto :goto_20

    .line 493
    :cond_3a
    move-object v5, v6

    .line 495
    .end local v6    # "split":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    :goto_20
    goto :goto_1f

    .line 497
    :cond_3b
    if-eqz v5, :cond_3c

    .line 498
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getRegions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 499
    new-instance v6, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    invoke-direct {v6}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;-><init>()V

    .line 500
    .local v6, "gsplit":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    iget-object v9, v5, Lcn/sherlock/com/sun/media/sound/SF2Region;->generators:Ljava/util/Map;

    iput-object v9, v6, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->generators:Ljava/util/Map;

    .line 501
    iget-object v9, v5, Lcn/sherlock/com/sun/media/sound/SF2Region;->modulators:Ljava/util/List;

    iput-object v9, v6, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->modulators:Ljava/util/List;

    .line 502
    invoke-virtual {v3, v6}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->setGlobalZone(Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;)V

    .line 504
    .end local v3    # "instrument":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    .end local v4    # "siter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;>;"
    .end local v5    # "globalsplit":Lcn/sherlock/com/sun/media/sound/SF2Region;
    .end local v6    # "gsplit":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    :cond_3c
    goto :goto_1e

    .line 506
    :cond_3d
    return-void
.end method

.method private readSdtaChunk(Lcn/sherlock/com/sun/media/sound/RIFFReader;)V
    .locals 12
    .param p1, "riff"    # Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    nop

    :goto_0
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->hasNextChunk()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->nextChunk()Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-result-object v0

    .line 175
    .local v0, "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "smpl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x10000

    if-eqz v1, :cond_3

    .line 176
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->largeFormat:Z

    if-nez v1, :cond_2

    .line 177
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 179
    .local v1, "sampleData":[B
    const/4 v3, 0x0

    .line 180
    .local v3, "read":I
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v4

    .line 181
    .local v4, "avail":I
    :goto_1
    if-eq v3, v4, :cond_1

    .line 182
    sub-int v5, v4, v3

    if-le v5, v2, :cond_0

    .line 183
    invoke-virtual {v0, v1, v3, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readFully([BII)V

    .line 184
    add-int/2addr v3, v2

    goto :goto_1

    .line 186
    :cond_0
    sub-int v5, v4, v3

    invoke-virtual {v0, v1, v3, v5}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readFully([BII)V

    .line 187
    move v3, v4

    goto :goto_1

    .line 191
    :cond_1
    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-direct {v5, v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>([B)V

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 193
    .end local v1    # "sampleData":[B
    .end local v3    # "read":I
    .end local v4    # "avail":I
    goto :goto_2

    .line 194
    :cond_2
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleFile:Ljava/io/File;

    .line 195
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFilePointer()J

    move-result-wide v8

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v3

    int-to-long v10, v3

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>(Ljava/io/File;JJ)V

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 198
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sm24"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 199
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->largeFormat:Z

    if-nez v1, :cond_6

    .line 200
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 203
    .local v1, "sampleData24":[B
    const/4 v3, 0x0

    .line 204
    .restart local v3    # "read":I
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v4

    .line 205
    .restart local v4    # "avail":I
    :goto_3
    if-eq v3, v4, :cond_5

    .line 206
    sub-int v5, v4, v3

    if-le v5, v2, :cond_4

    .line 207
    invoke-virtual {v0, v1, v3, v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readFully([BII)V

    .line 208
    add-int/2addr v3, v2

    goto :goto_3

    .line 210
    :cond_4
    sub-int v5, v4, v3

    invoke-virtual {v0, v1, v3, v5}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readFully([BII)V

    .line 211
    move v3, v4

    goto :goto_3

    .line 215
    :cond_5
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-direct {v2, v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>([B)V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 216
    .end local v1    # "sampleData24":[B
    .end local v3    # "read":I
    .end local v4    # "avail":I
    goto :goto_4

    .line 217
    :cond_6
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleFile:Ljava/io/File;

    .line 218
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFilePointer()J

    move-result-wide v7

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->available()I

    move-result v2

    int-to-long v9, v2

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>(Ljava/io/File;JJ)V

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->sampleData24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 222
    .end local v0    # "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_7
    :goto_4
    goto/16 :goto_0

    .line 223
    :cond_8
    return-void
.end method

.method private readSoundbank(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFReader;

    invoke-direct {v0, p1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v0, "riff":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sfbk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    :goto_0
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->hasNextChunk()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->nextChunk()Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-result-object v1

    .line 128
    .local v1, "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-direct {p0, v1}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->readInfoChunk(Lcn/sherlock/com/sun/media/sound/RIFFReader;)V

    .line 131
    :cond_0
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sdta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-direct {p0, v1}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->readSdtaChunk(Lcn/sherlock/com/sun/media/sound/RIFFReader;)V

    .line 133
    :cond_1
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pdta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-direct {p0, v1}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->readPdtaChunk(Lcn/sherlock/com/sun/media/sound/RIFFReader;)V

    .line 136
    .end local v1    # "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_2
    goto :goto_0

    .line 137
    :cond_3
    return-void

    .line 123
    :cond_4
    new-instance v1, Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException;

    const-string v2, "Input stream is not a valid SoundFont!"

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_5
    new-instance v1, Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException;

    const-string v2, "Input stream is not a valid RIFF stream!"

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeGenerators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/Map;)V
    .locals 7
    .param p1, "writer"    # Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sherlock/com/sun/media/sound/RIFFWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    .local p2, "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    .line 621
    .local v1, "keyrange":Ljava/lang/Short;
    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    .line 622
    .local v3, "velrange":Ljava/lang/Short;
    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 624
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeShort(S)V

    .line 626
    :cond_0
    if-eqz v3, :cond_1

    .line 627
    invoke-virtual {p1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 628
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeShort(S)V

    .line 630
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 631
    .local v5, "generator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Short;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v0, :cond_2

    .line 632
    goto :goto_0

    .line 633
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 634
    goto :goto_0

    .line 635
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 636
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-virtual {p1, v6}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeShort(S)V

    .line 637
    .end local v5    # "generator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Short;>;"
    goto :goto_0

    .line 638
    :cond_4
    return-void
.end method

.method private writeInfo(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V
    .locals 3
    .param p1, "writer"    # Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 542
    const-string v0, "EMU8000"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    .line 543
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 544
    const-string v0, ""

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    .line 546
    :cond_1
    const-string v0, "ifil"

    invoke-virtual {p1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v0

    .line 547
    .local v0, "ifil_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->major:I

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 548
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->minor:I

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 549
    const-string v1, "isng"

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v1, "INAM"

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v1, "irom"

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMajor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 553
    const-string v1, "iver"

    invoke-virtual {p1, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v1

    .line 554
    .local v1, "iver_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMajor:I

    invoke-virtual {v1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 555
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMinor:I

    invoke-virtual {v1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 557
    .end local v1    # "iver_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    :cond_2
    const-string v1, "ICRD"

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->creationDate:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v1, "IENG"

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->engineers:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "IPRD"

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->product:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "ICOP"

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->copyright:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v1, "ICMT"

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->comments:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v1, "ISFT"

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->tools:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->close()V

    .line 565
    return-void
.end method

.method private writeInfoStringChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "writer"    # Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    if-nez p3, :cond_0

    .line 530
    return-void

    .line 531
    :cond_0
    invoke-virtual {p1, p2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v0

    .line 532
    .local v0, "chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    invoke-virtual {v0, p3}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeString(Ljava/lang/String;)V

    .line 533
    const-string v1, "ascii"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    .line 534
    .local v1, "len":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 535
    add-int/lit8 v1, v1, 0x1

    .line 536
    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 537
    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 538
    :cond_1
    return-void
.end method

.method private writeModulators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/List;)V
    .locals 3
    .param p1, "writer"    # Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sherlock/com/sun/media/sound/RIFFWriter;",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2Modulator;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    .local p2, "modulators":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/SF2Modulator;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;

    .line 610
    .local v1, "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    iget v2, v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->sourceOperator:I

    invoke-virtual {p1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 611
    iget v2, v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->destinationOperator:I

    invoke-virtual {p1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 612
    iget-short v2, v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amount:S

    invoke-virtual {p1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeShort(S)V

    .line 613
    iget v2, v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amountSourceOperator:I

    invoke-virtual {p1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 614
    iget v2, v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->transportOperator:I

    invoke-virtual {p1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 615
    .end local v1    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method

.method private writePdtaChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V
    .locals 29
    .param p1, "writer"    # Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "phdr"

    invoke-virtual {v1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v2

    .line 643
    .local v2, "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    const/4 v3, 0x0

    .line 644
    .local v3, "phdr_zone_count":I
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x14

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 645
    .local v5, "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    iget-object v7, v5, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeString(Ljava/lang/String;I)V

    .line 646
    iget v6, v5, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    invoke-virtual {v2, v6}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 647
    iget v6, v5, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    invoke-virtual {v2, v6}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 648
    invoke-virtual {v2, v3}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 649
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 650
    add-int/lit8 v3, v3, 0x1

    .line 651
    :cond_0
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getRegions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 652
    iget-wide v6, v5, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->library:J

    invoke-virtual {v2, v6, v7}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 653
    iget-wide v6, v5, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->genre:J

    invoke-virtual {v2, v6, v7}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 654
    iget-wide v6, v5, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->morphology:J

    invoke-virtual {v2, v6, v7}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 655
    .end local v5    # "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    goto :goto_0

    .line 656
    :cond_1
    const-string v4, "EOP"

    invoke-virtual {v2, v4, v6}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeString(Ljava/lang/String;I)V

    .line 657
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 658
    invoke-virtual {v2, v4}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 659
    invoke-virtual {v2, v3}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 660
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 661
    invoke-virtual {v2, v4, v5}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 662
    invoke-virtual {v2, v4, v5}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 665
    const-string/jumbo v4, "pbag"

    invoke-virtual {v1, v4}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v4

    .line 666
    .local v4, "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    const/4 v5, 0x0

    .line 667
    .local v5, "pbag_gencount":I
    const/4 v7, 0x0

    .line 668
    .local v7, "pbag_modcount":I
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 669
    .local v9, "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 670
    invoke-virtual {v4, v5}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 671
    invoke-virtual {v4, v7}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 672
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v11

    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getGenerators()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    add-int/2addr v5, v11

    .line 673
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v11

    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getModulators()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v7, v11

    .line 675
    :cond_2
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getRegions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;

    .line 676
    .local v12, "region":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    invoke-virtual {v4, v5}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 677
    invoke-virtual {v4, v7}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 678
    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    iget-object v14, v12, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->layer:Lcn/sherlock/com/sun/media/sound/SF2Layer;

    invoke-interface {v13, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-eq v13, v10, :cond_3

    .line 680
    add-int/lit8 v5, v5, 0x1

    .line 682
    :cond_3
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getGenerators()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    add-int/2addr v5, v13

    .line 683
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getModulators()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v7, v13

    .line 685
    .end local v12    # "region":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    goto :goto_2

    .line 686
    .end local v9    # "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    :cond_4
    goto :goto_1

    .line 687
    :cond_5
    invoke-virtual {v4, v5}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 688
    invoke-virtual {v4, v7}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 690
    const-string/jumbo v8, "pmod"

    invoke-virtual {v1, v8}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v8

    .line 691
    .local v8, "pmod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 692
    .local v11, "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 693
    nop

    .line 694
    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v12

    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getModulators()Ljava/util/List;

    move-result-object v12

    .line 693
    invoke-direct {v0, v8, v12}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeModulators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/List;)V

    .line 696
    :cond_6
    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getRegions()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;

    .line 697
    .local v13, "region":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getModulators()Ljava/util/List;

    move-result-object v14

    invoke-direct {v0, v8, v14}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeModulators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/List;)V

    .end local v13    # "region":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    goto :goto_4

    .line 698
    .end local v11    # "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    :cond_7
    goto :goto_3

    .line 699
    :cond_8
    const/16 v9, 0xa

    new-array v11, v9, [B

    invoke-virtual {v8, v11}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 701
    const-string/jumbo v11, "pgen"

    invoke-virtual {v1, v11}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v11

    .line 702
    .local v11, "pgen_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 703
    .local v13, "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 704
    nop

    .line 705
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v14

    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getGenerators()Ljava/util/Map;

    move-result-object v14

    .line 704
    invoke-direct {v0, v11, v14}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeGenerators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/Map;)V

    .line 707
    :cond_9
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getRegions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;

    .line 708
    .local v15, "region":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    invoke-virtual {v15}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getGenerators()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v0, v11, v9}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeGenerators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/Map;)V

    .line 709
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    iget-object v6, v15, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->layer:Lcn/sherlock/com/sun/media/sound/SF2Layer;

    invoke-interface {v9, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 710
    .local v6, "ix":I
    if-eq v6, v10, :cond_a

    .line 711
    const/16 v9, 0x29

    invoke-virtual {v11, v9}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 712
    int-to-short v9, v6

    invoke-virtual {v11, v9}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeShort(S)V

    .line 714
    .end local v6    # "ix":I
    .end local v15    # "region":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    :cond_a
    const/16 v6, 0x14

    const/16 v9, 0xa

    goto :goto_6

    .line 715
    .end local v13    # "preset":Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    :cond_b
    const/16 v6, 0x14

    const/16 v9, 0xa

    goto :goto_5

    .line 716
    :cond_c
    const/4 v6, 0x4

    new-array v9, v6, [B

    invoke-virtual {v11, v9}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 718
    const-string v9, "inst"

    invoke-virtual {v1, v9}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v9

    .line 719
    .local v9, "inst_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    const/4 v12, 0x0

    .line 720
    .local v12, "inst_zone_count":I
    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    .line 721
    .local v14, "instrument":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    iget-object v15, v14, Lcn/sherlock/com/sun/media/sound/SF2Layer;->name:Ljava/lang/String;

    const/16 v6, 0x14

    invoke-virtual {v9, v15, v6}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeString(Ljava/lang/String;I)V

    .line 722
    invoke-virtual {v9, v12}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 723
    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 724
    add-int/lit8 v12, v12, 0x1

    .line 725
    :cond_d
    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v12, v6

    .line 726
    .end local v14    # "instrument":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    const/4 v6, 0x4

    goto :goto_7

    .line 727
    :cond_e
    const-string v6, "EOI"

    const/16 v13, 0x14

    invoke-virtual {v9, v6, v13}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeString(Ljava/lang/String;I)V

    .line 728
    invoke-virtual {v9, v12}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 731
    const-string v6, "ibag"

    invoke-virtual {v1, v6}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v6

    .line 732
    .local v6, "ibag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    const/4 v13, 0x0

    .line 733
    .local v13, "ibag_gencount":I
    const/4 v14, 0x0

    .line 734
    .local v14, "ibag_modcount":I
    iget-object v15, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    .line 735
    .local v18, "instrument":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    invoke-virtual/range {v18 .. v18}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v19

    if-eqz v19, :cond_f

    .line 736
    invoke-virtual {v6, v13}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 737
    invoke-virtual {v6, v14}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 738
    nop

    .line 739
    invoke-virtual/range {v18 .. v18}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getGenerators()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v19

    add-int v13, v13, v19

    .line 740
    nop

    .line 741
    invoke-virtual/range {v18 .. v18}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getModulators()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int v14, v14, v19

    .line 743
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v10, v20

    check-cast v10, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;

    .line 744
    .local v10, "region":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    invoke-virtual {v6, v13}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 745
    invoke-virtual {v6, v14}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 746
    move-object/from16 v20, v2

    .end local v2    # "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .local v20, "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    move/from16 v22, v3

    .end local v3    # "phdr_zone_count":I
    .local v22, "phdr_zone_count":I
    iget-object v3, v10, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->sample:Lcn/sherlock/com/sun/media/sound/SF2Sample;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 748
    add-int/lit8 v13, v13, 0x1

    .line 750
    :cond_10
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getGenerators()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v13, v2

    .line 751
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getModulators()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v14, v2

    .line 753
    .end local v10    # "region":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    move-object/from16 v2, v20

    move/from16 v3, v22

    const/4 v10, -0x1

    goto :goto_9

    .line 743
    .end local v20    # "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v22    # "phdr_zone_count":I
    .restart local v2    # "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v3    # "phdr_zone_count":I
    :cond_11
    move-object/from16 v20, v2

    move/from16 v22, v3

    .line 754
    .end local v2    # "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v3    # "phdr_zone_count":I
    .end local v18    # "instrument":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .restart local v20    # "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v22    # "phdr_zone_count":I
    const/4 v10, -0x1

    goto/16 :goto_8

    .line 755
    .end local v20    # "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v22    # "phdr_zone_count":I
    .restart local v2    # "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v3    # "phdr_zone_count":I
    :cond_12
    move-object/from16 v20, v2

    move/from16 v22, v3

    .end local v2    # "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v3    # "phdr_zone_count":I
    .restart local v20    # "phdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v22    # "phdr_zone_count":I
    invoke-virtual {v6, v13}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 756
    invoke-virtual {v6, v14}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 759
    const-string v2, "imod"

    invoke-virtual {v1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v2

    .line 760
    .local v2, "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    .line 761
    .local v10, "instrument":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v15

    if-eqz v15, :cond_13

    .line 762
    nop

    .line 763
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v15

    invoke-virtual {v15}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getModulators()Ljava/util/List;

    move-result-object v15

    .line 762
    invoke-direct {v0, v2, v15}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeModulators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/List;)V

    .line 765
    :cond_13
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;

    .line 766
    .local v18, "region":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v18}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getModulators()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeModulators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/List;)V

    move-object/from16 v3, v19

    .end local v18    # "region":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    goto :goto_b

    .line 765
    :cond_14
    move-object/from16 v19, v3

    .line 767
    .end local v10    # "instrument":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    goto :goto_a

    .line 768
    :cond_15
    const/16 v3, 0xa

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 770
    const-string v3, "igen"

    invoke-virtual {v1, v3}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v3

    .line 771
    .local v3, "igen_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    .line 772
    .local v15, "instrument":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    invoke-virtual {v15}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v16

    if-eqz v16, :cond_16

    .line 773
    nop

    .line 774
    invoke-virtual {v15}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v16

    move-object/from16 v18, v2

    .end local v2    # "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .local v18, "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    invoke-virtual/range {v16 .. v16}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getGenerators()Ljava/util/Map;

    move-result-object v2

    .line 773
    invoke-direct {v0, v3, v2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeGenerators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/Map;)V

    goto :goto_d

    .line 772
    .end local v18    # "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v2    # "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    :cond_16
    move-object/from16 v18, v2

    .line 776
    .end local v2    # "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v18    # "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    :goto_d
    invoke-virtual {v15}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v2

    move-object/from16 v2, v16

    check-cast v2, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;

    .line 777
    .local v2, "region":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    move-object/from16 v16, v4

    .end local v4    # "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .local v16, "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getGenerators()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeGenerators(Lcn/sherlock/com/sun/media/sound/RIFFWriter;Ljava/util/Map;)V

    .line 778
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    move/from16 v23, v5

    .end local v5    # "pbag_gencount":I
    .local v23, "pbag_gencount":I
    iget-object v5, v2, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->sample:Lcn/sherlock/com/sun/media/sound/SF2Sample;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 779
    .local v4, "ix":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    .line 780
    const/16 v5, 0x35

    invoke-virtual {v3, v5}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 781
    int-to-short v5, v4

    invoke-virtual {v3, v5}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeShort(S)V

    .line 783
    .end local v2    # "region":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    .end local v4    # "ix":I
    :cond_17
    move-object/from16 v4, v16

    move-object/from16 v2, v19

    move/from16 v5, v23

    goto :goto_e

    .line 776
    .end local v16    # "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v23    # "pbag_gencount":I
    .local v4, "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v5    # "pbag_gencount":I
    :cond_18
    move-object/from16 v16, v4

    move/from16 v23, v5

    .line 784
    .end local v4    # "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v5    # "pbag_gencount":I
    .end local v15    # "instrument":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .restart local v16    # "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v23    # "pbag_gencount":I
    move-object/from16 v2, v18

    goto :goto_c

    .line 785
    .end local v16    # "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v18    # "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v23    # "pbag_gencount":I
    .local v2, "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v4    # "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v5    # "pbag_gencount":I
    :cond_19
    move-object/from16 v18, v2

    move-object/from16 v16, v4

    move/from16 v23, v5

    .end local v2    # "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v4    # "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v5    # "pbag_gencount":I
    .restart local v16    # "pbag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v18    # "imod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v23    # "pbag_gencount":I
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 788
    const-string/jumbo v2, "shdr"

    invoke-virtual {v1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v2

    .line 789
    .local v2, "shdr_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    const-wide/16 v4, 0x0

    .line 790
    .local v4, "sample_pos":J
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    .line 791
    .local v15, "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    iget-object v0, v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;->name:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {v2, v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeString(Ljava/lang/String;I)V

    .line 792
    move-wide v0, v4

    .line 793
    .local v0, "start":J
    move-object/from16 v17, v3

    .end local v3    # "igen_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .local v17, "igen_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-object v3, v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v24

    const-wide/16 v26, 0x2

    div-long v24, v24, v26

    add-long v4, v4, v24

    .line 794
    move-wide/from16 v24, v4

    .line 795
    .local v24, "end":J
    move-object/from16 v19, v6

    move v3, v7

    .end local v6    # "ibag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v7    # "pbag_modcount":I
    .local v3, "pbag_modcount":I
    .local v19, "ibag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-wide v6, v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    add-long/2addr v6, v0

    .line 796
    .local v6, "startLoop":J
    move-object/from16 v21, v8

    move-object/from16 v26, v9

    .end local v8    # "pmod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v9    # "inst_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .local v21, "pmod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .local v26, "inst_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-wide v8, v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    add-long/2addr v8, v0

    .line 797
    .local v8, "endLoop":J
    cmp-long v27, v6, v0

    if-gez v27, :cond_1a

    .line 798
    move-wide v6, v0

    .line 799
    :cond_1a
    cmp-long v27, v8, v24

    if-lez v27, :cond_1b

    .line 800
    move-wide/from16 v8, v24

    .line 801
    :cond_1b
    invoke-virtual {v2, v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 802
    move-wide/from16 v27, v0

    move-wide/from16 v0, v24

    .end local v24    # "end":J
    .local v0, "end":J
    .local v27, "start":J
    invoke-virtual {v2, v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 803
    invoke-virtual {v2, v6, v7}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 804
    invoke-virtual {v2, v8, v9}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 805
    nop

    .end local v0    # "end":J
    .restart local v24    # "end":J
    iget-wide v0, v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleRate:J

    invoke-virtual {v2, v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 806
    iget v0, v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;->originalPitch:I

    invoke-virtual {v2, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedByte(I)V

    .line 807
    iget-byte v0, v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;->pitchCorrection:B

    invoke-virtual {v2, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeByte(I)V

    .line 808
    iget v0, v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleLink:I

    invoke-virtual {v2, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 809
    iget v0, v15, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleType:I

    invoke-virtual {v2, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedShort(I)V

    .line 810
    const-wide/16 v0, 0x20

    add-long/2addr v4, v0

    .line 811
    .end local v6    # "startLoop":J
    .end local v8    # "endLoop":J
    .end local v15    # "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    .end local v24    # "end":J
    .end local v27    # "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v7, v3

    move-object/from16 v3, v17

    move-object/from16 v6, v19

    move-object/from16 v8, v21

    move-object/from16 v9, v26

    goto :goto_f

    .line 812
    .end local v17    # "igen_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v19    # "ibag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v21    # "pmod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .end local v26    # "inst_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .local v3, "igen_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .local v6, "ibag_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v7    # "pbag_modcount":I
    .local v8, "pmod_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .restart local v9    # "inst_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    :cond_1c
    const-string v0, "EOS"

    const/16 v1, 0x14

    invoke-virtual {v2, v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeString(Ljava/lang/String;I)V

    .line 813
    const/16 v0, 0x1a

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 815
    return-void
.end method

.method private writeSdtaChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V
    .locals 6
    .param p1, "writer"    # Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 571
    .local v0, "pad":[B
    const-string/jumbo v1, "smpl"

    invoke-virtual {p1, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v1

    .line 572
    .local v1, "smpl_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    .line 573
    .local v3, "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SF2Sample;->getDataBuffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v4

    .line 574
    .local v4, "data":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    invoke-virtual {v4, v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->writeTo(Ljava/io/OutputStream;)V

    .line 580
    invoke-virtual {v1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 581
    invoke-virtual {v1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 582
    .end local v3    # "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    .end local v4    # "data":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    goto :goto_0

    .line 583
    :cond_0
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->major:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 584
    return-void

    .line 585
    :cond_1
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->major:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->minor:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 586
    return-void

    .line 589
    :cond_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    .line 590
    .restart local v3    # "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SF2Sample;->getData24Buffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v4

    .line 591
    .local v4, "data24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    if-nez v4, :cond_3

    .line 592
    return-void

    .line 593
    .end local v3    # "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    .end local v4    # "data24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    :cond_3
    goto :goto_1

    .line 595
    :cond_4
    const-string/jumbo v2, "sm24"

    invoke-virtual {p1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v2

    .line 596
    .local v2, "sm24_chunk":Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    .line 597
    .local v4, "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SF2Sample;->getData24Buffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v5

    .line 598
    .local v5, "data":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    invoke-virtual {v5, v2}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->writeTo(Ljava/io/OutputStream;)V

    .line 603
    invoke-virtual {v1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 604
    .end local v4    # "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    .end local v5    # "data":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    goto :goto_2

    .line 605
    :cond_5
    return-void
.end method

.method private writeSoundbank(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V
    .locals 1
    .param p1, "writer"    # Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    const-string v0, "INFO"

    invoke-virtual {p1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeList(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeInfo(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V

    .line 522
    const-string/jumbo v0, "sdta"

    invoke-virtual {p1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeList(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeSdtaChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V

    .line 523
    const-string/jumbo v0, "pdta"

    invoke-virtual {p1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeList(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writePdtaChunk(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V

    .line 524
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->close()V

    .line 525
    return-void
.end method


# virtual methods
.method public addInstrument(Lcn/sherlock/com/sun/media/sound/SF2Instrument;)V
    .locals 1
    .param p1, "resource"    # Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 967
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    return-void
.end method

.method public addResource(Ljp/kshoji/javax/sound/midi/SoundbankResource;)V
    .locals 2
    .param p1, "resource"    # Ljp/kshoji/javax/sound/midi/SoundbankResource;

    .line 949
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    :cond_0
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_1
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    :cond_2
    return-void
.end method

.method public getCreationDate()Ljava/lang/String;
    .locals 1

    .line 893
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->creationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 830
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrument(Ljp/kshoji/javax/sound/midi/Patch;)Ljp/kshoji/javax/sound/midi/Instrument;
    .locals 10
    .param p1, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;

    .line 872
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v0

    .line 873
    .local v0, "program":I
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v1

    .line 874
    .local v1, "bank":I
    const/4 v2, 0x0

    .line 875
    .local v2, "percussion":Z
    instance-of v3, p1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v3, :cond_0

    .line 876
    move-object v3, p1

    check-cast v3, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v2

    .line 877
    :cond_0
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/kshoji/javax/sound/midi/Instrument;

    .line 878
    .local v4, "instrument":Ljp/kshoji/javax/sound/midi/Instrument;
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/Instrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v5

    .line 879
    .local v5, "patch2":Ljp/kshoji/javax/sound/midi/Patch;
    invoke-virtual {v5}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v6

    .line 880
    .local v6, "program2":I
    invoke-virtual {v5}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v7

    .line 881
    .local v7, "bank2":I
    if-ne v0, v6, :cond_2

    if-ne v1, v7, :cond_2

    .line 882
    const/4 v8, 0x0

    .line 883
    .local v8, "percussion2":Z
    instance-of v9, v5, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v9, :cond_1

    .line 884
    move-object v9, v5

    check-cast v9, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v8

    .line 885
    :cond_1
    if-ne v2, v8, :cond_2

    .line 886
    return-object v4

    .line 888
    .end local v4    # "instrument":Ljp/kshoji/javax/sound/midi/Instrument;
    .end local v5    # "patch2":Ljp/kshoji/javax/sound/midi/Patch;
    .end local v6    # "program2":I
    .end local v7    # "bank2":I
    .end local v8    # "percussion2":Z
    :cond_2
    goto :goto_0

    .line 889
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public getInstruments()[Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    .locals 2

    .line 857
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    .line 858
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 859
    .local v0, "inslist_array":[Lcn/sherlock/com/sun/media/sound/SF2Instrument;
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 860
    return-object v0
.end method

.method public bridge synthetic getInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->getInstruments()[Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    move-result-object v0

    return-object v0
.end method

.method public getLayers()[Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .locals 2

    .line 864
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/sherlock/com/sun/media/sound/SF2Layer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sherlock/com/sun/media/sound/SF2Layer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 818
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 901
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()[Ljp/kshoji/javax/sound/midi/SoundbankResource;
    .locals 5

    .line 846
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    .line 847
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/SoundbankResource;

    .line 848
    .local v0, "resources":[Ljp/kshoji/javax/sound/midi/SoundbankResource;
    const/4 v1, 0x0

    .line 849
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 850
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/kshoji/javax/sound/midi/SoundbankResource;

    aput-object v4, v0, v1

    .line 849
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    .line 851
    .end local v2    # "i":I
    .end local v3    # "j":I
    .restart local v1    # "j":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 852
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .restart local v3    # "j":I
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/kshoji/javax/sound/midi/SoundbankResource;

    aput-object v4, v0, v1

    .line 851
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_1

    .line 853
    .end local v2    # "i":I
    .end local v3    # "j":I
    .restart local v1    # "j":I
    :cond_1
    return-object v0
.end method

.method public getRomName()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romName:Ljava/lang/String;

    return-object v0
.end method

.method public getRomVersionMajor()I
    .locals 1

    .line 917
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMajor:I

    return v0
.end method

.method public getRomVersionMinor()I
    .locals 1

    .line 925
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMinor:I

    return v0
.end method

.method public getSamples()[Lcn/sherlock/com/sun/media/sound/SF2Sample;
    .locals 2

    .line 868
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/sherlock/com/sun/media/sound/SF2Sample;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sherlock/com/sun/media/sound/SF2Sample;

    return-object v0
.end method

.method public getTargetEngine()Ljava/lang/String;
    .locals 1

    .line 933
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    return-object v0
.end method

.method public getTools()Ljava/lang/String;
    .locals 1

    .line 941
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->tools:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 826
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->engineers:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeInstrument(Lcn/sherlock/com/sun/media/sound/SF2Instrument;)V
    .locals 1
    .param p1, "resource"    # Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 971
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 972
    return-void
.end method

.method public removeResource(Ljp/kshoji/javax/sound/midi/SoundbankResource;)V
    .locals 2
    .param p1, "resource"    # Ljp/kshoji/javax/sound/midi/SoundbankResource;

    .line 958
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->instruments:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 960
    :cond_0
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->layers:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Layer;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 962
    :cond_1
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    if-eqz v0, :cond_2

    .line 963
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->samples:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Sample;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 964
    :cond_2
    return-void
.end method

.method public save(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    const-string/jumbo v1, "sfbk"

    invoke-direct {v0, p1, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeSoundbank(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V

    .line 514
    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    const-string/jumbo v1, "sfbk"

    invoke-direct {v0, p1, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeSoundbank(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V

    .line 518
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    const-string/jumbo v1, "sfbk"

    invoke-direct {v0, p1, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->writeSoundbank(Lcn/sherlock/com/sun/media/sound/RIFFWriter;)V

    .line 510
    return-void
.end method

.method public setCreationDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "creationDate"    # Ljava/lang/String;

    .line 897
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->creationDate:Ljava/lang/String;

    .line 898
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 842
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->comments:Ljava/lang/String;

    .line 843
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 834
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->name:Ljava/lang/String;

    .line 835
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .line 905
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->product:Ljava/lang/String;

    .line 906
    return-void
.end method

.method public setRomName(Ljava/lang/String;)V
    .locals 0
    .param p1, "romName"    # Ljava/lang/String;

    .line 913
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romName:Ljava/lang/String;

    .line 914
    return-void
.end method

.method public setRomVersionMajor(I)V
    .locals 0
    .param p1, "romVersionMajor"    # I

    .line 921
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMajor:I

    .line 922
    return-void
.end method

.method public setRomVersionMinor(I)V
    .locals 0
    .param p1, "romVersionMinor"    # I

    .line 929
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->romVersionMinor:I

    .line 930
    return-void
.end method

.method public setTargetEngine(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetEngine"    # Ljava/lang/String;

    .line 937
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->targetEngine:Ljava/lang/String;

    .line 938
    return-void
.end method

.method public setTools(Ljava/lang/String;)V
    .locals 0
    .param p1, "tools"    # Ljava/lang/String;

    .line 945
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->tools:Ljava/lang/String;

    .line 946
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 838
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;->engineers:Ljava/lang/String;

    .line 839
    return-void
.end method
