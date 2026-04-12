.class public final synthetic Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;

    iput-object p2, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment;->lambda$showContainerSelectionDialog$10(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method
