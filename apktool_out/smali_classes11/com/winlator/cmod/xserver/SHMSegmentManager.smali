.class public Lcom/winlator/cmod/xserver/SHMSegmentManager;
.super Ljava/lang/Object;
.source "SHMSegmentManager.java"


# instance fields
.field private final shmSegments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final sysVSharedMemory:Lcom/winlator/cmod/sysvshm/SysVSharedMemory;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/sysvshm/SysVSharedMemory;)V
    .locals 1
    .param p1, "sysVSharedMemory"    # Lcom/winlator/cmod/sysvshm/SysVSharedMemory;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/SHMSegmentManager;->shmSegments:Landroid/util/SparseArray;

    .line 14
    iput-object p1, p0, Lcom/winlator/cmod/xserver/SHMSegmentManager;->sysVSharedMemory:Lcom/winlator/cmod/sysvshm/SysVSharedMemory;

    .line 15
    return-void
.end method


# virtual methods
.method public attach(II)V
    .locals 2
    .param p1, "xid"    # I
    .param p2, "shmid"    # I

    .line 18
    iget-object v0, p0, Lcom/winlator/cmod/xserver/SHMSegmentManager;->shmSegments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/SHMSegmentManager;->detach(I)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/SHMSegmentManager;->sysVSharedMemory:Lcom/winlator/cmod/sysvshm/SysVSharedMemory;

    invoke-virtual {v0, p2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->attach(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "data":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/xserver/SHMSegmentManager;->shmSegments:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_1
    return-void
.end method

.method public detach(I)V
    .locals 2
    .param p1, "xid"    # I

    .line 24
    iget-object v0, p0, Lcom/winlator/cmod/xserver/SHMSegmentManager;->shmSegments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 25
    .local v0, "data":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/winlator/cmod/xserver/SHMSegmentManager;->sysVSharedMemory:Lcom/winlator/cmod/sysvshm/SysVSharedMemory;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->detach(Ljava/nio/ByteBuffer;)V

    .line 27
    iget-object v1, p0, Lcom/winlator/cmod/xserver/SHMSegmentManager;->shmSegments:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 29
    :cond_0
    return-void
.end method

.method public getData(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "xid"    # I

    .line 32
    iget-object v0, p0, Lcom/winlator/cmod/xserver/SHMSegmentManager;->shmSegments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method
