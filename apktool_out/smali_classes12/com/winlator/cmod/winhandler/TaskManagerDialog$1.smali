.class Lcom/winlator/cmod/winhandler/TaskManagerDialog$1;
.super Ljava/util/TimerTask;
.source "TaskManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/winhandler/TaskManagerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;


# direct methods
.method public static synthetic $r8$lambda$awowAHTWgQiweWyjCqoH_1hqJUk(Lcom/winlator/cmod/winhandler/TaskManagerDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->-$$Nest$mupdate(Lcom/winlator/cmod/winhandler/TaskManagerDialog;)V

    return-void
.end method

.method constructor <init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/winhandler/TaskManagerDialog;

    .line 129
    iput-object p1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$1;->this$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$1;->this$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;

    invoke-static {v0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->-$$Nest$fgetactivity(Lcom/winlator/cmod/winhandler/TaskManagerDialog;)Lcom/winlator/cmod/XServerDisplayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$1;->this$0:Lcom/winlator/cmod/winhandler/TaskManagerDialog;

    new-instance v2, Lcom/winlator/cmod/winhandler/TaskManagerDialog$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;)V

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method
