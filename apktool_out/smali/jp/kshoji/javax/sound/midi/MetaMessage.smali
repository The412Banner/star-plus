.class public Ljp/kshoji/javax/sound/midi/MetaMessage;
.super Ljp/kshoji/javax/sound/midi/MidiMessage;
.source "MetaMessage.java"


# static fields
.field public static final META:I = 0xff

.field public static final TYPE_END_OF_TRACK:I = 0x2f

.field public static final TYPE_TEMPO:I = 0x51

.field private static final defaultMessage:[B

.field private static final emptyData:[B


# instance fields
.field private dataLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljp/kshoji/javax/sound/midi/MetaMessage;->defaultMessage:[B

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ljp/kshoji/javax/sound/midi/MetaMessage;->emptyData:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    sget-object v0, Ljp/kshoji/javax/sound/midi/MetaMessage;->defaultMessage:[B

    invoke-direct {p0, v0}, Ljp/kshoji/javax/sound/midi/MetaMessage;-><init>([B)V

    .line 29
    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/kshoji/javax/sound/midi/MidiMessage;-><init>([B)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Ljp/kshoji/javax/sound/midi/MetaMessage;->setMessage(I[BI)V

    .line 67
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 38
    invoke-direct {p0, p1}, Ljp/kshoji/javax/sound/midi/MidiMessage;-><init>([B)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    .line 40
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 42
    array-length v0, p1

    sub-int/2addr v0, v1

    iput v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    .line 43
    const/4 v0, 0x2

    .line 44
    .local v0, "pos":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 45
    iget v1, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "pos":I
    :cond_0
    iget v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    if-ltz v0, :cond_1

    .line 54
    return-void

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid meta event. data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMidiValuesLength(J)I
    .locals 5
    .param p0, "value"    # J

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "length":I
    move-wide v1, p0

    .line 157
    .local v1, "currentValue":J
    :cond_0
    const/4 v3, 0x7

    shr-long/2addr v1, v3

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 160
    return v0
.end method

.method private static writeMidiValues([BIJ)V
    .locals 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 171
    const/16 v0, 0x3f

    .line 172
    .local v0, "shift":I
    :goto_0
    const/16 v1, 0x7f

    if-lez v0, :cond_0

    shl-int v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 173
    add-int/lit8 v0, v0, -0x7

    goto :goto_0

    .line 175
    :cond_0
    move v2, p1

    .line 176
    .local v2, "currentOffset":I
    :goto_1
    if-lez v0, :cond_1

    .line 177
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "currentOffset":I
    .local v3, "currentOffset":I
    shl-int v4, v1, v0

    int-to-long v4, v4

    and-long/2addr v4, p2

    shr-long/2addr v4, v0

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    .line 178
    add-int/lit8 v0, v0, -0x7

    move v2, v3

    goto :goto_1

    .line 180
    .end local v3    # "currentOffset":I
    .restart local v2    # "currentOffset":I
    :cond_1
    const-wide/16 v3, 0x7f

    and-long/2addr v3, p2

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    .line 181
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 139
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljp/kshoji/javax/sound/midi/MetaMessage;

    sget-object v1, Ljp/kshoji/javax/sound/midi/MetaMessage;->emptyData:[B

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/MetaMessage;-><init>([B)V

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 143
    .local v0, "result":[B
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    new-instance v1, Ljp/kshoji/javax/sound/midi/MetaMessage;

    invoke-direct {v1, v0}, Ljp/kshoji/javax/sound/midi/MetaMessage;-><init>([B)V

    return-object v1
.end method

.method public getData()[B
    .locals 5

    .line 126
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Ljp/kshoji/javax/sound/midi/MetaMessage;->emptyData:[B

    return-object v0

    .line 130
    :cond_0
    iget v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    new-array v0, v0, [B

    .line 131
    .local v0, "returnedArray":[B
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    array-length v2, v2

    iget v3, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    return-object v0
.end method

.method public getType()I
    .locals 2

    .line 113
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMessage(I[BI)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 78
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 83
    if-nez p2, :cond_0

    .line 84
    sget-object v0, Ljp/kshoji/javax/sound/midi/MetaMessage;->emptyData:[B

    .local v0, "newData":[B
    goto :goto_0

    .line 86
    .end local v0    # "newData":[B
    :cond_0
    move-object v0, p2

    .line 89
    .restart local v0    # "newData":[B
    :goto_0
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljp/kshoji/javax/sound/midi/MetaMessage;->getMidiValuesLength(J)I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 90
    .local v1, "headerLength":I
    array-length v3, v0

    iput v3, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->dataLength:I

    .line 91
    array-length v3, v0

    add-int/2addr v3, v1

    new-array v3, v3, [B

    iput-object v3, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    .line 92
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    array-length v3, v3

    iput v3, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->length:I

    .line 95
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    const/4 v4, -0x1

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 96
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    const/4 v4, 0x1

    int-to-byte v6, p1

    aput-byte v6, v3, v4

    .line 99
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    array-length v4, v0

    int-to-long v6, v4

    invoke-static {v3, v2, v6, v7}, Ljp/kshoji/javax/sound/midi/MetaMessage;->writeMidiValues([BIJ)V

    .line 102
    array-length v2, v0

    if-lez v2, :cond_1

    .line 103
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/MetaMessage;->data:[B

    array-length v3, v0

    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :cond_1
    return-void

    .line 79
    .end local v0    # "newData":[B
    .end local v1    # "headerLength":I
    :cond_2
    new-instance v0, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid meta event. type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
