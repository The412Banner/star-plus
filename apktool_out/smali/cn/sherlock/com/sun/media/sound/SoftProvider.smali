.class public Lcn/sherlock/com/sun/media/sound/SoftProvider;
.super Ljp/kshoji/javax/sound/midi/spi/MidiDeviceProvider;
.source "SoftProvider.java"


# static fields
.field protected static final softinfo:Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

.field private static softinfos:[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->info:Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    sput-object v0, Lcn/sherlock/com/sun/media/sound/SoftProvider;->softinfo:Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    const/4 v1, 0x0

    sget-object v2, Lcn/sherlock/com/sun/media/sound/SoftProvider;->softinfo:Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    aput-object v2, v0, v1

    sput-object v0, Lcn/sherlock/com/sun/media/sound/SoftProvider;->softinfos:[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/spi/MidiDeviceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice(Ljp/kshoji/javax/sound/midi/MidiDevice$Info;)Ljp/kshoji/javax/sound/midi/MidiDevice;
    .locals 1
    .param p1, "info"    # Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    .line 46
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftProvider;->softinfo:Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    if-ne p1, v0, :cond_0

    .line 47
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;-><init>()V

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceInfo()[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    .locals 1

    .line 42
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftProvider;->softinfos:[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    return-object v0
.end method
