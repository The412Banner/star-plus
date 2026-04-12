.class public Ljp/kshoji/javax/sound/midi/ShortMessage;
.super Ljp/kshoji/javax/sound/midi/MidiMessage;
.source "ShortMessage.java"


# static fields
.field public static final ACTIVE_SENSING:I = 0xfe

.field public static final BUS_SELECT:I = 0xf5

.field public static final CHANNEL_PRESSURE:I = 0xd0

.field public static final CONTINUE:I = 0xfb

.field public static final CONTROL_CHANGE:I = 0xb0

.field public static final END_OF_EXCLUSIVE:I = 0xf7

.field public static final MASK_CHANNEL:I = 0xf

.field public static final MASK_EVENT:I = 0xf0

.field public static final MIDI_TIME_CODE:I = 0xf1

.field public static final NOTE_OFF:I = 0x80

.field public static final NOTE_ON:I = 0x90

.field public static final PITCH_BEND:I = 0xe0

.field public static final POLY_PRESSURE:I = 0xa0

.field public static final PROGRAM_CHANGE:I = 0xc0

.field public static final SONG_POSITION_POINTER:I = 0xf2

.field public static final SONG_SELECT:I = 0xf3

.field public static final START:I = 0xfa

.field public static final START_OF_EXCLUSIVE:I = 0xf0

.field public static final STOP:I = 0xfc

.field public static final SYSTEM_RESET:I = 0xff

.field public static final TIMING_CLOCK:I = 0xf8

.field public static final TUNE_REQUEST:I = 0xf6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>([B)V

    .line 40
    return-void

    :array_0
    .array-data 1
        -0x70t
        0x40t
        0x7ft
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/kshoji/javax/sound/midi/MidiMessage;-><init>([B)V

    .line 59
    invoke-virtual {p0, p1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "data1"    # I
    .param p3, "data2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/kshoji/javax/sound/midi/MidiMessage;-><init>([B)V

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    .line 73
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "command"    # I
    .param p2, "channel"    # I
    .param p3, "data1"    # I
    .param p4, "data2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/kshoji/javax/sound/midi/MidiMessage;-><init>([B)V

    .line 86
    invoke-virtual {p0, p1, p2, p3, p4}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(IIII)V

    .line 87
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 48
    invoke-direct {p0, p1}, Ljp/kshoji/javax/sound/midi/MidiMessage;-><init>([B)V

    .line 49
    return-void
.end method

.method protected static getDataLength(I)I
    .locals 3
    .param p0, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 234
    :pswitch_0
    and-int/lit16 v2, p0, 0xf0

    sparse-switch v2, :sswitch_data_0

    .line 245
    new-instance v0, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 230
    :pswitch_2
    return v0

    .line 228
    :pswitch_3
    return v1

    .line 243
    :sswitch_0
    return v1

    .line 240
    :sswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x90 -> :sswitch_1
        0xa0 -> :sswitch_1
        0xb0 -> :sswitch_1
        0xc0 -> :sswitch_0
        0xd0 -> :sswitch_0
        0xe0 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 201
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 202
    .local v0, "result":[B
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    invoke-direct {v1, v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>([B)V

    return-object v1
.end method

.method public getChannel()I
    .locals 1

    .line 163
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getStatus()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getCommand()I
    .locals 1

    .line 172
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getStatus()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0

    return v0
.end method

.method public getData1()I
    .locals 2

    .line 181
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getData2()I
    .locals 2

    .line 193
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMessage(I)V
    .locals 4
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 96
    invoke-static {p1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getDataLength(I)I

    move-result v0

    .line 97
    .local v0, "dataLength":I
    if-nez v0, :cond_0

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    .line 101
    return-void

    .line 98
    :cond_0
    new-instance v1, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data bytes length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMessage(III)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "data1"    # I
    .param p3, "data2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 112
    invoke-static {p1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getDataLength(I)I

    move-result v0

    .line 113
    .local v0, "dataLength":I
    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 114
    if-ltz p2, :cond_1

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_1

    .line 117
    if-le v0, v1, :cond_2

    .line 118
    if-ltz p3, :cond_0

    if-gt p3, v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data2 out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_1
    new-instance v1, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1 out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_2
    :goto_0
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    array-length v2, v2

    add-int/lit8 v3, v0, 0x1

    if-eq v2, v3, :cond_4

    .line 125
    :cond_3
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    iput-object v2, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    .line 127
    :cond_4
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    array-length v2, v2

    iput v2, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->length:I

    .line 129
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 130
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    array-length v2, v2

    if-le v2, v1, :cond_5

    .line 131
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 132
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    .line 133
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/ShortMessage;->data:[B

    and-int/lit16 v3, p3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 136
    :cond_5
    return-void
.end method

.method public setMessage(IIII)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "channel"    # I
    .param p3, "data1"    # I
    .param p4, "data2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 148
    const/16 v0, 0xf0

    if-ge p1, v0, :cond_1

    const/16 v0, 0x80

    if-lt p1, v0, :cond_1

    .line 151
    const/16 v0, 0xf

    if-gt p2, v0, :cond_0

    .line 154
    and-int/lit16 v0, p1, 0xf0

    and-int/lit8 v1, p2, 0xf

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p3, p4}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    .line 155
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    new-instance v0, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command out of range: 0x"

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
.end method
