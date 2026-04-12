.class public Lcom/winlator/cmod/core/CursorLocker;
.super Ljava/util/TimerTask;
.source "CursorLocker.java"


# instance fields
.field private damping:F

.field private enabled:Z

.field private maxDistance:S

.field private final pauseLock:Ljava/lang/Object;

.field private final xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 7
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 16
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 11
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/winlator/cmod/core/CursorLocker;->damping:F

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/core/CursorLocker;->enabled:Z

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/core/CursorLocker;->pauseLock:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 18
    iget-object v0, p1, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v0, v0, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/winlator/cmod/core/CursorLocker;->maxDistance:S

    .line 19
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 20
    .local v1, "timer":Ljava/util/Timer;
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x10

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 21
    return-void
.end method


# virtual methods
.method public getDamping()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/winlator/cmod/core/CursorLocker;->damping:F

    return v0
.end method

.method public getMaxDistance()S
    .locals 1

    .line 24
    iget-short v0, p0, Lcom/winlator/cmod/core/CursorLocker;->maxDistance:S

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/winlator/cmod/core/CursorLocker;->enabled:Z

    return v0
.end method

.method public run()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/winlator/cmod/core/CursorLocker;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-boolean v1, p0, Lcom/winlator/cmod/core/CursorLocker;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 58
    :try_start_1
    iget-object v1, p0, Lcom/winlator/cmod/core/CursorLocker;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 62
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v0

    iget-short v1, p0, Lcom/winlator/cmod/core/CursorLocker;->maxDistance:S

    neg-int v1, v1

    iget-object v2, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    iget-short v3, p0, Lcom/winlator/cmod/core/CursorLocker;->maxDistance:S

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short v0, v0

    .line 65
    .local v0, "x":S
    iget-object v1, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v1

    iget-short v2, p0, Lcom/winlator/cmod/core/CursorLocker;->maxDistance:S

    neg-int v2, v2

    iget-object v3, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    iget-short v4, p0, Lcom/winlator/cmod/core/CursorLocker;->maxDistance:S

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v1

    int-to-short v1, v1

    .line 67
    .local v1, "y":S
    if-gez v0, :cond_1

    .line 68
    iget-object v2, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    int-to-float v3, v0

    iget v4, p0, Lcom/winlator/cmod/core/CursorLocker;->damping:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/Pointer;->setX(I)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    if-lt v0, v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    iget-object v3, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    int-to-float v3, v3

    iget-object v4, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v4, v4, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    sub-int v4, v0, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/winlator/cmod/core/CursorLocker;->damping:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/Pointer;->setX(I)V

    .line 73
    :cond_2
    :goto_1
    if-gez v1, :cond_3

    .line 74
    iget-object v2, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    int-to-float v3, v1

    iget v4, p0, Lcom/winlator/cmod/core/CursorLocker;->damping:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/Pointer;->setY(I)V

    goto :goto_2

    .line 76
    :cond_3
    iget-object v2, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    if-lt v1, v2, :cond_4

    .line 77
    iget-object v2, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    iget-object v3, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    int-to-float v3, v3

    iget-object v4, p0, Lcom/winlator/cmod/core/CursorLocker;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v4, v4, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    sub-int v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/winlator/cmod/core/CursorLocker;->damping:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/Pointer;->setY(I)V

    .line 79
    :cond_4
    :goto_2
    return-void

    .line 62
    .end local v0    # "x":S
    .end local v1    # "y":S
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public setDamping(F)V
    .locals 0
    .param p1, "damping"    # F

    .line 36
    iput p1, p0, Lcom/winlator/cmod/core/CursorLocker;->damping:F

    .line 37
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/winlator/cmod/core/CursorLocker;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/winlator/cmod/core/CursorLocker;->enabled:Z

    .line 47
    iget-object v1, p0, Lcom/winlator/cmod/core/CursorLocker;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 48
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_0
    iput-boolean p1, p0, Lcom/winlator/cmod/core/CursorLocker;->enabled:Z

    .line 51
    :goto_0
    return-void
.end method

.method public setMaxDistance(S)V
    .locals 0
    .param p1, "maxDistance"    # S

    .line 28
    iput-short p1, p0, Lcom/winlator/cmod/core/CursorLocker;->maxDistance:S

    .line 29
    return-void
.end method
