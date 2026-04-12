.class Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion64B"
.end annotation


# instance fields
.field bytebuffer:Ljava/nio/ByteBuffer;

.field double_buff:[D

.field floatbuffer:Ljava/nio/DoubleBuffer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 185
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    .line 187
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .locals 6
    .param p1, "in_buff"    # [F
    .param p2, "in_offset"    # I
    .param p3, "in_len"    # I
    .param p4, "out_buff"    # [B
    .param p5, "out_offset"    # I

    .line 213
    mul-int/lit8 v0, p3, 0x8

    .line 214
    .local v0, "out_len":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 215
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 217
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    .line 219
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    array-length v1, v1

    add-int v2, p2, p3

    if-ge v1, v2, :cond_3

    .line 222
    :cond_2
    add-int v1, p2, p3

    new-array v1, v1, [D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    .line 223
    :cond_3
    add-int v1, p2, p3

    .line 224
    .local v1, "in_offset_end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 225
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    aget v4, p1, v2

    float-to-double v4, v4

    aput-wide v4, v3, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    invoke-virtual {v2, v3, p2, p3}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    .line 228
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p4, p5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 229
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .locals 6
    .param p1, "in_buff"    # [B
    .param p2, "in_offset"    # I
    .param p3, "out_buff"    # [F
    .param p4, "out_offset"    # I
    .param p5, "out_len"    # I

    .line 191
    mul-int/lit8 v0, p5, 0x8

    .line 192
    .local v0, "in_len":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 193
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 195
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    .line 197
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 200
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    array-length v1, v1

    add-int v2, p5, p4

    if-ge v1, v2, :cond_3

    .line 202
    :cond_2
    add-int v1, p5, p4

    new-array v1, v1, [D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    .line 203
    :cond_3
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    invoke-virtual {v1, v2, p4, p5}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    .line 204
    add-int v1, p4, p5

    .line 205
    .local v1, "out_offset_end":I
    move v2, p4

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 206
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    aget-wide v4, v3, v2

    double-to-float v3, v4

    aput v3, p3, v2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    :cond_4
    return-object p3
.end method
