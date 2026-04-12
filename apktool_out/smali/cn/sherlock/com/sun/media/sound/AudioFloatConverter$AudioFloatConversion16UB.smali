.class Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16UB;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion16UB"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 448
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16UB;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .locals 8
    .param p1, "in_buff"    # [F
    .param p2, "in_offset"    # I
    .param p3, "in_len"    # I
    .param p4, "out_buff"    # [B
    .param p5, "out_offset"    # I

    .line 462
    move v0, p2

    .line 463
    .local v0, "ix":I
    move v1, p5

    .line 464
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 465
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .local v3, "ix":I
    aget v0, p1, v0

    float-to-double v4, v0

    const-wide v6, 0x40dfffc000000000L    # 32767.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    add-int/lit16 v0, v0, 0x7fff

    .line 466
    .local v0, "x":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ox":I
    .local v4, "ox":I
    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v1

    .line 467
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "ox":I
    .restart local v1    # "ox":I
    int-to-byte v5, v0

    aput-byte v5, p4, v4

    .line 464
    .end local v0    # "x":I
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 469
    .end local v2    # "i":I
    .end local v3    # "ix":I
    .local v0, "ix":I
    :cond_0
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .locals 7
    .param p1, "in_buff"    # [B
    .param p2, "in_offset"    # I
    .param p3, "out_buff"    # [F
    .param p4, "out_offset"    # I
    .param p5, "out_len"    # I

    .line 451
    move v0, p2

    .line 452
    .local v0, "ix":I
    move v1, p4

    .line 453
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_0

    .line 454
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .local v3, "ix":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ix":I
    .local v4, "ix":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 455
    .local v0, "x":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ox":I
    .local v3, "ox":I
    add-int/lit16 v5, v0, -0x7fff

    int-to-float v5, v5

    const v6, 0x38000100

    mul-float/2addr v5, v6

    aput v5, p3, v1

    .line 453
    .end local v0    # "x":I
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    move v0, v4

    goto :goto_0

    .line 457
    .end local v2    # "i":I
    .end local v3    # "ox":I
    .end local v4    # "ix":I
    .local v0, "ix":I
    .restart local v1    # "ox":I
    :cond_0
    return-object p3
.end method
