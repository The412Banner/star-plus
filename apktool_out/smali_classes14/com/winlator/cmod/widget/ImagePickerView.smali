.class public Lcom/winlator/cmod/widget/ImagePickerView;
.super Landroid/view/View;
.source "ImagePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final icon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/widget/ImagePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/ImagePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080129

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    .line 45
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/ImagePickerView;->setBackgroundResource(I)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/ImagePickerView;->setClickable(Z)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/ImagePickerView;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, p0}, Lcom/winlator/cmod/widget/ImagePickerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/content/Context;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p2, "v"    # Landroid/view/View;

    .line 85
    move-object v0, p0

    check-cast v0, Lcom/winlator/cmod/MainActivity;

    .line 86
    .local v0, "activity":Lcom/winlator/cmod/MainActivity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 89
    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    return-void
.end method

.method static synthetic lambda$onClick$1(Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1
    .param p0, "userWallpaperFile"    # Ljava/io/File;
    .param p1, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p2, "v"    # Landroid/view/View;

    .line 96
    invoke-static {p0}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 97
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 98
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/ImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/winlator/cmod/core/WineThemeManager;->getUserWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 74
    .local v1, "userWallpaperFile":Ljava/io/File;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c005b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 75
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f09008b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 77
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 80
    :cond_0
    const v5, 0x7f080192

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object v4, v5

    .line 83
    .local v4, "popupWindow":[Landroid/widget/PopupWindow;
    const v5, 0x7f09000c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 84
    .local v5, "browseButton":Landroid/view/View;
    new-instance v7, Lcom/winlator/cmod/widget/ImagePickerView$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v4}, Lcom/winlator/cmod/widget/ImagePickerView$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v7, 0x7f090037

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 93
    .local v7, "removeButton":Landroid/view/View;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 94
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 95
    new-instance v8, Lcom/winlator/cmod/widget/ImagePickerView$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1, v4}, Lcom/winlator/cmod/widget/ImagePickerView$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_1
    const/16 v8, 0xc8

    const/16 v9, 0xf0

    invoke-static {p1, v2, v8, v9}, Lcom/winlator/cmod/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v8

    aput-object v8, v4, v6

    .line 102
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/ImagePickerView;->getWidth()I

    move-result v0

    .line 56
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/ImagePickerView;->getHeight()I

    move-result v1

    .line 57
    .local v1, "height":I
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 60
    .local v2, "rectSize":F
    int-to-float v3, v0

    sub-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v5

    sub-float/2addr v3, v5

    .line 61
    .local v3, "startX":F
    int-to-float v5, v1

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    .line 63
    .local v5, "startY":F
    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 64
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/winlator/cmod/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/winlator/cmod/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 65
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v3, v2

    add-float v9, v5, v2

    invoke-direct {v7, v3, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    .local v7, "dstRect":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/winlator/cmod/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 67
    return-void

    .line 57
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
