.class public final synthetic Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;->f$3:Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;->f$3:Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/winlator/cmod/midi/MidiManager;->lambda$installSF2File$2(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;)V

    return-void
.end method
