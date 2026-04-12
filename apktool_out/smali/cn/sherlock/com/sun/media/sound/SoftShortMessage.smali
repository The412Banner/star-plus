.class public Lcn/sherlock/com/sun/media/sound/SoftShortMessage;
.super Ljp/kshoji/javax/sound/midi/ShortMessage;
.source "SoftShortMessage.java"


# instance fields
.field channel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;->channel:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 50
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;-><init>()V

    .line 52
    .local v0, "clone":Lcn/sherlock/com/sun/media/sound/SoftShortMessage;
    :try_start_0
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;->getCommand()I

    move-result v1

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;->getChannel()I

    move-result v2

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;->getData1()I

    move-result v3

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;->getData2()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;->setMessage(IIII)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 56
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getChannel()I
    .locals 1

    .line 40
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;->channel:I

    return v0
.end method

.method public setMessage(IIII)V
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

    .line 45
    iput p2, p0, Lcn/sherlock/com/sun/media/sound/SoftShortMessage;->channel:I

    .line 46
    and-int/lit8 v0, p2, 0xf

    invoke-super {p0, p1, v0, p3, p4}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(IIII)V

    .line 47
    return-void
.end method
