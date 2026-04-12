.class public Lcn/sherlock/com/sun/media/sound/SF2Sample;
.super Ljp/kshoji/javax/sound/midi/SoundbankResource;
.source "SF2Sample.java"


# instance fields
.field protected data:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

.field protected data24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

.field protected endLoop:J

.field protected name:Ljava/lang/String;

.field protected originalPitch:I

.field protected pitchCorrection:B

.field protected sampleLink:I

.field protected sampleRate:J

.field protected sampleType:I

.field protected startLoop:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    const/4 v0, 0x0

    const-class v1, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-direct {p0, v0, v0, v1}, Ljp/kshoji/javax/sound/midi/SoundbankResource;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->name:Ljava/lang/String;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    .line 43
    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    .line 44
    const-wide/32 v0, 0xac44

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleRate:J

    .line 45
    const/16 v0, 0x3c

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->originalPitch:I

    .line 46
    const/4 v0, 0x0

    iput-byte v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->pitchCorrection:B

    .line 47
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleLink:I

    .line 48
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleType:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljp/kshoji/javax/sound/midi/Soundbank;)V
    .locals 2
    .param p1, "soundBank"    # Ljp/kshoji/javax/sound/midi/Soundbank;

    .line 53
    const/4 v0, 0x0

    const-class v1, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-direct {p0, p1, v0, v1}, Ljp/kshoji/javax/sound/midi/SoundbankResource;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->name:Ljava/lang/String;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    .line 43
    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    .line 44
    const-wide/32 v0, 0xac44

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleRate:J

    .line 45
    const/16 v0, 0x3c

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->originalPitch:I

    .line 46
    const/4 v0, 0x0

    iput-byte v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->pitchCorrection:B

    .line 47
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleLink:I

    .line 48
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleType:I

    .line 54
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 5

    .line 62
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SF2Sample;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    .line 98
    .local v0, "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 99
    .local v1, "is":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 100
    const/4 v2, 0x0

    return-object v2

    .line 101
    :cond_0
    new-instance v2, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v3

    invoke-direct {v2, v1, v0, v3, v4}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    return-object v2
.end method

.method public getData24Buffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 1

    .line 109
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    return-object v0
.end method

.method public getDataBuffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 1

    .line 105
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    return-object v0
.end method

.method public getEndLoop()J
    .locals 2

    .line 158
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    return-wide v0
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 7

    .line 113
    new-instance v6, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleRate:J

    long-to-float v1, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(FIIZZ)V

    return-object v6
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPitch()I
    .locals 1

    .line 166
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->originalPitch:I

    return v0
.end method

.method public getPitchCorrection()B
    .locals 1

    .line 174
    iget-byte v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->pitchCorrection:B

    return v0
.end method

.method public getSampleLink()I
    .locals 1

    .line 182
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleLink:I

    return v0
.end method

.method public getSampleRate()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleRate:J

    return-wide v0
.end method

.method public getSampleType()I
    .locals 1

    .line 198
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleType:I

    return v0
.end method

.method public getStartLoop()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    return-wide v0
.end method

.method public setData(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)V
    .locals 0
    .param p1, "data"    # Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 117
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 118
    return-void
.end method

.method public setData([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 121
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-direct {v0, p1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>([B)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 122
    return-void
.end method

.method public setData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 125
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>([BII)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 126
    return-void
.end method

.method public setData24(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)V
    .locals 0
    .param p1, "data24"    # Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 129
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 130
    return-void
.end method

.method public setData24([B)V
    .locals 1
    .param p1, "data24"    # [B

    .line 133
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-direct {v0, p1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>([B)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 134
    return-void
.end method

.method public setData24([BII)V
    .locals 1
    .param p1, "data24"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 137
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>([BII)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->data24:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 138
    return-void
.end method

.method public setEndLoop(J)V
    .locals 0
    .param p1, "endLoop"    # J

    .line 162
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    .line 163
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->name:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setOriginalPitch(I)V
    .locals 0
    .param p1, "originalPitch"    # I

    .line 170
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->originalPitch:I

    .line 171
    return-void
.end method

.method public setPitchCorrection(B)V
    .locals 0
    .param p1, "pitchCorrection"    # B

    .line 178
    iput-byte p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->pitchCorrection:B

    .line 179
    return-void
.end method

.method public setSampleLink(I)V
    .locals 0
    .param p1, "sampleLink"    # I

    .line 186
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleLink:I

    .line 187
    return-void
.end method

.method public setSampleRate(J)V
    .locals 0
    .param p1, "sampleRate"    # J

    .line 194
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleRate:J

    .line 195
    return-void
.end method

.method public setSampleType(I)V
    .locals 0
    .param p1, "sampleType"    # I

    .line 202
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->sampleType:I

    .line 203
    return-void
.end method

.method public setStartLoop(J)V
    .locals 0
    .param p1, "startLoop"    # J

    .line 210
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sample: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Sample;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
