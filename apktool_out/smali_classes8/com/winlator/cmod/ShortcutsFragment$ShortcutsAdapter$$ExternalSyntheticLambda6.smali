.class public final synthetic Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;

.field public final synthetic f$1:Lcom/winlator/cmod/container/Shortcut;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;

    iput-object p2, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda6;->f$1:Lcom/winlator/cmod/container/Shortcut;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda6;->f$1:Lcom/winlator/cmod/container/Shortcut;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->$r8$lambda$zQWq7EaGrxaGPAJ6WIdYtuUQLk8(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
