.class Lcom/winlator/cmod/xserver/XServer$MultiXLock;
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
    name = "MultiXLock"
.end annotation


# instance fields
.field private final lockables:[Lcom/winlator/cmod/xserver/XServer$Lockable;

.field final synthetic this$0:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method private constructor <init>(Lcom/winlator/cmod/xserver/XServer;[Lcom/winlator/cmod/xserver/XServer$Lockable;)V
    .locals 4
    .param p2, "lockables"    # [Lcom/winlator/cmod/xserver/XServer$Lockable;

    .line 120
    iput-object p1, p0, Lcom/winlator/cmod/xserver/XServer$MultiXLock;->this$0:Lcom/winlator/cmod/xserver/XServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/winlator/cmod/xserver/XServer$MultiXLock;->lockables:[Lcom/winlator/cmod/xserver/XServer$Lockable;

    .line 122
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .local v2, "lockable":Lcom/winlator/cmod/xserver/XServer$Lockable;
    invoke-static {p1}, Lcom/winlator/cmod/xserver/XServer;->-$$Nest$fgetlocks(Lcom/winlator/cmod/xserver/XServer;)Ljava/util/EnumMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .end local v2    # "lockable":Lcom/winlator/cmod/xserver/XServer$Lockable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/xserver/XServer;[Lcom/winlator/cmod/xserver/XServer$Lockable;Lcom/winlator/cmod/xserver/XServer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/xserver/XServer$MultiXLock;-><init>(Lcom/winlator/cmod/xserver/XServer;[Lcom/winlator/cmod/xserver/XServer$Lockable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer$MultiXLock;->lockables:[Lcom/winlator/cmod/xserver/XServer$Lockable;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer$MultiXLock;->this$0:Lcom/winlator/cmod/xserver/XServer;

    invoke-static {v1}, Lcom/winlator/cmod/xserver/XServer;->-$$Nest$fgetlocks(Lcom/winlator/cmod/xserver/XServer;)Ljava/util/EnumMap;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/xserver/XServer$MultiXLock;->lockables:[Lcom/winlator/cmod/xserver/XServer$Lockable;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
