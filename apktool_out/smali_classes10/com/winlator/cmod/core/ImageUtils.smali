.class public abstract Lcom/winlator/cmod/core/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "maxSize"    # I

    .line 17
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 18
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 19
    .local v1, "width":I
    const/4 v2, 0x1

    .line 21
    .local v2, "inSampleSize":I
    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 22
    .local v4, "reqWidth":I
    :goto_0
    if-lt v0, v1, :cond_1

    move v3, p1

    .line 24
    .local v3, "reqHeight":I
    :cond_1
    if-gt v0, v3, :cond_2

    if-le v1, v4, :cond_3

    .line 25
    :cond_2
    div-int/lit8 v5, v0, 0x2

    .line 26
    .local v5, "halfHeight":I
    div-int/lit8 v6, v1, 0x2

    .line 27
    .local v6, "halfWidth":I
    :goto_1
    div-int v7, v5, v2

    if-lt v7, v3, :cond_3

    div-int v7, v6, v2

    if-lt v7, v4, :cond_3

    .line 28
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 31
    .end local v5    # "halfHeight":I
    .end local v6    # "halfWidth":I
    :cond_3
    return v2
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/ImageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSize"    # I

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 65
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 66
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 67
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 68
    invoke-static {v1, p2}, Lcom/winlator/cmod/core/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    .line 69
    .local v2, "inSampleSize":I
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v2    # "inSampleSize":I
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 72
    :catch_1
    move-exception v2

    .line 73
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 82
    :goto_1
    invoke-static {p0, p1, v1}, Lcom/winlator/cmod/core/ImageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 77
    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 79
    :catch_2
    move-exception v3

    :cond_1
    :goto_3
    nop

    .line 80
    throw v2
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 38
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    const/4 v2, 0x0

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 49
    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 51
    :catch_0
    move-exception v2

    .line 52
    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    goto :goto_2

    .line 48
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 44
    :catch_1
    move-exception v2

    .line 45
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 53
    :goto_2
    return-object v1

    .line 49
    :goto_3
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 51
    :catch_2
    move-exception v3

    :cond_2
    :goto_4
    nop

    .line 52
    throw v2
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "output"    # Ljava/io/File;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 89
    invoke-virtual {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    nop

    .line 97
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 98
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return v1

    .line 95
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 91
    :catch_1
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 97
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 98
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 101
    :catch_2
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 103
    :cond_0
    :goto_1
    nop

    .line 105
    :goto_2
    const/4 v1, 0x0

    return v1

    .line 96
    :goto_3
    if-eqz v0, :cond_1

    .line 97
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 98
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 101
    :catch_3
    move-exception v2

    .line 102
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 103
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    nop

    .line 104
    :goto_5
    throw v1
.end method
