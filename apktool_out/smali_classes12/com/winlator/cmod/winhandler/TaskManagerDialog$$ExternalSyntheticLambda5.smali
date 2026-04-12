.class public final synthetic Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/winhandler/WinHandler;

.field public final synthetic f$1:Lcom/winlator/cmod/winhandler/ProcessInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/winhandler/WinHandler;Lcom/winlator/cmod/winhandler/ProcessInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;->f$0:Lcom/winlator/cmod/winhandler/WinHandler;

    iput-object p2, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;->f$1:Lcom/winlator/cmod/winhandler/ProcessInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;->f$0:Lcom/winlator/cmod/winhandler/WinHandler;

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;->f$1:Lcom/winlator/cmod/winhandler/ProcessInfo;

    invoke-static {v0, v1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lambda$showListItemMenu$3(Lcom/winlator/cmod/winhandler/WinHandler;Lcom/winlator/cmod/winhandler/ProcessInfo;)V

    return-void
.end method
