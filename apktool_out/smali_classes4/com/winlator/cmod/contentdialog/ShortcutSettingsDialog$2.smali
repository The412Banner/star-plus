.class Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$2;
.super Ljava/lang/Object;
.source "ShortcutSettingsDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->createContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

.field final synthetic val$tvSharpnessLevel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$2;->this$0:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$2;->val$tvSharpnessLevel:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 398
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$2;->val$tvSharpnessLevel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 404
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 409
    return-void
.end method
