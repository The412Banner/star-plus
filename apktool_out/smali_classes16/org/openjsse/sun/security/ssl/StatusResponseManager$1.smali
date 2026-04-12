.class Lorg/openjsse/sun/security/ssl/StatusResponseManager$1;
.super Ljava/lang/Object;
.source "StatusResponseManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/ssl/StatusResponseManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/StatusResponseManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    .line 105
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/StatusResponseManager$1;->this$0:Lorg/openjsse/sun/security/ssl/StatusResponseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 108
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 109
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 110
    return-object v0
.end method
