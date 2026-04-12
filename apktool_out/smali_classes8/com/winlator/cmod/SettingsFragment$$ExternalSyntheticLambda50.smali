.class public final synthetic Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/collection/ArrayMap;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/winlator/cmod/core/Callback;


# direct methods
.method public synthetic constructor <init>(Landroidx/collection/ArrayMap;Ljava/lang/String;Landroid/content/Context;Lcom/winlator/cmod/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;->f$0:Landroidx/collection/ArrayMap;

    iput-object p2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;->f$3:Lcom/winlator/cmod/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;->f$0:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;->f$3:Lcom/winlator/cmod/core/Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadBox64PresetSpinners$21(Landroidx/collection/ArrayMap;Ljava/lang/String;Landroid/content/Context;Lcom/winlator/cmod/core/Callback;)V

    return-void
.end method
