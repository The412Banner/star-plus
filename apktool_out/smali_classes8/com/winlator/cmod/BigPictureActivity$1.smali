.class Lcom/winlator/cmod/BigPictureActivity$1;
.super Ljava/lang/Object;
.source "BigPictureActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/BigPictureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/BigPictureActivity;

.field final synthetic val$finalBgView:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

.field final synthetic val$finalPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/BigPictureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$1;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iput-object p2, p0, Lcom/winlator/cmod/BigPictureActivity$1;->val$finalBgView:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    iput-object p3, p0, Lcom/winlator/cmod/BigPictureActivity$1;->val$finalPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 198
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    sub-int/2addr v0, p2

    .line 200
    .local v0, "reversed":I
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$1;->val$finalBgView:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setFrameDuration(I)V

    .line 203
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$1;->val$finalPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "frame_duration_seekbar"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 207
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 209
    return-void
.end method
