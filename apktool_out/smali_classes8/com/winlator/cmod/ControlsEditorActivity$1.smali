.class Lcom/winlator/cmod/ControlsEditorActivity$1;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ControlsEditorActivity;->showControlElementSettings(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/ControlsEditorActivity;

.field final synthetic val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

.field final synthetic val$tvScale:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/TextView;Lcom/winlator/cmod/inputcontrols/ControlElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/ControlsEditorActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/winlator/cmod/ControlsEditorActivity$1;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    iput-object p2, p0, Lcom/winlator/cmod/ControlsEditorActivity$1;->val$tvScale:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/winlator/cmod/ControlsEditorActivity$1;->val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 153
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$1;->val$tvScale:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$1;->val$tvScale:Landroid/widget/TextView;

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

    .line 154
    :cond_0
    if-eqz p3, :cond_1

    .line 155
    int-to-float v0, p2

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int p2, v0

    .line 156
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 157
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$1;->val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setScale(F)V

    .line 158
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$1;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ControlsEditorActivity;->-$$Nest$fgetprofile(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 159
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$1;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ControlsEditorActivity;->-$$Nest$fgetinputControlsView(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 161
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 162
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 163
    return-void
.end method
