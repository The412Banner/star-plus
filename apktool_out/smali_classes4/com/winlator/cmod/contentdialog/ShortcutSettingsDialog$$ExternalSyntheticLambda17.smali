.class public final synthetic Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda17;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda17;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda17;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda17;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$5(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
