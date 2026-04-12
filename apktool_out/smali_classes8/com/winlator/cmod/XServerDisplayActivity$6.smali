.class Lcom/winlator/cmod/XServerDisplayActivity$6;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/XServerDisplayActivity;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/XServerDisplayActivity;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 845
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 848
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$msavePlaytimeData(Lcom/winlator/cmod/XServerDisplayActivity;)V

    .line 849
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgethandler(Lcom/winlator/cmod/XServerDisplayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v1}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetsavePlaytimeRunnable(Lcom/winlator/cmod/XServerDisplayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 850
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetmidiHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/midi/MidiHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetmidiHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/midi/MidiHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/midi/MidiHandler;->stop()V

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetenvironment(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/xenvironment/XEnvironment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetenvironment(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/xenvironment/XEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->stopEnvironmentComponents()V

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetwinHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetwinHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/winhandler/WinHandler;->stop()V

    .line 855
    :cond_3
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetwineRequestHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/core/WineRequestHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetwineRequestHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/core/WineRequestHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/core/WineRequestHandler;->stop()V

    .line 857
    :cond_4
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->terminateAllWineProcesses()V

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 860
    .local v0, "start":J
    :goto_0
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->listRunningWineProcesses()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 862
    .local v2, "elapsed":J
    const-wide/16 v4, 0x5dc

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    .line 863
    goto :goto_1

    .line 865
    .end local v2    # "elapsed":J
    :cond_5
    goto :goto_0

    .line 866
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    iget-object v2, v2, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v2}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 867
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity$6;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v2}, Lcom/winlator/cmod/XServerDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/cmod/core/AppUtils;->restartApplication(Landroid/content/Context;)V

    .line 868
    return-void
.end method
