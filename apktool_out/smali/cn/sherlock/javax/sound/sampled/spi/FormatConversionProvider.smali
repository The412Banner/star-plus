.class public abstract Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;
.super Ljava/lang/Object;
.source "FormatConversionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
.end method

.method public abstract getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
.end method

.method public abstract getSourceEncodings()[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
.end method

.method public abstract getTargetEncodings()[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
.end method

.method public abstract getTargetEncodings(Lcn/sherlock/javax/sound/sampled/AudioFormat;)[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
.end method

.method public abstract getTargetFormats(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioFormat;)[Lcn/sherlock/javax/sound/sampled/AudioFormat;
.end method

.method public isConversionSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z
    .locals 3
    .param p1, "targetEncoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .param p2, "sourceFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 142
    invoke-virtual {p0, p2}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;->getTargetEncodings(Lcn/sherlock/javax/sound/sampled/AudioFormat;)[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v0

    .line 144
    .local v0, "targetEncodings":[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 145
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const/4 v2, 0x1

    return v2

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isConversionSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z
    .locals 3
    .param p1, "targetFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p2, "sourceFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 180
    nop

    .line 181
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v0

    .line 180
    invoke-virtual {p0, v0, p2}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;->getTargetFormats(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioFormat;)[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    .line 183
    .local v0, "targetFormats":[Lcn/sherlock/javax/sound/sampled/AudioFormat;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 184
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->matches(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v2, 0x1

    return v2

    .line 183
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isSourceEncodingSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;)Z
    .locals 3
    .param p1, "sourceEncoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 85
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;->getSourceEncodings()[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v0

    .line 87
    .local v0, "sourceEncodings":[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 88
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, 0x1

    return v2

    .line 87
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isTargetEncodingSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;)Z
    .locals 3
    .param p1, "targetEncoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 106
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;->getTargetEncodings()[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v0

    .line 108
    .local v0, "targetEncodings":[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 109
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const/4 v2, 0x1

    return v2

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
