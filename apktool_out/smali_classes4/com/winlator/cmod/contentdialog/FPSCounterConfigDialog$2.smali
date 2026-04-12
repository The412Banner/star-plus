.class Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$2;
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

    .line 76
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$2;->this$0:Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 79
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$2;->this$0:Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;

    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->-$$Nest$fgettvHUDTransparencyValue(Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 82
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 84
    return-void
.end method
