.class Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUL;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion32xUL"
.end annotation


# instance fields
.field final xbytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "xbytes"    # I

    .line 828
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;-><init>()V

    .line 829
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUL;->xbytes:I

    .line 830
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

    .line 849
    move v0, p2

    .line 850
    .local v0, "ix":I
    move v1, p5

    .line 851
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 852
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .local v3, "ix":I
    aget v0, p1, v0

    const/high16 v4, 0x4f000000

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 853
    .local v0, "x":I
    const v4, 0x7fffffff

    add-int/2addr v0, v4

    .line 854
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUL;->xbytes:I

    if-ge v4, v5, :cond_0

    .line 855
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "ox":I
    .local v5, "ox":I
    const/4 v6, 0x0

    aput-byte v6, p4, v1

    .line 854
    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_1

    .line 857
    .end local v4    # "j":I
    .end local v5    # "ox":I
    .restart local v1    # "ox":I
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ox":I
    .local v4, "ox":I
    int-to-byte v5, v0

    aput-byte v5, p4, v1

    .line 858
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "ox":I
    .restart local v1    # "ox":I
    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    .line 859
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ox":I
    .restart local v4    # "ox":I
    ushr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p4, v1

    .line 860
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "ox":I
    .restart local v1    # "ox":I
    ushr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    .line 851
    .end local v0    # "x":I
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 862
    .end local v2    # "i":I
    .end local v3    # "ix":I
    .local v0, "ix":I
    :cond_1
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .locals 7
    .param p1, "in_buff"    # [B
    .param p2, "in_offset"    # I
    .param p3, "out_buff"    # [F
    .param p4, "out_offset"    # I
    .param p5, "out_len"    # I

    .line 834
    move v0, p2

    .line 835
    .local v0, "ix":I
    move v1, p4

    .line 836
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_0

    .line 837
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUL;->xbytes:I

    add-int/2addr v0, v3

    .line 838
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

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ix":I
    .restart local v4    # "ix":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v3

    .line 841
    .local v0, "x":I
    const v3, 0x7fffffff

    sub-int/2addr v0, v3

    .line 842
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ox":I
    .local v3, "ox":I
    int-to-float v5, v0

    const/high16 v6, 0x30000000

    mul-float/2addr v5, v6

    aput v5, p3, v1

    .line 836
    .end local v0    # "x":I
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    move v0, v4

    goto :goto_0

    .line 844
    .end local v2    # "i":I
    .end local v3    # "ox":I
    .end local v4    # "ix":I
    .local v0, "ix":I
    .restart local v1    # "ox":I
    :cond_0
    return-object p3
.end method
