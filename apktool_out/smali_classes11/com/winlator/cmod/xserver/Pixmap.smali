.class public Lcom/winlator/cmod/xserver/Pixmap;
.super Lcom/winlator/cmod/xserver/XResource;
.source "Pixmap.java"


# instance fields
.field public final drawable:Lcom/winlator/cmod/xserver/Drawable;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 11
    iget v0, p1, Lcom/winlator/cmod/xserver/Drawable;->id:I

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/XResource;-><init>(I)V

    .line 12
    iput-object p1, p0, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    .line 13
    return-void
.end method

.method private static native toBitmap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;)V
.end method


# virtual methods
.method public toBitmap(Lcom/winlator/cmod/xserver/Pixmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "maskPixmap"    # Lcom/winlator/cmod/xserver/Pixmap;

    .line 16
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 17
    .local v0, "maskData":Ljava/nio/ByteBuffer;
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/Drawable;->width:S

    iget-object v2, p0, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 18
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/winlator/cmod/xserver/Pixmap;->toBitmap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;)V

    .line 19
    return-object v1
.end method
