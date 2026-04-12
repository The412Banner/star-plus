.class public Lcom/winlator/cmod/inputcontrols/RangeScroller;
.super Ljava/lang/Object;
.source "RangeScroller.java"


# instance fields
.field private binding:Lcom/winlator/cmod/inputcontrols/Binding;

.field private currentOffset:F

.field private final element:Lcom/winlator/cmod/inputcontrols/ControlElement;

.field private final inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

.field private isActionDown:Z

.field private lastPosition:F

.field private scrollOffset:F

.field private scrolling:Z

.field private timer:Ljava/util/Timer;

.field private touchTime:J


# direct methods
.method public static synthetic $r8$lambda$keJ5Gylr2TF5hnbIgDamgtbULZw(Lcom/winlator/cmod/inputcontrols/RangeScroller;Lcom/winlator/cmod/inputcontrols/Binding;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->lambda$handleTouchUp$0(Lcom/winlator/cmod/inputcontrols/Binding;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/winlator/cmod/inputcontrols/RangeScroller;)Lcom/winlator/cmod/inputcontrols/Binding;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinputControlsView(Lcom/winlator/cmod/inputcontrols/RangeScroller;)Lcom/winlator/cmod/widget/InputControlsView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrolling(Lcom/winlator/cmod/inputcontrols/RangeScroller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrolling:Z

    return p0
.end method

.method public constructor <init>(Lcom/winlator/cmod/widget/InputControlsView;Lcom/winlator/cmod/inputcontrols/ControlElement;)V
    .locals 1
    .param p1, "inputControlsView"    # Lcom/winlator/cmod/widget/InputControlsView;
    .param p2, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->isActionDown:Z

    .line 20
    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrolling:Z

    .line 24
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    .line 25
    iput-object p2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 26
    return-void
.end method

.method private destroyTimer()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    .line 79
    :cond_0
    return-void
.end method

.method private getBindingByPosition(FF)Lcom/winlator/cmod/inputcontrols/Binding;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 50
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    .line 51
    .local v0, "boundingBox":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getRange()Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    move-result-object v1

    .line 52
    .local v1, "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getOrientation()B

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    :goto_0
    iget v3, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->currentOffset:F

    sub-float/2addr v2, v3

    .line 53
    .local v2, "offset":F
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->getElementSize()F

    move-result v3

    div-float v3, v2, v3

    iget-byte v4, v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->max:B

    int-to-float v4, v4

    rem-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 54
    .local v3, "index":I
    if-gez v3, :cond_1

    iget-byte v4, v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->max:B

    add-int/2addr v3, v4

    .line 56
    :cond_1
    sget-object v4, Lcom/winlator/cmod/inputcontrols/RangeScroller$2;->$SwitchMap$com$winlator$cmod$inputcontrols$ControlElement$Range:[I

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "KEY_"

    packed-switch v4, :pswitch_data_0

    .line 66
    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    return-object v4

    .line 64
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_KP_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/cmod/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v4

    return-object v4

    .line 62
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/cmod/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v4

    return-object v4

    .line 60
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/cmod/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v4

    return-object v4

    .line 58
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x41

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/cmod/inputcontrols/Binding;->valueOf(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isTap()Z
    .locals 4

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->touchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$handleTouchUp$0(Lcom/winlator/cmod/inputcontrols/Binding;)V
    .locals 2
    .param p1, "finalBinding"    # Lcom/winlator/cmod/inputcontrols/Binding;

    .line 129
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    return-void
.end method


# virtual methods
.method public getElementSize()F
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    .line 30
    .local v0, "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method public getRangeIndex()[B
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getRange()Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    move-result-object v0

    .line 43
    .local v0, "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrollOffset:F

    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->getElementSize()F

    move-result v2

    div-float/2addr v1, v2

    iget-byte v2, v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->max:B

    int-to-float v2, v2

    rem-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    .line 44
    .local v1, "from":B
    if-gez v1, :cond_0

    iget-byte v2, v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->max:B

    add-int/2addr v2, v1

    int-to-byte v1, v2

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingCount()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 46
    .local v2, "to":B
    const/4 v4, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v1, v4, v5

    aput-byte v2, v4, v3

    return-object v4
.end method

.method public getScrollOffset()F
    .locals 1

    .line 38
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrollOffset:F

    return v0
.end method

.method public getScrollSize()F
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->getElementSize()F

    move-result v0

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getRange()Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    move-result-object v1

    iget-byte v1, v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->max:B

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public handleTouchDown(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 82
    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->destroyTimer()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrolling:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->isActionDown:Z

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->getBindingByPosition(FF)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->touchTime:J

    .line 88
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getOrientation()B

    move-result v1

    if-nez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iput v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->lastPosition:F

    .line 89
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setBinding(Lcom/winlator/cmod/inputcontrols/Binding;)V

    .line 91
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    .line 92
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/winlator/cmod/inputcontrols/RangeScroller$1;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller$1;-><init>(Lcom/winlator/cmod/inputcontrols/RangeScroller;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 98
    return-void
.end method

.method public handleTouchMove(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 101
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->isActionDown:Z

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getOrientation()B

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 103
    .local v0, "position":F
    :goto_0
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->lastPosition:F

    sub-float v1, v0, v1

    .line 105
    .local v1, "deltaPosition":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 106
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrolling:Z

    .line 107
    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->destroyTimer()V

    .line 110
    :cond_1
    iget-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrolling:Z

    if-eqz v2, :cond_3

    .line 111
    iget v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->currentOffset:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->currentOffset:F

    .line 113
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->getScrollSize()F

    move-result v2

    .line 114
    .local v2, "scrollSize":F
    iget v3, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->currentOffset:F

    neg-float v3, v3

    rem-float/2addr v3, v2

    iput v3, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrollOffset:F

    .line 115
    iget v3, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrollOffset:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrollOffset:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrollOffset:F

    .line 117
    :cond_2
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->lastPosition:F

    .line 118
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v3}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 121
    .end local v0    # "position":F
    .end local v1    # "deltaPosition":F
    .end local v2    # "scrollSize":F
    :cond_3
    return-void
.end method

.method public handleTouchUp()V
    .locals 6

    .line 124
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->isActionDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->destroyTimer()V

    .line 126
    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->isTap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->scrolling:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    .line 128
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    .line 129
    .local v0, "finalBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    new-instance v3, Lcom/winlator/cmod/inputcontrols/RangeScroller$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/inputcontrols/RangeScroller$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/inputcontrols/RangeScroller;Lcom/winlator/cmod/inputcontrols/Binding;)V

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Lcom/winlator/cmod/widget/InputControlsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    .end local v0    # "finalBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-virtual {v0, v2, v1}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    .line 133
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller;->isActionDown:Z

    .line 134
    return-void
.end method
