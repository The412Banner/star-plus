.class Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16SL;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion16SL"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16SL;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .locals 7
    .param p1, "in_buff"    # [F
    .param p2, "in_offset"    # I
    .param p3, "in_len"    # I
    .param p4, "out_buff"    # [B
    .param p5, "out_offset"    # I

    .line 384
    move v0, p5

    .line 385
    .local v0, "ox":I
    add-int v1, p2, p3

    .line 386
    .local v1, "len":I
    move v2, p2

    .local v2, "ix":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 387
    aget v3, p1, v2

    float-to-double v3, v3

    const-wide v5, 0x40dfffc000000000L    # 32767.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 388
    .local v3, "x":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "ox":I
    .local v4, "ox":I
    int-to-byte v5, v3

    aput-byte v5, p4, v0

    .line 389
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "ox":I
    .restart local v0    # "ox":I
    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    .line 386
    .end local v3    # "x":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "ix":I
    :cond_0
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .locals 5
    .param p1, "in_buff"    # [B
    .param p2, "in_offset"    # I
    .param p3, "out_buff"    # [F
    .param p4, "out_offset"    # I
    .param p5, "out_len"    # I

    .line 372
    move v0, p2

    .line 373
    .local v0, "ix":I
    add-int v1, p4, p5

    .line 374
    .local v1, "len":I
    move v2, p4

    .local v2, "ox":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 375
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .local v3, "ix":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ix":I
    .local v4, "ix":I
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    int-to-short v0, v0

    int-to-float v0, v0

    const v3, 0x38000100

    mul-float/2addr v0, v3

    aput v0, p3, v2

    .line 374
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_0

    .line 379
    .end local v2    # "ox":I
    .end local v4    # "ix":I
    .restart local v0    # "ix":I
    :cond_0
    return-object p3
.end method
