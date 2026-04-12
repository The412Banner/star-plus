.class Lcom/winlator/cmod/SettingsFragment$3;
.super Landroidx/collection/ArrayMap;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/SettingsFragment;->loadBox64PresetSpinners(Landroid/view/View;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/ArrayMap<",
        "Ljava/lang/String;",
        "Landroid/widget/Spinner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/SettingsFragment;

.field final synthetic val$sBox64Preset:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/Spinner;)V
    .locals 1
    .param p1, "this$0"    # Lcom/winlator/cmod/SettingsFragment;

    .line 489
    iput-object p1, p0, Lcom/winlator/cmod/SettingsFragment$3;->this$0:Lcom/winlator/cmod/SettingsFragment;

    iput-object p2, p0, Lcom/winlator/cmod/SettingsFragment$3;->val$sBox64Preset:Landroid/widget/Spinner;

    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 490
    const-string p2, "box64"

    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$3;->val$sBox64Preset:Landroid/widget/Spinner;

    invoke-virtual {p0, p2, v0}, Lcom/winlator/cmod/SettingsFragment$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-void
.end method
