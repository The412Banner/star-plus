.class public Lcom/winlator/cmod/widget/TouchpadView;
.super Landroid/view/View;
.source "TouchpadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/widget/TouchpadView$Finger;
    }
.end annotation


# static fields
.field private static final CLICK_DELAYED_TIME:Ljava/lang/Byte;

.field public static final CURSOR_ACCELERATION:F = 1.25f

.field public static final CURSOR_ACCELERATION_THRESHOLD:B = 0x6t

.field private static final EFFECTIVE_TOUCH_DISTANCE:Ljava/lang/Byte;

.field private static final MAX_FINGERS:B = 0x4t

.field public static final MAX_TAP_MILLISECONDS:S = 0xc8s

.field public static final MAX_TAP_TRAVEL_DISTANCE:B = 0xat

.field private static final MAX_TWO_FINGERS_SCROLL_DISTANCE:S = 0x15es

.field private static final UPDATE_FORM_DELAYED_TIME:I = 0x32


# instance fields
.field private continueClick:Z

.field private fingerPointerButtonLeft:Lcom/winlator/cmod/widget/TouchpadView$Finger;

.field private fingerPointerButtonRight:Lcom/winlator/cmod/widget/TouchpadView$Finger;

.field private final fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

.field private fourFingersTapCallback:Ljava/lang/Runnable;

.field private hideControlsRunnable:Ljava/lang/Runnable;

.field private lastTouchedPosX:I

.field private lastTouchedPosY:I

.field private mouseEnabled:Z

.field private moveCursorToTouchpoint:Z

.field private numFingers:B

.field private pointerButtonLeftEnabled:Z

.field private pointerButtonRightEnabled:Z

.field private preferences:Landroid/content/SharedPreferences;

.field private resolutionScale:F

.field private scrollAccumY:F

.field private scrolling:Z

.field private sensitivity:F

.field private simTouchScreen:Z

.field private timeoutHandler:Landroid/os/Handler;

.field private final xServer:Lcom/winlator/cmod/xserver/XServer;

.field private final xform:[F


# direct methods
.method public static synthetic $r8$lambda$3bXMjJ-1Tal82zoj4R7pAI2i0Ec(Lcom/winlator/cmod/widget/TouchpadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView;->lambda$toggleFullscreen$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$9q3TPBTSllLvlLt2oPDeXniU34Y(Lcom/winlator/cmod/widget/TouchpadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView;->lambda$handleTouchpadEvent$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$bzDw3kHWcJR1M4RH6Ij31lH6W2c(Lcom/winlator/cmod/widget/TouchpadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView;->lambda$releasePointerButtonRight$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$fBCryX1MZuaoY7w5RzUSZfxp6bo(Lcom/winlator/cmod/widget/TouchpadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView;->lambda$releasePointerButtonLeft$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jU-DVLe55qD0Al9vj_a3QQV9JKA(Lcom/winlator/cmod/widget/TouchpadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView;->lambda$handleFingerUp$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetsensitivity(Lcom/winlator/cmod/widget/TouchpadView;)F
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/widget/TouchpadView;->sensitivity:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetxform(Lcom/winlator/cmod/widget/TouchpadView;)[F
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleStylusHoverEvent(Lcom/winlator/cmod/widget/TouchpadView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleStylusHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/widget/TouchpadView;->CLICK_DELAYED_TIME:Ljava/lang/Byte;

    .line 55
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/widget/TouchpadView;->EFFECTIVE_TOUCH_DISTANCE:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/winlator/cmod/xserver/XServer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xServer"    # Lcom/winlator/cmod/xserver/XServer;
    .param p3, "timeoutHandler"    # Landroid/os/Handler;
    .param p4, "hideControlsRunnable"    # Ljava/lang/Runnable;

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/winlator/cmod/widget/TouchpadView$Finger;

    iput-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 38
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->sensitivity:F

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    .line 41
    iput-boolean v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonRightEnabled:Z

    .line 44
    const/4 v2, 0x0

    iput v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrollAccumY:F

    .line 45
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrolling:Z

    .line 48
    invoke-static {}, Lcom/winlator/cmod/math/XForm;->getInstance()[F

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    .line 49
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->moveCursorToTouchpoint:Z

    .line 50
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->simTouchScreen:Z

    .line 51
    iput-boolean v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->continueClick:Z

    .line 58
    iput-boolean v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->mouseEnabled:Z

    .line 71
    iput-object p2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 73
    iput-object p3, p0, Lcom/winlator/cmod/widget/TouchpadView;->timeoutHandler:Landroid/os/Handler;

    .line 74
    iput-object p4, p0, Lcom/winlator/cmod/widget/TouchpadView;->hideControlsRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/TouchpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView;->createTransparentBg()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/TouchpadView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setClickable(Z)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/TouchpadView;->setFocusableInTouchMode(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/TouchpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080107

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/TouchpadView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 82
    invoke-static {}, Lcom/winlator/cmod/core/AppUtils;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/winlator/cmod/core/AppUtils;->getScreenHeight()I

    move-result v1

    iget-object v2, p2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    iget-object v3, p2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/winlator/cmod/widget/TouchpadView;->updateXform(IIII)V

    .line 84
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->preferences:Landroid/content/SharedPreferences;

    .line 86
    iput-object p3, p0, Lcom/winlator/cmod/widget/TouchpadView;->timeoutHandler:Landroid/os/Handler;

    .line 87
    iput-object p4, p0, Lcom/winlator/cmod/widget/TouchpadView;->hideControlsRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/winlator/cmod/widget/TouchpadView$1;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/widget/TouchpadView$1;-><init>(Lcom/winlator/cmod/widget/TouchpadView;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/TouchpadView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 99
    return-void
.end method

.method private createTransparentBg()Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 688
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 690
    .local v0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 691
    .local v1, "focusedDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 693
    .local v3, "defaultDrawable":Landroid/graphics/drawable/ColorDrawable;
    const v4, 0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 694
    new-array v2, v2, [I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 696
    return-object v0
.end method

.method private findSecondFinger(Lcom/winlator/cmod/widget/TouchpadView$Finger;)Lcom/winlator/cmod/widget/TouchpadView$Finger;
    .locals 2
    .param p1, "finger"    # Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 532
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    return-object v1

    .line 532
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 535
    .end local v0    # "i":B
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleFingerMove(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V
    .locals 11
    .param p1, "finger1"    # Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, "skipPointerMove":Z
    iget-byte v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->findSecondFinger(Lcom/winlator/cmod/widget/TouchpadView$Finger;)Lcom/winlator/cmod/widget/TouchpadView$Finger;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 489
    .local v1, "finger2":Lcom/winlator/cmod/widget/TouchpadView$Finger;
    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 490
    iget-object v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v4, v4, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v5, v5, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v5, v4

    .line 491
    .local v5, "resolutionScale":F
    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetx(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v4

    invoke-static {v1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetx(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v4

    invoke-static {v1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v8

    sub-int/2addr v4, v8

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v5

    .line 493
    .local v4, "currDistance":F
    const/high16 v6, 0x43af0000    # 350.0f

    cmpg-float v7, v4, v6

    if-gez v7, :cond_3

    .line 494
    iget v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrollAccumY:F

    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v7

    invoke-static {v1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetlastY(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v9

    invoke-static {v1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetlastY(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v8

    sub-float/2addr v7, v9

    add-float/2addr v6, v7

    iput v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrollAccumY:F

    .line 496
    iget v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrollAccumY:F

    const/high16 v7, -0x3d380000    # -100.0f

    cmpg-float v6, v6, v7

    const/4 v7, 0x0

    if-gez v6, :cond_1

    .line 497
    iget-object v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v8, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v6, v8}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 498
    iget-object v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v8, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v6, v8}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 499
    iput v7, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrollAccumY:F

    goto :goto_1

    .line 501
    :cond_1
    iget v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrollAccumY:F

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    .line 502
    iget-object v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v8, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v6, v8}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 503
    iget-object v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v8, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v6, v8}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 504
    iput v7, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrollAccumY:F

    .line 506
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrolling:Z

    goto :goto_2

    .line 508
    :cond_3
    cmpl-float v6, v4, v6

    if-ltz v6, :cond_4

    iget-object v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    sget-object v7, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/xserver/Pointer;->isButtonPressed(Lcom/winlator/cmod/xserver/Pointer$Button;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 509
    invoke-static {v1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$mtravelDistance(Lcom/winlator/cmod/widget/TouchpadView$Finger;)F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 510
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->pressPointerButtonLeft(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V

    .line 511
    const/4 v0, 0x1

    .line 515
    .end local v4    # "currDistance":F
    .end local v5    # "resolutionScale":F
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrolling:Z

    if-nez v4, :cond_7

    iget-byte v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    if-gt v4, v2, :cond_7

    if-nez v0, :cond_7

    .line 516
    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$mdeltaX(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v2

    .line 517
    .local v2, "dx":I
    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$mdeltaY(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v4

    .line 519
    .local v4, "dy":I
    iget-boolean v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->simTouchScreen:Z

    if-eqz v5, :cond_5

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgettouchTime(Lcom/winlator/cmod/widget/TouchpadView$Finger;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    sget-object v3, Lcom/winlator/cmod/widget/TouchpadView;->CLICK_DELAYED_TIME:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-lez v3, :cond_7

    .line 521
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetx(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v5

    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    goto :goto_3

    .line 523
    :cond_5
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v5}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 524
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v5}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v5

    .line 525
    .local v5, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v2, v4, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    .line 526
    .end local v5    # "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    goto :goto_3

    .line 527
    :cond_6
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3, v2, v4}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMoveDelta(II)V

    .line 529
    .end local v2    # "dx":I
    .end local v4    # "dy":I
    :cond_7
    :goto_3
    return-void
.end method

.method private handleFingerUp(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V
    .locals 3
    .param p1, "finger1"    # Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 456
    iget-byte v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 472
    :pswitch_1
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->fourFingersTapCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 473
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$misTap(Lcom/winlator/cmod/widget/TouchpadView$Finger;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 473
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 476
    .end local v0    # "i":B
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->fourFingersTapCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 468
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->findSecondFinger(Lcom/winlator/cmod/widget/TouchpadView$Finger;)Lcom/winlator/cmod/widget/TouchpadView$Finger;

    move-result-object v0

    .line 469
    .local v0, "finger2":Lcom/winlator/cmod/widget/TouchpadView$Finger;
    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$misTap(Lcom/winlator/cmod/widget/TouchpadView$Finger;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->pressPointerButtonRight(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V

    goto :goto_1

    .line 458
    .end local v0    # "finger2":Lcom/winlator/cmod/widget/TouchpadView$Finger;
    :pswitch_3
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->simTouchScreen:Z

    if-eqz v0, :cond_2

    .line 459
    new-instance v0, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/widget/TouchpadView;)V

    .line 463
    .local v0, "clickDelay":Ljava/lang/Runnable;
    sget-object v1, Lcom/winlator/cmod/widget/TouchpadView;->CLICK_DELAYED_TIME:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/winlator/cmod/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 464
    .end local v0    # "clickDelay":Ljava/lang/Runnable;
    goto :goto_1

    .line 465
    :cond_2
    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$misTap(Lcom/winlator/cmod/widget/TouchpadView$Finger;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->pressPointerButtonLeft(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V

    .line 481
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->releasePointerButtonLeft(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V

    .line 482
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->releasePointerButtonRight(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V

    .line 483
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleStylusEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 223
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    .line 225
    .local v1, "buttonState":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleStylusMove(Landroid/view/MotionEvent;)V

    .line 235
    goto :goto_0

    .line 237
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleStylusUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 227
    :pswitch_2
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleStylusRightClick(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleStylusLeftClick(Landroid/view/MotionEvent;)V

    .line 232
    nop

    .line 241
    :goto_0
    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleStylusHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 203
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "StylusEvent"

    packed-switch v0, :pswitch_data_0

    .line 216
    :pswitch_0
    return v2

    .line 213
    :pswitch_1
    const-string v2, "Hover Exit"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    goto :goto_0

    .line 205
    :pswitch_2
    const-string v2, "Hover Enter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    goto :goto_0

    .line 208
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hover Move: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v3

    .line 210
    .local v3, "transformedPoint":[F
    iget-object v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    aget v2, v3, v2

    float-to-int v2, v2

    aget v5, v3, v1

    float-to-int v5, v5

    invoke-virtual {v4, v2, v5}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 211
    nop

    .line 218
    .end local v3    # "transformedPoint":[F
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleStylusLeftClick(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 245
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v0

    .line 246
    .local v0, "transformedPoint":[F
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 247
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 248
    return-void
.end method

.method private handleStylusMove(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 257
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v0

    .line 258
    .local v0, "transformedPoint":[F
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 259
    return-void
.end method

.method private handleStylusRightClick(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 251
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v0

    .line 252
    .local v0, "transformedPoint":[F
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 253
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 254
    return-void
.end method

.method private handleStylusUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 262
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 263
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 264
    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 397
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v0

    .line 398
    .local v0, "transformedPoint":[F
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    aget v4, v0, v3

    float-to-int v4, v4

    aget v5, v0, v2

    float-to-int v5, v5

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    aget v4, v0, v3

    float-to-int v4, v4

    aget v5, v0, v2

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 404
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 405
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_1

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 410
    :cond_2
    :goto_1
    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 413
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v0

    .line 414
    .local v0, "transformedPoint":[F
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    aget v4, v0, v3

    float-to-int v4, v4

    aget v5, v0, v2

    float-to-int v5, v5

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    aget v3, v0, v3

    float-to-int v3, v3

    aget v2, v0, v2

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 418
    :goto_0
    return-void
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 421
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 425
    :goto_0
    return-void
.end method

.method private handleTouchpadEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 270
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 271
    .local v1, "pointerId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 272
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_0

    return v3

    .line 274
    :cond_0
    const/16 v5, 0x2002

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 350
    :pswitch_1
    const/4 v5, 0x0

    .local v5, "i":B
    :goto_0
    if-ge v5, v4, :cond_1

    iget-object v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aput-object v6, v8, v5

    add-int/lit8 v8, v5, 0x1

    int-to-byte v5, v8

    goto :goto_0

    .line 351
    .end local v5    # "i":B
    :cond_1
    iput-byte v7, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    goto/16 :goto_5

    .line 318
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 319
    iget-object v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v4

    .line 320
    .local v4, "transformedPoint":[F
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v5}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 321
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v5}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v5

    aget v6, v4, v7

    float-to-int v6, v6

    aget v8, v4, v3

    float-to-int v8, v8

    invoke-virtual {v5, v3, v6, v8, v7}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_1

    .line 323
    :cond_2
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    aget v6, v4, v7

    float-to-int v6, v6

    aget v7, v4, v3

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 324
    .end local v4    # "transformedPoint":[F
    :goto_1
    goto/16 :goto_5

    .line 325
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "i":B
    :goto_2
    if-ge v5, v4, :cond_6

    .line 326
    iget-object v7, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v7, v7, v5

    if-eqz v7, :cond_5

    .line 327
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 328
    .local v7, "pointerIndex":I
    if-ltz v7, :cond_4

    .line 329
    iget-object v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v8, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->update(FF)V

    .line 330
    iget-object v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v8, v8, v5

    invoke-direct {p0, v8}, Lcom/winlator/cmod/widget/TouchpadView;->handleFingerMove(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V

    goto :goto_3

    .line 332
    :cond_4
    iget-object v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v8, v8, v5

    invoke-direct {p0, v8}, Lcom/winlator/cmod/widget/TouchpadView;->handleFingerUp(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V

    .line 333
    iget-object v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aput-object v6, v8, v5

    .line 334
    iget-byte v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    sub-int/2addr v8, v3

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    .line 325
    .end local v7    # "pointerIndex":I
    :cond_5
    :goto_3
    add-int/lit8 v7, v5, 0x1

    int-to-byte v5, v7

    goto :goto_2

    .line 339
    .end local v5    # "i":B
    :cond_6
    goto/16 :goto_5

    .line 342
    :pswitch_3
    iget-object v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    if-eqz v4, :cond_f

    .line 343
    iget-object v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v4, v5, v7}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->update(FF)V

    .line 344
    iget-object v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/winlator/cmod/widget/TouchpadView;->handleFingerUp(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V

    .line 345
    iget-object v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aput-object v6, v4, v1

    .line 346
    iget-byte v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    sub-int/2addr v4, v3

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    goto/16 :goto_5

    .line 277
    :pswitch_4
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v4

    if-eqz v4, :cond_7

    return v3

    .line 278
    :cond_7
    const/4 v4, 0x0

    iput v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrollAccumY:F

    .line 279
    iput-boolean v7, p0, Lcom/winlator/cmod/widget/TouchpadView;->scrolling:Z

    .line 280
    iget-object v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    new-instance v5, Lcom/winlator/cmod/widget/TouchpadView$Finger;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {v5, p0, v6, v8}, Lcom/winlator/cmod/widget/TouchpadView$Finger;-><init>(Lcom/winlator/cmod/widget/TouchpadView;FF)V

    aput-object v5, v4, v1

    .line 281
    iget-byte v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    add-int/2addr v4, v3

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    .line 284
    iget-boolean v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->moveCursorToTouchpoint:Z

    if-eqz v4, :cond_8

    if-nez v1, :cond_8

    .line 285
    iget-object v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v5, v5, v7

    invoke-static {v5}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetx(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v5

    iget-object v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 288
    :cond_8
    iget-boolean v4, p0, Lcom/winlator/cmod/widget/TouchpadView;->simTouchScreen:Z

    if-eqz v4, :cond_f

    .line 289
    new-instance v4, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/widget/TouchpadView;)V

    .line 295
    .local v4, "clickDelay":Ljava/lang/Runnable;
    if-nez v1, :cond_a

    .line 296
    iput-boolean v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->continueClick:Z

    .line 297
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v5, v5, v7

    invoke-static {v5}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetx(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v5

    iget v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosX:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    iget-object v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v8, v8, v7

    invoke-static {v8}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v8

    iget v9, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosY:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->resolutionScale:F

    float-to-double v8, v8

    mul-double/2addr v5, v8

    sget-object v8, Lcom/winlator/cmod/widget/TouchpadView;->EFFECTIVE_TOUCH_DISTANCE:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    int-to-double v8, v8

    cmpl-double v5, v5, v8

    if-lez v5, :cond_9

    .line 298
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v5, v5, v7

    invoke-static {v5}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetx(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v5

    iput v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosX:I

    .line 299
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v5, v5, v7

    invoke-static {v5}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v5

    iput v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosY:I

    .line 301
    :cond_9
    sget-object v5, Lcom/winlator/cmod/widget/TouchpadView;->CLICK_DELAYED_TIME:Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/winlator/cmod/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 302
    :cond_a
    if-ne v1, v3, :cond_e

    .line 305
    iget-byte v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->numFingers:B

    const/4 v6, 0x2

    if-ge v5, v6, :cond_c

    .line 306
    iput-boolean v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->continueClick:Z

    .line 307
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetx(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v5

    iget v6, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosX:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    iget-object v7, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v7, v7, v3

    invoke-static {v7}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v7

    iget v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosY:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget v7, p0, Lcom/winlator/cmod/widget/TouchpadView;->resolutionScale:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    sget-object v7, Lcom/winlator/cmod/widget/TouchpadView;->EFFECTIVE_TOUCH_DISTANCE:Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_b

    .line 308
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgetx(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v5

    iput v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosX:I

    .line 309
    iget-object v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I

    move-result v5

    iput v5, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosY:I

    .line 311
    :cond_b
    sget-object v5, Lcom/winlator/cmod/widget/TouchpadView;->CLICK_DELAYED_TIME:Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/winlator/cmod/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 313
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v8, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingers:[Lcom/winlator/cmod/widget/TouchpadView$Finger;

    aget-object v8, v8, v7

    invoke-static {v8}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->-$$Nest$fgettouchTime(Lcom/winlator/cmod/widget/TouchpadView$Finger;)J

    move-result-wide v8

    sub-long/2addr v5, v8

    sget-object v8, Lcom/winlator/cmod/widget/TouchpadView;->CLICK_DELAYED_TIME:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_d

    move v7, v3

    :cond_d
    iput-boolean v7, p0, Lcom/winlator/cmod/widget/TouchpadView;->continueClick:Z

    .line 315
    .end local v4    # "clickDelay":Ljava/lang/Runnable;
    :cond_e
    :goto_4
    nop

    .line 355
    :cond_f
    :goto_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private handleTouchscreenEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 362
    .local v0, "action":I
    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    .line 385
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 389
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_0

    .line 368
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 369
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleTwoFingerScroll(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 371
    :cond_1
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleTouchMove(Landroid/view/MotionEvent;)V

    .line 373
    goto :goto_0

    .line 376
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 377
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleTwoFingerTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 379
    :cond_2
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleTouchUp(Landroid/view/MotionEvent;)V

    .line 381
    goto :goto_0

    .line 365
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleTouchDown(Landroid/view/MotionEvent;)V

    .line 366
    nop

    .line 393
    :goto_0
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private handleTwoFingerScroll(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 429
    .local v0, "scrollDistance":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 430
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 432
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 435
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 438
    :cond_1
    :goto_0
    return-void
.end method

.method private handleTwoFingerTap(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    .line 444
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 448
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 451
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$handleFingerUp$1()V
    .locals 2

    .line 460
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->continueClick:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 462
    :cond_0
    return-void
.end method

.method private synthetic lambda$handleTouchpadEvent$0()V
    .locals 3

    .line 290
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->continueClick:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosX:I

    iget v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->lastTouchedPosY:I

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 292
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 294
    :cond_0
    return-void
.end method

.method private synthetic lambda$releasePointerButtonLeft$2()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingerPointerButtonLeft:Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 557
    return-void
.end method

.method private synthetic lambda$releasePointerButtonRight$3()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingerPointerButtonRight:Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 566
    return-void
.end method

.method private synthetic lambda$toggleFullscreen$4()V
    .locals 4

    .line 709
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/TouchpadView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/TouchpadView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/winlator/cmod/widget/TouchpadView;->updateXform(IIII)V

    return-void
.end method

.method private pressPointerButtonLeft(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V
    .locals 2
    .param p1, "finger"    # Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 539
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Pointer;->isButtonPressed(Lcom/winlator/cmod/xserver/Pointer$Button;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 541
    iput-object p1, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingerPointerButtonLeft:Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 543
    :cond_0
    return-void
.end method

.method private pressPointerButtonRight(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V
    .locals 2
    .param p1, "finger"    # Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 546
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonRightEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Pointer;->isButtonPressed(Lcom/winlator/cmod/xserver/Pointer$Button;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 548
    iput-object p1, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingerPointerButtonRight:Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 550
    :cond_0
    return-void
.end method

.method private releasePointerButtonLeft(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V
    .locals 3
    .param p1, "finger"    # Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 553
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingerPointerButtonLeft:Lcom/winlator/cmod/widget/TouchpadView$Finger;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Pointer;->isButtonPressed(Lcom/winlator/cmod/xserver/Pointer$Button;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/widget/TouchpadView;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/winlator/cmod/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 559
    :cond_0
    return-void
.end method

.method private releasePointerButtonRight(Lcom/winlator/cmod/widget/TouchpadView$Finger;)V
    .locals 3
    .param p1, "finger"    # Lcom/winlator/cmod/widget/TouchpadView$Finger;

    .line 562
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonRightEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->fingerPointerButtonRight:Lcom/winlator/cmod/widget/TouchpadView$Finger;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Pointer;->isButtonPressed(Lcom/winlator/cmod/xserver/Pointer$Button;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/widget/TouchpadView;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/winlator/cmod/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    :cond_0
    return-void
.end method

.method private resetTouchscreenTimeout()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->hideControlsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->hideControlsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->hideControlsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    :cond_0
    return-void
.end method

.method private updateXform(IIII)V
    .locals 6
    .param p1, "outerWidth"    # I
    .param p2, "outerHeight"    # I
    .param p3, "innerWidth"    # I
    .param p4, "innerHeight"    # I

    .line 109
    new-instance v0, Lcom/winlator/cmod/renderer/ViewTransformation;

    invoke-direct {v0}, Lcom/winlator/cmod/renderer/ViewTransformation;-><init>()V

    .line 110
    .local v0, "viewTransformation":Lcom/winlator/cmod/renderer/ViewTransformation;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/winlator/cmod/renderer/ViewTransformation;->update(IIII)V

    .line 112
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Lcom/winlator/cmod/renderer/ViewTransformation;->aspect:F

    div-float/2addr v1, v2

    .line 113
    .local v1, "invAspect":F
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/cmod/renderer/GLRenderer;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    iget v3, v0, Lcom/winlator/cmod/renderer/ViewTransformation;->viewOffsetX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v0, Lcom/winlator/cmod/renderer/ViewTransformation;->viewOffsetY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/winlator/cmod/math/XForm;->makeTranslation([FFF)[F

    .line 115
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-static {v2, v1, v1}, Lcom/winlator/cmod/math/XForm;->scale([FFF)[F

    goto :goto_0

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    int-to-float v3, p3

    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v4, p4

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/winlator/cmod/math/XForm;->makeScale([FFF)[F

    .line 118
    :goto_0
    return-void
.end method


# virtual methods
.method public computeDeltaPoint(FFFF)[F
    .locals 4
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 672
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 674
    .local v0, "result":[F
    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-static {v1, p1, p2, v0}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF[F)[F

    .line 675
    const/4 v1, 0x0

    aget p1, v0, v1

    .line 676
    const/4 v2, 0x1

    aget p2, v0, v2

    .line 678
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-static {v3, p3, p4, v0}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF[F)[F

    .line 679
    aget p3, v0, v1

    .line 680
    aget p4, v0, v2

    .line 682
    sub-float v3, p3, p1

    aput v3, v0, v1

    .line 683
    sub-float v1, p4, p2

    aput v1, v0, v2

    .line 684
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public isPointerButtonLeftEnabled()Z
    .locals 1

    .line 575
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    return v0
.end method

.method public isPointerButtonRightEnabled()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonRightEnabled:Z

    return v0
.end method

.method public isSimTouchScreen()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->simTouchScreen:Z

    return v0
.end method

.method public onExternalMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "handled":Z
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    .line 598
    .local v1, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4

    .line 619
    :sswitch_0
    if-ne v1, v5, :cond_1

    .line 620
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_0

    .line 624
    :cond_1
    if-ne v1, v4, :cond_3

    .line 625
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 628
    :cond_2
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_0

    .line 629
    :cond_3
    if-ne v1, v3, :cond_5

    .line 630
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 631
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 633
    :cond_4
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_MIDDLE:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 635
    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 636
    goto/16 :goto_4

    .line 600
    :sswitch_1
    if-ne v1, v5, :cond_7

    .line 601
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 602
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    invoke-virtual {v2, v4, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_1

    .line 604
    :cond_6
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_1

    .line 605
    :cond_7
    if-ne v1, v4, :cond_9

    .line 606
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 607
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_1

    .line 609
    :cond_8
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_1

    .line 610
    :cond_9
    if-ne v1, v3, :cond_b

    .line 611
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 612
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_1

    .line 614
    :cond_a
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_MIDDLE:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 616
    :cond_b
    :goto_1
    const/4 v0, 0x1

    .line 617
    goto/16 :goto_4

    .line 647
    :sswitch_2
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 648
    .local v2, "scrollY":F
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    const/16 v4, 0x800

    if-gtz v3, :cond_d

    .line 649
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 650
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v3

    float-to-int v5, v2

    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_2

    .line 652
    :cond_c
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v4, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 653
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v4, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_2

    .line 655
    :cond_d
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_f

    .line 656
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 657
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v3

    float-to-int v5, v2

    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_2

    .line 659
    :cond_e
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v4, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 660
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v4, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 663
    :cond_f
    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    .line 639
    .end local v2    # "scrollY":F
    :sswitch_3
    iget-object v2, p0, Lcom/winlator/cmod/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v2

    .line 640
    .local v2, "transformedPoint":[F
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 641
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v3

    aget v4, v2, v6

    float-to-int v4, v4

    aget v7, v2, v5

    float-to-int v7, v7

    invoke-virtual {v3, v5, v4, v7, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_3

    .line 643
    :cond_10
    iget-object v3, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    aget v4, v2, v6

    float-to-int v4, v4

    aget v5, v2, v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMove(II)V

    .line 644
    :goto_3
    const/4 v0, 0x1

    .line 645
    nop

    .line 667
    .end local v1    # "actionButton":I
    .end local v2    # "transformedPoint":[F
    :cond_11
    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 104
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v0, v0, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->updateXform(IIII)V

    .line 105
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v0, v0, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->resolutionScale:F

    .line 106
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 172
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->mouseEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "touchscreen_toggle"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 177
    .local v0, "isTouchscreenMode":Z
    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView;->resetTouchscreenTimeout()V

    .line 180
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 182
    .local v1, "toolType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 184
    :cond_1
    if-eqz v0, :cond_2

    .line 185
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleTouchscreenEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 187
    :cond_2
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/TouchpadView;->handleTouchpadEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public setFourFingersTapCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "fourFingersTapCallback"    # Ljava/lang/Runnable;

    .line 591
    iput-object p1, p0, Lcom/winlator/cmod/widget/TouchpadView;->fourFingersTapCallback:Ljava/lang/Runnable;

    .line 592
    return-void
.end method

.method public setMouseEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 714
    iput-boolean p1, p0, Lcom/winlator/cmod/widget/TouchpadView;->mouseEnabled:Z

    .line 715
    return-void
.end method

.method public setMoveCursorToTouchpoint(Z)V
    .locals 0
    .param p1, "moveCursorToTouchpoint"    # Z

    .line 718
    iput-boolean p1, p0, Lcom/winlator/cmod/widget/TouchpadView;->moveCursorToTouchpoint:Z

    .line 719
    return-void
.end method

.method public setPointerButtonLeftEnabled(Z)V
    .locals 0
    .param p1, "pointerButtonLeftEnabled"    # Z

    .line 579
    iput-boolean p1, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    .line 580
    return-void
.end method

.method public setPointerButtonRightEnabled(Z)V
    .locals 0
    .param p1, "pointerButtonRightEnabled"    # Z

    .line 587
    iput-boolean p1, p0, Lcom/winlator/cmod/widget/TouchpadView;->pointerButtonRightEnabled:Z

    .line 588
    return-void
.end method

.method public setSensitivity(F)V
    .locals 0
    .param p1, "sensitivity"    # F

    .line 571
    iput p1, p0, Lcom/winlator/cmod/widget/TouchpadView;->sensitivity:F

    .line 572
    return-void
.end method

.method public setSimTouchScreen(Z)V
    .locals 2
    .param p1, "simTouchScreen"    # Z

    .line 700
    iput-boolean p1, p0, Lcom/winlator/cmod/widget/TouchpadView;->simTouchScreen:Z

    .line 701
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-boolean v1, p0, Lcom/winlator/cmod/widget/TouchpadView;->simTouchScreen:Z

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->setSimulateTouchScreen(Z)V

    .line 702
    return-void
.end method

.method public toggleFullscreen()V
    .locals 4

    .line 709
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/widget/TouchpadView$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/widget/TouchpadView;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 711
    return-void
.end method
