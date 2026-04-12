.class public Lcn/sherlock/com/sun/media/sound/SF2Modulator;
.super Ljava/lang/Object;
.source "SF2Modulator.java"


# static fields
.field public static final SOURCE_CHANNEL_PRESSURE:I = 0xd

.field public static final SOURCE_DIRECTION_MAX_MIN:I = 0x100

.field public static final SOURCE_DIRECTION_MIN_MAX:I = 0x0

.field public static final SOURCE_MIDI_CONTROL:I = 0x80

.field public static final SOURCE_NONE:I = 0x0

.field public static final SOURCE_NOTE_ON_KEYNUMBER:I = 0x3

.field public static final SOURCE_NOTE_ON_VELOCITY:I = 0x2

.field public static final SOURCE_PITCH_SENSITIVITY:I = 0x10

.field public static final SOURCE_PITCH_WHEEL:I = 0xe

.field public static final SOURCE_POLARITY_BIPOLAR:I = 0x200

.field public static final SOURCE_POLARITY_UNIPOLAR:I = 0x0

.field public static final SOURCE_POLY_PRESSURE:I = 0xa

.field public static final SOURCE_TYPE_CONCAVE:I = 0x400

.field public static final SOURCE_TYPE_CONVEX:I = 0x800

.field public static final SOURCE_TYPE_LINEAR:I = 0x0

.field public static final SOURCE_TYPE_SWITCH:I = 0xc00

.field public static final TRANSFORM_ABSOLUTE:I = 0x2

.field public static final TRANSFORM_LINEAR:I


# instance fields
.field protected amount:S

.field protected amountSourceOperator:I

.field protected destinationOperator:I

.field protected sourceOperator:I

.field protected transportOperator:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()S
    .locals 1

    .line 59
    iget-short v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amount:S

    return v0
.end method

.method public getAmountSourceOperator()I
    .locals 1

    .line 67
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amountSourceOperator:I

    return v0
.end method

.method public getDestinationOperator()I
    .locals 1

    .line 83
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->destinationOperator:I

    return v0
.end method

.method public getSourceOperator()I
    .locals 1

    .line 91
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->sourceOperator:I

    return v0
.end method

.method public getTransportOperator()I
    .locals 1

    .line 75
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->transportOperator:I

    return v0
.end method

.method public setAmount(S)V
    .locals 0
    .param p1, "amount"    # S

    .line 63
    iput-short p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amount:S

    .line 64
    return-void
.end method

.method public setAmountSourceOperator(I)V
    .locals 0
    .param p1, "amountSourceOperator"    # I

    .line 71
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->amountSourceOperator:I

    .line 72
    return-void
.end method

.method public setDestinationOperator(I)V
    .locals 0
    .param p1, "destinationOperator"    # I

    .line 87
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->destinationOperator:I

    .line 88
    return-void
.end method

.method public setSourceOperator(I)V
    .locals 0
    .param p1, "sourceOperator"    # I

    .line 95
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->sourceOperator:I

    .line 96
    return-void
.end method

.method public setTransportOperator(I)V
    .locals 0
    .param p1, "transportOperator"    # I

    .line 79
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->transportOperator:I

    .line 80
    return-void
.end method
