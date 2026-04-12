.class Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUB;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion32xUB"
.end annotation


# instance fields
.field final xbytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "xbytes"    # I

    .line 871
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;-><init>()V

    .line 872
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUB;->xbytes:I

    .line 873
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

    .line 892
    move v0, p2

    .line 893
    .local v0, "ix":I
    move v1, p5

    .line 894
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 895
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .local v3, "ix":I
    aget v0, p1, v0

    float-to-double v4, v0

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 896
    .local v0, "x":I
    const v4, 0x7fffffff

    add-int/2addr v0, v4

    .line 897
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ox":I
    .local v4, "ox":I
    ushr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    aput-byte v5, p4, v1

    .line 898
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "ox":I
    .restart local v1    # "ox":I
    ushr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    .line 899
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ox":I
    .restart local v4    # "ox":I
    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v1

    .line 900
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "ox":I
    .restart local v1    # "ox":I
    int-to-byte v5, v0

    aput-byte v5, p4, v4

    .line 901
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUB;->xbytes:I

    if-ge v4, v5, :cond_0

    .line 902
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "ox":I
    .local v5, "ox":I
    const/4 v6, 0x0

    aput-byte v6, p4, v1

    .line 901
    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_1

    .line 894
    .end local v0    # "x":I
    .end local v4    # "j":I
    .end local v5    # "ox":I
    .restart local v1    # "ox":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 905
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

    .line 877
    move v0, p2

    .line 878
    .local v0, "ix":I
    move v1, p4

    .line 879
    .local v1, "ox":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_0

    .line 880
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .local v3, "ix":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ix":I
    .local v4, "ix":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ix":I
    .restart local v3    # "ix":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ix":I
    .restart local v4    # "ix":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 883
    .local v0, "x":I
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUB;->xbytes:I

    add-int/2addr v3, v4

    .line 884
    .end local v4    # "ix":I
    .restart local v3    # "ix":I
    const v4, 0x7fffffff

    sub-int/2addr v0, v4

    .line 885
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ox":I
    .local v4, "ox":I
    int-to-float v5, v0

    const/high16 v6, 0x30000000

    mul-float/2addr v5, v6

    aput v5, p3, v1

    .line 879
    .end local v0    # "x":I
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    move v1, v4

    goto :goto_0

    .line 887
    .end local v2    # "i":I
    .end local v3    # "ix":I
    .end local v4    # "ox":I
    .local v0, "ix":I
    .restart local v1    # "ox":I
    :cond_0
    return-object p3
.end method
