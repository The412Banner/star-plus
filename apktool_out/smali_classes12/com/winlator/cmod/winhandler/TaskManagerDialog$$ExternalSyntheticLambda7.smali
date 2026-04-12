.class public final synthetic Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;

.field public final synthetic f$1:Lcom/winlator/cmod/winhandler/ProcessInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;

    iput-object p2, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$1:Lcom/winlator/cmod/winhandler/ProcessInfo;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;->f$1:Lcom/winlator/cmod/winhandler/ProcessInfo;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->$r8$lambda$QziRGizFKkcBIkMMS00WW9-ftlU(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
