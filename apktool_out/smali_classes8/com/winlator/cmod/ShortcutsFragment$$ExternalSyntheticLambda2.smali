.class public final synthetic Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/ShortcutsFragment;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Lcom/winlator/cmod/container/Shortcut;

.field public final synthetic f$3:Lcom/winlator/cmod/contentdialog/ContentDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/ShortcutsFragment;Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/contentdialog/ContentDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/ShortcutsFragment;

    iput-object p2, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;->f$2:Lcom/winlator/cmod/container/Shortcut;

    iput-object p4, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;->f$3:Lcom/winlator/cmod/contentdialog/ContentDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/ShortcutsFragment;

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;->f$1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;->f$2:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda2;->f$3:Lcom/winlator/cmod/contentdialog/ContentDialog;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/winlator/cmod/ShortcutsFragment;->$r8$lambda$zwrl_2r9nsXp2QEZWxgcVoTBIz4(Lcom/winlator/cmod/ShortcutsFragment;Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/contentdialog/ContentDialog;Landroid/view/View;)V

    return-void
.end method
