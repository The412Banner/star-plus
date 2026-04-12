.class Lcom/winlator/cmod/XServerDisplayActivity$1;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/XServerDisplayActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 304
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity$1;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$1;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$msavePlaytimeData(Lcom/winlator/cmod/XServerDisplayActivity;)V

    .line 308
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$1;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgethandler(Lcom/winlator/cmod/XServerDisplayActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    return-void
.end method
