.class public final synthetic Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

.field public final synthetic f$1:Lcom/winlator/cmod/saves/Save;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

    iput-object p2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/cmod/saves/Save;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

    iget-object v1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/cmod/saves/Save;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->$r8$lambda$gjobiQAKMEdjf8kdIEZp_eMa5XA(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
