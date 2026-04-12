.class Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$1;
.super Ljava/lang/Object;
.source "FPSCounterConfigDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;

    .line 56
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 59
    const/16 v0, 0x32

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 60
    .local v0, "finalValue":I
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;

    invoke-static {v1}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->-$$Nest$fgettvHUDScaleValue(Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 63
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 66
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 67
    :cond_0
    return-void
.end method
