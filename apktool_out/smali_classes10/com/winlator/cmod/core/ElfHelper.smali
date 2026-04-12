.class public abstract Lcom/winlator/cmod/core/ElfHelper;
.super Ljava/lang/Object;
.source "ElfHelper.java"


# static fields
.field private static final ELF_CLASS_32:B = 0x1t

.field private static final ELF_CLASS_64:B = 0x2t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEIClass(Ljava/io/File;)I
    .locals 5
    .param p0, "binFile"    # Ljava/io/File;

    .line 13
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .local v1, "inStream":Ljava/io/InputStream;
    const/16 v2, 0x34

    :try_start_1
    new-array v2, v2, [B

    .line 15
    .local v2, "header":[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 16
    aget-byte v3, v2, v0

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    const/16 v4, 0x45

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_0

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_0

    .line 17
    const/4 v3, 0x4

    aget-byte v3, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 17
    return v3

    .line 19
    .end local v2    # "header":[B
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 13
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "binFile":Ljava/io/File;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 20
    .end local v1    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "binFile":Ljava/io/File;
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 21
    return v0
.end method

.method public static is32Bit(Ljava/io/File;)Z
    .locals 2
    .param p0, "binFile"    # Ljava/io/File;

    .line 25
    invoke-static {p0}, Lcom/winlator/cmod/core/ElfHelper;->getEIClass(Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static is64Bit(Ljava/io/File;)Z
    .locals 2
    .param p0, "binFile"    # Ljava/io/File;

    .line 29
    invoke-static {p0}, Lcom/winlator/cmod/core/ElfHelper;->getEIClass(Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
