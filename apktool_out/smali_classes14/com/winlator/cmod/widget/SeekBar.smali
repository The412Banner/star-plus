.class public Lcom/winlator/cmod/widget/SeekBar;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;
    }
.end annotation


# instance fields
.field private final barHeight:F

.field private final colorPrimary:I

.field private final colorSecondary:I

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private glossyEffectGradient:Landroid/graphics/LinearGradient;

.field private maxValue:F

.field private minValue:F

.field private normalizedValue:F

.field private onValueChangeListener:Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;

.field private step:F

.field private suffix:Ljava/lang/String;

.field private final textColor:I

.field private textSize:F

.field private final thumbRadius:F

.field private final thumbSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/widget/SeekBar;->rect:Landroid/graphics/RectF;

    .line 35
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->maxValue:F

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    .line 37
    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->normalizedValue:F

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->step:F

    .line 50
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    .line 51
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->thumbSize:F

    .line 52
    iget v0, p0, Lcom/winlator/cmod/widget/SeekBar;->thumbSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->thumbRadius:F

    .line 53
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->textSize:F

    .line 54
    const v0, -0x8c8c8d

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->textColor:I

    .line 56
    const v0, -0x282829

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->colorPrimary:I

    .line 57
    const v0, 0x7f060033

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->colorSecondary:I

    .line 59
    if-eqz p2, :cond_0

    .line 60
    sget-object v0, Lcom/winlator/cmod/R$styleable;->SeekBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "ta":Landroid/content/res/TypedArray;
    :try_start_0
    iget v2, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    .line 63
    iget v2, p0, Lcom/winlator/cmod/widget/SeekBar;->maxValue:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/winlator/cmod/widget/SeekBar;->maxValue:F

    .line 64
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/cmod/widget/SeekBar;->suffix:Ljava/lang/String;

    .line 65
    iget v2, p0, Lcom/winlator/cmod/widget/SeekBar;->textSize:F

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/winlator/cmod/widget/SeekBar;->textSize:F

    .line 66
    iget v2, p0, Lcom/winlator/cmod/widget/SeekBar;->step:F

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/SeekBar;->setStep(F)V

    .line 67
    iget v2, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    throw v1

    .line 73
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setFocusable(Z)V

    .line 74
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 75
    return-void
.end method

.method private setNormalizedValue(F)V
    .locals 5
    .param p1, "x"    # F

    .line 222
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/SeekBar;->getWidth()I

    move-result v0

    .line 223
    .local v0, "width":I
    iget v1, p0, Lcom/winlator/cmod/widget/SeekBar;->thumbRadius:F

    sub-float v1, p1, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/winlator/cmod/widget/SeekBar;->thumbRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 224
    .local v1, "newValue":F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v1

    .line 225
    iget v2, p0, Lcom/winlator/cmod/widget/SeekBar;->step:F

    iget v3, p0, Lcom/winlator/cmod/widget/SeekBar;->maxValue:F

    iget v4, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v2

    iput v2, p0, Lcom/winlator/cmod/widget/SeekBar;->normalizedValue:F

    .line 226
    return-void
.end method


# virtual methods
.method public getMaxValue()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/winlator/cmod/widget/SeekBar;->maxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    return v0
.end method

.method public getOnValueChangeListener()Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/winlator/cmod/widget/SeekBar;->onValueChangeListener:Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;

    return-object v0
.end method

.method public getStep()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/winlator/cmod/widget/SeekBar;->step:F

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/winlator/cmod/widget/SeekBar;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbHoleColor()I
    .locals 5

    .line 235
    iget v0, p0, Lcom/winlator/cmod/widget/SeekBar;->colorSecondary:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v0

    .line 236
    .local v0, "r":I
    iget v3, p0, Lcom/winlator/cmod/widget/SeekBar;->colorSecondary:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1e

    invoke-static {v3, v1, v2}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v3

    .line 237
    .local v3, "g":I
    iget v4, p0, Lcom/winlator/cmod/widget/SeekBar;->colorSecondary:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    invoke-static {v4, v1, v2}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v1

    .line 238
    .local v1, "b":I
    invoke-static {v0, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    return v2
.end method

.method public getValue()F
    .locals 4

    .line 119
    iget v0, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    iget v1, p0, Lcom/winlator/cmod/widget/SeekBar;->normalizedValue:F

    iget v2, p0, Lcom/winlator/cmod/widget/SeekBar;->maxValue:F

    iget v3, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    const-string v2, "SeekBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDraw called with value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/widget/SeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 148
    .local v2, "centerY":F
    iget-object v4, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v5, v1, Lcom/winlator/cmod/widget/SeekBar;->colorPrimary:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v4, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget v4, v1, Lcom/winlator/cmod/widget/SeekBar;->thumbRadius:F

    .line 153
    .local v4, "left":F
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/widget/SeekBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lcom/winlator/cmod/widget/SeekBar;->thumbRadius:F

    sub-float/2addr v5, v6

    .line 154
    .local v5, "right":F
    iget-object v6, v1, Lcom/winlator/cmod/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iget v7, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v7, v3

    sub-float v7, v2, v7

    iget v8, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v8, v3

    add-float/2addr v8, v2

    invoke-virtual {v6, v4, v7, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    iget-object v6, v1, Lcom/winlator/cmod/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iget v7, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v7, v3

    iget v8, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v8, v3

    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 158
    iget v6, v1, Lcom/winlator/cmod/widget/SeekBar;->normalizedValue:F

    sub-float v7, v5, v4

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    .line 161
    .local v6, "progressWidth":F
    iget-object v7, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v8, v1, Lcom/winlator/cmod/widget/SeekBar;->colorSecondary:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v7, v1, Lcom/winlator/cmod/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iget v8, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v8, v3

    sub-float v8, v2, v8

    iget v9, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v9, v3

    add-float/2addr v9, v2

    invoke-virtual {v7, v4, v8, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 163
    iget-object v7, v1, Lcom/winlator/cmod/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iget v8, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v8, v3

    iget v9, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v9, v3

    iget-object v10, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 166
    move v7, v6

    .line 167
    .local v7, "thumbX":F
    iget-object v8, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget v8, v1, Lcom/winlator/cmod/widget/SeekBar;->thumbRadius:F

    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    iget-object v8, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/widget/SeekBar;->getThumbHoleColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget v8, v1, Lcom/winlator/cmod/widget/SeekBar;->thumbRadius:F

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->suffix:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->suffix:Ljava/lang/String;

    goto :goto_0

    .end local p0    # "this":Lcom/winlator/cmod/widget/SeekBar;
    :cond_0
    const-string v9, ""

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "valueText":Ljava/lang/String;
    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v10, v1, Lcom/winlator/cmod/widget/SeekBar;->textColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v10, v1, Lcom/winlator/cmod/widget/SeekBar;->textSize:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 179
    iget v9, v1, Lcom/winlator/cmod/widget/SeekBar;->thumbRadius:F

    sub-float v9, v2, v9

    iget v10, v1, Lcom/winlator/cmod/widget/SeekBar;->textSize:F

    div-float/2addr v10, v3

    sub-float/2addr v9, v10

    iget-object v10, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 182
    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->glossyEffectGradient:Landroid/graphics/LinearGradient;

    if-nez v9, :cond_1

    .line 183
    new-instance v9, Landroid/graphics/LinearGradient;

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/widget/SeekBar;->getHeight()I

    move-result v10

    int-to-float v14, v10

    const v10, 0xffffff

    const v11, 0x33ffffff

    filled-new-array {v11, v10}, [I

    move-result-object v15

    const/4 v10, 0x2

    new-array v13, v10, [F

    fill-array-data v13, :array_0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v10, v9

    move-object/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v16, v18

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->glossyEffectGradient:Landroid/graphics/LinearGradient;

    .line 190
    :cond_1
    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget-object v10, v1, Lcom/winlator/cmod/widget/SeekBar;->glossyEffectGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 191
    iget-object v9, v1, Lcom/winlator/cmod/widget/SeekBar;->rect:Landroid/graphics/RectF;

    iget v10, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v10, v3

    iget v11, v1, Lcom/winlator/cmod/widget/SeekBar;->barHeight:F

    div-float/2addr v11, v3

    iget-object v3, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v10, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 192
    iget-object v3, v1, Lcom/winlator/cmod/widget/SeekBar;->paint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 140
    .end local v2    # "centerY":F
    .end local v4    # "left":F
    .end local v5    # "right":F
    .end local v6    # "progressWidth":F
    .end local v7    # "thumbX":F
    .end local v8    # "valueText":Ljava/lang/String;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 197
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/SeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setPressed(Z)V

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/widget/SeekBar;->setNormalizedValue(F)V

    .line 206
    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setPressed(Z)V

    .line 209
    iget-object v0, p0, Lcom/winlator/cmod/widget/SeekBar;->onValueChangeListener:Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/winlator/cmod/widget/SeekBar;->onValueChangeListener:Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;->onValueChangeListener(Lcom/winlator/cmod/widget/SeekBar;F)V

    goto :goto_0

    .line 201
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/SeekBar;->setPressed(Z)V

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/widget/SeekBar;->setNormalizedValue(F)V

    .line 203
    nop

    .line 217
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/SeekBar;->invalidate()V

    .line 218
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxValue(F)V
    .locals 1
    .param p1, "maxValue"    # F

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iput p1, p0, Lcom/winlator/cmod/widget/SeekBar;->maxValue:F

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMinValue(F)V
    .locals 1
    .param p1, "minValue"    # F

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iput p1, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnValueChangeListener(Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangeListener"    # Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;

    .line 136
    iput-object p1, p0, Lcom/winlator/cmod/widget/SeekBar;->onValueChangeListener:Lcom/winlator/cmod/widget/SeekBar$OnValueChangeListener;

    .line 137
    return-void
.end method

.method public setStep(F)V
    .locals 2
    .param p1, "step"    # F

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iput p1, p0, Lcom/winlator/cmod/widget/SeekBar;->step:F

    .line 104
    new-instance v0, Ljava/text/DecimalFormat;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, "0.##"

    :goto_0
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/SeekBar;->decimalFormat:Ljava/text/DecimalFormat;

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iput-object p1, p0, Lcom/winlator/cmod/widget/SeekBar;->suffix:Ljava/lang/String;

    .line 115
    monitor-exit p0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(F)V
    .locals 4
    .param p1, "value"    # F

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget v0, p0, Lcom/winlator/cmod/widget/SeekBar;->step:F

    invoke-static {p1, v0}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v0

    .line 125
    .local v0, "normalized":F
    iget v1, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/winlator/cmod/widget/SeekBar;->maxValue:F

    iget v3, p0, Lcom/winlator/cmod/widget/SeekBar;->minValue:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v1

    move v0, v1

    .line 126
    iput v0, p0, Lcom/winlator/cmod/widget/SeekBar;->normalizedValue:F

    .line 127
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/SeekBar;->postInvalidate()V

    .line 128
    .end local v0    # "normalized":F
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
