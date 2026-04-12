.class public abstract Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
.super Ljava/lang/Object;
.source "AudioFloatInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;[BII)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
    .locals 6
    .param p0, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 239
    nop

    .line 240
    invoke-static {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    .line 241
    .local v0, "converter":Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
    if-eqz v0, :cond_0

    .line 242
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;

    invoke-direct {v1, v0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;[BII)V

    return-object v1

    .line 245
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 246
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 247
    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v2

    div-int v2, p3, v2

    int-to-long v2, v2

    .line 248
    .local v2, "aLen":J
    :goto_0
    new-instance v4, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-direct {v4, v1, p0, v2, v3}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    .line 249
    .local v4, "astream":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    invoke-static {v4}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getInputStream(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    move-result-object v5

    return-object v5
.end method

.method public static getInputStream(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
    .locals 1
    .param p0, "stream"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 234
    new-instance v0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;-><init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V

    return-object v0
.end method

.method public static getInputStream(Ljava/io/File;)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;

    .line 223
    invoke-static {p0}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioInputStream(Ljava/io/File;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;-><init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V

    .line 222
    return-object v0
.end method

.method public static getInputStream(Ljava/io/InputStream;)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;

    .line 229
    invoke-static {p0}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;-><init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V

    .line 228
    return-object v0
.end method

.method public static getInputStream(Ljava/net/URL;)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    new-instance v0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;

    .line 217
    invoke-static {p0}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioInputStream(Ljava/net/URL;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;-><init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V

    .line 216
    return-object v0
.end method


# virtual methods
.method public abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
.end method

.method public abstract getFrameLength()J
.end method

.method public abstract mark(I)V
.end method

.method public abstract markSupported()Z
.end method

.method public read()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const/4 v0, 0x1

    new-array v1, v0, [F

    .line 264
    .local v1, "b":[F
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->read([FII)I

    move-result v0

    .line 265
    .local v0, "ret":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    aget v2, v1, v2

    return v2

    .line 266
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public read([F)I
    .locals 2
    .param p1, "b"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->read([FII)I

    move-result v0

    return v0
.end method

.method public abstract read([FII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skip(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
