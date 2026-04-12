.class Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
.super Ljava/lang/Object;
.source "WaveExtensibleFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GUID"
.end annotation


# instance fields
.field i1:J

.field s1:I

.field s2:I

.field x1:I

.field x2:I

.field x3:I

.field x4:I

.field x5:I

.field x6:I

.field x7:I

.field x8:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(JIIIIIIIIII)V
    .locals 0
    .param p1, "i1"    # J
    .param p3, "s1"    # I
    .param p4, "s2"    # I
    .param p5, "x1"    # I
    .param p6, "x2"    # I
    .param p7, "x3"    # I
    .param p8, "x4"    # I
    .param p9, "x5"    # I
    .param p10, "x6"    # I
    .param p11, "x7"    # I
    .param p12, "x8"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->i1:J

    .line 80
    iput p3, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->s1:I

    .line 81
    iput p4, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->s2:I

    .line 82
    iput p5, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x1:I

    .line 83
    iput p6, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x2:I

    .line 84
    iput p7, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x3:I

    .line 85
    iput p8, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x4:I

    .line 86
    iput p9, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x5:I

    .line 87
    iput p10, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x6:I

    .line 88
    iput p11, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x7:I

    .line 89
    iput p12, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x8:I

    .line 90
    return-void
.end method

.method public static read(Lcn/sherlock/com/sun/media/sound/RIFFReader;)Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .locals 3
    .param p0, "riff"    # Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;-><init>()V

    .line 94
    .local v0, "d":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->i1:J

    .line 95
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->s1:I

    .line 96
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->s2:I

    .line 97
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x1:I

    .line 98
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x2:I

    .line 99
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x3:I

    .line 100
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x4:I

    .line 101
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x5:I

    .line 102
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x6:I

    .line 103
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x7:I

    .line 104
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x8:I

    .line 105
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 113
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 114
    return v1

    .line 115
    :cond_0
    move-object v0, p1

    check-cast v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    .line 116
    .local v0, "t":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->i1:J

    iget-wide v4, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->i1:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 117
    return v1

    .line 118
    :cond_1
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->s1:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->s1:I

    if-eq v2, v3, :cond_2

    .line 119
    return v1

    .line 120
    :cond_2
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->s2:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->s2:I

    if-eq v2, v3, :cond_3

    .line 121
    return v1

    .line 122
    :cond_3
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x1:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x1:I

    if-eq v2, v3, :cond_4

    .line 123
    return v1

    .line 124
    :cond_4
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x2:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x2:I

    if-eq v2, v3, :cond_5

    .line 125
    return v1

    .line 126
    :cond_5
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x3:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x3:I

    if-eq v2, v3, :cond_6

    .line 127
    return v1

    .line 128
    :cond_6
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x4:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x4:I

    if-eq v2, v3, :cond_7

    .line 129
    return v1

    .line 130
    :cond_7
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x5:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x5:I

    if-eq v2, v3, :cond_8

    .line 131
    return v1

    .line 132
    :cond_8
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x6:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x6:I

    if-eq v2, v3, :cond_9

    .line 133
    return v1

    .line 134
    :cond_9
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x7:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x7:I

    if-eq v2, v3, :cond_a

    .line 135
    return v1

    .line 136
    :cond_a
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x8:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->x8:I

    if-eq v2, v3, :cond_b

    .line 137
    return v1

    .line 138
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 109
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->i1:J

    long-to-int v0, v0

    return v0
.end method
