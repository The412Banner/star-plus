.class Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8S;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion8S"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8S;-><init>()V

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

    .line 332
    move v0, p2

    .line 333
    .local v0, "ix":I
    move v1, p5

    .line 334
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 335
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ox":I
    .local v3, "ox":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "ix":I
    .local v4, "ix":I
    aget v0, p1, v0

    const/high16 v5, 0x42fe0000    # 127.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p4, v1

    .line 334
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    move v0, v4

    goto :goto_0

    .line 336
    .end local v2    # "i":I
    .end local v3    # "ox":I
    .end local v4    # "ix":I
    .restart local v0    # "ix":I
    .restart local v1    # "ox":I
    :cond_0
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .locals 6
    .param p1, "in_buff"    # [B
    .param p2, "in_offset"    # I
    .param p3, "out_buff"    # [F
    .param p4, "out_offset"    # I
    .param p5, "out_len"    # I

    .line 323
    move v0, p2

    .line 324
    .local v0, "ix":I
    move v1, p4

    .line 325
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_0

    .line 326
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ox":I
    .local v3, "ox":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "ix":I
    .local v4, "ix":I
    aget-byte v0, p1, v0

    int-to-float v0, v0

    const v5, 0x3c010204

    mul-float/2addr v0, v5

    aput v0, p3, v1

    .line 325
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    move v0, v4

    goto :goto_0

    .line 327
    .end local v2    # "i":I
    .end local v3    # "ox":I
    .end local v4    # "ix":I
    .restart local v0    # "ix":I
    .restart local v1    # "ox":I
    :cond_0
    return-object p3
.end method
