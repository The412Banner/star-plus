.class public final synthetic Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda1;->f$1:Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda1;->f$1:Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;

    invoke-static {v0, v1}, Lcom/winlator/cmod/midi/MidiManager;->lambda$load$0(Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V

    return-void
.end method
