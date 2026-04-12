.class public Lcom/winlator/cmod/core/WineRegistryEditor;
.super Ljava/lang/Object;
.source "WineRegistryEditor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    }
.end annotation


# instance fields
.field private final cloneFile:Ljava/io/File;

.field private createKeyIfNotExist:Z

.field private final file:Ljava/io/File;

.field private lastParentKey:Ljava/lang/String;

.field private lastParentKeyPosition:I

.field private modified:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->modified:Z

    .line 25
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->createKeyIfNotExist:Z

    .line 26
    iput v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKey:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->file:Ljava/io/File;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/cmod/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/FileUtils;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    :goto_0
    goto :goto_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 54
    :goto_1
    return-void
.end method

.method private createKey(Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .locals 21
    .param p1, "key"    # Ljava/lang/String;

    .line 96
    move-object/from16 v1, p0

    const/4 v0, 0x0

    iput v0, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    .line 97
    invoke-direct/range {p0 .. p1}, Lcom/winlator/cmod/core/WineRegistryEditor;->getParentKeyLocation(Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v2

    .line 98
    .local v2, "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    const/4 v3, 0x0

    .line 99
    .local v3, "success":Z
    const/4 v4, 0x0

    .line 100
    .local v4, "offset":I
    const/4 v5, 0x0

    .line 102
    .local v5, "totalLength":I
    const/high16 v6, 0x10000

    new-array v7, v6, [C

    .line 103
    .local v7, "buffer":[C
    iget-object v8, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    iget-object v9, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/winlator/cmod/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/winlator/cmod/core/FileUtils;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 105
    .local v8, "tempFile":Ljava/io/File;
    const/4 v9, 0x1

    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    iget-object v12, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/FileWriter;

    invoke-direct {v12, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object v6, v11

    .line 109
    .local v6, "writer":Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    .local v11, "i":I
    if-eqz v2, :cond_0

    :try_start_2
    iget v12, v2, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->end:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v12, v9

    goto :goto_0

    .line 105
    .end local v11    # "i":I
    :catchall_0
    move-exception v0

    move-object v9, v0

    move-object/from16 v16, v2

    move-object v2, v10

    goto/16 :goto_2

    .line 109
    .restart local v11    # "i":I
    :cond_0
    :try_start_3
    iget-object v12, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    long-to-int v12, v12

    .local v12, "end":I
    :goto_0
    if-ge v11, v12, :cond_1

    .line 110
    :try_start_4
    array-length v13, v7

    sub-int v14, v12, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 111
    .local v13, "length":I
    invoke-virtual {v10, v7, v0, v13}, Ljava/io/BufferedReader;->read([CII)I

    .line 112
    invoke-virtual {v6, v7, v0, v13}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    add-int/2addr v5, v13

    .line 109
    add-int/2addr v11, v13

    goto :goto_0

    .line 116
    .end local v11    # "i":I
    .end local v12    # "end":I
    .end local v13    # "length":I
    :cond_1
    move v4, v5

    .line 117
    const-wide v11, 0x19db1ded53e8000L

    .line 118
    .local v11, "ticks1601To1970":J
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v11

    .line 119
    .local v13, "currentTime":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n["

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/winlator/cmod/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "] "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    sub-long v16, v13, v11

    const-wide/16 v18, 0x3e8

    move-object/from16 v20, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v20, "reader":Ljava/io/BufferedReader;
    :try_start_6
    div-long v9, v16, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "\n#time=%x%08x"

    const/16 v16, 0x20

    shr-long v16, v13, v16

    .line 120
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v16, v2

    .end local v2    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .local v16, "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    long-to-int v2, v13

    :try_start_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v15, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    .line 124
    :goto_1
    move-object/from16 v2, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_8
    invoke-virtual {v2, v7}, Ljava/io/BufferedReader;->read([C)I

    move-result v9

    move v10, v9

    .local v10, "length":I
    const/4 v15, -0x1

    if-eq v9, v15, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v10}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v20, v2

    goto :goto_1

    .line 125
    :cond_2
    const/4 v3, 0x1

    .line 126
    .end local v0    # "content":Ljava/lang/String;
    .end local v10    # "length":I
    .end local v11    # "ticks1601To1970":J
    .end local v13    # "currentTime":J
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 127
    .end local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 105
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v0

    move-object v9, v0

    goto :goto_2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v0

    move-object/from16 v2, v20

    move-object v9, v0

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .local v2, "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v2, v20

    move-object v9, v0

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    .restart local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    goto :goto_2

    .end local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .local v2, "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .local v10, "reader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    move-object v2, v10

    move-object v9, v0

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    .restart local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :goto_2
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v10, v0

    :try_start_c
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "success":Z
    .end local v4    # "offset":I
    .end local v5    # "totalLength":I
    .end local v7    # "buffer":[C
    .end local v8    # "tempFile":Ljava/io/File;
    .end local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .end local p1    # "key":Ljava/lang/String;
    :goto_3
    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "success":Z
    .restart local v4    # "offset":I
    .restart local v5    # "totalLength":I
    .restart local v7    # "buffer":[C
    .restart local v8    # "tempFile":Ljava/io/File;
    .restart local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local p1    # "key":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v6, v0

    goto :goto_4

    .end local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .local v2, "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_7
    move-exception v0

    move-object/from16 v16, v2

    move-object v2, v10

    move-object v6, v0

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    .restart local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :goto_4
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception v0

    move-object v9, v0

    :try_start_e
    invoke-virtual {v6, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "success":Z
    .end local v4    # "offset":I
    .end local v5    # "totalLength":I
    .end local v7    # "buffer":[C
    .end local v8    # "tempFile":Ljava/io/File;
    .end local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .end local p1    # "key":Ljava/lang/String;
    :goto_5
    throw v6
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 126
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "success":Z
    .restart local v4    # "offset":I
    .restart local v5    # "totalLength":I
    .restart local v7    # "buffer":[C
    .restart local v8    # "tempFile":Ljava/io/File;
    .restart local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local p1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .local v2, "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    .line 129
    .end local v2    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local v16    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :goto_6
    if-eqz v3, :cond_3

    .line 130
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->modified:Z

    .line 131
    iget-object v0, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v8, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 132
    new-instance v0, Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    invoke-direct {v0, v4, v5, v5}, Lcom/winlator/cmod/core/WineRegistryEditor$Location;-><init>(III)V

    return-object v0

    .line 134
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 57
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKeyLocation(Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;Z)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v0

    return-object v0
.end method

.method private getKeyLocation(Ljava/lang/String;Z)Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyAsPrefix"    # Z

    .line 312
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/high16 v5, 0x10000

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v0

    .line 313
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    const-string v0, "\\"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "lastIndex":I
    iget v5, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    const-string v7, "["

    const/4 v8, -0x1

    if-nez v5, :cond_0

    if-eq v0, v8, :cond_0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/winlator/cmod/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 316
    .local v5, "parentKey":Ljava/lang/String;
    :goto_0
    iget v9, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    if-lez v9, :cond_1

    iget v9, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    int-to-long v9, v9

    invoke-virtual {v4, v9, v10}, Ljava/io/BufferedReader;->skip(J)J

    .line 317
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/winlator/cmod/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p2, :cond_2

    const-string v10, "]"

    goto :goto_1

    :cond_2
    const-string v10, ""

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v9

    .line 318
    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    :try_start_3
    iget v9, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    .line 319
    .local v9, "totalLength":I
    const/4 v10, -0x1

    .line 320
    .local v10, "start":I
    const/4 v11, -0x1

    .line 321
    .local v11, "end":I
    const/4 v12, 0x0

    .line 322
    .local v12, "emptyLines":I
    const/4 v13, 0x0

    .line 325
    .local v13, "offset":I
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .local v15, "line":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 326
    if-ne v10, v8, :cond_4

    .line 327
    if-eqz v5, :cond_3

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 328
    iput v9, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    .line 329
    const/4 v5, 0x0

    .line 332
    :cond_3
    if-nez v5, :cond_7

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 333
    add-int/lit8 v13, v9, -0x1

    .line 334
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v9

    add-int/lit8 v14, v14, 0x1

    move v10, v14

    .end local v10    # "start":I
    .local v14, "start":I
    goto :goto_4

    .line 337
    .end local v14    # "start":I
    .restart local v10    # "start":I
    :cond_4
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 338
    sub-int v6, v9, v12

    add-int/lit8 v6, v6, -0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v11, v6

    .line 339
    goto :goto_5

    .line 340
    :cond_5
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    add-int/lit8 v14, v12, 0x1

    goto :goto_3

    :cond_6
    move v14, v6

    :goto_3
    move v12, v14

    .line 342
    :cond_7
    :goto_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v9, v14

    goto :goto_2

    .line 345
    :cond_8
    :goto_5
    if-ne v11, v8, :cond_9

    add-int/lit8 v11, v9, -0x1

    .line 346
    :cond_9
    if-eq v10, v8, :cond_a

    new-instance v6, Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    invoke-direct {v6, v13, v10, v11}, Lcom/winlator/cmod/core/WineRegistryEditor$Location;-><init>(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :cond_a
    move-object v6, v3

    .line 347
    :goto_6
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 346
    return-object v6

    .line 312
    .end local v0    # "lastIndex":I
    .end local v5    # "parentKey":Ljava/lang/String;
    .end local v9    # "totalLength":I
    .end local v10    # "start":I
    .end local v11    # "end":I
    .end local v12    # "emptyLines":I
    .end local v13    # "offset":I
    .end local v15    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_7

    .end local v2    # "key":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v5, v0

    .end local p1    # "key":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    :goto_7
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "key":Ljava/lang/String;
    .end local p2    # "keyAsPrefix":Z
    :goto_8
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 347
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p2    # "keyAsPrefix":Z
    :catch_0
    move-exception v0

    goto :goto_9

    .end local v2    # "key":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 348
    .end local p1    # "key":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "key":Ljava/lang/String;
    :goto_9
    return-object v3
.end method

.method private getParentKeyLocation(Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 353
    const-string v0, "\\\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    .local v1, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    const-string v2, "\\"

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "currentKey":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;Z)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v3

    .line 359
    .local v3, "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    if-eqz v3, :cond_0

    return-object v3

    .line 360
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 361
    .end local v2    # "currentKey":Ljava/lang/String;
    .end local v3    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    goto :goto_0

    .line 363
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getRawValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    .line 188
    invoke-direct {p0, p1}, Lcom/winlator/cmod/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v1

    .line 189
    .local v1, "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 191
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/winlator/cmod/core/WineRegistryEditor;->getValueLocation(Lcom/winlator/cmod/core/WineRegistryEditor$Location;Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v3

    .line 192
    .local v3, "valueLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    if-nez v3, :cond_1

    return-object v2

    .line 193
    :cond_1
    const/4 v4, 0x0

    .line 194
    .local v4, "success":Z
    invoke-virtual {v3}, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->length()I

    move-result v5

    new-array v5, v5, [C

    .line 196
    .local v5, "buffer":[C
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    iget-object v8, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/high16 v8, 0x10000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    iget v7, v3, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->start:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/io/BufferedReader;->skip(J)J

    .line 198
    invoke-virtual {v6, v5}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    array-length v8, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v7, v8, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v4, v0

    .line 199
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    .end local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 196
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .end local v3    # "valueLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .end local v4    # "success":Z
    .end local v5    # "buffer":[C
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 199
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local v3    # "valueLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local v4    # "success":Z
    .restart local v5    # "buffer":[C
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    :goto_1
    if-eqz v4, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private getValueLocation(Lcom/winlator/cmod/core/WineRegistryEditor$Location;Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .locals 11
    .param p1, "keyLocation"    # Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .param p2, "name"    # Ljava/lang/String;

    .line 367
    iget v0, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->start:I

    iget v1, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->end:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 368
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/high16 v3, 0x10000

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_1
    iget v1, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->start:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/BufferedReader;->skip(J)J

    .line 370
    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/winlator/cmod/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "@="

    :goto_0
    move-object p2, v1

    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, "totalLength":I
    const/4 v3, -0x1

    .line 373
    .local v3, "start":I
    const/4 v4, -0x1

    .line 374
    .local v4, "end":I
    const/4 v5, 0x0

    .line 377
    .local v5, "offset":I
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    const/4 v8, -0x1

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 378
    if-ne v3, v8, :cond_2

    .line 379
    invoke-virtual {v7, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 380
    add-int/lit8 v5, v1, -0x1

    .line 381
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    move v3, v6

    .end local v3    # "start":I
    .local v6, "start":I
    goto :goto_2

    .line 384
    .end local v6    # "start":I
    .restart local v3    # "start":I
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v7}, Lcom/winlator/cmod/core/WineRegistryEditor;->lineHasName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 389
    :cond_3
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    goto :goto_1

    .line 385
    :cond_4
    :goto_3
    add-int/lit8 v4, v1, -0x1

    .line 386
    nop

    .line 392
    :cond_5
    if-ne v4, v8, :cond_6

    add-int/lit8 v4, v1, -0x1

    .line 393
    :cond_6
    if-eq v3, v8, :cond_7

    new-instance v6, Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    iget v8, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->start:I

    add-int/2addr v8, v5

    iget v9, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->start:I

    add-int/2addr v9, v3

    iget v10, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->start:I

    add-int/2addr v10, v4

    invoke-direct {v6, v8, v9, v10}, Lcom/winlator/cmod/core/WineRegistryEditor$Location;-><init>(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_7
    move-object v6, v2

    .line 394
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    return-object v6

    .line 368
    .end local v1    # "totalLength":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "offset":I
    .end local v7    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .end local p2    # "name":Ljava/lang/String;
    :goto_5
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 394
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local p2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method private static lineHasName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .line 66
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 67
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v2, v0

    if-eq v0, v3, :cond_0

    .line 68
    const/16 v0, 0x3d

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v2, v0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0
.end method

.method private removeRegion(Lcom/winlator/cmod/core/WineRegistryEditor$Location;)Z
    .locals 12
    .param p1, "location"    # Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    .line 278
    const/high16 v0, 0x10000

    new-array v1, v0, [C

    .line 279
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .line 281
    .local v2, "success":Z
    iget-object v3, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/cmod/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/FileUtils;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 283
    .local v3, "tempFile":Ljava/io/File;
    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v0, v6

    .line 286
    .local v0, "writer":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 287
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_2
    iget v8, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->offset:I

    const/4 v9, 0x0

    if-ge v7, v8, :cond_0

    .line 288
    array-length v8, v1

    iget v10, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->offset:I

    sub-int/2addr v10, v7

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v6, v8

    .line 289
    invoke-virtual {v5, v1, v9, v6}, Ljava/io/BufferedReader;->read([CII)I

    .line 290
    invoke-virtual {v0, v1, v9, v6}, Ljava/io/BufferedWriter;->write([CII)V

    .line 287
    add-int/2addr v7, v6

    goto :goto_0

    .line 293
    .end local v7    # "i":I
    :cond_0
    if-le v6, v4, :cond_1

    add-int/lit8 v7, v6, -0x1

    aget-char v7, v1, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v9

    .line 294
    .local v7, "skipLine":Z
    :goto_1
    iget v8, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->end:I

    iget v10, p1, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->offset:I

    sub-int/2addr v8, v10

    if-eqz v7, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v9

    :goto_2
    add-int/2addr v8, v10

    int-to-long v10, v8

    invoke-virtual {v5, v10, v11}, Ljava/io/BufferedReader;->skip(J)J

    .line 295
    :goto_3
    invoke-virtual {v5, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v8

    move v6, v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    invoke-virtual {v0, v1, v9, v6}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 296
    :cond_3
    const/4 v2, 0x1

    .line 297
    .end local v6    # "length":I
    .end local v7    # "skipLine":Z
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v0    # "writer":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 298
    .end local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 283
    .restart local v0    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v7

    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "buffer":[C
    .end local v2    # "success":Z
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :goto_4
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v0    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "buffer":[C
    .restart local v2    # "success":Z
    .restart local v3    # "tempFile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v6

    :try_start_8
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "buffer":[C
    .end local v2    # "success":Z
    .end local v3    # "tempFile":Ljava/io/File;
    .end local p1    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :goto_5
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 297
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":[C
    .restart local v2    # "success":Z
    .restart local v3    # "tempFile":Ljava/io/File;
    .restart local p1    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :catch_0
    move-exception v0

    .line 300
    :goto_6
    if-eqz v2, :cond_4

    .line 301
    iput-boolean v4, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->modified:Z

    .line 302
    iget-object v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_7

    .line 303
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 304
    :goto_7
    return v2
.end method

.method private resetLastParentKeyPositionIfNeed(Ljava/lang/String;)V
    .locals 4
    .param p1, "newKey"    # Ljava/lang/String;

    .line 79
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "lastIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 81
    iput v2, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    .line 82
    const-string v1, ""

    iput-object v1, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKey:Ljava/lang/String;

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "parentKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iput v2, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    .line 88
    :cond_1
    iput-object v1, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKey:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private setRawValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 205
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "\""

    invoke-direct/range {p0 .. p1}, Lcom/winlator/cmod/core/WineRegistryEditor;->resetLastParentKeyPositionIfNeed(Ljava/lang/String;)V

    .line 207
    invoke-direct/range {p0 .. p1}, Lcom/winlator/cmod/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v4

    .line 208
    .local v4, "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    if-nez v4, :cond_1

    .line 209
    iget-boolean v5, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->createKeyIfNotExist:Z

    if-eqz v5, :cond_0

    .line 210
    invoke-direct/range {p0 .. p1}, Lcom/winlator/cmod/core/WineRegistryEditor;->createKey(Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v4

    goto :goto_0

    .line 211
    :cond_0
    return-void

    .line 214
    :cond_1
    :goto_0
    invoke-direct {v1, v4, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->getValueLocation(Lcom/winlator/cmod/core/WineRegistryEditor$Location;Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v5

    .line 215
    .local v5, "valueLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    const/high16 v6, 0x10000

    new-array v7, v6, [C

    .line 216
    .local v7, "buffer":[C
    const/4 v8, 0x0

    .line 218
    .local v8, "success":Z
    iget-object v9, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    iget-object v10, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/winlator/cmod/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/winlator/cmod/core/FileUtils;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 220
    .local v9, "tempFile":Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    iget-object v12, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/FileWriter;

    invoke-direct {v12, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, v11

    .line 224
    .local v6, "writer":Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    .local v11, "i":I
    if-eqz v5, :cond_2

    :try_start_2
    iget v12, v5, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->start:I

    goto :goto_1

    :cond_2
    iget v12, v4, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->end:I

    .local v12, "end":I
    :goto_1
    const/4 v13, 0x0

    if-ge v11, v12, :cond_3

    .line 225
    array-length v14, v7

    sub-int v15, v12, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 226
    .local v14, "length":I
    invoke-virtual {v10, v7, v13, v14}, Ljava/io/BufferedReader;->read([CII)I

    .line 227
    invoke-virtual {v6, v7, v13, v14}, Ljava/io/BufferedWriter;->write([CII)V

    .line 224
    add-int/2addr v11, v14

    goto :goto_1

    .line 230
    .end local v11    # "i":I
    .end local v12    # "end":I
    .end local v14    # "length":I
    :cond_3
    if-nez v5, :cond_5

    .line 231
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v2, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lcom/winlator/cmod/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "@"

    :goto_2
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 233
    :cond_5
    invoke-virtual {v6, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v5}, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->length()I

    move-result v0

    int-to-long v11, v0

    invoke-virtual {v10, v11, v12}, Ljava/io/BufferedReader;->skip(J)J

    .line 237
    :goto_3
    invoke-virtual {v10, v7}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    move v11, v0

    .local v11, "length":I
    const/4 v12, -0x1

    if-eq v0, v12, :cond_6

    invoke-virtual {v6, v7, v13, v11}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 238
    :cond_6
    const/4 v8, 0x1

    .line 239
    .end local v11    # "length":I
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 240
    .end local v10    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 220
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move-object v11, v0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v12, v0

    :try_start_6
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .end local v5    # "valueLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .end local v7    # "buffer":[C
    .end local v8    # "success":Z
    .end local v9    # "tempFile":Ljava/io/File;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/String;
    :goto_4
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local v5    # "valueLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local v7    # "buffer":[C
    .restart local v8    # "success":Z
    .restart local v9    # "tempFile":Ljava/io/File;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v11, v0

    :try_start_8
    invoke-virtual {v6, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .end local v5    # "valueLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .end local v7    # "buffer":[C
    .end local v8    # "success":Z
    .end local v9    # "tempFile":Ljava/io/File;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/String;
    :goto_5
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 239
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local v5    # "valueLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    .restart local v7    # "buffer":[C
    .restart local v8    # "success":Z
    .restart local v9    # "tempFile":Ljava/io/File;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 242
    :goto_6
    if-eqz v8, :cond_7

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->modified:Z

    .line 244
    iget-object v0, v1, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_7

    .line 245
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 246
    :goto_7
    return-void
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 61
    const-string v0, "\\\""

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->modified:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->cloneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 76
    :goto_0
    return-void
.end method

.method public getDwordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->getDwordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDwordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/Integer;

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/core/WineRegistryEditor;->getRawValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    return-object v1
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->getStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/core/WineRegistryEditor;->getRawValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    return-object v1
.end method

.method public importReg(Ljava/lang/String;)V
    .locals 11
    .param p1, "regFile"    # Ljava/lang/String;

    .line 401
    const-string v0, "name"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, "jobj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 403
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 405
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 406
    .local v4, "entries":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 407
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 408
    .local v6, "entry":Lorg/json/JSONObject;
    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, "name":Ljava/lang/String;
    :goto_2
    const-string v9, "value"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1
    goto :goto_3

    :sswitch_0
    const-string v10, "Dword"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_4

    :sswitch_1
    const-string v10, "String"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    goto :goto_4

    :goto_3
    const/4 v10, -0x1

    :goto_4
    packed-switch v10, :pswitch_data_0

    goto :goto_5

    .line 416
    :pswitch_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v3, v8, v10}, Lcom/winlator/cmod/core/WineRegistryEditor;->setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 417
    goto :goto_5

    .line 413
    :pswitch_1
    invoke-virtual {p0, v3, v8, v9}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    nop

    .line 406
    .end local v6    # "entry":Lorg/json/JSONObject;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 422
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "entries":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_2
    goto :goto_0

    .line 425
    .end local v1    # "jobj":Lorg/json/JSONObject;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    nop

    .line 426
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x6bc5b3cf -> :sswitch_1
        0x3f6054e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeKey(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeKey(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "removeTree"    # Z

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "removed":Z
    if-eqz p2, :cond_2

    .line 267
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;Z)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v0

    move-object v2, v0

    .local v2, "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    if-eqz v0, :cond_1

    .line 268
    invoke-direct {p0, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeRegion(Lcom/winlator/cmod/core/WineRegistryEditor$Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :cond_1
    goto :goto_1

    .line 271
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;Z)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v0

    .line 272
    .local v0, "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeRegion(Lcom/winlator/cmod/core/WineRegistryEditor$Location;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 274
    .end local v0    # "location":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    :cond_3
    :goto_1
    return v1
.end method

.method public removeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->lastParentKeyPosition:I

    .line 250
    invoke-direct {p0, p1}, Lcom/winlator/cmod/core/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v0

    .line 251
    .local v0, "keyLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/winlator/cmod/core/WineRegistryEditor;->getValueLocation(Lcom/winlator/cmod/core/WineRegistryEditor$Location;Ljava/lang/String;)Lcom/winlator/cmod/core/WineRegistryEditor$Location;

    move-result-object v1

    .line 254
    .local v1, "valueLocation":Lcom/winlator/cmod/core/WineRegistryEditor$Location;
    if-nez v1, :cond_1

    return-void

    .line 255
    :cond_1
    invoke-direct {p0, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeRegion(Lcom/winlator/cmod/core/WineRegistryEditor$Location;)Z

    .line 256
    return-void
.end method

.method public setCreateKeyIfNotExist(Z)V
    .locals 0
    .param p1, "createKeyIfNotExist"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/winlator/cmod/core/WineRegistryEditor;->createKeyIfNotExist:Z

    .line 93
    return-void
.end method

.method public setDwordValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setRawValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x7

    .line 167
    .local v0, "start":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v1, "lines":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v0

    .local v3, "j":I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 169
    if-lez v2, :cond_0

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    const/16 v5, 0x38

    if-le v3, v5, :cond_1

    .line 171
    const-string v3, "\\\n  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const/16 v3, 0x8

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 170
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_1
    move v3, v4

    .line 174
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :goto_1
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->setRawValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setHexValue(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bytes"    # [B

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "data":Ljava/lang/StringBuilder;
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p3, v2

    .line 182
    .local v3, "b":B
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setHexValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 149
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/winlator/cmod/core/WineRegistryEditor;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\"\""

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setRawValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
