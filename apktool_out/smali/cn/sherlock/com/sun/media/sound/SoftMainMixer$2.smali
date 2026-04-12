.class Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;
.super Ljava/io/InputStream;
.source "SoftMainMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sherlock/com/sun/media/sound/SoftMainMixer;-><init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bbuffer:[B

.field private bbuffer_pos:I

.field private buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field private buffersize:I

.field private nrofchannels:I

.field private single:[B

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)V
    .locals 3
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    .line 861
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 863
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->-$$Nest$fgetbuffers(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 864
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->-$$Nest$fgetsynth(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->nrofchannels:I

    .line 866
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->getSize()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->buffersize:I

    .line 867
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->buffersize:I

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-static {v2}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->-$$Nest$fgetsynth(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    move-result-object v2

    .line 868
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2

    .line 869
    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    mul-int/2addr v0, v2

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->nrofchannels:I

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer:[B

    .line 871
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer_pos:I

    .line 872
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->single:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 915
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer:[B

    array-length v0, v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1

    .line 919
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->-$$Nest$fgetsynth(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->close()V

    .line 920
    return-void
.end method

.method public fillBuffer()V
    .locals 3

    .line 881
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processAudioBuffers()V

    .line 882
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->nrofchannels:I

    if-ge v0, v1, :cond_0

    .line 883
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer:[B

    invoke-virtual {v1, v2, v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->get([BI)V

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 884
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer_pos:I

    .line 885
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->single:[B

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->read([B)I

    move-result v0

    .line 909
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 910
    return v1

    .line 911
    :cond_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->single:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 888
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer:[B

    array-length v0, v0

    .line 889
    .local v0, "bbuffer_len":I
    add-int v1, p2, p3

    .line 890
    .local v1, "offlen":I
    move v2, p2

    .line 891
    .local v2, "orgoff":I
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer:[B

    .line 892
    .local v3, "bbuffer":[B
    :goto_0
    if-ge p2, v1, :cond_3

    .line 893
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->available()I

    move-result v4

    if-nez v4, :cond_0

    .line 894
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->fillBuffer()V

    goto :goto_0

    .line 896
    :cond_0
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer_pos:I

    .line 897
    .local v4, "bbuffer_pos":I
    :goto_1
    if-ge p2, v1, :cond_1

    if-ge v4, v0, :cond_1

    .line 898
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .local v5, "off":I
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "bbuffer_pos":I
    .local v6, "bbuffer_pos":I
    aget-byte v4, v3, v4

    aput-byte v4, p1, p2

    move p2, v5

    move v4, v6

    goto :goto_1

    .line 899
    .end local v5    # "off":I
    .end local v6    # "bbuffer_pos":I
    .restart local v4    # "bbuffer_pos":I
    .restart local p2    # "off":I
    :cond_1
    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->bbuffer_pos:I

    .line 900
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    iget-boolean v5, v5, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->readfully:Z

    if-nez v5, :cond_2

    .line 901
    sub-int v5, p2, v2

    return v5

    .line 902
    .end local v4    # "bbuffer_pos":I
    :cond_2
    goto :goto_0

    .line 904
    :cond_3
    return p3
.end method
