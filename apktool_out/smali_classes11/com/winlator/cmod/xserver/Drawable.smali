.class public Lcom/winlator/cmod/xserver/Drawable;
.super Lcom/winlator/cmod/xserver/XResource;
.source "Drawable.java"


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field public final height:S

.field private onDestroyListener:Lcom/winlator/cmod/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/winlator/cmod/core/Callback<",
            "Lcom/winlator/cmod/xserver/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private onDrawListener:Ljava/lang/Runnable;

.field public final renderLock:Ljava/lang/Object;

.field private texture:Lcom/winlator/cmod/renderer/Texture;

.field public final visual:Lcom/winlator/cmod/xserver/Visual;

.field public final width:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(IIILcom/winlator/cmod/xserver/Visual;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "visual"    # Lcom/winlator/cmod/xserver/Visual;

    .line 28
    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/XResource;-><init>(I)V

    .line 17
    new-instance v0, Lcom/winlator/cmod/renderer/Texture;

    invoke-direct {v0}, Lcom/winlator/cmod/renderer/Texture;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->renderLock:Ljava/lang/Object;

    .line 29
    int-to-short v0, p2

    iput-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    .line 30
    int-to-short v0, p3

    iput-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    .line 31
    iput-object p4, p0, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    .line 32
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    .line 33
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 36
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawable.data initialized as null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native copyArea(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method private static native copyAreaOp(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
.end method

.method private static native drawAlphaMaskedBitmap(BBBBBBLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method private static native drawBitmap(SSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method private static native drawLine(SSSSISSLjava/nio/ByteBuffer;)V
.end method

.method private static native fillRect(SSSSISLjava/nio/ByteBuffer;)V
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/winlator/cmod/xserver/Drawable;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 39
    new-instance v0, Lcom/winlator/cmod/xserver/Drawable;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/winlator/cmod/xserver/Drawable;-><init>(IIILcom/winlator/cmod/xserver/Visual;)V

    .line 40
    .local v0, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    iget-object v1, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-static {p0, v1}, Lcom/winlator/cmod/xserver/Drawable;->fromBitmap(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V

    .line 41
    return-object v0
.end method

.method private static native fromBitmap(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V
.end method

.method private getStride()S
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    instance-of v0, v0, Lcom/winlator/cmod/renderer/GPUImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    check-cast v0, Lcom/winlator/cmod/renderer/GPUImage;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GPUImage;->getStride()S

    move-result v0

    goto :goto_0

    :cond_0
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    :goto_0
    return v0
.end method


# virtual methods
.method public copyArea(SSSSSSLcom/winlator/cmod/xserver/Drawable;)V
    .locals 9
    .param p1, "srcX"    # S
    .param p2, "srcY"    # S
    .param p3, "dstX"    # S
    .param p4, "dstY"    # S
    .param p5, "width"    # S
    .param p6, "height"    # S
    .param p7, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 120
    sget-object v8, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->COPY:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/winlator/cmod/xserver/Drawable;->copyArea(SSSSSSLcom/winlator/cmod/xserver/Drawable;Lcom/winlator/cmod/xserver/GraphicsContext$Function;)V

    .line 121
    return-void
.end method

.method public copyArea(SSSSSSLcom/winlator/cmod/xserver/Drawable;Lcom/winlator/cmod/xserver/GraphicsContext$Function;)V
    .locals 19
    .param p1, "srcX"    # S
    .param p2, "srcY"    # S
    .param p3, "dstX"    # S
    .param p4, "dstY"    # S
    .param p5, "width"    # S
    .param p6, "height"    # S
    .param p7, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;
    .param p8, "gcFunction"    # Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    iget-short v2, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move/from16 v5, p3

    invoke-static {v5, v4, v2}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v2

    int-to-short v2, v2

    .line 125
    .end local p3    # "dstX":S
    .local v2, "dstX":S
    iget-short v5, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sub-int/2addr v5, v3

    move/from16 v6, p4

    invoke-static {v6, v4, v5}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v4

    int-to-short v4, v4

    .line 126
    .end local p4    # "dstY":S
    .local v4, "dstY":S
    add-int v5, v2, p5

    iget-short v6, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    if-le v5, v6, :cond_0

    iget-short v5, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    sub-int/2addr v5, v2

    int-to-short v5, v5

    move/from16 v16, v5

    .end local p5    # "width":S
    .local v5, "width":S
    goto :goto_0

    .end local v5    # "width":S
    .restart local p5    # "width":S
    :cond_0
    move/from16 v16, p5

    .line 127
    .end local p5    # "width":S
    .local v16, "width":S
    :goto_0
    add-int v5, v4, p6

    iget-short v6, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    if-le v5, v6, :cond_1

    iget-short v5, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sub-int/2addr v5, v4

    int-to-short v5, v5

    move/from16 v17, v5

    .end local p6    # "height":S
    .local v5, "height":S
    goto :goto_1

    .end local v5    # "height":S
    .restart local p6    # "height":S
    :cond_1
    move/from16 v17, p6

    .line 129
    .end local p6    # "height":S
    .local v17, "height":S
    :goto_1
    sget-object v5, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->COPY:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    move-object/from16 v15, p8

    if-ne v15, v5, :cond_2

    .line 130
    invoke-direct/range {p7 .. p7}, Lcom/winlator/cmod/xserver/Drawable;->getStride()S

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/Drawable;->getStride()S

    move-result v12

    iget-object v13, v1, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    iget-object v14, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move/from16 v5, p1

    move/from16 v6, p2

    move v7, v2

    move v8, v4

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-static/range {v5 .. v14}, Lcom/winlator/cmod/xserver/Drawable;->copyArea(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 132
    :cond_2
    invoke-direct/range {p7 .. p7}, Lcom/winlator/cmod/xserver/Drawable;->getStride()S

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/Drawable;->getStride()S

    move-result v12

    iget-object v13, v1, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    iget-object v14, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual/range {p8 .. p8}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->ordinal()I

    move-result v18

    move/from16 v5, p1

    move/from16 v6, p2

    move v7, v2

    move v8, v4

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v15, v18

    invoke-static/range {v5 .. v15}, Lcom/winlator/cmod/xserver/Drawable;->copyAreaOp(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 134
    :goto_2
    iget-object v5, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 135
    iget-object v5, v1, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 137
    iget-object v5, v0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    invoke-virtual {v5, v3}, Lcom/winlator/cmod/renderer/Texture;->setNeedsUpdate(Z)V

    .line 138
    iget-object v3, v0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 139
    :cond_3
    return-void
.end method

.method public drawAlphaMaskedBitmap(BBBBBBLcom/winlator/cmod/xserver/Drawable;Lcom/winlator/cmod/xserver/Drawable;)V
    .locals 12
    .param p1, "foreRed"    # B
    .param p2, "foreGreen"    # B
    .param p3, "foreBlue"    # B
    .param p4, "backRed"    # B
    .param p5, "backGreen"    # B
    .param p6, "backBlue"    # B
    .param p7, "srcDrawable"    # Lcom/winlator/cmod/xserver/Drawable;
    .param p8, "maskDrawable"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 179
    move-object v0, p0

    move-object/from16 v1, p7

    iget-object v8, v1, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v11, p8

    iget-object v9, v11, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    iget-object v10, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v2 .. v10}, Lcom/winlator/cmod/xserver/Drawable;->drawAlphaMaskedBitmap(BBBBBBLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 180
    iget-object v2, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 182
    iget-object v2, v0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/renderer/Texture;->setNeedsUpdate(Z)V

    .line 183
    iget-object v2, v0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 184
    :cond_0
    return-void
.end method

.method public drawImage(SSSSSSBLjava/nio/ByteBuffer;SS)V
    .locals 18
    .param p1, "srcX"    # S
    .param p2, "srcY"    # S
    .param p3, "dstX"    # S
    .param p4, "dstY"    # S
    .param p5, "width"    # S
    .param p6, "height"    # S
    .param p7, "depth"    # B
    .param p8, "data"    # Ljava/nio/ByteBuffer;
    .param p9, "totalWidth"    # S
    .param p10, "totalHeight"    # S

    .line 85
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 86
    iget-object v5, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v15, p8

    invoke-static {v1, v2, v15, v5}, Lcom/winlator/cmod/xserver/Drawable;->drawBitmap(SSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 88
    :cond_0
    move-object/from16 v15, p8

    const/16 v5, 0x18

    if-eq v3, v5, :cond_2

    const/16 v5, 0x20

    if-ne v3, v5, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    move/from16 v5, p3

    move/from16 v17, p4

    goto :goto_2

    .line 89
    :cond_2
    :goto_1
    iget-short v5, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    move/from16 v7, p3

    invoke-static {v7, v6, v5}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v5

    int-to-short v5, v5

    .line 90
    .end local p3    # "dstX":S
    .local v5, "dstX":S
    iget-short v7, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sub-int/2addr v7, v4

    move/from16 v8, p4

    invoke-static {v8, v6, v7}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v6

    int-to-short v14, v6

    .line 91
    .end local p4    # "dstY":S
    .local v14, "dstY":S
    add-int v6, v5, v1

    iget-short v7, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    if-le v6, v7, :cond_3

    iget-short v6, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    sub-int/2addr v6, v5

    int-to-short v1, v6

    .line 92
    .end local p5    # "width":S
    .local v1, "width":S
    :cond_3
    add-int v6, v14, v2

    iget-short v7, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    if-le v6, v7, :cond_4

    iget-short v6, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sub-int/2addr v6, v14

    int-to-short v2, v6

    .line 94
    .end local p6    # "height":S
    .local v2, "height":S
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/Drawable;->getStride()S

    move-result v13

    iget-object v12, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move/from16 v6, p1

    move/from16 v7, p2

    move v8, v5

    move v9, v14

    move v10, v1

    move v11, v2

    move-object/from16 v16, v12

    move/from16 v12, p9

    move/from16 v17, v14

    .end local v14    # "dstY":S
    .local v17, "dstY":S
    move-object/from16 v14, p8

    move-object/from16 v15, v16

    invoke-static/range {v6 .. v15}, Lcom/winlator/cmod/xserver/Drawable;->copyArea(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 97
    :goto_2
    iget-object v6, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 98
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 100
    iget-object v6, v0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    invoke-virtual {v6, v4}, Lcom/winlator/cmod/renderer/Texture;->setNeedsUpdate(Z)V

    .line 101
    iget-object v4, v0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 102
    :cond_5
    return-void
.end method

.method public drawLine(IIIIII)V
    .locals 8
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "color"    # I
    .param p6, "lineWidth"    # I

    .line 165
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    sub-int/2addr v0, p6

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result p1

    .line 166
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sub-int/2addr v0, p6

    invoke-static {p2, v1, v0}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result p2

    .line 167
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    sub-int/2addr v0, p6

    invoke-static {p3, v1, v0}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result p3

    .line 168
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sub-int/2addr v0, p6

    invoke-static {p4, v1, v0}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result p4

    .line 170
    int-to-short v0, p1

    int-to-short v1, p2

    int-to-short v2, p3

    int-to-short v3, p4

    int-to-short v5, p6

    invoke-direct {p0}, Lcom/winlator/cmod/xserver/Drawable;->getStride()S

    move-result v6

    iget-object v7, p0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/winlator/cmod/xserver/Drawable;->drawLine(SSSSISSLjava/nio/ByteBuffer;)V

    .line 172
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 174
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/renderer/Texture;->setNeedsUpdate(Z)V

    .line 175
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 176
    :cond_0
    return-void
.end method

.method public varargs drawLines(II[S)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "lineWidth"    # I
    .param p3, "points"    # [S

    .line 159
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 160
    add-int/lit8 v1, v0, -0x2

    aget-short v3, p3, v1

    add-int/lit8 v1, v0, -0x1

    aget-short v4, p3, v1

    add-int/lit8 v1, v0, 0x0

    aget-short v5, p3, v1

    add-int/lit8 v1, v0, 0x1

    aget-short v6, p3, v1

    int-to-short v8, p2

    move-object v2, p0

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/winlator/cmod/xserver/Drawable;->drawLine(IIIIII)V

    .line 159
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public fillColor(I)V
    .locals 6
    .param p1, "color"    # I

    .line 142
    iget-short v3, p0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    iget-short v4, p0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/winlator/cmod/xserver/Drawable;->fillRect(IIIII)V

    .line 143
    return-void
.end method

.method public fillRect(IIIII)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "color"    # I

    .line 146
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short p1, v0

    .line 147
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sub-int/2addr v0, v1

    invoke-static {p2, v2, v0}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short p2, v0

    .line 148
    add-int v0, p1, p3

    iget-short v2, p0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    if-le v0, v2, :cond_0

    iget-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    sub-int/2addr v0, p1

    int-to-short p3, v0

    .line 149
    :cond_0
    add-int v0, p2, p4

    iget-short v2, p0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    if-le v0, v2, :cond_1

    iget-short v0, p0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sub-int/2addr v0, p2

    int-to-short p4, v0

    .line 151
    :cond_1
    int-to-short v2, p1

    int-to-short v3, p2

    int-to-short v4, p3

    int-to-short v5, p4

    invoke-direct {p0}, Lcom/winlator/cmod/xserver/Drawable;->getStride()S

    move-result v7

    iget-object v8, p0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    move v6, p5

    invoke-static/range {v2 .. v8}, Lcom/winlator/cmod/xserver/Drawable;->fillRect(SSSSISLjava/nio/ByteBuffer;)V

    .line 152
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 154
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/renderer/Texture;->setNeedsUpdate(Z)V

    .line 155
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 156
    :cond_2
    return-void
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getImage(SSSS)Ljava/nio/ByteBuffer;
    .locals 16
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "width"    # S
    .param p4, "height"    # S

    .line 105
    move-object/from16 v0, p0

    mul-int v1, p3, p4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 107
    .local v1, "dstData":Ljava/nio/ByteBuffer;
    iget-short v2, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move/from16 v4, p1

    invoke-static {v4, v3, v2}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v2

    int-to-short v2, v2

    .line 108
    .end local p1    # "x":S
    .local v2, "x":S
    iget-short v4, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    add-int/lit8 v4, v4, -0x1

    move/from16 v5, p2

    invoke-static {v5, v3, v4}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v3

    int-to-short v13, v3

    .line 109
    .end local p2    # "y":S
    .local v13, "y":S
    add-int v3, v2, p3

    iget-short v4, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    if-le v3, v4, :cond_0

    iget-short v3, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    sub-int/2addr v3, v2

    int-to-short v3, v3

    move v14, v3

    .end local p3    # "width":S
    .local v3, "width":S
    goto :goto_0

    .end local v3    # "width":S
    .restart local p3    # "width":S
    :cond_0
    move/from16 v14, p3

    .line 110
    .end local p3    # "width":S
    .local v14, "width":S
    :goto_0
    add-int v3, v13, p4

    iget-short v4, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    if-le v3, v4, :cond_1

    iget-short v3, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    sub-int/2addr v3, v13

    int-to-short v3, v3

    move v15, v3

    .end local p4    # "height":S
    .local v3, "height":S
    goto :goto_1

    .end local v3    # "height":S
    .restart local p4    # "height":S
    :cond_1
    move/from16 v15, p4

    .line 112
    .end local p4    # "height":S
    .local v15, "height":S
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/Drawable;->getStride()S

    move-result v9

    iget-object v11, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v2

    move v4, v13

    move v7, v14

    move v8, v15

    move v10, v14

    move-object v12, v1

    invoke-static/range {v3 .. v12}, Lcom/winlator/cmod/xserver/Drawable;->copyArea(SSSSSSSSLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 114
    iget-object v3, v0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 115
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 116
    return-object v1
.end method

.method public getOnDestroyListener()Lcom/winlator/cmod/core/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/winlator/cmod/core/Callback<",
            "Lcom/winlator/cmod/xserver/Drawable;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->onDestroyListener:Lcom/winlator/cmod/core/Callback;

    return-object v0
.end method

.method public getOnDrawListener()Ljava/lang/Runnable;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getTexture()Lcom/winlator/cmod/renderer/Texture;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    return-object v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 58
    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    .line 62
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to set Drawable.data to null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnDestroyListener(Lcom/winlator/cmod/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/core/Callback<",
            "Lcom/winlator/cmod/xserver/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "onDestroyListener":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Lcom/winlator/cmod/xserver/Drawable;>;"
    iput-object p1, p0, Lcom/winlator/cmod/xserver/Drawable;->onDestroyListener:Lcom/winlator/cmod/core/Callback;

    .line 82
    return-void
.end method

.method public setOnDrawListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onDrawListener"    # Ljava/lang/Runnable;

    .line 73
    iput-object p1, p0, Lcom/winlator/cmod/xserver/Drawable;->onDrawListener:Ljava/lang/Runnable;

    .line 74
    return-void
.end method

.method public setTexture(Lcom/winlator/cmod/renderer/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/winlator/cmod/renderer/Texture;

    .line 49
    instance-of v0, p1, Lcom/winlator/cmod/renderer/GPUImage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/winlator/cmod/renderer/GPUImage;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GPUImage;->getVirtualData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Drawable;->data:Ljava/nio/ByteBuffer;

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/winlator/cmod/xserver/Drawable;->texture:Lcom/winlator/cmod/renderer/Texture;

    .line 51
    return-void
.end method
