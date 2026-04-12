.class Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24UL;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion24UL"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 544
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24UL;-><init>()V

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

    .line 560
    move v0, p2

    .line 561
    .local v0, "ix":I
    move v1, p5

    .line 562
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 563
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .local v3, "ix":I
    aget v0, p1, v0

    const v4, 0x4afffffe    # 8388607.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 564
    .local v0, "x":I
    const v4, 0x7fffff

    add-int/2addr v0, v4

    .line 565
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ox":I
    .local v4, "ox":I
    int-to-byte v5, v0

    aput-byte v5, p4, v1

    .line 566
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "ox":I
    .restart local v1    # "ox":I
    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    .line 567
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ox":I
    .restart local v4    # "ox":I
    ushr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p4, v1

    .line 562
    .end local v0    # "x":I
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    move v1, v4

    goto :goto_0

    .line 569
    .end local v2    # "i":I
    .end local v3    # "ix":I
    .end local v4    # "ox":I
    .local v0, "ix":I
    .restart local v1    # "ox":I
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

    .line 547
    move v0, p2

    .line 548
    .local v0, "ix":I
    move v1, p4

    .line 549
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_0

    .line 550
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .local v3, "ix":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ix":I
    .local v4, "ix":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ix":I
    .restart local v3    # "ix":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    .line 552
    .local v0, "x":I
    const v4, 0x7fffff

    sub-int/2addr v0, v4

    .line 553
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ox":I
    .local v4, "ox":I
    int-to-float v5, v0

    const v6, 0x34000001

    mul-float/2addr v5, v6

    aput v5, p3, v1

    .line 549
    .end local v0    # "x":I
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    move v1, v4

    goto :goto_0

    .line 555
    .end local v2    # "i":I
    .end local v3    # "ix":I
    .end local v4    # "ox":I
    .local v0, "ix":I
    .restart local v1    # "ox":I
    :cond_0
    return-object p3
.end method
