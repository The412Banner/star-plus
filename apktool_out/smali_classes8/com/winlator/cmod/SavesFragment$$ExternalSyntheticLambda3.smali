.class public final synthetic Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/winlator/cmod/SavesFragment;->lambda$showContainerSelectionDialog$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
