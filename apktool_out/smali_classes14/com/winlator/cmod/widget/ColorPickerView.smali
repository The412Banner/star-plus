.class public Lcom/winlator/cmod/widget/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final colors:[I


# instance fields
.field private final colorFrame:Landroid/graphics/Bitmap;

.field private currentColor:I


# direct methods
.method public static synthetic $r8$lambda$vuSWkartX2glAB7qtJUMwiDEkGo(Lcom/winlator/cmod/widget/ColorPickerView;I[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/widget/ColorPickerView;->lambda$onClick$0(I[Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/winlator/cmod/widget/ColorPickerView;->colors:[I

    return-void

    :array_0
    .array-data 4
        0xff8f00
        0xd32f2f
        0x9575cd
        0x2e7d32
        0x838f
        0x277bd
        0x607d8b
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const v0, 0xffffff

    iput v0, p0, Lcom/winlator/cmod/widget/ColorPickerView;->currentColor:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ea

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    .line 45
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/ColorPickerView;->setBackgroundResource(I)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/ColorPickerView;->setClickable(Z)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/ColorPickerView;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, p0}, Lcom/winlator/cmod/widget/ColorPickerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method private synthetic lambda$onClick$0(I[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p3, "v"    # Landroid/view/View;

    .line 117
    iput p1, p0, Lcom/winlator/cmod/widget/ColorPickerView;->currentColor:I

    .line 118
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/ColorPickerView;->invalidate()V

    .line 119
    const/4 v0, 0x0

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 120
    :cond_0
    return-void
.end method

.method public static toARGB(I)I
    .locals 4
    .param p0, "rgb"    # I

    .line 89
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static toRGB(I)I
    .locals 4
    .param p0, "argb"    # I

    .line 93
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/winlator/cmod/widget/ColorPickerView;->currentColor:I

    invoke-static {v0}, Lcom/winlator/cmod/widget/ColorPickerView;->toARGB(I)I

    move-result v0

    return v0
.end method

.method public getColorAsString()Ljava/lang/String;
    .locals 3

    .line 61
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v1, 0xffffff

    iget v2, p0, Lcom/winlator/cmod/widget/ColorPickerView;->currentColor:I

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "#%06X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "anchor"    # Landroid/view/View;

    .line 98
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x3c

    .line 100
    .local v1, "popupHeight":I
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .local v2, "container":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 104
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v3, v3, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800eb

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 107
    .local v5, "colorFrameSelected":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v7}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v4}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v6, v4, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    aput-object v7, v4, v3

    .line 111
    .local v4, "popupWindow":[Landroid/widget/PopupWindow;
    sget-object v7, Lcom/winlator/cmod/widget/ColorPickerView;->colors:[I

    array-length v8, v7

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_1

    aget v10, v7, v9

    .line 112
    .local v10, "color":I
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 113
    .local v11, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget v12, p0, Lcom/winlator/cmod/widget/ColorPickerView;->currentColor:I

    if-ne v10, v12, :cond_0

    move-object v12, v5

    goto :goto_1

    :cond_0
    iget-object v12, p0, Lcom/winlator/cmod/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    invoke-static {v10}, Lcom/winlator/cmod/widget/ColorPickerView;->toARGB(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 116
    new-instance v12, Lcom/winlator/cmod/widget/ColorPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v12, p0, v10, v4}, Lcom/winlator/cmod/widget/ColorPickerView$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/widget/ColorPickerView;I[Landroid/widget/PopupWindow;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    .end local v10    # "color":I
    .end local v11    # "imageView":Landroid/widget/ImageView;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/16 v7, 0x3c

    invoke-static {p1, v2, v3, v7}, Lcom/winlator/cmod/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v7

    aput-object v7, v4, v3

    .line 124
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/ColorPickerView;->getWidth()I

    move-result v0

    .line 69
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/ColorPickerView;->getHeight()I

    move-result v1

    .line 70
    .local v1, "height":I
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 73
    .local v2, "rectSize":F
    int-to-float v3, v0

    sub-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v5

    sub-float/2addr v3, v5

    .line 74
    .local v3, "startX":F
    int-to-float v5, v1

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    .line 76
    .local v5, "startY":F
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .local v4, "paint":Landroid/graphics/Paint;
    iget v6, p0, Lcom/winlator/cmod/widget/ColorPickerView;->currentColor:I

    invoke-static {v6}, Lcom/winlator/cmod/widget/ColorPickerView;->toARGB(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 81
    add-float v9, v3, v2

    add-float v10, v5, v2

    move-object v6, p1

    move v7, v3

    move v8, v5

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 83
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/winlator/cmod/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/winlator/cmod/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v12, v12, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v3, v2

    add-float v9, v5, v2

    invoke-direct {v7, v3, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 85
    .local v7, "dstRect":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/winlator/cmod/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 86
    return-void

    .line 70
    .end local v2    # "rectSize":F
    .end local v3    # "startX":F
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "startY":F
    .end local v6    # "srcRect":Landroid/graphics/Rect;
    .end local v7    # "dstRect":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 56
    invoke-static {p1}, Lcom/winlator/cmod/widget/ColorPickerView;->toRGB(I)I

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/widget/ColorPickerView;->currentColor:I

    .line 57
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/ColorPickerView;->invalidate()V

    .line 58
    return-void
.end method
