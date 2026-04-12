.class public Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
.super Landroid/view/View;
.source "TiledBackgroundView.java"


# instance fields
.field private final animationRunnable:Ljava/lang/Runnable;

.field private currentFrame:I

.field private enableParallax:Z

.field private frameDuration:I

.field private frames:[Landroid/graphics/Bitmap;

.field private handler:Landroid/os/Handler;

.field private isAnimating:Z

.field private paint:Landroid/graphics/Paint;

.field private scrollSpeedX:F

.field private scrollSpeedY:F

.field private scrollX:F

.field private scrollY:F

.field private staticWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentFrame(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)I
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->currentFrame:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenableParallax(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->enableParallax:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetframeDuration(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)I
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frameDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetframes(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)[Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frames:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisAnimating(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->isAnimating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollSpeedX(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollSpeedX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollSpeedY(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollSpeedY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollX(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollY(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentFrame(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;I)V
    .locals 0

    iput p1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->currentFrame:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollX(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;F)V
    .locals 0

    iput p1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollY(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;F)V
    .locals 0

    iput p1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShader(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->updateShader()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->currentFrame:I

    .line 24
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->handler:Landroid/os/Handler;

    .line 25
    const/16 v1, 0x42

    iput v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frameDuration:I

    .line 26
    iput-boolean v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->isAnimating:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->enableParallax:Z

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollX:F

    .line 30
    iput v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollY:F

    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollSpeedX:F

    .line 32
    iput v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollSpeedY:F

    .line 72
    new-instance v0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;-><init>(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)V

    iput-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->animationRunnable:Ljava/lang/Runnable;

    .line 36
    const-string v0, "ab"

    invoke-direct {p0, v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->loadAnimationFrames(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private loadAnimationFrames(Ljava/lang/String;)V
    .locals 5
    .param p1, "animationBaseName"    # Ljava/lang/String;

    .line 40
    const/16 v0, 0x27

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frames:[Landroid/graphics/Bitmap;

    .line 41
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frames:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%04d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "resId":I
    iget-object v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frames:[Landroid/graphics/Bitmap;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 41
    .end local v1    # "resId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->updateShader()V

    .line 46
    return-void
.end method

.method private updateShader()V
    .locals 4

    .line 57
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frames:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->currentFrame:I

    aget-object v1, v1, v2

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 58
    .local v0, "shader":Landroid/graphics/BitmapShader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    .line 59
    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 60
    return-void
.end method


# virtual methods
.method public loadFramesFromBitmaps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p1, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->stopAnimation()V

    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frames:[Landroid/graphics/Bitmap;

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frames:[Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->enableParallax:Z

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->currentFrame:I

    .line 187
    invoke-direct {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->updateShader()V

    .line 188
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->startAnimation()V

    .line 189
    return-void
.end method

.method public loadFramesFromPngFolder([Ljava/io/File;)V
    .locals 3
    .param p1, "pngFiles"    # [Ljava/io/File;

    .line 160
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->stopAnimation()V

    .line 161
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frames:[Landroid/graphics/Bitmap;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frames:[Landroid/graphics/Bitmap;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->enableParallax:Z

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->currentFrame:I

    .line 171
    invoke-direct {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->updateShader()V

    .line 172
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->startAnimation()V

    .line 173
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->staticWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto :goto_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->staticWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->staticWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 103
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->staticWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 107
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 108
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->enableParallax:Z

    if-eqz v1, :cond_2

    .line 109
    iget v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollX:F

    neg-float v1, v1

    iget v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 111
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 114
    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 116
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1
    .param p1, "animationBaseName"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->stopAnimation()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->staticWallpaper:Landroid/graphics/Bitmap;

    .line 51
    invoke-direct {p0, p1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->loadAnimationFrames(Ljava/lang/String;)V

    .line 52
    const-string v0, "ab_quilt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->enableParallax:Z

    .line 53
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->startAnimation()V

    .line 54
    return-void
.end method

.method public setFrameDuration(I)V
    .locals 1
    .param p1, "durationMillis"    # I

    .line 203
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    .line 204
    :cond_0
    iput p1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->frameDuration:I

    .line 205
    return-void
.end method

.method public setParallax(ZFF)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "speedX"    # F
    .param p3, "speedY"    # F

    .line 192
    iput-boolean p1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->enableParallax:Z

    .line 193
    iput p2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollSpeedX:F

    .line 194
    iput p3, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->scrollSpeedY:F

    .line 198
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->invalidate()V

    .line 199
    return-void
.end method

.method public setStaticWallpaper(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;
    .param p2, "mode"    # Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->stopAnimation()V

    .line 134
    iput-object p1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->staticWallpaper:Landroid/graphics/Bitmap;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->enableParallax:Z

    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "tile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "center"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :sswitch_2
    const-string v0, "stretch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 151
    :pswitch_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 152
    .local v0, "shader":Landroid/graphics/BitmapShader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    .line 153
    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 143
    .end local v0    # "shader":Landroid/graphics/BitmapShader;
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 146
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 147
    .restart local v0    # "shader":Landroid/graphics/BitmapShader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    .line 148
    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 149
    goto :goto_2

    .line 140
    .end local v0    # "shader":Landroid/graphics/BitmapShader;
    :pswitch_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->paint:Landroid/graphics/Paint;

    .line 141
    nop

    .line 156
    :goto_2
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->invalidate()V

    .line 157
    return-void

    .line 122
    :cond_3
    :goto_3
    move-object v0, p1

    .line 123
    .local v0, "finalWallpaper":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;-><init>(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 130
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_2
        -0x514d33ab -> :sswitch_1
        0x3652ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startAnimation()V
    .locals 2

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->isAnimating:Z

    .line 64
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->animationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->isAnimating:Z

    .line 69
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->animationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
