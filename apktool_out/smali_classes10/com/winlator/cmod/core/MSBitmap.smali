.class public abstract Lcom/winlator/cmod/core/MSBitmap;
.super Ljava/lang/Object;
.source "MSBitmap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 24
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outputFile"    # Ljava/io/File;

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 86
    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 88
    .local v10, "height":I
    mul-int v0, v9, v10

    new-array v11, v0, [I

    .line 89
    .local v11, "pixels":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 91
    rem-int/lit8 v1, v9, 0x4

    .line 92
    .local v1, "extraBytes":I
    mul-int/lit8 v0, v9, 0x3

    add-int/2addr v0, v1

    mul-int v2, v10, v0

    .line 93
    .local v2, "imageSize":I
    const/16 v3, 0x28

    .line 94
    .local v3, "infoHeaderSize":I
    const/16 v4, 0x36

    .line 95
    .local v4, "dataOffset":I
    const/16 v5, 0x18

    .line 96
    .local v5, "bitCount":I
    const/4 v6, 0x1

    .line 97
    .local v6, "planes":I
    const/4 v7, 0x0

    .line 98
    .local v7, "compression":I
    const/4 v8, 0x0

    .line 99
    .local v8, "hr":I
    const/4 v12, 0x0

    .line 100
    .local v12, "vr":I
    const/4 v13, 0x0

    .line 101
    .local v13, "colorsUsed":I
    const/4 v14, 0x0

    .line 103
    .local v14, "colorsImportant":I
    add-int v0, v4, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 105
    .local v15, "buffer":Ljava/nio/ByteBuffer;
    const/16 v0, 0x4d42

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 106
    add-int v0, v4, v2

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 107
    move-object/from16 v16, v11

    .end local v11    # "pixels":[I
    .local v16, "pixels":[I
    const/4 v11, 0x0

    invoke-virtual {v15, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {v15, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    int-to-short v0, v6

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 114
    int-to-short v0, v5

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v15, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    mul-int/lit8 v0, v9, 0x3

    add-int v17, v0, v1

    .line 123
    .local v17, "rowBytes":I
    add-int/lit8 v0, v10, -0x1

    .local v0, "y":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 124
    const/16 v19, 0x0

    move/from16 v11, v19

    .local v11, "x":I
    :goto_1
    if-ge v11, v9, :cond_0

    .line 125
    mul-int v20, v0, v17

    add-int v20, v4, v20

    mul-int/lit8 v21, v11, 0x3

    add-int v20, v20, v21

    .line 126
    .local v20, "j":I
    add-int/lit8 v21, v18, 0x1

    .end local v18    # "i":I
    .local v21, "i":I
    aget v18, v16, v18

    .line 127
    .local v18, "pixel":I
    move/from16 v22, v2

    .end local v2    # "imageSize":I
    .local v22, "imageSize":I
    add-int/lit8 v2, v20, 0x0

    move/from16 v23, v3

    .end local v3    # "infoHeaderSize":I
    .local v23, "infoHeaderSize":I
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v15, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 128
    add-int/lit8 v2, v20, 0x1

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v15, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 129
    add-int/lit8 v2, v20, 0x2

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v15, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 124
    .end local v18    # "pixel":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v21

    move/from16 v2, v22

    move/from16 v3, v23

    goto :goto_1

    .end local v20    # "j":I
    .end local v21    # "i":I
    .end local v22    # "imageSize":I
    .end local v23    # "infoHeaderSize":I
    .restart local v2    # "imageSize":I
    .restart local v3    # "infoHeaderSize":I
    .local v18, "i":I
    :cond_0
    move/from16 v22, v2

    move/from16 v23, v3

    .line 132
    .end local v2    # "imageSize":I
    .end local v3    # "infoHeaderSize":I
    .end local v11    # "x":I
    .restart local v22    # "imageSize":I
    .restart local v23    # "infoHeaderSize":I
    if-lez v1, :cond_1

    .line 133
    mul-int v2, v0, v17

    add-int/2addr v2, v4

    mul-int/lit8 v3, v9, 0x3

    add-int/2addr v2, v3

    .line 134
    .local v2, "fillOffset":I
    move v3, v2

    .local v3, "j":I
    :goto_2
    add-int v11, v2, v1

    if-ge v3, v11, :cond_1

    const/4 v11, -0x1

    invoke-virtual {v15, v3, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 123
    .end local v2    # "fillOffset":I
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v22

    move/from16 v3, v23

    const/4 v11, 0x0

    goto :goto_0

    .end local v22    # "imageSize":I
    .end local v23    # "infoHeaderSize":I
    .local v2, "imageSize":I
    .local v3, "infoHeaderSize":I
    :cond_2
    move/from16 v22, v2

    move/from16 v23, v3

    .line 138
    .end local v0    # "y":I
    .end local v2    # "imageSize":I
    .end local v3    # "infoHeaderSize":I
    .end local v18    # "i":I
    .restart local v22    # "imageSize":I
    .restart local v23    # "infoHeaderSize":I
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v0

    .line 139
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    nop

    .line 141
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    move/from16 v18, v1

    goto :goto_5

    .line 138
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v11, v0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v18, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v18, v1

    move-object v1, v0

    .end local v1    # "extraBytes":I
    .local v18, "extraBytes":I
    :try_start_5
    invoke-virtual {v11, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "dataOffset":I
    .end local v5    # "bitCount":I
    .end local v6    # "planes":I
    .end local v7    # "compression":I
    .end local v8    # "hr":I
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v12    # "vr":I
    .end local v13    # "colorsUsed":I
    .end local v14    # "colorsImportant":I
    .end local v15    # "buffer":Ljava/nio/ByteBuffer;
    .end local v16    # "pixels":[I
    .end local v17    # "rowBytes":I
    .end local v18    # "extraBytes":I
    .end local v22    # "imageSize":I
    .end local v23    # "infoHeaderSize":I
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .end local p1    # "outputFile":Ljava/io/File;
    :goto_3
    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 142
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "dataOffset":I
    .restart local v5    # "bitCount":I
    .restart local v6    # "planes":I
    .restart local v7    # "compression":I
    .restart local v8    # "hr":I
    .restart local v9    # "width":I
    .restart local v10    # "height":I
    .restart local v12    # "vr":I
    .restart local v13    # "colorsUsed":I
    .restart local v14    # "colorsImportant":I
    .restart local v15    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "pixels":[I
    .restart local v17    # "rowBytes":I
    .restart local v18    # "extraBytes":I
    .restart local v22    # "imageSize":I
    .restart local v23    # "infoHeaderSize":I
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "outputFile":Ljava/io/File;
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v18    # "extraBytes":I
    .restart local v1    # "extraBytes":I
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v2, p1

    :goto_4
    move/from16 v18, v1

    .line 143
    .end local v1    # "extraBytes":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "extraBytes":I
    :goto_5
    const/4 v1, 0x0

    return v1
.end method

.method public static open(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 37
    .param p0, "targetFile"    # Ljava/io/File;

    .line 14
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 15
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/core/FileUtils;->read(Ljava/io/File;)[B

    move-result-object v0

    .line 16
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    return-object v1

    .line 18
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 19
    .local v2, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const/16 v4, 0x4d42

    if-eq v3, v4, :cond_2

    return-object v1

    .line 21
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 22
    .local v3, "fileSize":I
    int-to-long v4, v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    return-object v1

    .line 24
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 26
    .local v4, "dataOffset":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 27
    .local v5, "infoHeaderSize":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 28
    .local v6, "width":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 29
    .local v7, "height":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 30
    .local v8, "planes":S
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 31
    .local v9, "bitCount":S
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 32
    .local v10, "compression":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 33
    .local v11, "imageSize":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 34
    .local v12, "hr":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 35
    .local v13, "vr":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 36
    .local v14, "colorsUsed":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 38
    .local v15, "colorsImportant":I
    if-eqz v6, :cond_d

    if-nez v7, :cond_4

    move-object/from16 v28, v0

    move-object v0, v1

    move-object/from16 v35, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v36, v11

    goto/16 :goto_4

    .line 40
    :cond_4
    const/16 v16, 0x1

    .line 41
    .local v16, "invertY":Z
    if-gez v7, :cond_5

    .line 42
    mul-int/lit8 v7, v7, -0x1

    .line 43
    const/16 v16, 0x0

    .line 46
    :cond_5
    mul-int v17, v6, v7

    mul-int/lit8 v17, v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 47
    .local v1, "pixels":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    .local v17, "r1":B
    const/16 v18, 0x0

    .local v18, "g1":B
    const/16 v19, 0x0

    .local v19, "b1":B
    const/16 v20, 0x0

    .local v20, "r2":B
    const/16 v21, 0x0

    .local v21, "g2":B
    const/16 v22, 0x0

    .line 48
    .local v22, "b2":B
    const/16 v23, 0x0

    .line 49
    .local v23, "started":Z
    const/16 v24, 0x1

    .line 50
    .local v24, "blank":Z
    add-int/lit8 v25, v7, -0x1

    .local v25, "y":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v26

    .local v26, "i":I
    :goto_0
    if-ltz v25, :cond_b

    .line 51
    if-eqz v16, :cond_6

    move/from16 v27, v25

    goto :goto_1

    :cond_6
    add-int/lit8 v27, v7, -0x1

    sub-int v27, v27, v25

    .line 53
    .local v27, "line":I
    :goto_1
    const/16 v28, 0x0

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v8

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v26

    move/from16 v8, v28

    move-object/from16 v28, v0

    move/from16 v0, v20

    .end local v20    # "r2":B
    .end local v21    # "g2":B
    .end local v22    # "b2":B
    .end local v26    # "i":I
    .local v0, "r2":B
    .local v3, "g2":B
    .local v4, "b2":B
    .local v5, "i":I
    .local v8, "x":I
    .local v28, "bytes":[B
    .local v29, "fileSize":I
    .local v30, "dataOffset":I
    .local v31, "infoHeaderSize":I
    .local v32, "planes":S
    :goto_2
    if-ge v8, v6, :cond_a

    .line 54
    mul-int v20, v27, v6

    mul-int/lit8 v20, v20, 0x4

    mul-int/lit8 v21, v8, 0x4

    add-int v20, v20, v21

    .line 55
    .local v20, "j":I
    move/from16 v33, v9

    .end local v9    # "bitCount":S
    .local v33, "bitCount":S
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 56
    .end local v19    # "b1":B
    .local v5, "b1":B
    move/from16 v34, v10

    .end local v10    # "compression":I
    .local v34, "compression":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 57
    .end local v18    # "g1":B
    .local v9, "g1":B
    add-int/lit8 v18, v10, 0x1

    .end local v10    # "i":I
    .local v18, "i":I
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    .line 58
    .end local v17    # "r1":B
    .local v10, "r1":B
    move-object/from16 v35, v2

    .end local v2    # "data":Ljava/nio/ByteBuffer;
    .local v35, "data":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v20, 0x2

    invoke-virtual {v1, v2, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 59
    add-int/lit8 v2, v20, 0x1

    invoke-virtual {v1, v2, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 60
    add-int/lit8 v2, v20, 0x0

    invoke-virtual {v1, v2, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 61
    add-int/lit8 v2, v20, 0x3

    move/from16 v36, v11

    .end local v11    # "imageSize":I
    .local v36, "imageSize":I
    const/4 v11, -0x1

    invoke-virtual {v1, v2, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 63
    if-nez v23, :cond_7

    .line 64
    move v4, v5

    .line 65
    move v3, v9

    .line 66
    move v0, v10

    .line 67
    const/16 v23, 0x1

    goto :goto_3

    .line 69
    :cond_7
    if-ne v10, v0, :cond_8

    if-ne v5, v4, :cond_8

    if-eq v9, v3, :cond_9

    .line 70
    :cond_8
    const/16 v24, 0x0

    .line 53
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v19, v5

    move/from16 v17, v10

    move/from16 v5, v18

    move/from16 v10, v34

    move-object/from16 v2, v35

    move/from16 v11, v36

    move/from16 v18, v9

    move/from16 v9, v33

    goto :goto_2

    .end local v20    # "j":I
    .end local v33    # "bitCount":S
    .end local v34    # "compression":I
    .end local v35    # "data":Ljava/nio/ByteBuffer;
    .end local v36    # "imageSize":I
    .restart local v2    # "data":Ljava/nio/ByteBuffer;
    .local v5, "i":I
    .local v9, "bitCount":S
    .local v10, "compression":I
    .restart local v11    # "imageSize":I
    .restart local v17    # "r1":B
    .local v18, "g1":B
    .restart local v19    # "b1":B
    :cond_a
    move-object/from16 v35, v2

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v36, v11

    .line 74
    .end local v2    # "data":Ljava/nio/ByteBuffer;
    .end local v8    # "x":I
    .end local v9    # "bitCount":S
    .end local v10    # "compression":I
    .end local v11    # "imageSize":I
    .restart local v33    # "bitCount":S
    .restart local v34    # "compression":I
    .restart local v35    # "data":Ljava/nio/ByteBuffer;
    .restart local v36    # "imageSize":I
    rem-int/lit8 v2, v6, 0x4

    add-int v26, v5, v2

    .line 50
    .end local v5    # "i":I
    .restart local v26    # "i":I
    add-int/lit8 v25, v25, -0x1

    move/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v0, v28

    move/from16 v3, v29

    move/from16 v4, v30

    move/from16 v5, v31

    move/from16 v8, v32

    move-object/from16 v2, v35

    goto/16 :goto_0

    .end local v27    # "line":I
    .end local v28    # "bytes":[B
    .end local v29    # "fileSize":I
    .end local v30    # "dataOffset":I
    .end local v31    # "infoHeaderSize":I
    .end local v32    # "planes":S
    .end local v33    # "bitCount":S
    .end local v34    # "compression":I
    .end local v35    # "data":Ljava/nio/ByteBuffer;
    .end local v36    # "imageSize":I
    .local v0, "bytes":[B
    .restart local v2    # "data":Ljava/nio/ByteBuffer;
    .local v3, "fileSize":I
    .local v4, "dataOffset":I
    .local v5, "infoHeaderSize":I
    .local v8, "planes":S
    .restart local v9    # "bitCount":S
    .restart local v10    # "compression":I
    .restart local v11    # "imageSize":I
    .local v20, "r2":B
    .restart local v21    # "g2":B
    .restart local v22    # "b2":B
    :cond_b
    move-object/from16 v28, v0

    move-object/from16 v35, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v36, v11

    .line 77
    .end local v0    # "bytes":[B
    .end local v2    # "data":Ljava/nio/ByteBuffer;
    .end local v3    # "fileSize":I
    .end local v4    # "dataOffset":I
    .end local v5    # "infoHeaderSize":I
    .end local v8    # "planes":S
    .end local v9    # "bitCount":S
    .end local v10    # "compression":I
    .end local v11    # "imageSize":I
    .end local v25    # "y":I
    .end local v26    # "i":I
    .restart local v28    # "bytes":[B
    .restart local v29    # "fileSize":I
    .restart local v30    # "dataOffset":I
    .restart local v31    # "infoHeaderSize":I
    .restart local v32    # "planes":S
    .restart local v33    # "bitCount":S
    .restart local v34    # "compression":I
    .restart local v35    # "data":Ljava/nio/ByteBuffer;
    .restart local v36    # "imageSize":I
    if-eqz v24, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 81
    return-object v0

    .line 38
    .end local v1    # "pixels":Ljava/nio/ByteBuffer;
    .end local v16    # "invertY":Z
    .end local v17    # "r1":B
    .end local v18    # "g1":B
    .end local v19    # "b1":B
    .end local v20    # "r2":B
    .end local v21    # "g2":B
    .end local v22    # "b2":B
    .end local v23    # "started":Z
    .end local v24    # "blank":Z
    .end local v28    # "bytes":[B
    .end local v29    # "fileSize":I
    .end local v30    # "dataOffset":I
    .end local v31    # "infoHeaderSize":I
    .end local v32    # "planes":S
    .end local v33    # "bitCount":S
    .end local v34    # "compression":I
    .end local v35    # "data":Ljava/nio/ByteBuffer;
    .end local v36    # "imageSize":I
    .local v0, "bytes":[B
    .restart local v2    # "data":Ljava/nio/ByteBuffer;
    .restart local v3    # "fileSize":I
    .restart local v4    # "dataOffset":I
    .restart local v5    # "infoHeaderSize":I
    .restart local v8    # "planes":S
    .restart local v9    # "bitCount":S
    .restart local v10    # "compression":I
    .restart local v11    # "imageSize":I
    :cond_d
    move-object/from16 v28, v0

    move-object v0, v1

    move-object/from16 v35, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v36, v11

    .end local v0    # "bytes":[B
    .end local v2    # "data":Ljava/nio/ByteBuffer;
    .end local v3    # "fileSize":I
    .end local v4    # "dataOffset":I
    .end local v5    # "infoHeaderSize":I
    .end local v8    # "planes":S
    .end local v9    # "bitCount":S
    .end local v10    # "compression":I
    .end local v11    # "imageSize":I
    .restart local v28    # "bytes":[B
    .restart local v29    # "fileSize":I
    .restart local v30    # "dataOffset":I
    .restart local v31    # "infoHeaderSize":I
    .restart local v32    # "planes":S
    .restart local v33    # "bitCount":S
    .restart local v34    # "compression":I
    .restart local v35    # "data":Ljava/nio/ByteBuffer;
    .restart local v36    # "imageSize":I
    :goto_4
    return-object v0
.end method
