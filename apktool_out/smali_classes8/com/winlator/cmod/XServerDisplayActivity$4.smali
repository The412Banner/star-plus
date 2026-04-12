.class Lcom/winlator/cmod/XServerDisplayActivity$4;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/XServerDisplayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/XServerDisplayActivity;

.field final synthetic val$finalIn:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/XServerDisplayActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 576
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity$4;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    iput-object p2, p0, Lcom/winlator/cmod/XServerDisplayActivity$4;->val$finalIn:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$4;->val$finalIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 589
    return-void
.end method

.method public onSuccess(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V
    .locals 2
    .param p1, "soundbank"    # Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    .line 579
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$4;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    new-instance v1, Lcom/winlator/cmod/midi/MidiHandler;

    invoke-direct {v1}, Lcom/winlator/cmod/midi/MidiHandler;-><init>()V

    invoke-static {v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fputmidiHandler(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/midi/MidiHandler;)V

    .line 580
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$4;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetmidiHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/midi/MidiHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/midi/MidiHandler;->setSoundBank(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V

    .line 581
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$4;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetmidiHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/midi/MidiHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/midi/MidiHandler;->start()V

    .line 582
    return-void
.end method
