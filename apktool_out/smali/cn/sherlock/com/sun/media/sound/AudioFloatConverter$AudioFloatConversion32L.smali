.class Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion32L"
.end annotation


# instance fields
.field bytebuffer:Ljava/nio/ByteBuffer;

.field floatbuffer:Ljava/nio/FloatBuffer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 240
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;-><init>()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 243
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->floatbuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .locals 3
    .param p1, "in_buff"    # [F
    .param p2, "in_offset"    # I
    .param p3, "in_len"    # I
    .param p4, "out_buff"    # [B
    .param p5, "out_offset"    # I

    .line 262
    mul-int/lit8 v0, p3, 0x4

    .line 263
    .local v0, "out_len":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 264
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 266
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->floatbuffer:Ljava/nio/FloatBuffer;

    .line 268
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->floatbuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->floatbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 271
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p4, p5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 272
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .locals 3
    .param p1, "in_buff"    # [B
    .param p2, "in_offset"    # I
    .param p3, "out_buff"    # [F
    .param p4, "out_offset"    # I
    .param p5, "out_len"    # I

    .line 247
    mul-int/lit8 v0, p5, 0x4

    .line 248
    .local v0, "in_len":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 249
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 251
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->floatbuffer:Ljava/nio/FloatBuffer;

    .line 253
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->floatbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 256
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;->floatbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p3, p4, p5}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 257
    return-object p3
.end method
