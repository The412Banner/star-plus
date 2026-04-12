.class public Lcom/winlator/cmod/inputcontrols/ControlElement;
.super Ljava/lang/Object;
.source "ControlElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/inputcontrols/ControlElement$Type;,
        Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;,
        Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    }
.end annotation


# static fields
.field public static final BUTTON_MIN_TIME_TO_KEEP_PRESSED:S = 0x12cs

.field public static final DPAD_DEAD_ZONE:F = 0.3f

.field public static final STICK_DEAD_ZONE:F = 0.15f

.field public static final STICK_SENSITIVITY:F = 2.0f

.field public static final TRACKPAD_ACCELERATION_THRESHOLD:B = 0x4t

.field public static final TRACKPAD_MAX_SPEED:F = 20.0f

.field public static final TRACKPAD_MIN_SPEED:F = 0.8f


# instance fields
.field private bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

.field private final boundingBox:Landroid/graphics/Rect;

.field private boundingBoxNeedsUpdate:Z

.field private currentPointerId:I

.field private currentPosition:Landroid/graphics/PointF;

.field private iconId:B

.field private final inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

.field private interpolator:Lcom/winlator/cmod/core/CubicBezierInterpolator;

.field private orientation:B

.field private range:Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

.field private scale:F

.field private scroller:Lcom/winlator/cmod/inputcontrols/RangeScroller;

.field private selected:Z

.field private shape:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

.field private states:[Z

.field private text:Ljava/lang/String;

.field private toggleSwitch:Z

.field private touchTime:Ljava/lang/Object;

.field private type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

.field private x:S

.field private y:S


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/widget/InputControlsView;)V
    .locals 6
    .param p1, "inputControlsView"    # Lcom/winlator/cmod/widget/InputControlsView;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    .line 71
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->shape:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    .line 72
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v5, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    sget-object v5, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v5, v1, v2

    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    .line 73
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    .line 76
    iput-boolean v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    .line 77
    iput-boolean v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->toggleSwitch:Z

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPointerId:I

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    .line 80
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    .line 81
    iput-boolean v4, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    .line 93
    return-void
.end method

.method private computeBoundingBox()Landroid/graphics/Rect;
    .locals 8

    .line 257
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->getSnappingSize()I

    move-result v0

    .line 258
    .local v0, "snappingSize":I
    const/4 v1, 0x0

    .line 259
    .local v1, "halfWidth":I
    const/4 v2, 0x0

    .line 261
    .local v2, "halfHeight":I
    sget-object v3, Lcom/winlator/cmod/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$cmod$inputcontrols$ControlElement$Type:[I

    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 291
    :pswitch_0
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x2

    mul-int v1, v0, v3

    .line 292
    mul-int/lit8 v2, v0, 0x2

    .line 294
    iget-byte v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->orientation:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 295
    move v3, v1

    .line 296
    .local v3, "tmp":I
    move v1, v2

    .line 297
    move v2, v3

    goto :goto_1

    .line 286
    .end local v3    # "tmp":I
    :pswitch_1
    mul-int/lit8 v1, v0, 0x6

    .line 287
    mul-int/lit8 v2, v0, 0x6

    .line 288
    goto :goto_1

    .line 280
    :pswitch_2
    mul-int/lit8 v1, v0, 0x7

    .line 281
    mul-int/lit8 v2, v0, 0x7

    .line 282
    goto :goto_1

    .line 263
    :pswitch_3
    sget-object v3, Lcom/winlator/cmod/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$cmod$inputcontrols$ControlElement$Shape:[I

    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->shape:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 274
    :pswitch_4
    mul-int/lit8 v1, v0, 0x3

    .line 275
    mul-int/lit8 v2, v0, 0x3

    goto :goto_0

    .line 270
    :pswitch_5
    int-to-float v3, v0

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 271
    int-to-float v3, v0

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 272
    goto :goto_0

    .line 266
    :pswitch_6
    mul-int/lit8 v1, v0, 0x4

    .line 267
    mul-int/lit8 v2, v0, 0x2

    .line 268
    nop

    .line 278
    :goto_0
    nop

    .line 303
    :cond_0
    :goto_1
    int-to-float v3, v1

    iget v4, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 304
    int-to-float v3, v2

    iget v4, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 305
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    iget-short v4, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->x:S

    sub-int/2addr v4, v1

    iget-short v5, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->y:S

    sub-int/2addr v5, v2

    iget-short v6, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->x:S

    add-int/2addr v6, v1

    iget-short v7, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->y:S

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 306
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 307
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private drawIcon(Landroid/graphics/Canvas;FFFFI)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "iconId"    # I

    .line 554
    move-object v0, p0

    move/from16 v1, p6

    iget-object v2, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    int-to-byte v3, v1

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/widget/InputControlsView;->getIcon(B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 555
    .local v2, "icon":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 556
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 560
    .local v3, "iconPaint":Landroid/graphics/Paint;
    const/16 v4, 0x64

    if-ge v1, v4, :cond_0

    .line 561
    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/cmod/widget/InputControlsView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 564
    :cond_0
    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/cmod/widget/InputControlsView;->getSnappingSize()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->shape:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    sget-object v6, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->shape:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    sget-object v6, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->SQUARE:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    :goto_1
    mul-float/2addr v4, v5

    iget v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 565
    .local v4, "margin":I
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v6, v4

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 567
    .local v5, "halfSize":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 568
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v5

    sub-float v8, p2, v8

    int-to-float v9, v5

    sub-float v9, p3, v9

    int-to-float v10, v5

    add-float/2addr v10, p2

    int-to-float v11, v5

    add-float/2addr v11, p3

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 570
    .local v7, "dstRect":Landroid/graphics/RectF;
    move-object v8, p1

    invoke-virtual {p1, v2, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 555
    .end local v3    # "iconPaint":Landroid/graphics/Paint;
    .end local v4    # "margin":I
    .end local v5    # "halfSize":I
    .end local v6    # "srcRect":Landroid/graphics/Rect;
    .end local v7    # "dstRect":Landroid/graphics/RectF;
    :cond_3
    move-object v8, p1

    .line 572
    :goto_2
    return-void
.end method

.method private getDisplayText()Ljava/lang/String;
    .locals 10

    .line 311
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->text:Ljava/lang/String;

    return-object v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    .line 316
    .local v1, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/Binding;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NUMPAD "

    const-string v4, "NP"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUTTON "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x7

    if-le v3, v5, :cond_3

    .line 318
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "parts":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v5, "sb":Ljava/lang/StringBuilder;
    array-length v6, v3

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .local v8, "part":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v8    # "part":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 321
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/Binding;->isMouse()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "M"

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 323
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-object v2
.end method

.method private static getRangeTextForIndex(Lcom/winlator/cmod/inputcontrols/ControlElement$Range;I)Ljava/lang/String;
    .locals 3
    .param p0, "range"    # Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .param p1, "index"    # I

    .line 334
    const-string v0, ""

    .line 335
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Lcom/winlator/cmod/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$cmod$inputcontrols$ControlElement$Range:[I

    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 343
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    goto :goto_0

    .line 340
    :pswitch_2
    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    goto :goto_0

    .line 337
    :pswitch_3
    add-int/lit8 v1, p1, 0x41

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 338
    nop

    .line 349
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "desiredWidth"    # F

    .line 328
    const/16 v0, 0x30

    .line 329
    .local v0, "testTextSize":B
    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 330
    mul-float/2addr v1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v1, v2

    return v1
.end method

.method private isKeepButtonPressedAfterMinTime()Z
    .locals 3

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    .line 608
    .local v1, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    iget-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->toggleSwitch:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_BUTTON_L3:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_BUTTON_R3:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private reset()V
    .locals 7

    .line 96
    sget-object v0, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setBinding(Lcom/winlator/cmod/inputcontrols/Binding;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scroller:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    .line 99
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->KEY_W:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v6

    .line 101
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->KEY_D:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v5

    .line 102
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->KEY_S:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v4

    .line 103
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->KEY_A:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v3

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->D_PAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_DPAD_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v6

    .line 107
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_DPAD_RIGHT:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v5

    .line 108
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_DPAD_DOWN:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v4

    .line 109
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_DPAD_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v3

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v1, v2, :cond_2

    .line 112
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v6

    .line 113
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_RIGHT:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v5

    .line 114
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_DOWN:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v4

    .line 115
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object v2, v1, v3

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v1, v2, :cond_3

    .line 118
    new-instance v1, Lcom/winlator/cmod/inputcontrols/RangeScroller;

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-direct {v1, v2, p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;-><init>(Lcom/winlator/cmod/widget/InputControlsView;Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scroller:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    .line 121
    :cond_3
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 122
    iput-byte v6, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->iconId:B

    .line 123
    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->range:Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    .line 124
    iput-boolean v5, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 125
    return-void
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 603
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, p1, v1

    float-to-int v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 353
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    iget-object v0, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->getSnappingSize()I

    move-result v5

    .line 354
    .local v5, "snappingSize":I
    iget-object v0, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 355
    .local v4, "paint":Landroid/graphics/Paint;
    iget-object v0, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->getPrimaryColor()I

    move-result v3

    .line 357
    .local v3, "primaryColor":I
    iget-boolean v0, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->getSecondaryColor()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 359
    int-to-float v0, v5

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v2, v0, v1

    .line 360
    .local v2, "strokeWidth":F
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    .line 363
    .local v1, "boundingBox":Landroid/graphics/Rect;
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$cmod$inputcontrols$ControlElement$Type:[I

    iget-object v8, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    invoke-virtual {v8}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->ordinal()I

    move-result v8

    aget v0, v0, v8

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    move-object v13, v1

    move/from16 v34, v2

    move v14, v3

    move-object v15, v4

    move-object v9, v6

    move-object v8, v7

    move v7, v5

    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v2    # "strokeWidth":F
    .end local v3    # "primaryColor":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "snappingSize":I
    .local v7, "snappingSize":I
    .local v13, "boundingBox":Landroid/graphics/Rect;
    .local v14, "primaryColor":I
    .local v15, "paint":Landroid/graphics/Paint;
    .local v34, "strokeWidth":F
    goto/16 :goto_7

    .line 441
    .end local v7    # "snappingSize":I
    .end local v13    # "boundingBox":Landroid/graphics/Rect;
    .end local v14    # "primaryColor":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v34    # "strokeWidth":F
    .restart local v1    # "boundingBox":Landroid/graphics/Rect;
    .restart local v2    # "strokeWidth":F
    .restart local v3    # "primaryColor":I
    .restart local v4    # "paint":Landroid/graphics/Paint;
    .restart local v5    # "snappingSize":I
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getRange()Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    move-result-object v0

    .line 442
    .local v0, "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v15

    .line 443
    .local v15, "oldColor":I
    int-to-float v9, v5

    mul-float/2addr v9, v8

    iget v8, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float v26, v9, v8

    .line 444
    .local v26, "radius":F
    iget-object v8, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->scroller:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-virtual {v8}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->getElementSize()F

    move-result v27

    .line 445
    .local v27, "elementSize":F
    mul-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    iget v9, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float v14, v8, v9

    .line 446
    .local v14, "minTextSize":F
    iget-object v8, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->scroller:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-virtual {v8}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->getScrollOffset()F

    move-result v28

    .line 447
    .local v28, "scrollOffset":F
    iget-object v8, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->scroller:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-virtual {v8}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->getRangeIndex()[B

    move-result-object v29

    .line 448
    .local v29, "rangeIndex":[B
    iget-object v8, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v8}, Lcom/winlator/cmod/widget/InputControlsView;->getPath()Landroid/graphics/Path;

    move-result-object v13

    .line 449
    .local v13, "path":Landroid/graphics/Path;
    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 451
    iget-byte v8, v7, Lcom/winlator/cmod/inputcontrols/ControlElement;->orientation:B

    const/16 v30, 0x0

    const/16 v31, 0x1

    if-nez v8, :cond_4

    .line 452
    iget v8, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float v9, v2, v17

    add-float v32, v8, v9

    .line 453
    .local v32, "lineTop":F
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float v9, v2, v17

    sub-float v33, v8, v9

    .line 454
    .local v33, "lineBottom":F
    iget v8, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v8

    .line 455
    .local v12, "startX":F
    iget v8, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    int-to-float v11, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v8

    move-object/from16 v8, p1

    move/from16 v18, v9

    move v9, v12

    move/from16 v34, v12

    .end local v12    # "startX":F
    .local v34, "startX":F
    move/from16 v12, v18

    move-object/from16 v35, v13

    .end local v13    # "path":Landroid/graphics/Path;
    .local v35, "path":Landroid/graphics/Path;
    move/from16 v13, v26

    move v7, v14

    .end local v14    # "minTextSize":F
    .local v7, "minTextSize":F
    move/from16 v14, v26

    move/from16 v36, v7

    move v7, v15

    .end local v15    # "oldColor":I
    .local v7, "oldColor":I
    .local v36, "minTextSize":F
    move-object v15, v4

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 458
    iget v8, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sget-object v25, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v18, v35

    move/from16 v19, v34

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v26

    move/from16 v24, v26

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 459
    move-object/from16 v15, v35

    .end local v35    # "path":Landroid/graphics/Path;
    .local v15, "path":Landroid/graphics/Path;
    invoke-virtual {v6, v15}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 460
    rem-float v8, v28, v27

    sub-float v12, v34, v8

    .line 462
    .end local v34    # "startX":F
    .restart local v12    # "startX":F
    aget-byte v8, v29, v30

    .local v8, "i":B
    :goto_1
    aget-byte v9, v29, v31

    if-ge v8, v9, :cond_3

    .line 463
    iget-byte v9, v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->max:B

    rem-int v9, v8, v9

    .line 464
    .local v9, "index":I
    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 465
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    iget v10, v1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    cmpl-float v10, v12, v10

    if-lez v10, :cond_1

    iget v10, v1, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpg-float v10, v12, v10

    if-gez v10, :cond_1

    move-object v14, v0

    .end local v0    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .local v14, "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    move-object/from16 v0, p1

    move-object v13, v1

    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .local v13, "boundingBox":Landroid/graphics/Rect;
    move v1, v12

    move/from16 v34, v2

    .end local v2    # "strokeWidth":F
    .local v34, "strokeWidth":F
    move/from16 v2, v32

    move v11, v3

    .end local v3    # "primaryColor":I
    .local v11, "primaryColor":I
    move v3, v12

    move-object v10, v4

    .end local v4    # "paint":Landroid/graphics/Paint;
    .local v10, "paint":Landroid/graphics/Paint;
    move/from16 v4, v33

    move/from16 v37, v5

    .end local v5    # "snappingSize":I
    .local v37, "snappingSize":I
    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v11    # "primaryColor":I
    .end local v13    # "boundingBox":Landroid/graphics/Rect;
    .end local v14    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .end local v34    # "strokeWidth":F
    .end local v37    # "snappingSize":I
    .restart local v0    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .restart local v1    # "boundingBox":Landroid/graphics/Rect;
    .restart local v2    # "strokeWidth":F
    .restart local v3    # "primaryColor":I
    .restart local v4    # "paint":Landroid/graphics/Paint;
    .restart local v5    # "snappingSize":I
    :cond_1
    move-object v14, v0

    move-object v13, v1

    move/from16 v34, v2

    move v11, v3

    move-object v10, v4

    move/from16 v37, v5

    .line 468
    .end local v0    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v2    # "strokeWidth":F
    .end local v3    # "primaryColor":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "snappingSize":I
    .restart local v10    # "paint":Landroid/graphics/Paint;
    .restart local v11    # "primaryColor":I
    .restart local v13    # "boundingBox":Landroid/graphics/Rect;
    .restart local v14    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .restart local v34    # "strokeWidth":F
    .restart local v37    # "snappingSize":I
    :goto_2
    invoke-static {v14, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getRangeTextForIndex(Lcom/winlator/cmod/inputcontrols/ControlElement$Range;I)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "text":Ljava/lang/String;
    iget v1, v13, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v1, v12, v1

    if-gez v1, :cond_2

    add-float v1, v12, v27

    iget v2, v13, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 471
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 472
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    mul-float v2, v34, v16

    sub-float v1, v27, v2

    invoke-static {v10, v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v1

    move/from16 v2, v36

    .end local v36    # "minTextSize":F
    .local v2, "minTextSize":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 474
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 475
    mul-float v1, v27, v17

    add-float/2addr v1, v12

    move-object/from16 v5, p0

    move v4, v2

    .end local v2    # "minTextSize":F
    .local v4, "minTextSize":F
    iget-short v2, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->y:S

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v18

    add-float v3, v3, v18

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-virtual {v6, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 470
    .end local v4    # "minTextSize":F
    .restart local v36    # "minTextSize":F
    :cond_2
    move-object/from16 v5, p0

    move/from16 v4, v36

    .line 477
    .end local v36    # "minTextSize":F
    .restart local v4    # "minTextSize":F
    :goto_3
    add-float v12, v12, v27

    .line 462
    .end local v0    # "text":Ljava/lang/String;
    .end local v9    # "index":I
    add-int/lit8 v0, v8, 0x1

    int-to-byte v8, v0

    move/from16 v36, v4

    move-object v4, v10

    move v3, v11

    move-object v1, v13

    move-object v0, v14

    move/from16 v2, v34

    move/from16 v5, v37

    goto/16 :goto_1

    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v11    # "primaryColor":I
    .end local v13    # "boundingBox":Landroid/graphics/Rect;
    .end local v14    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .end local v34    # "strokeWidth":F
    .end local v37    # "snappingSize":I
    .local v0, "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .restart local v1    # "boundingBox":Landroid/graphics/Rect;
    .local v2, "strokeWidth":F
    .restart local v3    # "primaryColor":I
    .local v4, "paint":Landroid/graphics/Paint;
    .restart local v5    # "snappingSize":I
    .restart local v36    # "minTextSize":F
    :cond_3
    move-object v14, v0

    move-object v13, v1

    move/from16 v34, v2

    move v11, v3

    move-object v10, v4

    move/from16 v37, v5

    move/from16 v4, v36

    move-object/from16 v5, p0

    .line 480
    .end local v0    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v2    # "strokeWidth":F
    .end local v3    # "primaryColor":I
    .end local v5    # "snappingSize":I
    .end local v8    # "i":B
    .end local v36    # "minTextSize":F
    .local v4, "minTextSize":F
    .restart local v10    # "paint":Landroid/graphics/Paint;
    .restart local v11    # "primaryColor":I
    .restart local v13    # "boundingBox":Landroid/graphics/Rect;
    .restart local v14    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .restart local v34    # "strokeWidth":F
    .restart local v37    # "snappingSize":I
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 481
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 483
    .end local v12    # "startX":F
    .end local v32    # "lineTop":F
    .end local v33    # "lineBottom":F
    move-object v8, v5

    move-object v9, v6

    move-object v15, v10

    move v14, v11

    move/from16 v7, v37

    goto/16 :goto_7

    .line 485
    .end local v7    # "oldColor":I
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v11    # "primaryColor":I
    .end local v34    # "strokeWidth":F
    .end local v37    # "snappingSize":I
    .restart local v0    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .restart local v1    # "boundingBox":Landroid/graphics/Rect;
    .restart local v2    # "strokeWidth":F
    .restart local v3    # "primaryColor":I
    .local v4, "paint":Landroid/graphics/Paint;
    .restart local v5    # "snappingSize":I
    .local v13, "path":Landroid/graphics/Path;
    .local v14, "minTextSize":F
    .local v15, "oldColor":I
    :cond_4
    move/from16 v34, v2

    move v11, v3

    move-object v10, v4

    move/from16 v37, v5

    move-object v5, v7

    move v4, v14

    move v7, v15

    move-object v14, v0

    move-object v15, v13

    move-object v13, v1

    .end local v0    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v2    # "strokeWidth":F
    .end local v3    # "primaryColor":I
    .end local v5    # "snappingSize":I
    .local v4, "minTextSize":F
    .restart local v7    # "oldColor":I
    .restart local v10    # "paint":Landroid/graphics/Paint;
    .restart local v11    # "primaryColor":I
    .local v13, "boundingBox":Landroid/graphics/Rect;
    .local v14, "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .local v15, "path":Landroid/graphics/Path;
    .restart local v34    # "strokeWidth":F
    .restart local v37    # "snappingSize":I
    iget v0, v13, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v2, v34, v17

    add-float v32, v0, v2

    .line 486
    .local v32, "lineLeft":F
    iget v0, v13, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float v2, v34, v17

    sub-float v33, v0, v2

    .line 487
    .local v33, "lineRight":F
    iget v0, v13, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 488
    .local v0, "startY":F
    iget v1, v13, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    iget v1, v13, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v2

    move-object/from16 v8, p1

    move-object v3, v10

    .end local v10    # "paint":Landroid/graphics/Paint;
    .local v3, "paint":Landroid/graphics/Paint;
    move v10, v0

    move v2, v11

    .end local v11    # "primaryColor":I
    .local v2, "primaryColor":I
    move v11, v1

    move-object v1, v13

    .end local v13    # "boundingBox":Landroid/graphics/Rect;
    .restart local v1    # "boundingBox":Landroid/graphics/Rect;
    move/from16 v13, v26

    move-object/from16 v38, v14

    .end local v14    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .local v38, "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    move/from16 v14, v26

    move-object/from16 v35, v15

    .end local v15    # "path":Landroid/graphics/Path;
    .restart local v35    # "path":Landroid/graphics/Path;
    move-object v15, v3

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 491
    iget v8, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sget-object v25, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v18, v35

    move/from16 v19, v8

    move/from16 v20, v0

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v26

    move/from16 v24, v26

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 492
    iget-object v8, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v8}, Lcom/winlator/cmod/widget/InputControlsView;->getPath()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 493
    rem-float v8, v28, v27

    sub-float/2addr v0, v8

    .line 495
    aget-byte v8, v29, v30

    move v9, v8

    move v8, v0

    .end local v0    # "startY":F
    .local v8, "startY":F
    .local v9, "i":B
    :goto_4
    aget-byte v0, v29, v31

    if-ge v9, v0, :cond_7

    .line 496
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 497
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 499
    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_5

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_5

    move-object/from16 v0, p1

    move-object v15, v1

    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .local v15, "boundingBox":Landroid/graphics/Rect;
    move/from16 v1, v32

    move v14, v2

    .end local v2    # "primaryColor":I
    .local v14, "primaryColor":I
    move v2, v8

    move-object v13, v3

    .end local v3    # "paint":Landroid/graphics/Paint;
    .local v13, "paint":Landroid/graphics/Paint;
    move/from16 v3, v33

    move v10, v4

    .end local v4    # "minTextSize":F
    .local v10, "minTextSize":F
    move v4, v8

    move-object v12, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .end local v10    # "minTextSize":F
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "primaryColor":I
    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .restart local v1    # "boundingBox":Landroid/graphics/Rect;
    .restart local v2    # "primaryColor":I
    .restart local v3    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "minTextSize":F
    :cond_5
    move-object v15, v1

    move v14, v2

    move-object v13, v3

    move v10, v4

    move-object v12, v5

    .line 500
    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v2    # "primaryColor":I
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "minTextSize":F
    .restart local v10    # "minTextSize":F
    .restart local v13    # "paint":Landroid/graphics/Paint;
    .restart local v14    # "primaryColor":I
    .restart local v15    # "boundingBox":Landroid/graphics/Rect;
    :goto_5
    move-object/from16 v0, v38

    .end local v38    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .local v0, "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    invoke-static {v0, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getRangeTextForIndex(Lcom/winlator/cmod/inputcontrols/ControlElement$Range;I)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "text":Ljava/lang/String;
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float v2, v8, v2

    if-gez v2, :cond_6

    add-float v2, v8, v27

    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 503
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 504
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v34, v16

    sub-float/2addr v2, v3

    invoke-static {v13, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 506
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 507
    iget-short v2, v12, Lcom/winlator/cmod/inputcontrols/ControlElement;->x:S

    int-to-float v2, v2

    mul-float v3, v27, v17

    add-float/2addr v3, v8

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    mul-float v4, v4, v17

    sub-float/2addr v3, v4

    invoke-virtual {v6, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 509
    :cond_6
    add-float v8, v8, v27

    .line 495
    .end local v1    # "text":Ljava/lang/String;
    add-int/lit8 v1, v9, 0x1

    int-to-byte v9, v1

    move-object/from16 v38, v0

    move v4, v10

    move-object v5, v12

    move-object v3, v13

    move v2, v14

    move-object v1, v15

    goto/16 :goto_4

    .end local v0    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .end local v10    # "minTextSize":F
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "primaryColor":I
    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .local v1, "boundingBox":Landroid/graphics/Rect;
    .restart local v2    # "primaryColor":I
    .restart local v3    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "minTextSize":F
    .restart local v38    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    :cond_7
    move-object v15, v1

    move v14, v2

    move-object v13, v3

    move v10, v4

    move-object v12, v5

    move-object/from16 v0, v38

    .line 512
    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v2    # "primaryColor":I
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "minTextSize":F
    .end local v9    # "i":B
    .end local v38    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .restart local v0    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .restart local v10    # "minTextSize":F
    .restart local v13    # "paint":Landroid/graphics/Paint;
    .restart local v14    # "primaryColor":I
    .restart local v15    # "boundingBox":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 513
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 516
    .end local v8    # "startY":F
    .end local v32    # "lineLeft":F
    .end local v33    # "lineRight":F
    move-object v9, v6

    move-object v8, v12

    move/from16 v7, v37

    move-object/from16 v39, v15

    move-object v15, v13

    move-object/from16 v13, v39

    goto/16 :goto_7

    .line 519
    .end local v0    # "range":Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .end local v7    # "oldColor":I
    .end local v10    # "minTextSize":F
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "primaryColor":I
    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .end local v26    # "radius":F
    .end local v27    # "elementSize":F
    .end local v28    # "scrollOffset":F
    .end local v29    # "rangeIndex":[B
    .end local v34    # "strokeWidth":F
    .end local v35    # "path":Landroid/graphics/Path;
    .end local v37    # "snappingSize":I
    .restart local v1    # "boundingBox":Landroid/graphics/Rect;
    .local v2, "strokeWidth":F
    .local v3, "primaryColor":I
    .local v4, "paint":Landroid/graphics/Paint;
    .restart local v5    # "snappingSize":I
    :pswitch_1
    move-object v15, v1

    move/from16 v34, v2

    move v14, v3

    move-object v13, v4

    move/from16 v37, v5

    move-object v12, v7

    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v2    # "strokeWidth":F
    .end local v3    # "primaryColor":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "snappingSize":I
    .restart local v13    # "paint":Landroid/graphics/Paint;
    .restart local v14    # "primaryColor":I
    .restart local v15    # "boundingBox":Landroid/graphics/Rect;
    .restart local v34    # "strokeWidth":F
    .restart local v37    # "snappingSize":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 520
    .local v0, "cx":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 521
    .local v1, "cy":I
    invoke-virtual {v13}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 523
    .local v2, "oldColor":I
    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    invoke-virtual {v6, v3, v4, v5, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getCurrentPosition()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 526
    .local v3, "thumbstickX":F
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getCurrentPosition()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 528
    .local v4, "thumbstickY":F
    move/from16 v7, v37

    .end local v37    # "snappingSize":I
    .local v7, "snappingSize":I
    int-to-float v5, v7

    const/high16 v8, 0x40600000    # 3.5f

    mul-float/2addr v5, v8

    iget v8, v12, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    .line 529
    .local v5, "thumbRadius":S
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 530
    const/16 v8, 0x32

    invoke-static {v14, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    int-to-float v8, v5

    invoke-virtual {v6, v3, v4, v8, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 533
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 534
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    int-to-float v8, v5

    mul-float v9, v34, v17

    add-float/2addr v8, v9

    invoke-virtual {v6, v3, v4, v8, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 536
    move-object v9, v6

    move-object v8, v12

    move-object/from16 v39, v15

    move-object v15, v13

    move-object/from16 v13, v39

    goto/16 :goto_7

    .line 540
    .end local v0    # "cx":I
    .end local v7    # "snappingSize":I
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "primaryColor":I
    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .end local v34    # "strokeWidth":F
    .local v1, "boundingBox":Landroid/graphics/Rect;
    .local v2, "strokeWidth":F
    .local v3, "primaryColor":I
    .local v4, "paint":Landroid/graphics/Paint;
    .local v5, "snappingSize":I
    :pswitch_2
    move-object v15, v1

    move/from16 v34, v2

    move v14, v3

    move-object v13, v4

    move-object v12, v7

    move v7, v5

    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v2    # "strokeWidth":F
    .end local v3    # "primaryColor":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "snappingSize":I
    .restart local v7    # "snappingSize":I
    .restart local v13    # "paint":Landroid/graphics/Paint;
    .restart local v14    # "primaryColor":I
    .restart local v15    # "boundingBox":Landroid/graphics/Rect;
    .restart local v34    # "strokeWidth":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v1

    .line 541
    .local v0, "radius":F
    iget v1, v15, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    iget v1, v15, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    iget v1, v15, Landroid/graphics/Rect;->right:I

    int-to-float v11, v1

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move-object/from16 v8, p1

    move-object v5, v12

    move v12, v1

    .end local v13    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    move v13, v0

    .end local v14    # "primaryColor":I
    .restart local v3    # "primaryColor":I
    move v14, v0

    move-object v2, v15

    .end local v15    # "boundingBox":Landroid/graphics/Rect;
    .local v2, "boundingBox":Landroid/graphics/Rect;
    move-object v15, v4

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 542
    const/high16 v1, 0x40200000    # 2.5f

    mul-float v1, v1, v34

    .line 543
    .local v1, "offset":F
    mul-float v15, v34, v16

    .line 544
    .local v15, "innerStrokeWidth":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float v16, v16, v1

    sub-float v16, v8, v16

    .line 545
    .local v16, "innerHeight":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v16, v8

    mul-float/2addr v8, v0

    mul-float v9, v15, v17

    mul-float v10, v34, v17

    add-float/2addr v9, v10

    sub-float v0, v8, v9

    .line 546
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 547
    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float v9, v8, v1

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v10, v8, v1

    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float v11, v8, v1

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float v12, v8, v1

    move-object/from16 v8, p1

    move v13, v0

    move v14, v0

    move/from16 v17, v15

    .end local v15    # "innerStrokeWidth":F
    .local v17, "innerStrokeWidth":F
    move-object v15, v4

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 548
    move-object v13, v2

    move v14, v3

    move-object v8, v5

    move-object v9, v6

    goto/16 :goto_7

    .line 401
    .end local v0    # "radius":F
    .end local v7    # "snappingSize":I
    .end local v16    # "innerHeight":F
    .end local v17    # "innerStrokeWidth":F
    .end local v34    # "strokeWidth":F
    .local v1, "boundingBox":Landroid/graphics/Rect;
    .local v2, "strokeWidth":F
    .restart local v5    # "snappingSize":I
    :pswitch_3
    move/from16 v34, v2

    move-object v2, v1

    move-object/from16 v39, v7

    move v7, v5

    move-object/from16 v5, v39

    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v5    # "snappingSize":I
    .local v2, "boundingBox":Landroid/graphics/Rect;
    .restart local v7    # "snappingSize":I
    .restart local v34    # "strokeWidth":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    .line 402
    .local v0, "cx":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 403
    .local v1, "cy":F
    mul-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    iget v9, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v8, v9

    .line 404
    .local v8, "offsetX":F
    mul-int/lit8 v9, v7, 0x3

    int-to-float v9, v9

    iget v10, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v9, v10

    .line 405
    .local v9, "offsetY":F
    int-to-float v10, v7

    iget v11, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v10, v11

    .line 406
    .local v10, "start":F
    iget-object v11, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v11}, Lcom/winlator/cmod/widget/InputControlsView;->getPath()Landroid/graphics/Path;

    move-result-object v11

    .line 407
    .local v11, "path":Landroid/graphics/Path;
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 409
    sub-float v12, v1, v10

    invoke-virtual {v11, v0, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 410
    sub-float v12, v0, v8

    sub-float v13, v1, v9

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 411
    sub-float v12, v0, v8

    iget v13, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 412
    add-float v12, v0, v8

    iget v13, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 413
    add-float v12, v0, v8

    sub-float v13, v1, v9

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 414
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 416
    sub-float v12, v0, v10

    invoke-virtual {v11, v12, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 417
    sub-float v12, v0, v9

    sub-float v13, v1, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 418
    iget v12, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v13, v1, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 419
    iget v12, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float v13, v1, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 420
    sub-float v12, v0, v9

    add-float v13, v1, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 421
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 423
    add-float v12, v1, v10

    invoke-virtual {v11, v0, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 424
    sub-float v12, v0, v8

    add-float v13, v1, v9

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 425
    sub-float v12, v0, v8

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 426
    add-float v12, v0, v8

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 427
    add-float v12, v0, v8

    add-float v13, v1, v9

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 428
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 430
    add-float v12, v0, v10

    invoke-virtual {v11, v12, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 431
    add-float v12, v0, v9

    sub-float v13, v1, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    iget v12, v2, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    sub-float v13, v1, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 433
    iget v12, v2, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    add-float v13, v1, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 434
    add-float v12, v0, v9

    add-float v13, v1, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 435
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 437
    invoke-virtual {v6, v11, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 438
    move-object v13, v2

    move v14, v3

    move-object v15, v4

    move-object v8, v5

    move-object v9, v6

    goto/16 :goto_7

    .line 365
    .end local v0    # "cx":F
    .end local v7    # "snappingSize":I
    .end local v8    # "offsetX":F
    .end local v9    # "offsetY":F
    .end local v10    # "start":F
    .end local v11    # "path":Landroid/graphics/Path;
    .end local v34    # "strokeWidth":F
    .local v1, "boundingBox":Landroid/graphics/Rect;
    .local v2, "strokeWidth":F
    .restart local v5    # "snappingSize":I
    :pswitch_4
    move/from16 v34, v2

    move-object v2, v1

    move-object/from16 v39, v7

    move v7, v5

    move-object/from16 v5, v39

    .end local v1    # "boundingBox":Landroid/graphics/Rect;
    .end local v5    # "snappingSize":I
    .local v2, "boundingBox":Landroid/graphics/Rect;
    .restart local v7    # "snappingSize":I
    .restart local v34    # "strokeWidth":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    .line 366
    .local v1, "cx":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    .line 368
    .local v0, "cy":F
    sget-object v9, Lcom/winlator/cmod/inputcontrols/ControlElement$1;->$SwitchMap$com$winlator$cmod$inputcontrols$ControlElement$Shape:[I

    iget-object v10, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->shape:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    invoke-virtual {v10}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    goto :goto_6

    .line 370
    :pswitch_5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v17

    invoke-virtual {v6, v1, v0, v8, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 371
    goto :goto_6

    .line 381
    :pswitch_6
    int-to-float v9, v7

    mul-float/2addr v9, v8

    iget v8, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float v18, v9, v8

    .line 382
    .local v18, "radius":F
    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v8

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v8

    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v11, v8

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v8

    move-object/from16 v8, p1

    move/from16 v13, v18

    move/from16 v14, v18

    move-object v15, v4

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 383
    goto :goto_6

    .line 376
    .end local v18    # "radius":F
    :pswitch_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float v18, v8, v17

    .line 377
    .restart local v18    # "radius":F
    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v8

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v8

    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v11, v8

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v8

    move-object/from16 v8, p1

    move/from16 v13, v18

    move/from16 v14, v18

    move-object v15, v4

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 378
    goto :goto_6

    .line 373
    .end local v18    # "radius":F
    :pswitch_8
    invoke-virtual {v6, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 374
    nop

    .line 387
    :goto_6
    iget-byte v8, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->iconId:B

    if-lez v8, :cond_8

    .line 388
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget-byte v10, v5, Lcom/winlator/cmod/inputcontrols/ControlElement;->iconId:B

    move v11, v0

    .end local v0    # "cy":F
    .local v11, "cy":F
    move-object/from16 v0, p0

    move v12, v1

    .end local v1    # "cx":F
    .local v12, "cx":F
    move-object/from16 v1, p1

    move-object v13, v2

    .end local v2    # "boundingBox":Landroid/graphics/Rect;
    .local v13, "boundingBox":Landroid/graphics/Rect;
    move v2, v12

    move v14, v3

    .end local v3    # "primaryColor":I
    .restart local v14    # "primaryColor":I
    move v3, v11

    move-object v15, v4

    .end local v4    # "paint":Landroid/graphics/Paint;
    .local v15, "paint":Landroid/graphics/Paint;
    move v4, v8

    move-object v8, v5

    move v5, v9

    move-object v9, v6

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/winlator/cmod/inputcontrols/ControlElement;->drawIcon(Landroid/graphics/Canvas;FFFFI)V

    goto :goto_7

    .line 391
    .end local v11    # "cy":F
    .end local v12    # "cx":F
    .end local v13    # "boundingBox":Landroid/graphics/Rect;
    .end local v14    # "primaryColor":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    .restart local v0    # "cy":F
    .restart local v1    # "cx":F
    .restart local v2    # "boundingBox":Landroid/graphics/Rect;
    .restart local v3    # "primaryColor":I
    .restart local v4    # "paint":Landroid/graphics/Paint;
    :cond_8
    move v11, v0

    move v12, v1

    move-object v13, v2

    move v14, v3

    move-object v15, v4

    move-object v8, v5

    move-object v9, v6

    .end local v0    # "cy":F
    .end local v1    # "cx":F
    .end local v2    # "boundingBox":Landroid/graphics/Rect;
    .end local v3    # "primaryColor":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .restart local v11    # "cy":F
    .restart local v12    # "cx":F
    .restart local v13    # "boundingBox":Landroid/graphics/Rect;
    .restart local v14    # "primaryColor":I
    .restart local v15    # "paint":Landroid/graphics/Paint;
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v34, v16

    sub-float/2addr v1, v2

    invoke-static {v15, v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v1

    mul-int/lit8 v5, v7, 0x2

    int-to-float v2, v5

    iget v3, v8, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 393
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 394
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 395
    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    iget-short v1, v8, Lcom/winlator/cmod/inputcontrols/ControlElement;->x:S

    int-to-float v1, v1

    iget-short v2, v8, Lcom/winlator/cmod/inputcontrols/ControlElement;->y:S

    int-to-float v2, v2

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v15}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-virtual {v9, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 398
    .end local v0    # "text":Ljava/lang/String;
    nop

    .line 551
    .end local v11    # "cy":F
    .end local v12    # "cx":F
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;
    .locals 1
    .param p1, "index"    # I

    .line 182
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    :goto_0
    return-object v0
.end method

.method public getBindingCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    array-length v0, v0

    return v0
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->computeBoundingBox()Landroid/graphics/Rect;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCurrentPosition()Landroid/graphics/PointF;
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 801
    new-instance v0, Landroid/graphics/PointF;

    iget-short v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->x:S

    int-to-float v1, v1

    iget-short v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->y:S

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getIconId()B
    .locals 1

    .line 244
    iget-byte v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->iconId:B

    return v0
.end method

.method public getOrientation()B
    .locals 1

    .line 165
    iget-byte v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->orientation:B

    return v0
.end method

.method public getRange()Lcom/winlator/cmod/inputcontrols/ControlElement$Range;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->range:Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->range:Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->FROM_A_TO_Z:Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    :goto_0
    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 201
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    return v0
.end method

.method public getShape()Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->shape:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/winlator/cmod/inputcontrols/ControlElement$Type;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    return-object v0
.end method

.method public getX()S
    .locals 1

    .line 210
    iget-short v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->x:S

    return v0
.end method

.method public getY()S
    .locals 1

    .line 219
    iget-short v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->y:S

    return v0
.end method

.method public handleTouchDown(IFF)Z
    .locals 4
    .param p1, "pointerId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 612
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPointerId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, p2, p3}, Lcom/winlator/cmod/inputcontrols/ControlElement;->containsPoint(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 613
    iput p1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPointerId:I

    .line 614
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 615
    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->isKeepButtonPressedAfterMinTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    .line 616
    :cond_0
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->toggleSwitch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    .line 617
    :cond_2
    return v3

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_4

    .line 620
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scroller:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-virtual {v0, p2, p3}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->handleTouchDown(FF)V

    .line 621
    return v3

    .line 624
    :cond_4
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_6

    .line 625
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 626
    :cond_5
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 628
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/winlator/cmod/inputcontrols/ControlElement;->handleTouchMove(IFF)Z

    move-result v0

    return v0

    .line 631
    :cond_7
    return v2
.end method

.method public handleTouchMove(IFF)Z
    .locals 21
    .param p1, "pointerId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 635
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPointerId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v4, :cond_32

    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v7, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->D_PAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-eq v4, v7, :cond_0

    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v7, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-eq v4, v7, :cond_0

    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v7, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v4, v7, :cond_32

    .line 637
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v4

    .line 638
    .local v4, "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    .line 639
    .local v7, "radius":F
    iget-object v8, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v8}, Lcom/winlator/cmod/widget/InputControlsView;->getTouchpadView()Lcom/winlator/cmod/widget/TouchpadView;

    move-result-object v8

    .line 641
    .local v8, "touchpadView":Lcom/winlator/cmod/widget/TouchpadView;
    iget-object v9, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v10, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v9, v10, :cond_2

    .line 642
    iget-object v9, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v9, :cond_1

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    iput-object v9, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 643
    :cond_1
    iget-object v9, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10, v2, v3}, Lcom/winlator/cmod/widget/TouchpadView;->computeDeltaPoint(FFFF)[F

    move-result-object v9

    .line 644
    .local v9, "deltaPoint":[F
    aget v10, v9, v5

    .line 645
    .local v10, "deltaX":F
    aget v13, v9, v6

    .line 646
    .local v13, "deltaY":F
    iget-object v14, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    invoke-virtual {v14, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 647
    .end local v9    # "deltaPoint":[F
    move-object v6, v8

    goto :goto_1

    .line 649
    .end local v10    # "deltaX":F
    .end local v13    # "deltaY":F
    :cond_2
    iget v9, v4, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    .line 650
    .local v9, "localX":F
    iget v10, v4, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    .line 651
    .local v10, "localY":F
    sub-float v13, v9, v7

    .line 652
    .local v13, "offsetX":F
    sub-float v14, v10, v7

    .line 654
    .local v14, "offsetY":F
    sub-float v15, v7, v9

    sub-float v6, v7, v10

    invoke-static {v15, v6}, Lcom/winlator/cmod/math/Mathf;->lengthSq(FF)F

    move-result v6

    .line 655
    .local v6, "distance":F
    mul-float v15, v7, v7

    cmpl-float v15, v6, v15

    if-lez v15, :cond_3

    .line 656
    move/from16 v17, v6

    .end local v6    # "distance":F
    .local v17, "distance":F
    float-to-double v5, v14

    float-to-double v11, v13

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 657
    .local v5, "angle":F
    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    move-object v6, v8

    move/from16 v19, v9

    .end local v8    # "touchpadView":Lcom/winlator/cmod/widget/TouchpadView;
    .end local v9    # "localX":F
    .local v6, "touchpadView":Lcom/winlator/cmod/widget/TouchpadView;
    .local v19, "localX":F
    float-to-double v8, v7

    mul-double/2addr v11, v8

    double-to-float v13, v11

    .line 658
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double v11, v7

    mul-double/2addr v8, v11

    double-to-float v14, v8

    goto :goto_0

    .line 655
    .end local v5    # "angle":F
    .end local v17    # "distance":F
    .end local v19    # "localX":F
    .local v6, "distance":F
    .restart local v8    # "touchpadView":Lcom/winlator/cmod/widget/TouchpadView;
    .restart local v9    # "localX":F
    :cond_3
    move/from16 v17, v6

    move-object v6, v8

    move/from16 v19, v9

    .line 661
    .end local v8    # "touchpadView":Lcom/winlator/cmod/widget/TouchpadView;
    .end local v9    # "localX":F
    .local v6, "touchpadView":Lcom/winlator/cmod/widget/TouchpadView;
    .restart local v17    # "distance":F
    .restart local v19    # "localX":F
    :goto_0
    div-float v5, v13, v7

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v5, v8, v9}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v5

    .line 662
    .local v5, "deltaX":F
    div-float v11, v14, v7

    invoke-static {v11, v8, v9}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v11

    move v10, v5

    move v13, v11

    .line 665
    .end local v5    # "deltaX":F
    .end local v14    # "offsetY":F
    .end local v17    # "distance":F
    .end local v19    # "localX":F
    .local v10, "deltaX":F
    .local v13, "deltaY":F
    :goto_1
    iget-object v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v8, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v11, 0x2

    if-ne v5, v8, :cond_12

    .line 666
    iget-object v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v5, :cond_4

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 667
    :cond_4
    iget-object v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float v17, v10, v7

    add-float v8, v8, v17

    add-float/2addr v8, v7

    iput v8, v5, Landroid/graphics/PointF;->x:F

    .line 668
    iget-object v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float v17, v13, v7

    add-float v8, v8, v17

    add-float/2addr v8, v7

    iput v8, v5, Landroid/graphics/PointF;->y:F

    .line 670
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v8

    .line 671
    .local v8, "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-virtual {v8}, Lcom/winlator/cmod/inputcontrols/Binding;->isGamepad()Z

    move-result v5

    const v17, 0x3e19999a    # 0.15f

    if-eqz v5, :cond_7

    .line 672
    mul-float v5, v10, v10

    mul-float v11, v13, v13

    add-float/2addr v5, v11

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v5, v11

    .line 673
    .local v5, "magnitude":F
    const/4 v11, 0x0

    .line 674
    .local v11, "finalX":F
    const/4 v12, 0x0

    .line 675
    .local v12, "finalY":F
    cmpl-float v15, v5, v17

    if-lez v15, :cond_5

    .line 676
    div-float v15, v10, v5

    .line 677
    .local v15, "normalizedX":F
    div-float v17, v13, v5

    .line 678
    .local v17, "normalizedY":F
    const v18, 0x3c23d70a    # 0.01f

    sub-float v14, v5, v18

    move-object/from16 v20, v4

    .end local v4    # "boundingBox":Landroid/graphics/Rect;
    .local v20, "boundingBox":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-static {v4, v14}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v9

    .line 679
    .local v4, "scaledMagnitude":F
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 680
    mul-float v11, v15, v4

    .line 681
    mul-float v12, v17, v4

    goto :goto_2

    .line 675
    .end local v15    # "normalizedX":F
    .end local v17    # "normalizedY":F
    .end local v20    # "boundingBox":Landroid/graphics/Rect;
    .local v4, "boundingBox":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v20, v4

    .line 683
    .end local v4    # "boundingBox":Landroid/graphics/Rect;
    .restart local v20    # "boundingBox":Landroid/graphics/Rect;
    :goto_2
    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v4, v8, v11, v12}, Lcom/winlator/cmod/widget/InputControlsView;->handleStickInput(Lcom/winlator/cmod/inputcontrols/Binding;FF)V

    .line 684
    const/4 v4, 0x0

    .local v4, "i":B
    :goto_3
    const/4 v9, 0x4

    if-ge v4, v9, :cond_6

    .line 685
    iget-object v9, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    const/4 v14, 0x1

    aput-boolean v14, v9, v4

    .line 684
    add-int/lit8 v9, v4, 0x1

    int-to-byte v4, v9

    goto :goto_3

    .line 687
    .end local v4    # "i":B
    .end local v5    # "magnitude":F
    .end local v11    # "finalX":F
    .end local v12    # "finalY":F
    :cond_6
    goto/16 :goto_d

    .line 688
    .end local v20    # "boundingBox":Landroid/graphics/Rect;
    .local v4, "boundingBox":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v20, v4

    .end local v4    # "boundingBox":Landroid/graphics/Rect;
    .restart local v20    # "boundingBox":Landroid/graphics/Rect;
    const v4, -0x41e66666    # -0.15f

    cmpg-float v5, v13, v4

    if-gtz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    cmpl-float v9, v10, v17

    if-ltz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    cmpl-float v14, v13, v17

    if-ltz v14, :cond_a

    const/4 v14, 0x1

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_6
    cmpg-float v4, v10, v4

    if-gtz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_7
    const/4 v15, 0x4

    new-array v12, v15, [Z

    const/16 v17, 0x0

    aput-boolean v5, v12, v17

    const/4 v5, 0x1

    aput-boolean v9, v12, v5

    aput-boolean v14, v12, v11

    const/4 v9, 0x3

    aput-boolean v4, v12, v9

    move-object v4, v12

    .line 689
    .local v4, "states":[Z
    const/4 v11, 0x0

    .local v11, "i":B
    :goto_8
    if-ge v11, v15, :cond_11

    .line 690
    if-eq v11, v5, :cond_d

    if-ne v11, v9, :cond_c

    goto :goto_9

    :cond_c
    move v5, v13

    goto :goto_a

    :cond_d
    :goto_9
    move v5, v10

    .line 691
    .local v5, "value":F
    :goto_a
    invoke-virtual {v0, v11}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v9

    .line 692
    .local v9, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-virtual {v9}, Lcom/winlator/cmod/inputcontrols/Binding;->isMouseMove()Z

    move-result v12

    if-eqz v12, :cond_10

    aget-boolean v12, v4, v11

    if-nez v12, :cond_f

    add-int/lit8 v12, v11, 0x2

    const/4 v14, 0x4

    rem-int/2addr v12, v14

    aget-boolean v12, v4, v12

    if-eqz v12, :cond_e

    goto :goto_b

    :cond_e
    const/4 v12, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v12, 0x1

    goto :goto_c

    :cond_10
    aget-boolean v12, v4, v11

    .line 693
    .local v12, "state":Z
    :goto_c
    iget-object v14, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v14, v9, v12, v5}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;ZF)V

    .line 694
    iget-object v14, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    aput-boolean v12, v14, v11

    .line 689
    .end local v5    # "value":F
    .end local v9    # "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    .end local v12    # "state":Z
    add-int/lit8 v5, v11, 0x1

    int-to-byte v11, v5

    const/4 v5, 0x1

    const/4 v9, 0x3

    const/4 v15, 0x4

    goto :goto_8

    .line 697
    .end local v4    # "states":[Z
    .end local v11    # "i":B
    :cond_11
    :goto_d
    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 698
    .end local v8    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    goto/16 :goto_23

    .line 699
    .end local v20    # "boundingBox":Landroid/graphics/Rect;
    .local v4, "boundingBox":Landroid/graphics/Rect;
    :cond_12
    move-object/from16 v20, v4

    .end local v4    # "boundingBox":Landroid/graphics/Rect;
    .restart local v20    # "boundingBox":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v5, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v4, v5, :cond_27

    .line 700
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v5

    .line 701
    .local v5, "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-virtual {v5}, Lcom/winlator/cmod/inputcontrols/Binding;->isGamepad()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 702
    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->interpolator:Lcom/winlator/cmod/core/CubicBezierInterpolator;

    if-nez v4, :cond_13

    new-instance v4, Lcom/winlator/cmod/core/CubicBezierInterpolator;

    invoke-direct {v4}, Lcom/winlator/cmod/core/CubicBezierInterpolator;-><init>()V

    iput-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->interpolator:Lcom/winlator/cmod/core/CubicBezierInterpolator;

    .line 703
    :cond_13
    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->interpolator:Lcom/winlator/cmod/core/CubicBezierInterpolator;

    const v8, 0x3d99999a    # 0.075f

    const v11, 0x3ee66666    # 0.45f

    const v12, 0x3f733333    # 0.95f

    invoke-virtual {v4, v8, v12, v11, v12}, Lcom/winlator/cmod/core/CubicBezierInterpolator;->set(FFFF)V

    .line 704
    move v4, v10

    .line 705
    .local v4, "valueX":F
    move v8, v13

    .line 706
    .local v8, "valueY":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x40800000    # 4.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_14

    mul-float/2addr v4, v9

    .line 707
    :cond_14
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v11, v11, v12

    if-lez v11, :cond_15

    mul-float/2addr v8, v9

    .line 708
    :cond_15
    iget-object v9, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->interpolator:Lcom/winlator/cmod/core/CubicBezierInterpolator;

    const/high16 v11, 0x41a00000    # 20.0f

    div-float v12, v4, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-virtual {v9, v12}, Lcom/winlator/cmod/core/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v9

    .line 709
    .local v9, "interpX":F
    iget-object v12, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->interpolator:Lcom/winlator/cmod/core/CubicBezierInterpolator;

    div-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual {v12, v11}, Lcom/winlator/cmod/core/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v11

    .line 710
    .local v11, "interpY":F
    invoke-static {v4}, Lcom/winlator/cmod/math/Mathf;->sign(F)B

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v12, v15, v14}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v12

    .line 711
    .local v12, "finalX":F
    invoke-static {v8}, Lcom/winlator/cmod/math/Mathf;->sign(F)B

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    move/from16 v17, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .end local v4    # "valueX":F
    .local v17, "valueX":F
    invoke-static {v14, v15, v4}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v4

    .line 712
    .local v4, "finalY":F
    iget-object v14, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v14, v5, v12, v4}, Lcom/winlator/cmod/widget/InputControlsView;->handleStickInput(Lcom/winlator/cmod/inputcontrols/Binding;FF)V

    .line 713
    const/4 v14, 0x0

    .local v14, "i":B
    :goto_e
    const/4 v15, 0x4

    if-ge v14, v15, :cond_16

    .line 714
    iget-object v15, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    const/16 v16, 0x1

    aput-boolean v16, v15, v14

    .line 713
    add-int/lit8 v15, v14, 0x1

    int-to-byte v14, v15

    goto :goto_e

    .line 716
    .end local v4    # "finalY":F
    .end local v8    # "valueY":F
    .end local v9    # "interpX":F
    .end local v11    # "interpY":F
    .end local v12    # "finalX":F
    .end local v14    # "i":B
    .end local v17    # "valueX":F
    :cond_16
    goto/16 :goto_19

    .line 717
    :cond_17
    const v4, -0x40b33333    # -0.8f

    cmpg-float v8, v13, v4

    if-gtz v8, :cond_18

    const/4 v8, 0x1

    goto :goto_f

    :cond_18
    const/4 v8, 0x0

    :goto_f
    const v9, 0x3f4ccccd    # 0.8f

    cmpl-float v12, v10, v9

    if-ltz v12, :cond_19

    const/4 v12, 0x1

    goto :goto_10

    :cond_19
    const/4 v12, 0x0

    :goto_10
    cmpl-float v9, v13, v9

    if-ltz v9, :cond_1a

    const/4 v9, 0x1

    goto :goto_11

    :cond_1a
    const/4 v9, 0x0

    :goto_11
    cmpg-float v4, v10, v4

    if-gtz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_12

    :cond_1b
    const/4 v4, 0x0

    :goto_12
    const/4 v14, 0x4

    new-array v15, v14, [Z

    const/4 v14, 0x0

    aput-boolean v8, v15, v14

    const/4 v14, 0x1

    aput-boolean v12, v15, v14

    aput-boolean v9, v15, v11

    const/4 v9, 0x3

    aput-boolean v4, v15, v9

    move-object v4, v15

    .line 718
    .local v4, "states":[Z
    const/4 v9, 0x0

    .line 719
    .local v9, "cursorDx":I
    const/4 v11, 0x0

    .line 720
    .local v11, "cursorDy":I
    const/4 v12, 0x0

    .local v12, "i":B
    :goto_13
    const/4 v14, 0x4

    if-ge v12, v14, :cond_23

    .line 721
    const/4 v14, 0x1

    if-eq v12, v14, :cond_1d

    const/4 v14, 0x3

    if-ne v12, v14, :cond_1c

    goto :goto_14

    :cond_1c
    move v14, v13

    goto :goto_15

    :cond_1d
    :goto_14
    move v14, v10

    .line 722
    .local v14, "value":F
    :goto_15
    invoke-virtual {v0, v12}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v15

    .line 723
    .local v15, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x40c00000    # 6.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1e

    const/high16 v17, 0x3fa00000    # 1.25f

    mul-float v14, v14, v17

    .line 724
    :cond_1e
    sget-object v8, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq v15, v8, :cond_22

    sget-object v8, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne v15, v8, :cond_1f

    move-object/from16 v18, v5

    goto :goto_17

    .line 727
    :cond_1f
    sget-object v8, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq v15, v8, :cond_21

    sget-object v8, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne v15, v8, :cond_20

    move-object/from16 v18, v5

    goto :goto_16

    .line 731
    :cond_20
    iget-object v8, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    move-object/from16 v18, v5

    .end local v5    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    .local v18, "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    aget-boolean v5, v4, v12

    invoke-virtual {v8, v15, v5, v14}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;ZF)V

    .line 732
    iget-object v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    aget-boolean v8, v4, v12

    aput-boolean v8, v5, v12

    goto :goto_18

    .line 727
    .end local v18    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    .restart local v5    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    :cond_21
    move-object/from16 v18, v5

    .line 728
    .end local v5    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    .restart local v18    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    :goto_16
    invoke-static {v14}, Lcom/winlator/cmod/math/Mathf;->roundPoint(F)I

    move-result v5

    move v11, v5

    .end local v11    # "cursorDy":I
    .local v5, "cursorDy":I
    goto :goto_18

    .line 724
    .end local v18    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    .local v5, "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    .restart local v11    # "cursorDy":I
    :cond_22
    move-object/from16 v18, v5

    .line 725
    .end local v5    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    .restart local v18    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    :goto_17
    invoke-static {v14}, Lcom/winlator/cmod/math/Mathf;->roundPoint(F)I

    move-result v5

    move v9, v5

    .line 720
    .end local v14    # "value":F
    .end local v15    # "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    :goto_18
    add-int/lit8 v5, v12, 0x1

    int-to-byte v12, v5

    move-object/from16 v5, v18

    goto :goto_13

    .end local v18    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    .restart local v5    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    :cond_23
    move-object/from16 v18, v5

    .line 735
    .end local v5    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    .end local v12    # "i":B
    .restart local v18    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    if-nez v9, :cond_24

    if-eqz v11, :cond_26

    .line 736
    :cond_24
    iget-object v5, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v5}, Lcom/winlator/cmod/widget/InputControlsView;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v5

    .line 737
    .local v5, "xServer":Lcom/winlator/cmod/xserver/XServer;
    invoke-virtual {v5}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 738
    invoke-virtual {v5}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v14, v9, v11, v12}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_19

    .line 740
    :cond_25
    iget-object v8, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v8}, Lcom/winlator/cmod/widget/InputControlsView;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v8

    invoke-virtual {v8, v9, v11}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMoveDelta(II)V

    .line 743
    .end local v4    # "states":[Z
    .end local v5    # "xServer":Lcom/winlator/cmod/xserver/XServer;
    .end local v9    # "cursorDx":I
    .end local v11    # "cursorDy":I
    .end local v18    # "firstBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    :cond_26
    :goto_19
    goto/16 :goto_23

    .line 745
    :cond_27
    const v4, -0x41666666    # -0.3f

    cmpg-float v5, v13, v4

    if-gtz v5, :cond_28

    const/4 v5, 0x1

    goto :goto_1a

    :cond_28
    const/4 v5, 0x0

    :goto_1a
    const v8, 0x3e99999a    # 0.3f

    cmpl-float v9, v10, v8

    if-ltz v9, :cond_29

    const/4 v9, 0x1

    goto :goto_1b

    :cond_29
    const/4 v9, 0x0

    :goto_1b
    cmpl-float v8, v13, v8

    if-ltz v8, :cond_2a

    const/4 v8, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v8, 0x0

    :goto_1c
    cmpg-float v4, v10, v4

    if-gtz v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_1d

    :cond_2b
    const/4 v4, 0x0

    :goto_1d
    const/4 v12, 0x4

    new-array v14, v12, [Z

    const/4 v15, 0x0

    aput-boolean v5, v14, v15

    const/4 v5, 0x1

    aput-boolean v9, v14, v5

    aput-boolean v8, v14, v11

    const/4 v8, 0x3

    aput-boolean v4, v14, v8

    move-object v4, v14

    .line 746
    .restart local v4    # "states":[Z
    const/4 v9, 0x0

    .local v9, "i":B
    :goto_1e
    if-ge v9, v12, :cond_31

    .line 747
    if-eq v9, v5, :cond_2d

    if-ne v9, v8, :cond_2c

    goto :goto_1f

    :cond_2c
    move v5, v13

    goto :goto_20

    :cond_2d
    :goto_1f
    move v5, v10

    .line 748
    .local v5, "value":F
    :goto_20
    invoke-virtual {v0, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v11

    .line 749
    .local v11, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-virtual {v11}, Lcom/winlator/cmod/inputcontrols/Binding;->isMouseMove()Z

    move-result v12

    if-eqz v12, :cond_30

    aget-boolean v12, v4, v9

    if-nez v12, :cond_2f

    add-int/lit8 v12, v9, 0x2

    const/4 v14, 0x4

    rem-int/2addr v12, v14

    aget-boolean v12, v4, v12

    if-eqz v12, :cond_2e

    goto :goto_21

    :cond_2e
    const/4 v12, 0x0

    goto :goto_22

    :cond_2f
    const/4 v14, 0x4

    :goto_21
    const/4 v12, 0x1

    goto :goto_22

    :cond_30
    const/4 v14, 0x4

    aget-boolean v12, v4, v9

    .line 750
    .local v12, "state":Z
    :goto_22
    iget-object v8, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v8, v11, v12, v5}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;ZF)V

    .line 751
    iget-object v8, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    aput-boolean v12, v8, v9

    .line 746
    .end local v5    # "value":F
    .end local v11    # "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    .end local v12    # "state":Z
    add-int/lit8 v5, v9, 0x1

    int-to-byte v9, v5

    move v12, v14

    const/4 v5, 0x1

    const/4 v8, 0x3

    goto :goto_1e

    .line 754
    .end local v4    # "states":[Z
    .end local v9    # "i":B
    :cond_31
    :goto_23
    const/4 v4, 0x1

    return v4

    .line 756
    .end local v6    # "touchpadView":Lcom/winlator/cmod/widget/TouchpadView;
    .end local v7    # "radius":F
    .end local v10    # "deltaX":F
    .end local v13    # "deltaY":F
    .end local v20    # "boundingBox":Landroid/graphics/Rect;
    :cond_32
    iget v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPointerId:I

    if-ne v1, v4, :cond_33

    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v5, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v4, v5, :cond_33

    .line 757
    iget-object v4, v0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scroller:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-virtual {v4, v2, v3}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->handleTouchMove(FF)V

    .line 758
    const/4 v4, 0x1

    return v4

    .line 760
    :cond_33
    const/4 v4, 0x0

    return v4
.end method

.method public handleTouchUp(I)Z
    .locals 9
    .param p1, "pointerId"    # I

    .line 764
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPointerId:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_d

    .line 765
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_6

    .line 766
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v0

    .line 767
    .local v0, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->isKeepButtonPressedAfterMinTime()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x12c

    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    .line 769
    iget-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v2, v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    .line 770
    :cond_1
    iput-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    .line 771
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    goto :goto_1

    .line 773
    :cond_2
    iget-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->toggleSwitch:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v2, v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    .line 775
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->toggleSwitch:Z

    if-eqz v1, :cond_5

    .line 776
    iget-boolean v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    xor-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    .line 777
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 779
    .end local v0    # "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    :cond_5
    goto :goto_4

    .line 780
    :cond_6
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->D_PAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v0, v2, :cond_c

    .line 781
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_2
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 782
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    .line 783
    :cond_8
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    aput-boolean v1, v2, v0

    .line 781
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_2

    .line 785
    .end local v0    # "i":B
    :cond_9
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_a

    .line 786
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scroller:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->handleTouchUp()V

    goto :goto_3

    .line 788
    :cond_a
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_b

    .line 789
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 791
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_c

    iput-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 793
    :cond_c
    :goto_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPointerId:I

    .line 794
    return v4

    .line 796
    :cond_d
    return v1
.end method

.method public isSelected()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    return v0
.end method

.method public isToggleSwitch()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->toggleSwitch:Z

    return v0
.end method

.method public setBinding(Lcom/winlator/cmod/inputcontrols/Binding;)V
    .locals 1
    .param p1, "binding"    # Lcom/winlator/cmod/inputcontrols/Binding;

    .line 197
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public setBindingAt(ILcom/winlator/cmod/inputcontrols/Binding;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "binding"    # Lcom/winlator/cmod/inputcontrols/Binding;

    .line 186
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    array-length v0, v0

    .line 188
    .local v0, "oldLength":I
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/winlator/cmod/inputcontrols/Binding;

    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    .line 189
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    array-length v3, v3

    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 193
    .end local v0    # "oldLength":I
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    aput-object p2, v0, p1

    .line 194
    return-void
.end method

.method public setBindingCount(I)V
    .locals 1
    .param p1, "bindingCount"    # I

    .line 141
    new-array v0, p1, [Lcom/winlator/cmod/inputcontrols/Binding;

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    .line 142
    sget-object v0, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setBinding(Lcom/winlator/cmod/inputcontrols/Binding;)V

    .line 143
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->states:[Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 145
    return-void
.end method

.method public setCurrentPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 807
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 811
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 812
    return-void
.end method

.method public setIconId(I)V
    .locals 1
    .param p1, "iconId"    # I

    .line 248
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->iconId:B

    .line 249
    return-void
.end method

.method public setOrientation(B)V
    .locals 1
    .param p1, "orientation"    # B

    .line 169
    iput-byte p1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->orientation:B

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 171
    return-void
.end method

.method public setRange(Lcom/winlator/cmod/inputcontrols/ControlElement$Range;)V
    .locals 0
    .param p1, "range"    # Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    .line 161
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->range:Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    .line 162
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 205
    iput p1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 207
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 232
    iput-boolean p1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->selected:Z

    .line 233
    return-void
.end method

.method public setShape(Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;)V
    .locals 1
    .param p1, "shape"    # Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    .line 152
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->shape:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 154
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 240
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setToggleSwitch(Z)V
    .locals 0
    .param p1, "toggleSwitch"    # Z

    .line 178
    iput-boolean p1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->toggleSwitch:Z

    .line 179
    return-void
.end method

.method public setType(Lcom/winlator/cmod/inputcontrols/ControlElement$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    .line 132
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    .line 133
    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->reset()V

    .line 134
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "x"    # I

    .line 214
    int-to-short v0, p1

    iput-short v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->x:S

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 216
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "y"    # I

    .line 223
    int-to-short v0, p1

    iput-short v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->y:S

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 225
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .line 576
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 577
    .local v0, "elementJSONObject":Lorg/json/JSONObject;
    const-string v1, "type"

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v1, "shape"

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->shape:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 581
    .local v1, "bindingsJSONArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->bindings:[Lcom/winlator/cmod/inputcontrols/Binding;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .local v5, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-virtual {v5}, Lcom/winlator/cmod/inputcontrols/Binding;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .end local v5    # "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 583
    :cond_0
    const-string v2, "bindings"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    const-string v2, "scale"

    iget v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->scale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    const-string v2, "x"

    iget-short v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->x:S

    int-to-float v3, v3

    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/cmod/widget/InputControlsView;->getMaxWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 586
    const-string v2, "y"

    iget-short v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->y:S

    int-to-float v3, v3

    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/winlator/cmod/widget/InputControlsView;->getMaxHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 587
    const-string v2, "toggleSwitch"

    iget-boolean v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->toggleSwitch:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 588
    const-string v2, "text"

    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    const-string v2, "iconId"

    iget-byte v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->iconId:B

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 591
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->type:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v3, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->range:Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    if-eqz v2, :cond_1

    .line 592
    const-string v2, "range"

    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->range:Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    invoke-virtual {v3}, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    iget-byte v2, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->orientation:B

    if-eqz v2, :cond_1

    const-string v2, "orientation"

    iget-byte v3, p0, Lcom/winlator/cmod/inputcontrols/ControlElement;->orientation:B

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_1
    return-object v0

    .line 597
    .end local v0    # "elementJSONObject":Lorg/json/JSONObject;
    .end local v1    # "bindingsJSONArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method
