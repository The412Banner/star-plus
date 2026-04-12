.class public Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
.super Ljava/lang/Object;
.source "SoftAudioBuffer.java"


# instance fields
.field private buffer:[F

.field private converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

.field private converter_buffer:[B

.field private empty:Z

.field private format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

.field private size:I


# direct methods
.method public constructor <init>(ILcn/sherlock/javax/sound/sampled/AudioFormat;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->empty:Z

    .line 46
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    .line 47
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 48
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 49
    return-void
.end method


# virtual methods
.method public array()[F
    .locals 1

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->empty:Z

    .line 96
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->buffer:[F

    if-nez v0, :cond_0

    .line 97
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->buffer:[F

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->buffer:[F

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->empty:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->buffer:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->empty:Z

    .line 88
    :cond_0
    return-void
.end method

.method public get([BI)V
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "channel"    # I

    .line 103
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    div-int/2addr v0, v1

    .line 104
    .local v0, "framesize_pc":I
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    mul-int/2addr v1, v0

    .line 105
    .local v1, "c_len":I
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter_buffer:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter_buffer:[B

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 106
    :cond_0
    new-array v2, v1, [B

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter_buffer:[B

    .line 108
    :cond_1
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 109
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v3

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    invoke-virtual {v2, v3, v4, p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toByteArray([FI[B)[B

    goto :goto_2

    .line 111
    :cond_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v3

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter_buffer:[B

    invoke-virtual {v2, v3, v4, v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toByteArray([FI[B)[B

    .line 112
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v2

    if-lt p2, v2, :cond_3

    .line 113
    return-void

    .line 114
    :cond_3
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v2

    mul-int/2addr v2, v0

    .line 115
    .local v2, "z_stepover":I
    move v3, v0

    .line 116
    .local v3, "k_stepover":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 117
    move v5, v4

    .line 118
    .local v5, "k":I
    mul-int v6, p2, v0

    add-int/2addr v6, v4

    .line 119
    .local v6, "z":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v8, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    if-ge v7, v8, :cond_4

    .line 120
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter_buffer:[B

    aget-byte v8, v8, v5

    aput-byte v8, p1, v6

    .line 121
    add-int/2addr v6, v2

    .line 122
    add-int/2addr v5, v3

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 116
    .end local v5    # "k":I
    .end local v6    # "z":I
    .end local v7    # "i":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "z_stepover":I
    .end local v3    # "k_stepover":I
    .end local v4    # "j":I
    :cond_5
    :goto_2
    return-void
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 80
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    return v0
.end method

.method public isSilent()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->empty:Z

    return v0
.end method

.method public swap(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 7
    .param p1, "swap"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 53
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    .line 54
    .local v0, "bak_size":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->buffer:[F

    .line 55
    .local v1, "bak_buffer":[F
    iget-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->empty:Z

    .line 56
    .local v2, "bak_empty":Z
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 57
    .local v3, "bak_format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 58
    .local v4, "bak_converter":Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter_buffer:[B

    .line 60
    .local v5, "bak_converter_buffer":[B
    iget v6, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    iput v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    .line 61
    iget-object v6, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->buffer:[F

    iput-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->buffer:[F

    .line 62
    iget-boolean v6, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->empty:Z

    iput-boolean v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->empty:Z

    .line 63
    iget-object v6, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    iput-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 64
    iget-object v6, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    iput-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 65
    iget-object v6, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter_buffer:[B

    iput-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter_buffer:[B

    .line 67
    iput v0, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->size:I

    .line 68
    iput-object v1, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->buffer:[F

    .line 69
    iput-boolean v2, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->empty:Z

    .line 70
    iput-object v3, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 71
    iput-object v4, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 72
    iput-object v5, p1, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->converter_buffer:[B

    .line 73
    return-void
.end method
