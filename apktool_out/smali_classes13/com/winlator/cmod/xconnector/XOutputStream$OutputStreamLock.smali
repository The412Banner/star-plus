.class Lcom/winlator/cmod/xconnector/XOutputStream$OutputStreamLock;
.super Ljava/lang/Object;
.source "XOutputStream.java"

# interfaces
.implements Lcom/winlator/cmod/xconnector/XStreamLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xconnector/XOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputStreamLock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/xconnector/XOutputStream;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/winlator/cmod/xconnector/XOutputStream$OutputStreamLock;->this$0:Lcom/winlator/cmod/xconnector/XOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Lcom/winlator/cmod/xconnector/XOutputStream;->-$$Nest$fgetlock(Lcom/winlator/cmod/xconnector/XOutputStream;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream$OutputStreamLock;->this$0:Lcom/winlator/cmod/xconnector/XOutputStream;

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->-$$Nest$mflush(Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XOutputStream$OutputStreamLock;->this$0:Lcom/winlator/cmod/xconnector/XOutputStream;

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->-$$Nest$fgetlock(Lcom/winlator/cmod/xconnector/XOutputStream;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 119
    nop

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XOutputStream$OutputStreamLock;->this$0:Lcom/winlator/cmod/xconnector/XOutputStream;

    invoke-static {v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->-$$Nest$fgetlock(Lcom/winlator/cmod/xconnector/XOutputStream;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 119
    throw v0
.end method
