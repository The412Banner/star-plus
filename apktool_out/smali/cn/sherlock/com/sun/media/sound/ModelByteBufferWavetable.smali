.class public Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
.super Ljava/lang/Object;
.source "ModelByteBufferWavetable.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelWavetable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;
    }
.end annotation


# instance fields
.field private attenuation:F

.field private buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

.field private buffer8:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

.field private format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

.field private loopLength:F

.field private loopStart:F

.field private loopType:I

.field private pitchcorrection:F


# direct methods
.method static bridge synthetic -$$Nest$fgetbuffer(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbuffer8(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer8:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetformat(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object p0
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopStart:F

    .line 130
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopLength:F

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer8:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 133
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->pitchcorrection:F

    .line 135
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->attenuation:F

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopType:I

    .line 139
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;F)V
    .locals 1
    .param p1, "buffer"    # Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .param p2, "pitchcorrection"    # F

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopStart:F

    .line 130
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopLength:F

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer8:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 133
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->pitchcorrection:F

    .line 135
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->attenuation:F

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopType:I

    .line 144
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 145
    iput p2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->pitchcorrection:F

    .line 146
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;Lcn/sherlock/javax/sound/sampled/AudioFormat;)V
    .locals 1
    .param p1, "buffer"    # Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopStart:F

    .line 130
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopLength:F

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer8:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 133
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->pitchcorrection:F

    .line 135
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->attenuation:F

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopType:I

    .line 149
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 150
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 151
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;Lcn/sherlock/javax/sound/sampled/AudioFormat;F)V
    .locals 1
    .param p1, "buffer"    # Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p3, "pitchcorrection"    # F

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopStart:F

    .line 130
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopLength:F

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer8:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 133
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->pitchcorrection:F

    .line 135
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->attenuation:F

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopType:I

    .line 155
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 156
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 157
    iput p3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->pitchcorrection:F

    .line 158
    return-void
.end method


# virtual methods
.method public get8BitExtensionBuffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 1

    .line 165
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer8:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    return-object v0
.end method

.method public getAttenuation()F
    .locals 1

    .line 245
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->attenuation:F

    return v0
.end method

.method public getBuffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    return-object v0
.end method

.method public getChannels()I
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    return v0
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 3

    .line 173
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 177
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 179
    .local v1, "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    :try_start_0
    invoke-static {v0}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v2

    .line 184
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    goto :goto_1

    .line 185
    :catch_1
    move-exception v2

    .line 188
    :goto_1
    return-object v1

    .line 190
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getLoopLength()F
    .locals 1

    .line 253
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopLength:F

    return v0
.end method

.method public getLoopStart()F
    .locals 1

    .line 261
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopStart:F

    return v0
.end method

.method public getLoopType()I
    .locals 1

    .line 273
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopType:I

    return v0
.end method

.method public getPitchcorrection()F
    .locals 1

    .line 277
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->pitchcorrection:F

    return v0
.end method

.method public open(F)Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;
    .locals 1
    .param p1, "samplerate"    # F

    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public openStream()Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
    .locals 10

    .line 194
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 195
    return-object v1

    .line 196
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 198
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 200
    .local v2, "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    :try_start_0
    invoke-static {v0}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v2    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .local v1, "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    nop

    .line 205
    invoke-static {v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getInputStream(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    move-result-object v2

    return-object v2

    .line 201
    .end local v1    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .restart local v2    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    :catch_0
    move-exception v3

    .line 203
    .local v3, "e":Ljava/lang/Exception;
    return-object v1

    .line 207
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->array()[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 208
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 209
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 210
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v3

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v5}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    .line 208
    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getInputStream(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    move-result-object v0

    return-object v0

    .line 212
    :cond_2
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer8:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v0

    sget-object v1, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 214
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v0

    sget-object v1, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    :cond_3
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable$Buffer8PlusInputStream;-><init>(Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;)V

    .line 216
    .restart local v0    # "is":Ljava/io/InputStream;
    new-instance v9, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 217
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v2

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 218
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 219
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    add-int/lit8 v4, v1, 0x8

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 220
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v5

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 221
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v1

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v6}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v1

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 222
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v7

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 223
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    .line 225
    .local v1, "format2":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    new-instance v2, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 226
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v3

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v5}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-direct {v2, v0, v1, v3, v4}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    .line 227
    .restart local v2    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    invoke-static {v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getInputStream(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    move-result-object v3

    return-object v3

    .line 230
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "format2":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .end local v2    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    :cond_4
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 231
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v3

    long-to-int v3, v3

    .line 230
    invoke-static {v0, v1, v2, v3}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;[BII)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    move-result-object v0

    return-object v0
.end method

.method public set8BitExtensionBuffer(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 161
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->buffer8:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 162
    return-void
.end method

.method public setAttenuation(F)V
    .locals 0
    .param p1, "attenuation"    # F

    .line 249
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->attenuation:F

    .line 250
    return-void
.end method

.method public setLoopLength(F)V
    .locals 0
    .param p1, "loopLength"    # F

    .line 257
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopLength:F

    .line 258
    return-void
.end method

.method public setLoopStart(F)V
    .locals 0
    .param p1, "loopStart"    # F

    .line 265
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopStart:F

    .line 266
    return-void
.end method

.method public setLoopType(I)V
    .locals 0
    .param p1, "loopType"    # I

    .line 269
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->loopType:I

    .line 270
    return-void
.end method

.method public setPitchcorrection(F)V
    .locals 0
    .param p1, "pitchcorrection"    # F

    .line 281
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->pitchcorrection:F

    .line 282
    return-void
.end method
