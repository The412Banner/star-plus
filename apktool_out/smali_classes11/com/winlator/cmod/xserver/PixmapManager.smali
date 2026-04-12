.class public Lcom/winlator/cmod/xserver/PixmapManager;
.super Lcom/winlator/cmod/xserver/XResourceManager;
.source "PixmapManager.java"


# instance fields
.field private final pixmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/winlator/cmod/xserver/Pixmap;",
            ">;"
        }
    .end annotation
.end field

.field public final supportedPixmapFormats:[Lcom/winlator/cmod/xserver/PixmapFormat;

.field public final supportedVisuals:[Lcom/winlator/cmod/xserver/Visual;

.field public final visual:Lcom/winlator/cmod/xserver/Visual;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 12
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/XResourceManager;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    .line 13
    new-instance v0, Lcom/winlator/cmod/xserver/Visual;

    invoke-static {}, Lcom/winlator/cmod/xserver/IDGenerator;->generate()I

    move-result v2

    const v7, 0xff00

    const/16 v8, 0xff

    const/4 v3, 0x1

    const/16 v4, 0x20

    const/16 v5, 0x18

    const/high16 v6, 0xff0000

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/winlator/cmod/xserver/Visual;-><init>(IZIIIII)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->visual:Lcom/winlator/cmod/xserver/Visual;

    .line 14
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/winlator/cmod/xserver/Visual;

    iget-object v2, p0, Lcom/winlator/cmod/xserver/PixmapManager;->visual:Lcom/winlator/cmod/xserver/Visual;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/winlator/cmod/xserver/Visual;

    invoke-static {}, Lcom/winlator/cmod/xserver/IDGenerator;->generate()I

    move-result v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/winlator/cmod/xserver/Visual;-><init>(IZIIIII)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/winlator/cmod/xserver/PixmapManager;->supportedVisuals:[Lcom/winlator/cmod/xserver/Visual;

    .line 16
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/winlator/cmod/xserver/PixmapFormat;

    new-instance v2, Lcom/winlator/cmod/xserver/PixmapFormat;

    const/16 v5, 0x20

    invoke-direct {v2, v4, v4, v5}, Lcom/winlator/cmod/xserver/PixmapFormat;-><init>(III)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/winlator/cmod/xserver/PixmapFormat;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v5, v5}, Lcom/winlator/cmod/xserver/PixmapFormat;-><init>(III)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/winlator/cmod/xserver/PixmapFormat;

    invoke-direct {v2, v5, v5, v5}, Lcom/winlator/cmod/xserver/PixmapFormat;-><init>(III)V

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/winlator/cmod/xserver/PixmapManager;->supportedPixmapFormats:[Lcom/winlator/cmod/xserver/PixmapFormat;

    .line 21
    return-void
.end method


# virtual methods
.method public createPixmap(Lcom/winlator/cmod/xserver/Drawable;)Lcom/winlator/cmod/xserver/Pixmap;
    .locals 3
    .param p1, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 28
    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/winlator/cmod/xserver/Drawable;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/winlator/cmod/xserver/Pixmap;

    invoke-direct {v0, p1}, Lcom/winlator/cmod/xserver/Pixmap;-><init>(Lcom/winlator/cmod/xserver/Drawable;)V

    .line 30
    .local v0, "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    iget-object v1, p0, Lcom/winlator/cmod/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    iget v2, p1, Lcom/winlator/cmod/xserver/Drawable;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/PixmapManager;->triggerOnCreateResourceListener(Lcom/winlator/cmod/xserver/XResource;)V

    .line 32
    return-object v0
.end method

.method public freePixmap(I)V
    .locals 1
    .param p1, "id"    # I

    .line 36
    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/XResource;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/PixmapManager;->triggerOnFreeResourceListener(Lcom/winlator/cmod/xserver/XResource;)V

    .line 37
    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    return-void
.end method

.method public getPixmap(I)Lcom/winlator/cmod/xserver/Pixmap;
    .locals 1
    .param p1, "id"    # I

    .line 24
    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->pixmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Pixmap;

    return-object v0
.end method

.method public getVisual(I)Lcom/winlator/cmod/xserver/Visual;
    .locals 5
    .param p1, "id"    # I

    .line 49
    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget v0, v0, Lcom/winlator/cmod/xserver/Visual;->id:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->visual:Lcom/winlator/cmod/xserver/Visual;

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->supportedVisuals:[Lcom/winlator/cmod/xserver/Visual;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 51
    .local v3, "visual":Lcom/winlator/cmod/xserver/Visual;
    iget v4, v3, Lcom/winlator/cmod/xserver/Visual;->id:I

    if-ne p1, v4, :cond_1

    iget-boolean v4, v3, Lcom/winlator/cmod/xserver/Visual;->displayable:Z

    if-eqz v4, :cond_1

    return-object v3

    .line 50
    .end local v3    # "visual":Lcom/winlator/cmod/xserver/Visual;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisualForDepth(B)Lcom/winlator/cmod/xserver/Visual;
    .locals 5
    .param p1, "depth"    # B

    .line 41
    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v0, v0, Lcom/winlator/cmod/xserver/Visual;->depth:B

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->visual:Lcom/winlator/cmod/xserver/Visual;

    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/PixmapManager;->supportedVisuals:[Lcom/winlator/cmod/xserver/Visual;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 43
    .local v3, "visual":Lcom/winlator/cmod/xserver/Visual;
    iget-byte v4, v3, Lcom/winlator/cmod/xserver/Visual;->depth:B

    if-ne p1, v4, :cond_1

    return-object v3

    .line 42
    .end local v3    # "visual":Lcom/winlator/cmod/xserver/Visual;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowIcon(Lcom/winlator/cmod/xserver/Window;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 57
    sget-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_PIXMAP:Lcom/winlator/cmod/xserver/Window$WMHints;

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xserver/Window;->getWMHintsValue(Lcom/winlator/cmod/xserver/Window$WMHints;)I

    move-result v0

    .line 58
    .local v0, "colorPixmapId":I
    sget-object v1, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_MASK:Lcom/winlator/cmod/xserver/Window$WMHints;

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/xserver/Window;->getWMHintsValue(Lcom/winlator/cmod/xserver/Window$WMHints;)I

    move-result v1

    .line 59
    .local v1, "maskPixmapId":I
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/cmod/xserver/Pixmap;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 60
    .local v3, "colorPixmap":Lcom/winlator/cmod/xserver/Pixmap;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/cmod/xserver/Pixmap;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 61
    .local v4, "maskPixmap":Lcom/winlator/cmod/xserver/Pixmap;
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/Pixmap;->toBitmap(Lcom/winlator/cmod/xserver/Pixmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    return-object v2
.end method
