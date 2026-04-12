.class public Ljp/kshoji/javax/sound/midi/SysexMessage;
.super Ljp/kshoji/javax/sound/midi/MidiMessage;
.source "SysexMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Ljp/kshoji/javax/sound/midi/SysexMessage;-><init>([B)V

    .line 18
    return-void

    :array_0
    .array-data 1
        -0x10t
        -0x9t
    .end array-data
.end method

.method public constructor <init>(I[BI)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "data"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/kshoji/javax/sound/midi/MidiMessage;-><init>([B)V

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Ljp/kshoji/javax/sound/midi/SysexMessage;->setMessage(I[BI)V

    .line 52
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 26
    invoke-direct {p0, p1}, Ljp/kshoji/javax/sound/midi/MidiMessage;-><init>([B)V

    .line 27
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/kshoji/javax/sound/midi/MidiMessage;-><init>([B)V

    .line 38
    invoke-virtual {p0, p1, p2}, Ljp/kshoji/javax/sound/midi/SysexMessage;->setMessage([BI)V

    .line 39
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 104
    new-instance v0, Ljp/kshoji/javax/sound/midi/SysexMessage;

    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/SysexMessage;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/SysexMessage;-><init>([B)V

    return-object v0
.end method

.method public getData()[B
    .locals 4

    .line 97
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/SysexMessage;->data:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 98
    .local v0, "result":[B
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/SysexMessage;->data:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v0
.end method

.method public setMessage(I[BI)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "data"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 76
    const/16 v0, 0xf0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf7

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status byte for SysexMessage: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    :goto_0
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/SysexMessage;->data:[B

    .line 82
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/SysexMessage;->data:[B

    array-length v0, v0

    iput v0, p0, Ljp/kshoji/javax/sound/midi/SysexMessage;->length:I

    .line 84
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/SysexMessage;->data:[B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 85
    array-length v0, p2

    if-lez v0, :cond_2

    .line 86
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/SysexMessage;->data:[B

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_2
    return-void
.end method

.method public setMessage([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 56
    if-eqz p1, :cond_2

    .line 60
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 61
    .local v0, "status":I
    const/16 v1, 0xf0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid status byte for SysexMessage: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Ljp/kshoji/javax/sound/midi/MidiMessage;->setMessage([BI)V

    .line 65
    return-void

    .line 57
    .end local v0    # "status":I
    :cond_2
    new-instance v0, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    const-string v1, "SysexMessage data is null"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
