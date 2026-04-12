.class Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatLSBFilter"
.end annotation


# instance fields
.field private converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

.field private final mask:B

.field private mask_buffer:[B

.field private final offset:I

.field private final stepsize:I


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;Lcn/sherlock/javax/sound/sampled/AudioFormat;)V
    .locals 5
    .param p1, "converter"    # Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 67
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;-><init>()V

    .line 68
    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    .line 69
    .local v0, "bits":I
    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v1

    .line 70
    .local v1, "bigEndian":Z
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 71
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    .line 72
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    sub-int/2addr v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->offset:I

    .line 73
    rem-int/lit8 v4, v0, 0x8

    .line 74
    .local v4, "lsb_bits":I
    if-nez v4, :cond_1

    .line 75
    iput-byte v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_1

    .line 76
    :cond_1
    if-ne v4, v2, :cond_2

    .line 77
    const/16 v2, -0x80

    iput-byte v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_1

    .line 78
    :cond_2
    const/4 v2, 0x2

    if-ne v4, v2, :cond_3

    .line 79
    const/16 v2, -0x40

    iput-byte v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_1

    .line 80
    :cond_3
    const/4 v2, 0x3

    if-ne v4, v2, :cond_4

    .line 81
    const/16 v2, -0x20

    iput-byte v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_1

    .line 82
    :cond_4
    const/4 v2, 0x4

    if-ne v4, v2, :cond_5

    .line 83
    const/16 v2, -0x10

    iput-byte v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_1

    .line 84
    :cond_5
    const/4 v2, 0x5

    if-ne v4, v2, :cond_6

    .line 85
    const/4 v2, -0x8

    iput-byte v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_1

    .line 86
    :cond_6
    const/4 v2, 0x6

    if-ne v4, v2, :cond_7

    .line 87
    const/4 v2, -0x4

    iput-byte v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_1

    .line 88
    :cond_7
    const/4 v2, 0x7

    if-ne v4, v2, :cond_8

    .line 89
    const/4 v2, -0x2

    iput-byte v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_1

    .line 91
    :cond_8
    const/4 v2, -0x1

    iput-byte v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    .line 92
    :goto_1
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

    .line 96
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toByteArray([FII[BI)[B

    move-result-object v0

    .line 99
    .local v0, "ret":[B
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    mul-int/2addr v1, p3

    .line 100
    .local v1, "out_offset_end":I
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->offset:I

    add-int/2addr v2, p5

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 101
    aget-byte v3, p4, v2

    iget-byte v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    .line 100
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public toFloatArray([BI[FII)[F
    .locals 8
    .param p1, "in_buff"    # [B
    .param p2, "in_offset"    # I
    .param p3, "out_buff"    # [F
    .param p4, "out_offset"    # I
    .param p5, "out_len"    # I

    .line 109
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    array-length v0, v0

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 110
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    .line 111
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    mul-int/2addr v0, p5

    .line 113
    .local v0, "in_offset_end":I
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->offset:I

    add-int/2addr v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 114
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    aget-byte v3, v3, v1

    iget-byte v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 113
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toFloatArray([BI[FII)[F

    move-result-object v1

    .line 118
    .local v1, "ret":[F
    return-object v1
.end method
