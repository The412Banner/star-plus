.class public abstract Ljp/kshoji/javax/sound/midi/MidiMessage;
.super Ljava/lang/Object;
.source "MidiMessage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected data:[B

.field protected length:I


# direct methods
.method protected constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    .line 24
    if-nez p1, :cond_0

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->length:I

    goto :goto_0

    .line 27
    :cond_0
    array-length v0, p1

    iput v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->length:I

    .line 29
    :goto_0
    return-void
.end method

.method static toHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # [B

    .line 102
    if-nez p0, :cond_0

    .line 103
    const-string v0, "null"

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "needComma":Z
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, p0, v3

    .line 110
    .local v4, "srcByte":B
    if-eqz v1, :cond_1

    .line 111
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/4 v1, 0x1

    .line 109
    .end local v4    # "srcByte":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public getLength()I
    .locals 1

    .line 87
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    array-length v0, v0

    return v0
.end method

.method public getMessage()[B
    .locals 4

    .line 59
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 64
    .local v0, "resultArray":[B
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v0
.end method

.method public getStatus()I
    .locals 3

    .line 74
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    array-length v0, v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 75
    :cond_1
    :goto_0
    return v1
.end method

.method public setMessage([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    .line 41
    iput v0, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->length:I

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    array-length v1, v1

    array-length v2, p1

    if-eq v1, v2, :cond_2

    .line 44
    :cond_1
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    .line 47
    :cond_2
    array-length v1, p1

    iput v1, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->length:I

    .line 48
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/MidiMessage;->data:[B

    invoke-static {v1}, Ljp/kshoji/javax/sound/midi/MidiMessage;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
