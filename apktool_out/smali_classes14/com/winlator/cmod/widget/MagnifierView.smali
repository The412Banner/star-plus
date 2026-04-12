.class public Lcom/winlator/cmod/widget/MagnifierView;
.super Landroid/widget/FrameLayout;
.source "MagnifierView.java"


# instance fields
.field private hideButtonCallback:Ljava/lang/Runnable;

.field private lastX:S

.field private lastY:S

.field private final preferences:Landroid/content/SharedPreferences;

.field private restoreSavedPosition:Z

.field private textView:Landroid/widget/TextView;

.field private zoomButtonCallback:Lcom/winlator/cmod/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$61dUTgaKvxCFL9NjP8ffnd7W-xI(Lcom/winlator/cmod/widget/MagnifierView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/MagnifierView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LlivoB_U34rqAEasp-T4yMe9Rno(Lcom/winlator/cmod/widget/MagnifierView;Landroid/graphics/PointF;[ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/widget/MagnifierView;->lambda$new$0(Landroid/graphics/PointF;[ZLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RXdeZ3JOIdy1JYeDFchM5E5HEDE(Lcom/winlator/cmod/widget/MagnifierView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/MagnifierView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gymEEF8KbERT7GC60fEU4OBcDHA(Lcom/winlator/cmod/widget/MagnifierView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/MagnifierView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/widget/MagnifierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/MagnifierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/widget/MagnifierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->restoreSavedPosition:Z

    .line 25
    const/4 v1, 0x0

    iput-short v1, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastX:S

    .line 26
    iput-short v1, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastY:S

    .line 46
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/cmod/widget/MagnifierView;->preferences:Landroid/content/SharedPreferences;

    .line 47
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/MagnifierView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c005f

    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "contentView":Landroid/view/View;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 51
    .local v3, "startPoint":Landroid/graphics/PointF;
    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    .line 52
    .local v0, "isActionDown":[Z
    const v1, 0x7f090033

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/winlator/cmod/widget/MagnifierView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, v0}, Lcom/winlator/cmod/widget/MagnifierView$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/widget/MagnifierView;Landroid/graphics/PointF;[Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    const v1, 0x7f090045

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/winlator/cmod/widget/MagnifierView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/widget/MagnifierView$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/widget/MagnifierView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f090044

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/winlator/cmod/widget/MagnifierView$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/widget/MagnifierView$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/widget/MagnifierView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f09002a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/winlator/cmod/widget/MagnifierView$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/widget/MagnifierView$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/widget/MagnifierView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f09017c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/winlator/cmod/widget/MagnifierView;->textView:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/MagnifierView;->addView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/graphics/PointF;[ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "startPoint"    # Landroid/graphics/PointF;
    .param p2, "isActionDown"    # [Z
    .param p3, "v"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 53
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    aget-boolean v0, p2, v2

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MagnifierView;->getX()F

    move-result v0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 62
    .local v0, "newX":F
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MagnifierView;->getY()F

    move-result v2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 63
    .local v2, "newY":F
    invoke-direct {p0, v0, v2}, Lcom/winlator/cmod/widget/MagnifierView;->movePanel(FF)V

    .line 64
    .end local v0    # "newX":F
    .end local v2    # "newY":F
    goto :goto_0

    .line 67
    :pswitch_1
    aget-boolean v0, p2, v2

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastX:S

    if-lez v0, :cond_0

    iget-short v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastY:S

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v4, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastX:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastY:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "magnifier_view"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    :cond_0
    iput-short v2, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastX:S

    .line 71
    iput-short v2, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastY:S

    .line 72
    aput-boolean v2, p2, v2

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 56
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 57
    aput-boolean v1, p2, v2

    .line 58
    nop

    .line 75
    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->zoomButtonCallback:Lcom/winlator/cmod/core/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->zoomButtonCallback:Lcom/winlator/cmod/core/Callback;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->zoomButtonCallback:Lcom/winlator/cmod/core/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->zoomButtonCallback:Lcom/winlator/cmod/core/Callback;

    const/high16 v1, -0x41800000    # -0.25f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->hideButtonCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->hideButtonCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    :cond_0
    return-void
.end method

.method private movePanel(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 122
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 123
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MagnifierView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 124
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MagnifierView;->getWidth()I

    move-result v2

    .line 125
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MagnifierView;->getHeight()I

    move-result v3

    .line 126
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 127
    .local v4, "parentWidth":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 128
    .local v5, "parentHeight":I
    int-to-float v6, v0

    sub-int v7, v4, v0

    sub-int/2addr v7, v2

    int-to-float v7, v7

    invoke-static {p1, v6, v7}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result p1

    .line 129
    int-to-float v6, v0

    sub-int v7, v5, v0

    sub-int/2addr v7, v3

    int-to-float v7, v7

    invoke-static {p2, v6, v7}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result p2

    .line 130
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/widget/MagnifierView;->setX(F)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/winlator/cmod/widget/MagnifierView;->setY(F)V

    .line 132
    float-to-int v6, p1

    int-to-short v6, v6

    iput-short v6, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastX:S

    .line 133
    float-to-int v6, p2

    int-to-short v6, v6

    iput-short v6, p0, Lcom/winlator/cmod/widget/MagnifierView;->lastY:S

    .line 134
    return-void
.end method


# virtual methods
.method public getHideButtonCallback()Ljava/lang/Runnable;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->hideButtonCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getZoomButtonCallback()Lcom/winlator/cmod/core/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->zoomButtonCallback:Lcom/winlator/cmod/core/Callback;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 102
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->restoreSavedPosition:Z

    if-eqz v0, :cond_1

    .line 103
    const v0, 0x49742400    # 1000000.0f

    .line 104
    .local v0, "x":F
    const v1, 0x49742400    # 1000000.0f

    .line 106
    .local v1, "y":F
    iget-object v2, p0, Lcom/winlator/cmod/widget/MagnifierView;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "magnifier_view"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "config":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 109
    :try_start_0
    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "parts":[Ljava/lang/String;
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v5

    int-to-float v0, v5

    .line 111
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v5

    .end local v4    # "parts":[Ljava/lang/String;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v4

    :goto_0
    nop

    .line 116
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/widget/MagnifierView;->movePanel(FF)V

    .line 117
    iput-boolean v3, p0, Lcom/winlator/cmod/widget/MagnifierView;->restoreSavedPosition:Z

    .line 119
    .end local v0    # "x":F
    .end local v1    # "y":F
    .end local v2    # "config":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setHideButtonCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "hideButtonCallback"    # Ljava/lang/Runnable;

    .line 149
    iput-object p1, p0, Lcom/winlator/cmod/widget/MagnifierView;->hideButtonCallback:Ljava/lang/Runnable;

    .line 150
    return-void
.end method

.method public setZoomButtonCallback(Lcom/winlator/cmod/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "zoomButtonCallback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/winlator/cmod/widget/MagnifierView;->zoomButtonCallback:Lcom/winlator/cmod/core/Callback;

    .line 142
    return-void
.end method

.method public setZoomValue(F)V
    .locals 3
    .param p1, "value"    # F

    .line 95
    iget-object v0, p0, Lcom/winlator/cmod/widget/MagnifierView;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
