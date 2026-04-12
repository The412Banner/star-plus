.class public Lcom/winlator/cmod/sysvshm/SysVSharedMemory;
.super Ljava/lang/Object;
.source "SysVSharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    }
.end annotation


# instance fields
.field private maxSHMemoryId:I

.field private final shmemories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->maxSHMemoryId:I

    return-void
.end method

.method private static native ashmemCreateRegion(IJ)I
.end method

.method public static native createMemoryFd(Ljava/lang/String;I)I
.end method

.method private static createSharedMemory(Ljava/lang/String;I)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 96
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_1

    .line 97
    invoke-static {p0, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3

    .line 99
    .local v0, "sharedMemory":Landroid/os/SharedMemory;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getFd"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 101
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_3

    return v3

    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    goto :goto_1

    .line 106
    .end local v0    # "sharedMemory":Landroid/os/SharedMemory;
    :catch_3
    move-exception v0

    :cond_1
    :goto_1
    nop

    .line 107
    const/4 v0, -0x1

    return v0
.end method

.method public static native mapSHMSegment(IJIZ)Ljava/nio/ByteBuffer;
.end method

.method public static native unmapSHMSegment(Ljava/nio/ByteBuffer;J)V
.end method


# virtual methods
.method public attach(I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "shmid"    # I

    .line 68
    iget-object v0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;

    .line 70
    .local v1, "shmemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    if-eqz v1, :cond_1

    .line 71
    invoke-static {v1}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetdata(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetfd(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)I

    move-result v2

    invoke-static {v1}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetsize(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->mapSHMSegment(IJIZ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fputdata(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;Ljava/nio/ByteBuffer;)V

    .line 73
    :cond_0
    invoke-static {v1}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetdata(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 75
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 76
    .end local v1    # "shmemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete(I)V
    .locals 3
    .param p1, "shmid"    # I

    .line 51
    iget-object v0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;

    .line 52
    .local v0, "shmemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    if-eqz v0, :cond_1

    .line 53
    invoke-static {v0}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetfd(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 54
    invoke-static {v0}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetfd(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)I

    move-result v1

    invoke-static {v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 55
    invoke-static {v0, v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fputfd(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;I)V

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 59
    :cond_1
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->delete(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 64
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public detach(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;

    .line 83
    .local v2, "shmemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    invoke-static {v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetdata(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 84
    invoke-static {v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetdata(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 85
    invoke-static {v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetdata(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetsize(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->unmapSHMSegment(Ljava/nio/ByteBuffer;J)V

    .line 86
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fputdata(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 81
    .end local v2    # "shmemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(J)I
    .locals 6
    .param p1, "size"    # J

    .line 35
    iget-object v0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 37
    .local v1, "index":I
    invoke-static {v1, p1, p2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->ashmemCreateRegion(IJ)I

    move-result v2

    .line 38
    .local v2, "fd":I
    if-gez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sysvshm-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-int v4, p1

    invoke-static {v3, v4}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->createSharedMemory(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    .line 39
    :cond_0
    if-gez v2, :cond_1

    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 41
    :cond_1
    new-instance v3, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;-><init>(Lcom/winlator/cmod/sysvshm/SysVSharedMemory-IA;)V

    .line 42
    .local v3, "shmemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    iget v4, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->maxSHMemoryId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->maxSHMemoryId:I

    .line 43
    .local v4, "id":I
    invoke-static {v3, v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fputfd(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;I)V

    .line 44
    invoke-static {v3, p1, p2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fputsize(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;J)V

    .line 45
    iget-object v5, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    monitor-exit v0

    return v4

    .line 47
    .end local v1    # "index":I
    .end local v2    # "fd":I
    .end local v3    # "shmemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    .end local v4    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFd(I)I
    .locals 3
    .param p1, "shmid"    # I

    .line 28
    iget-object v0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->shmemories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;

    .line 30
    .local v1, "shmemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->-$$Nest$fgetfd(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    monitor-exit v0

    return v2

    .line 31
    .end local v1    # "shmemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
