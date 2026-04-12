.class public Lcom/winlator/cmod/widget/NumberPicker;
.super Landroid/widget/FrameLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;
    }
.end annotation


# instance fields
.field private final editText:Landroid/widget/EditText;

.field private maxValue:I

.field private minValue:I

.field private onValueChangeListener:Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;

.field private step:I

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->value:I

    .line 17
    iput v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->minValue:I

    .line 18
    const/16 v1, 0x64

    iput v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->maxValue:I

    .line 19
    const/4 v1, 0x1

    iput v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->step:I

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0093

    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    const v2, 0x7f090081

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/winlator/cmod/widget/NumberPicker;->editText:Landroid/widget/EditText;

    .line 40
    const v2, 0x7f090016

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    const v2, 0x7f09002e

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    sget-object v2, Lcom/winlator/cmod/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 45
    .local v2, "ta":Landroid/content/res/TypedArray;
    iget v3, p0, Lcom/winlator/cmod/widget/NumberPicker;->minValue:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->minValue:I

    .line 46
    iget v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->maxValue:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->maxValue:I

    .line 47
    const/4 v1, 0x2

    iget v3, p0, Lcom/winlator/cmod/widget/NumberPicker;->step:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/NumberPicker;->setStep(I)V

    .line 48
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 49
    .local v0, "value":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/NumberPicker;->setValue(I)V

    .line 51
    .end local v0    # "value":I
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 52
    :cond_0
    iget v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->step:I

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/NumberPicker;->setStep(I)V

    .line 53
    :goto_0
    return-void
.end method

.method private onButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 108
    .local v0, "id":I
    const v1, 0x7f09002e

    if-ne v0, v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/NumberPicker;->increment()V

    goto :goto_0

    .line 111
    :cond_1
    const v1, 0x7f090016

    if-ne v0, v1, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/NumberPicker;->decrement()V

    .line 114
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->onValueChangeListener:Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->onValueChangeListener:Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;

    iget v2, p0, Lcom/winlator/cmod/widget/NumberPicker;->value:I

    invoke-interface {v1, p0, v2}, Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/winlator/cmod/widget/NumberPicker;I)V

    .line 117
    :cond_3
    return-void
.end method


# virtual methods
.method public decrement()V
    .locals 2

    .line 85
    iget v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->value:I

    iget v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->step:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/NumberPicker;->setValue(I)V

    .line 86
    return-void
.end method

.method public getMaxValue()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->maxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->minValue:I

    return v0
.end method

.method public getOnValueChangeListener()Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->onValueChangeListener:Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;

    return-object v0
.end method

.method public getStep()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->step:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->value:I

    return v0
.end method

.method public increment()V
    .locals 2

    .line 81
    iget v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->value:I

    iget v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->step:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/NumberPicker;->setValue(I)V

    .line 82
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 122
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/NumberPicker;->onButtonClick(Landroid/view/View;)V

    .line 125
    :cond_1
    return v1
.end method

.method public setMaxValue(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .line 77
    iput p1, p0, Lcom/winlator/cmod/widget/NumberPicker;->maxValue:I

    .line 78
    return-void
.end method

.method public setMinValue(I)V
    .locals 0
    .param p1, "minValue"    # I

    .line 69
    iput p1, p0, Lcom/winlator/cmod/widget/NumberPicker;->minValue:I

    .line 70
    return-void
.end method

.method public setOnValueChangeListener(Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangeListener"    # Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;

    .line 101
    iput-object p1, p0, Lcom/winlator/cmod/widget/NumberPicker;->onValueChangeListener:Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;

    .line 102
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .line 93
    iput p1, p0, Lcom/winlator/cmod/widget/NumberPicker;->step:I

    .line 94
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .line 56
    iget v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->minValue:I

    iget v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->maxValue:I

    invoke-static {p1, v0, v1}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->value:I

    .line 57
    iget-object v0, p0, Lcom/winlator/cmod/widget/NumberPicker;->editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/winlator/cmod/widget/NumberPicker;->value:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
