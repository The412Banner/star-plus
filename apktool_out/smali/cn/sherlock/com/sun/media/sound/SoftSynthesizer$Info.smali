.class Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$Info;
.super Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
.source "SoftSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 164
    const-string v0, "Software MIDI Synthesizer"

    const-string v1, "1.0"

    const-string v2, "Gervill"

    const-string v3, "OpenJDK"

    invoke-direct {p0, v2, v3, v0, v1}, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method
