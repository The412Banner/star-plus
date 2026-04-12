.class Lcom/winlator/cmod/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/SettingsFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Lcom/winlator/cmod/core/PreloaderDialog;

.field final synthetic val$sMIDISoundFont:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/SettingsFragment;Lcom/winlator/cmod/core/PreloaderDialog;Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/SettingsFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/winlator/cmod/SettingsFragment$1;->this$0:Lcom/winlator/cmod/SettingsFragment;

    iput-object p2, p0, Lcom/winlator/cmod/SettingsFragment$1;->val$dialog:Lcom/winlator/cmod/core/PreloaderDialog;

    iput-object p3, p0, Lcom/winlator/cmod/SettingsFragment$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/winlator/cmod/SettingsFragment$1;->val$sMIDISoundFont:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onFailed$1(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 237
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->alert(Landroid/content/Context;ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sMIDISoundFont"    # Landroid/widget/Spinner;

    .line 224
    const v0, 0x7f100239

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->alert(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 225
    invoke-static {p1}, Lcom/winlator/cmod/midi/MidiManager;->loadSFSpinnerWithoutDisabled(Landroid/widget/Spinner;)V

    .line 226
    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 231
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$1;->val$dialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 232
    packed-switch p1, :pswitch_data_0

    .line 235
    const v0, 0x7f100238

    goto :goto_0

    .line 233
    :pswitch_0
    const v0, 0x7f100237

    goto :goto_0

    .line 234
    :pswitch_1
    const v0, 0x7f100236

    .line 235
    :goto_0
    nop

    .line 237
    .local v0, "resId":I
    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment$1;->this$0:Lcom/winlator/cmod/SettingsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment$1;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/winlator/cmod/SettingsFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lcom/winlator/cmod/SettingsFragment$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$1;->val$dialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 223
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$1;->this$0:Lcom/winlator/cmod/SettingsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment$1;->val$sMIDISoundFont:Landroid/widget/Spinner;

    new-instance v3, Lcom/winlator/cmod/SettingsFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Lcom/winlator/cmod/SettingsFragment$1$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method
