.class Lcom/winlator/cmod/InputControlsFragment$1;
.super Ljava/lang/Object;
.source "InputControlsFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/InputControlsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/InputControlsFragment;

.field final synthetic val$tvUiOpacity:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/InputControlsFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/winlator/cmod/InputControlsFragment$1;->this$0:Lcom/winlator/cmod/InputControlsFragment;

    iput-object p2, p0, Lcom/winlator/cmod/InputControlsFragment$1;->val$tvUiOpacity:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 141
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment$1;->val$tvUiOpacity:Landroid/widget/TextView;

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

    .line 142
    if-eqz p3, :cond_0

    .line 143
    int-to-float v0, p2

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int p2, v0

    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 145
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment$1;->this$0:Lcom/winlator/cmod/InputControlsFragment;

    invoke-static {v0}, Lcom/winlator/cmod/InputControlsFragment;->-$$Nest$fgetpreferences(Lcom/winlator/cmod/InputControlsFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const-string v2, "overlay_opacity"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 150
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 153
    return-void
.end method
