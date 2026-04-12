.class public final synthetic Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;

.field public final synthetic f$1:Lcom/winlator/cmod/winhandler/ProcessInfo;

.field public final synthetic f$2:Lcom/winlator/cmod/widget/CPUListView;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;Lcom/winlator/cmod/widget/CPUListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;

    iput-object p2, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/cmod/winhandler/ProcessInfo;

    iput-object p3, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$2:Lcom/winlator/cmod/widget/CPUListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/cmod/winhandler/ProcessInfo;

    iget-object v2, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$2:Lcom/winlator/cmod/widget/CPUListView;

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->$r8$lambda$6TSWsRQuRriNwYAoR4Fsy3glCe0(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;Lcom/winlator/cmod/widget/CPUListView;)V

    return-void
.end method
