.class public abstract Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;
.super Ljava/lang/Object;
.source "ImageDecoderResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Landroid/graphics/ImageDecoder$Source;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageDecoder"


# instance fields
.field final hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    .local p0, "this":Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;, "Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    nop

    .line 44
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 42
    return-void
.end method


# virtual methods
.method protected abstract decode(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final decode(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 13
    .param p1, "source"    # Landroid/graphics/ImageDecoder$Source;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;, "Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder<TT;>;"
    move-object/from16 v0, p4

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/DecodeFormat;

    .line 60
    .local v1, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 61
    .local v10, "strategy":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 62
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 63
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v6, v2

    .line 64
    .local v6, "isHardwareConfigAllowed":Z
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 66
    .local v11, "preferredColorSpace":Lcom/bumptech/glide/load/PreferredColorSpace;
    new-instance v12, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;

    move-object v2, v12

    move-object v3, p0

    move v4, p2

    move/from16 v5, p3

    move-object v7, v1

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;-><init>(Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;IIZLcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/PreferredColorSpace;)V

    move-object v2, p0

    move-object v3, p1

    invoke-virtual {p0, p1, p2, v5, v12}, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;, "Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder<TT;>;"
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public final handles(Landroid/graphics/ImageDecoder$Source;Lcom/bumptech/glide/load/Options;)Z
    .locals 1
    .param p1, "source"    # Landroid/graphics/ImageDecoder$Source;
    .param p2, "options"    # Lcom/bumptech/glide/load/Options;

    .line 48
    .local p0, "this":Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;, "Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;, "Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder<TT;>;"
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;->handles(Landroid/graphics/ImageDecoder$Source;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method
