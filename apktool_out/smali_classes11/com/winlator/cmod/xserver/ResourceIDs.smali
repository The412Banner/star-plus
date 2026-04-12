.class public Lcom/winlator/cmod/xserver/ResourceIDs;
.super Ljava/lang/Object;
.source "ResourceIDs.java"


# instance fields
.field private final idBases:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final idMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "maxClients"    # I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/ResourceIDs;->idBases:Landroidx/collection/ArraySet;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 13
    .local v0, "clientsBits":I
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    .line 14
    rsub-int/lit8 v1, v0, 0x1d

    .line 15
    .local v1, "base":I
    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/winlator/cmod/xserver/ResourceIDs;->idMask:I

    .line 16
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_1

    iget-object v3, p0, Lcom/winlator/cmod/xserver/ResourceIDs;->idBases:Landroidx/collection/ArraySet;

    shl-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized free(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "idBase"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/ResourceIDs;->idBases:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 31
    .end local p0    # "this":Lcom/winlator/cmod/xserver/ResourceIDs;
    .end local p1    # "idBase":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized get()Ljava/lang/Integer;
    .locals 3

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/ResourceIDs;->idBases:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 21
    .end local p0    # "this":Lcom/winlator/cmod/xserver/ResourceIDs;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/winlator/cmod/xserver/ResourceIDs;->idBases:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 22
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 23
    .local v1, "idBase":I
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 19
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "idBase":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isInInterval(II)Z
    .locals 2
    .param p1, "value"    # I
    .param p2, "idBase"    # I

    .line 28
    iget v0, p0, Lcom/winlator/cmod/xserver/ResourceIDs;->idMask:I

    or-int/2addr v0, p1

    iget v1, p0, Lcom/winlator/cmod/xserver/ResourceIDs;->idMask:I

    or-int/2addr v1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
