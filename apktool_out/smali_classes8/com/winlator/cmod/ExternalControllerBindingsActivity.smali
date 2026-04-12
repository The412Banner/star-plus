.class public Lcom/winlator/cmod/ExternalControllerBindingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExternalControllerBindingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field private controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

.field private emptyTextView:Landroid/widget/TextView;

.field private l2WasPressed:Z

.field private profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

.field private r2WasPressed:Z

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontroller(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)Lcom/winlator/cmod/inputcontrols/ExternalController;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprofile(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyTextView(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->updateEmptyTextView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->l2WasPressed:Z

    .line 51
    iput-boolean v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->r2WasPressed:Z

    return-void
.end method

.method private animateItemView(I)V
    .locals 5
    .param p1, "position"    # I

    .line 379
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 380
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 381
    .local v0, "holder":Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    if-eqz v0, :cond_0

    .line 382
    const v1, 0x7f060031

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 383
    .local v1, "color":I
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 384
    .local v2, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 385
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    new-instance v3, Lcom/winlator/cmod/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 391
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 393
    .end local v1    # "color":I
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
    .end array-data
.end method

.method private isGamepadKeyCode(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .line 234
    const/16 v0, 0x60

    if-eq p1, v0, :cond_1

    const/16 v0, 0x61

    if-eq p1, v0, :cond_1

    const/16 v0, 0x63

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    const/16 v0, 0x67

    if-eq p1, v0, :cond_1

    const/16 v0, 0x68

    if-eq p1, v0, :cond_1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$animateItemView$0(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;ILandroid/animation/ValueAnimator;)V
    .locals 6
    .param p0, "holder"    # Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p1, "color"    # I
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 387
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 388
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 389
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 388
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 390
    return-void
.end method

.method private processJoystickInput()V
    .locals 9

    .line 161
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 166
    .local v1, "axes":[I
    iget-object v2, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    iget-object v2, v2, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v2, v2, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    iget-object v3, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    iget-object v3, v3, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v3, v3, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    iget-object v4, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    iget-object v4, v4, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v4, v4, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    iget-object v5, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    iget-object v5, v5, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v5, v5, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    iget-object v6, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    iget-object v6, v6, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    .line 169
    invoke-virtual {v6}, Lcom/winlator/cmod/inputcontrols/GamepadState;->getDPadX()B

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    iget-object v7, v7, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-virtual {v7}, Lcom/winlator/cmod/inputcontrols/GamepadState;->getDPadY()B

    move-result v7

    int-to-float v7, v7

    new-array v0, v0, [F

    const/4 v8, 0x0

    aput v2, v0, v8

    const/4 v2, 0x1

    aput v3, v0, v2

    const/4 v2, 0x2

    aput v4, v0, v2

    const/4 v2, 0x3

    aput v5, v0, v2

    const/4 v2, 0x4

    aput v6, v0, v2

    const/4 v2, 0x5

    aput v7, v0, v2

    .line 172
    .local v0, "values":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 173
    aget v3, v0, v2

    .line 174
    .local v3, "value":F
    invoke-static {v3}, Lcom/winlator/cmod/math/Mathf;->sign(F)B

    move-result v4

    .line 175
    .local v4, "sign":B
    if-eqz v4, :cond_0

    .line 176
    aget v5, v1, v2

    invoke-static {v5, v4}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v5

    .line 177
    .local v5, "keyCode":I
    sget-object v6, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-direct {p0, v5, v6}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/winlator/cmod/inputcontrols/Binding;)V

    .line 172
    .end local v3    # "value":F
    .end local v4    # "sign":B
    .end local v5    # "keyCode":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private updateControllerBinding(ILcom/winlator/cmod/inputcontrols/Binding;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "binding"    # Lcom/winlator/cmod/inputcontrols/Binding;

    .line 107
    if-nez p1, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    move-result-object v0

    .line 112
    .local v0, "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    if-nez v0, :cond_1

    .line 113
    new-instance v1, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    invoke-direct {v1}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;-><init>()V

    move-object v0, v1

    .line 114
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->setKeyCode(I)V

    .line 115
    invoke-virtual {v0, p2}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/winlator/cmod/inputcontrols/Binding;)V

    .line 117
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/inputcontrols/ExternalController;->addControllerBinding(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V

    .line 118
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 119
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->adapter:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    invoke-virtual {v1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->notifyDataSetChanged()V

    .line 120
    invoke-direct {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->updateEmptyTextView()V

    .line 121
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getPosition(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)I

    move-result v1

    .local v1, "position":I
    goto :goto_0

    .line 123
    .end local v1    # "position":I
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getPosition(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)I

    move-result v1

    move v2, v1

    .local v2, "position":I
    invoke-direct {p0, v1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->animateItemView(I)V

    .line 125
    .end local v2    # "position":I
    .restart local v1    # "position":I
    :goto_0
    iget-object v2, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 126
    return-void
.end method

.method private updateEmptyTextView()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->emptyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->adapter:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    invoke-virtual {v1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 186
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/winlator/cmod/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 187
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 191
    const/16 v2, 0x17

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 190
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 192
    .local v1, "l2Value":F
    const/16 v2, 0x12

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 193
    const/16 v3, 0x16

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 192
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 196
    .local v2, "r2Value":F
    const v3, 0x3f4ccccd    # 0.8f

    cmpl-float v4, v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 197
    .local v4, "l2Pressed":Z
    :goto_0
    if-eqz v4, :cond_1

    iget-boolean v7, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->l2WasPressed:Z

    if-nez v7, :cond_1

    .line 198
    const/16 v7, 0x68

    sget-object v8, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-direct {p0, v7, v8}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/winlator/cmod/inputcontrols/Binding;)V

    .line 200
    :cond_1
    iput-boolean v4, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->l2WasPressed:Z

    .line 202
    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    move v5, v6

    :cond_2
    move v3, v5

    .line 203
    .local v3, "r2Pressed":Z
    if-eqz v3, :cond_3

    iget-boolean v5, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->r2WasPressed:Z

    if-nez v5, :cond_3

    .line 204
    const/16 v5, 0x69

    sget-object v7, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-direct {p0, v5, v7}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/winlator/cmod/inputcontrols/Binding;)V

    .line 206
    :cond_3
    iput-boolean v3, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->r2WasPressed:Z

    .line 208
    invoke-direct {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->processJoystickInput()V

    .line 209
    return v6

    .line 211
    .end local v1    # "l2Value":F
    .end local v2    # "r2Value":F
    .end local v3    # "r2Pressed":Z
    .end local v4    # "l2Pressed":Z
    :cond_4
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "profile_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, "profileId":I
    invoke-static {p0, v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 61
    const-string v2, "controller_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "controllerId":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v3, v2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getController(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v3

    iput-object v3, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 64
    iget-object v3, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    if-nez v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v3, v2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->addController(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v3

    iput-object v3, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 66
    iget-object v3, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v3}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 69
    :cond_0
    const v3, 0x7f09017e

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 70
    .local v3, "toolbar":Landroidx/appcompat/widget/Toolbar;
    iget-object v4, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->controller:Lcom/winlator/cmod/inputcontrols/ExternalController;

    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 73
    invoke-virtual {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    .line 74
    .local v4, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    const v6, 0x7f080116

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 77
    const v6, 0x7f09013d

    invoke-virtual {p0, v6}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->emptyTextView:Landroid/widget/TextView;

    .line 78
    const v6, 0x7f0900bb

    invoke-virtual {p0, v6}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v6, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    iget-object v6, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v7, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    iget-object v6, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-direct {v7, p0, v5}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 81
    iget-object v5, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;-><init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity;Lcom/winlator/cmod/ExternalControllerBindingsActivity-IA;)V

    iput-object v6, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->adapter:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    invoke-direct {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->updateEmptyTextView()V

    .line 83
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 217
    invoke-direct {p0, p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->isGamepadKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/winlator/cmod/inputcontrols/Binding;)V

    .line 219
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 227
    invoke-direct {p0, p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->isGamepadKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 256
    invoke-virtual {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->finish()V

    .line 257
    const/4 v0, 0x1

    return v0
.end method
