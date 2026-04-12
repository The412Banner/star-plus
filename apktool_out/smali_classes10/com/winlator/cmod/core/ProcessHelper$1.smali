.class Lcom/winlator/cmod/core/ProcessHelper$1;
.super Ljava/lang/Object;
.source "ProcessHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/core/ProcessHelper;->createWaitForThread(Ljava/lang/Process;Lcom/winlator/cmod/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$process:Ljava/lang/Process;

.field final synthetic val$terminationCallback:Lcom/winlator/cmod/core/Callback;


# direct methods
.method constructor <init>(Ljava/lang/Process;Lcom/winlator/cmod/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/winlator/cmod/core/ProcessHelper$1;->val$process:Ljava/lang/Process;

    iput-object p2, p0, Lcom/winlator/cmod/core/ProcessHelper$1;->val$terminationCallback:Lcom/winlator/cmod/core/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/core/ProcessHelper$1;->val$process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 146
    .local v0, "status":I
    iget-object v1, p0, Lcom/winlator/cmod/core/ProcessHelper$1;->val$terminationCallback:Lcom/winlator/cmod/core/Callback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "status":I
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ProcessHelper"

    const-string v2, "Error waiting for process termination"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
