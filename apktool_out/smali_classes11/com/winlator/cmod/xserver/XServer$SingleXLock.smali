.class Lcom/winlator/cmod/xserver/XServer$SingleXLock;
.super Ljava/lang/Object;
.source "XServer.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/XLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/XServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleXLock"
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method private constructor <init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xserver/XServer$Lockable;)V
    .locals 0
    .param p2, "lockable"    # Lcom/winlator/cmod/xserver/XServer$Lockable;

    .line 106
    iput-object p1, p0, Lcom/winlator/cmod/xserver/XServer$SingleXLock;->this$0:Lcom/winlator/cmod/xserver/XServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lcom/winlator/cmod/xserver/XServer;->-$$Nest$fgetlocks(Lcom/winlator/cmod/xserver/XServer;)Ljava/util/EnumMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/winlator/cmod/xserver/XServer$SingleXLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 108
    iget-object p1, p0, Lcom/winlator/cmod/xserver/XServer$SingleXLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xserver/XServer$Lockable;Lcom/winlator/cmod/xserver/XServer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/xserver/XServer$SingleXLock;-><init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xserver/XServer$Lockable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer$SingleXLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 114
    return-void
.end method
