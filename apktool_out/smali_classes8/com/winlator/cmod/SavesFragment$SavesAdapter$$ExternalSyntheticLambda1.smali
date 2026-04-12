.class public final synthetic Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

.field public final synthetic f$1:Landroid/widget/Spinner;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/winlator/cmod/saves/Save;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/saves/Save;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

    iput-object p2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/winlator/cmod/saves/Save;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

    iget-object v1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/winlator/cmod/saves/Save;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->$r8$lambda$i9iwALCifWWYfNpS8ncpYsp5ez0(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/saves/Save;Landroid/content/DialogInterface;I)V

    return-void
.end method
