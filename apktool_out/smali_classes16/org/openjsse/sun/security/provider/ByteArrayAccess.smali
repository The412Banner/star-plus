.class final Lorg/openjsse/sun/security/provider/ByteArrayAccess;
.super Ljava/lang/Object;
.source "ByteArrayAccess.java"


# static fields
.field private static final bigEndian:Z

.field private static final byteArrayOfs:I

.field private static final littleEndianUnaligned:Z

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 107
    const/4 v0, 0x0

    .line 110
    .local v0, "unsafeObj":Ljava/lang/Object;
    const/4 v1, 0x1

    :try_start_0
    const-class v2, Lorg/openjsse/sun/security/provider/ByteArrayAccess;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 111
    .local v2, "cLoader":Ljava/lang/ClassLoader;
    invoke-static {v2}, Lsun/misc/VM;->isSystemDomainLoader(Ljava/lang/ClassLoader;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sun.misc.Launcher$ExtClassLoader"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Provider must be loaded by ExtClassLoader"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "unsafeObj":Ljava/lang/Object;
    throw v3

    .line 113
    .restart local v0    # "unsafeObj":Ljava/lang/Object;
    :cond_1
    :goto_0
    const-class v3, Lsun/misc/Unsafe;

    const-string v4, "theUnsafe"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 114
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 115
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 116
    .end local v3    # "f":Ljava/lang/reflect/Field;
    nop

    .line 121
    .end local v2    # "cLoader":Ljava/lang/ClassLoader;
    goto :goto_1

    .line 119
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 122
    :goto_1
    move-object v2, v0

    check-cast v2, Lsun/misc/Unsafe;

    sput-object v2, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    .line 123
    sget-object v2, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    const-class v3, [B

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    .line 124
    sget-object v2, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    sget-object v2, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    .line 125
    const-class v4, [I

    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    sget-object v2, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    .line 126
    const-class v4, [J

    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    sget v2, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    and-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    .line 129
    .local v2, "scaleOK":Z
    :goto_2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    .line 130
    .local v4, "byteOrder":Ljava/nio/ByteOrder;
    if-eqz v2, :cond_3

    .line 131
    invoke-static {}, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unaligned()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    sput-boolean v5, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    .line 132
    if-eqz v2, :cond_4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    sput-boolean v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    .line 134
    .end local v0    # "unsafeObj":Ljava/lang/Object;
    .end local v2    # "scaleOK":Z
    .end local v4    # "byteOrder":Ljava/nio/ByteOrder;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method static b2iBig([BI[III)V
    .locals 4
    .param p0, "in"    # [B
    .param p1, "inOfs"    # I
    .param p2, "out"    # [I
    .param p3, "outOfs"    # I
    .param p4, "len"    # I

    .line 283
    if-ltz p1, :cond_3

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lt v0, p4, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p2

    sub-int/2addr v0, p3

    div-int/lit8 v1, p4, 0x4

    if-lt v0, v1, :cond_3

    .line 287
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 288
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p1, v0

    .line 289
    add-int/2addr p4, p1

    .line 290
    :goto_0
    if-ge p1, p4, :cond_2

    .line 291
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .local v0, "outOfs":I
    sget-object v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    aput v1, p2, p3

    .line 292
    add-int/lit8 p1, p1, 0x4

    move p3, v0

    goto :goto_0

    .line 294
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_1

    .line 295
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p1, v0

    .line 296
    add-int/2addr p4, p1

    .line 297
    :goto_1
    if-ge p1, p4, :cond_2

    .line 298
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local v0    # "outOfs":I
    sget-object v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    aput v1, p2, p3

    .line 299
    add-int/lit8 p1, p1, 0x4

    move p3, v0

    goto :goto_1

    .line 302
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_1
    add-int/2addr p4, p1

    .line 303
    :goto_2
    if-ge p1, p4, :cond_2

    .line 304
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local v0    # "outOfs":I
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p2, p3

    .line 308
    add-int/lit8 p1, p1, 0x4

    move p3, v0

    goto :goto_2

    .line 311
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_2
    return-void

    .line 285
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static b2iBig64([BI[I)V
    .locals 18
    .param p0, "in"    # [B
    .param p1, "inOfs"    # I
    .param p2, "out"    # [I

    .line 315
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-ltz v1, :cond_2

    array-length v3, v0

    sub-int/2addr v3, v1

    const/16 v4, 0x40

    if-lt v3, v4, :cond_2

    array-length v3, v2

    const/16 v5, 0x10

    if-lt v3, v5, :cond_2

    .line 319
    sget-boolean v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x8

    const/16 v17, 0x4

    if-eqz v3, :cond_0

    .line 320
    sget v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr v1, v3

    .line 321
    .end local p1    # "inOfs":I
    .local v1, "inOfs":I
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v5, v1

    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v14

    .line 322
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v12

    .line 323
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x8

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v11

    .line 324
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0xc

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v13

    .line 325
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v17

    .line 326
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x14

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v10

    .line 327
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v9

    .line 328
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x1c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v8

    .line 329
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x20

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v16

    .line 330
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x24

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v7

    .line 331
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x28

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xa

    aput v3, v2, v4

    .line 332
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x2c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xb

    aput v3, v2, v4

    .line 333
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v15

    .line 334
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x34

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xd

    aput v3, v2, v4

    .line 335
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xe

    aput v3, v2, v4

    .line 336
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x3c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xf

    aput v3, v2, v4

    goto/16 :goto_0

    .line 337
    .end local v1    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_0
    sget-boolean v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_1

    .line 338
    sget v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr v1, v3

    .line 339
    .end local p1    # "inOfs":I
    .restart local v1    # "inOfs":I
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v4, v1

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v14

    .line 340
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v12

    .line 341
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x8

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v11

    .line 342
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0xc

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v13

    .line 343
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v17

    .line 344
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x14

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v10

    .line 345
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v9

    .line 346
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x1c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v8

    .line 347
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x20

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v16

    .line 348
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x24

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v7

    .line 349
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x28

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xa

    aput v3, v2, v4

    .line 350
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x2c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xb

    aput v3, v2, v4

    .line 351
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v15

    .line 352
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x34

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xd

    aput v3, v2, v4

    .line 353
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xe

    aput v3, v2, v4

    .line 354
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x3c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xf

    aput v3, v2, v4

    goto :goto_0

    .line 356
    .end local v1    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_1
    invoke-static {v0, v1, v2, v14, v4}, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->b2iBig([BI[III)V

    .line 358
    .end local p1    # "inOfs":I
    .restart local v1    # "inOfs":I
    :goto_0
    return-void

    .line 317
    .end local v1    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method static b2iLittle([BI[III)V
    .locals 4
    .param p0, "in"    # [B
    .param p1, "inOfs"    # I
    .param p2, "out"    # [I
    .param p3, "outOfs"    # I
    .param p4, "len"    # I

    .line 151
    if-ltz p1, :cond_3

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lt v0, p4, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p2

    sub-int/2addr v0, p3

    div-int/lit8 v1, p4, 0x4

    if-lt v0, v1, :cond_3

    .line 155
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 156
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p1, v0

    .line 157
    add-int/2addr p4, p1

    .line 158
    :goto_0
    if-ge p1, p4, :cond_2

    .line 159
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .local v0, "outOfs":I
    sget-object v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    aput v1, p2, p3

    .line 160
    add-int/lit8 p1, p1, 0x4

    move p3, v0

    goto :goto_0

    .line 162
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_1

    .line 163
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p1, v0

    .line 164
    add-int/2addr p4, p1

    .line 165
    :goto_1
    if-ge p1, p4, :cond_2

    .line 166
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local v0    # "outOfs":I
    sget-object v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    aput v1, p2, p3

    .line 167
    add-int/lit8 p1, p1, 0x4

    move p3, v0

    goto :goto_1

    .line 170
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_1
    add-int/2addr p4, p1

    .line 171
    :goto_2
    if-ge p1, p4, :cond_2

    .line 172
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local v0    # "outOfs":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p2, p3

    .line 176
    add-int/lit8 p1, p1, 0x4

    move p3, v0

    goto :goto_2

    .line 179
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_2
    return-void

    .line 153
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static b2iLittle64([BI[I)V
    .locals 18
    .param p0, "in"    # [B
    .param p1, "inOfs"    # I
    .param p2, "out"    # [I

    .line 183
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-ltz v1, :cond_2

    array-length v3, v0

    sub-int/2addr v3, v1

    const/16 v4, 0x40

    if-lt v3, v4, :cond_2

    array-length v3, v2

    const/16 v5, 0x10

    if-lt v3, v5, :cond_2

    .line 187
    sget-boolean v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x8

    const/16 v17, 0x4

    if-eqz v3, :cond_0

    .line 188
    sget v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr v1, v3

    .line 189
    .end local p1    # "inOfs":I
    .local v1, "inOfs":I
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v5, v1

    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v14

    .line 190
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v12

    .line 191
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x8

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v11

    .line 192
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0xc

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v13

    .line 193
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v17

    .line 194
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x14

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v10

    .line 195
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v9

    .line 196
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x1c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v8

    .line 197
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x20

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v16

    .line 198
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x24

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v7

    .line 199
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x28

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xa

    aput v3, v2, v4

    .line 200
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x2c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xb

    aput v3, v2, v4

    .line 201
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    aput v3, v2, v15

    .line 202
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x34

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xd

    aput v3, v2, v4

    .line 203
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xe

    aput v3, v2, v4

    .line 204
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x3c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0xf

    aput v3, v2, v4

    goto/16 :goto_0

    .line 205
    .end local v1    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_0
    sget-boolean v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_1

    .line 206
    sget v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr v1, v3

    .line 207
    .end local p1    # "inOfs":I
    .restart local v1    # "inOfs":I
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v4, v1

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v14

    .line 208
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v12

    .line 209
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x8

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v11

    .line 210
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0xc

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v13

    .line 211
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v17

    .line 212
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x14

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v10

    .line 213
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v9

    .line 214
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x1c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v8

    .line 215
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x20

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v16

    .line 216
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x24

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v7

    .line 217
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x28

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xa

    aput v3, v2, v4

    .line 218
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x2c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xb

    aput v3, v2, v4

    .line 219
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    aput v3, v2, v15

    .line 220
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x34

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xd

    aput v3, v2, v4

    .line 221
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xe

    aput v3, v2, v4

    .line 222
    sget-object v3, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v4, v1, 0x3c

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    const/16 v4, 0xf

    aput v3, v2, v4

    goto :goto_0

    .line 224
    .end local v1    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_1
    invoke-static {v0, v1, v2, v14, v4}, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->b2iLittle([BI[III)V

    .line 226
    .end local p1    # "inOfs":I
    .restart local v1    # "inOfs":I
    :goto_0
    return-void

    .line 185
    .end local v1    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method static b2lBig([BI[JII)V
    .locals 10
    .param p0, "in"    # [B
    .param p1, "inOfs"    # I
    .param p2, "out"    # [J
    .param p3, "outOfs"    # I
    .param p4, "len"    # I

    .line 415
    if-ltz p1, :cond_3

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lt v0, p4, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p2

    sub-int/2addr v0, p3

    div-int/lit8 v1, p4, 0x8

    if-lt v0, v1, :cond_3

    .line 419
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 420
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p1, v0

    .line 421
    add-int/2addr p4, p1

    .line 422
    :goto_0
    if-ge p1, p4, :cond_2

    .line 423
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .local v0, "outOfs":I
    sget-object v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v1

    aput-wide v1, p2, p3

    .line 424
    add-int/lit8 p1, p1, 0x8

    move p3, v0

    goto :goto_0

    .line 426
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_1

    .line 432
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p1, v0

    .line 433
    add-int/2addr p4, p1

    .line 434
    :goto_1
    if-ge p1, p4, :cond_2

    .line 435
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local v0    # "outOfs":I
    sget-object v4, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v5, p1

    .line 436
    invoke-virtual {v4, p0, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v3

    sget-object v6, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v7, p1, 0x4

    int-to-long v7, v7

    .line 437
    invoke-virtual {v6, p0, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p2, p3

    .line 438
    add-int/lit8 p1, p1, 0x8

    move p3, v0

    goto :goto_1

    .line 441
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_1
    add-int/2addr p4, p1

    .line 442
    :goto_2
    if-ge p1, p4, :cond_2

    .line 443
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    aget-byte v4, p0, p1

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    .line 447
    .local v0, "i1":I
    add-int/lit8 p1, p1, 0x4

    .line 448
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aget-byte v5, p0, p1

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    .line 452
    .local v4, "i2":I
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "outOfs":I
    .local v5, "outOfs":I
    int-to-long v6, v0

    shl-long/2addr v6, v3

    int-to-long v8, v4

    and-long/2addr v8, v1

    or-long/2addr v6, v8

    aput-wide v6, p2, p3

    .line 453
    nop

    .end local v0    # "i1":I
    .end local v4    # "i2":I
    add-int/lit8 p1, p1, 0x4

    .line 454
    move p3, v5

    goto :goto_2

    .line 456
    .end local v5    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_2
    return-void

    .line 417
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static b2lBig128([BI[J)V
    .locals 5
    .param p0, "in"    # [B
    .param p1, "inOfs"    # I
    .param p2, "out"    # [J

    .line 460
    if-ltz p1, :cond_1

    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    array-length v0, p2

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 464
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 465
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p1, v0

    .line 466
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v3, p1

    invoke-virtual {v0, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    aput-wide v0, p2, v2

    .line 467
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, p2, v2

    .line 468
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x10

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/4 v2, 0x2

    aput-wide v0, p2, v2

    .line 469
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x18

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/4 v2, 0x3

    aput-wide v0, p2, v2

    .line 470
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x20

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/4 v2, 0x4

    aput-wide v0, p2, v2

    .line 471
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x28

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/4 v2, 0x5

    aput-wide v0, p2, v2

    .line 472
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x30

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/4 v2, 0x6

    aput-wide v0, p2, v2

    .line 473
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x38

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/4 v2, 0x7

    aput-wide v0, p2, v2

    .line 474
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x40

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/16 v2, 0x8

    aput-wide v0, p2, v2

    .line 475
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x48

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/16 v2, 0x9

    aput-wide v0, p2, v2

    .line 476
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x50

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/16 v2, 0xa

    aput-wide v0, p2, v2

    .line 477
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x58

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/16 v2, 0xb

    aput-wide v0, p2, v2

    .line 478
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x60

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/16 v2, 0xc

    aput-wide v0, p2, v2

    .line 479
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x68

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/16 v2, 0xd

    aput-wide v0, p2, v2

    .line 480
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x70

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/16 v2, 0xe

    aput-wide v0, p2, v2

    .line 481
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    add-int/lit8 v1, p1, 0x78

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/16 v2, 0xf

    aput-wide v0, p2, v2

    goto :goto_0

    .line 484
    :cond_0
    invoke-static {p0, p1, p2, v2, v1}, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->b2lBig([BI[JII)V

    .line 486
    :goto_0
    return-void

    .line 462
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static b2lLittle([BI[JII)V
    .locals 8
    .param p0, "in"    # [B
    .param p1, "inOfs"    # I
    .param p2, "out"    # [J
    .param p3, "outOfs"    # I
    .param p4, "len"    # I

    .line 523
    if-ltz p1, :cond_2

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lt v0, p4, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p2

    sub-int/2addr v0, p3

    div-int/lit8 v1, p4, 0x8

    if-lt v0, v1, :cond_2

    .line 527
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 528
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p1, v0

    .line 529
    add-int/2addr p4, p1

    .line 530
    :goto_0
    if-ge p1, p4, :cond_1

    .line 531
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .local v0, "outOfs":I
    sget-object v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    aput-wide v1, p2, p3

    .line 532
    add-int/lit8 p1, p1, 0x8

    move p3, v0

    goto :goto_0

    .line 535
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_0
    add-int/2addr p4, p1

    .line 536
    :goto_1
    if-ge p1, p4, :cond_1

    .line 537
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local v0    # "outOfs":I
    aget-byte v1, p0, p1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x4

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x5

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x6

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x7

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, p2, p3

    .line 545
    add-int/lit8 p1, p1, 0x8

    move p3, v0

    goto :goto_1

    .line 548
    .end local v0    # "outOfs":I
    .restart local p3    # "outOfs":I
    :cond_1
    return-void

    .line 525
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static i2bBig([II[BII)V
    .locals 4
    .param p0, "in"    # [I
    .param p1, "inOfs"    # I
    .param p2, "out"    # [B
    .param p3, "outOfs"    # I
    .param p4, "len"    # I

    .line 364
    if-ltz p1, :cond_3

    array-length v0, p0

    sub-int/2addr v0, p1

    div-int/lit8 v1, p4, 0x4

    if-lt v0, v1, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p2

    sub-int/2addr v0, p3

    if-lt v0, p4, :cond_3

    .line 368
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 369
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p3, v0

    .line 370
    add-int/2addr p4, p3

    .line 371
    :goto_0
    if-ge p3, p4, :cond_2

    .line 372
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p3

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "inOfs":I
    .local v3, "inOfs":I
    aget p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 373
    add-int/lit8 p3, p3, 0x4

    move p1, v3

    goto :goto_0

    .line 375
    .end local v3    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_1

    .line 376
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p3, v0

    .line 377
    add-int/2addr p4, p3

    .line 378
    :goto_1
    if-ge p3, p4, :cond_2

    .line 379
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p3

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "inOfs":I
    .restart local v3    # "inOfs":I
    aget p1, p0, p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 380
    add-int/lit8 p3, p3, 0x4

    move p1, v3

    goto :goto_1

    .line 383
    .end local v3    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_1
    add-int/2addr p4, p3

    .line 384
    :goto_2
    if-ge p3, p4, :cond_2

    .line 385
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOfs":I
    .local v0, "inOfs":I
    aget p1, p0, p1

    .line 386
    .local p1, "i":I
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "outOfs":I
    .local v1, "outOfs":I
    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 387
    add-int/lit8 p3, v1, 0x1

    .end local v1    # "outOfs":I
    .restart local p3    # "outOfs":I
    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 388
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local v1    # "outOfs":I
    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 389
    add-int/lit8 p3, v1, 0x1

    .end local v1    # "outOfs":I
    .restart local p3    # "outOfs":I
    int-to-byte v2, p1

    aput-byte v2, p2, v1

    .line 390
    .end local p1    # "i":I
    move p1, v0

    goto :goto_2

    .line 392
    .end local v0    # "inOfs":I
    .local p1, "inOfs":I
    :cond_2
    return-void

    .line 366
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static i2bBig4(I[BI)V
    .locals 4
    .param p0, "val"    # I
    .param p1, "out"    # [B
    .param p2, "outOfs"    # I

    .line 396
    if-ltz p2, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 399
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    sget v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr v1, p2

    int-to-long v1, v1

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_0

    .line 401
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_1

    .line 402
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    sget v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr v1, p2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_0

    .line 404
    :cond_1
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 405
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 406
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 407
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 409
    :goto_0
    return-void

    .line 397
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static i2bLittle([II[BII)V
    .locals 4
    .param p0, "in"    # [I
    .param p1, "inOfs"    # I
    .param p2, "out"    # [B
    .param p3, "outOfs"    # I
    .param p4, "len"    # I

    .line 232
    if-ltz p1, :cond_3

    array-length v0, p0

    sub-int/2addr v0, p1

    div-int/lit8 v1, p4, 0x4

    if-lt v0, v1, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p2

    sub-int/2addr v0, p3

    if-lt v0, p4, :cond_3

    .line 236
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 237
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p3, v0

    .line 238
    add-int/2addr p4, p3

    .line 239
    :goto_0
    if-ge p3, p4, :cond_2

    .line 240
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p3

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "inOfs":I
    .local v3, "inOfs":I
    aget p1, p0, p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 241
    add-int/lit8 p3, p3, 0x4

    move p1, v3

    goto :goto_0

    .line 243
    .end local v3    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_1

    .line 244
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p3, v0

    .line 245
    add-int/2addr p4, p3

    .line 246
    :goto_1
    if-ge p3, p4, :cond_2

    .line 247
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p3

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "inOfs":I
    .restart local v3    # "inOfs":I
    aget p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 248
    add-int/lit8 p3, p3, 0x4

    move p1, v3

    goto :goto_1

    .line 251
    .end local v3    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_1
    add-int/2addr p4, p3

    .line 252
    :goto_2
    if-ge p3, p4, :cond_2

    .line 253
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOfs":I
    .local v0, "inOfs":I
    aget p1, p0, p1

    .line 254
    .local p1, "i":I
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "outOfs":I
    .local v1, "outOfs":I
    int-to-byte v2, p1

    aput-byte v2, p2, p3

    .line 255
    add-int/lit8 p3, v1, 0x1

    .end local v1    # "outOfs":I
    .restart local p3    # "outOfs":I
    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 256
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local v1    # "outOfs":I
    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 257
    add-int/lit8 p3, v1, 0x1

    .end local v1    # "outOfs":I
    .restart local p3    # "outOfs":I
    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 258
    .end local p1    # "i":I
    move p1, v0

    goto :goto_2

    .line 260
    .end local v0    # "inOfs":I
    .local p1, "inOfs":I
    :cond_2
    return-void

    .line 234
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static i2bLittle4(I[BI)V
    .locals 4
    .param p0, "val"    # I
    .param p1, "out"    # [B
    .param p2, "outOfs"    # I

    .line 264
    if-ltz p2, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 267
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    sget v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr v1, p2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_0

    .line 269
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->bigEndian:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_1

    .line 270
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    sget v1, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr v1, p2

    int-to-long v1, v1

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_0

    .line 272
    :cond_1
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 273
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 274
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 275
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 277
    :goto_0
    return-void

    .line 265
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static l2bBig([JI[BII)V
    .locals 7
    .param p0, "in"    # [J
    .param p1, "inOfs"    # I
    .param p2, "out"    # [B
    .param p3, "outOfs"    # I
    .param p4, "len"    # I

    .line 492
    if-ltz p1, :cond_2

    array-length v0, p0

    sub-int/2addr v0, p1

    div-int/lit8 v1, p4, 0x8

    if-lt v0, v1, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p2

    sub-int/2addr v0, p3

    if-lt v0, p4, :cond_2

    .line 496
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 497
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p3, v0

    .line 498
    add-int/2addr p4, p3

    .line 499
    :goto_0
    if-ge p3, p4, :cond_1

    .line 500
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p3

    add-int/lit8 v6, p1, 0x1

    .end local p1    # "inOfs":I
    .local v6, "inOfs":I
    aget-wide v4, p0, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 501
    add-int/lit8 p3, p3, 0x8

    move p1, v6

    goto :goto_0

    .line 504
    .end local v6    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_0
    add-int/2addr p4, p3

    .line 505
    :goto_1
    if-ge p3, p4, :cond_1

    .line 506
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOfs":I
    .local v0, "inOfs":I
    aget-wide v1, p0, p1

    .line 507
    .local v1, "i":J
    add-int/lit8 p1, p3, 0x1

    .end local p3    # "outOfs":I
    .local p1, "outOfs":I
    const/16 v3, 0x38

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 508
    add-int/lit8 p3, p1, 0x1

    .end local p1    # "outOfs":I
    .restart local p3    # "outOfs":I
    const/16 v3, 0x30

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p1

    .line 509
    add-int/lit8 p1, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local p1    # "outOfs":I
    const/16 v3, 0x28

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 510
    add-int/lit8 p3, p1, 0x1

    .end local p1    # "outOfs":I
    .restart local p3    # "outOfs":I
    const/16 v3, 0x20

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p1

    .line 511
    add-int/lit8 p1, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local p1    # "outOfs":I
    const/16 v3, 0x18

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 512
    add-int/lit8 p3, p1, 0x1

    .end local p1    # "outOfs":I
    .restart local p3    # "outOfs":I
    const/16 v3, 0x10

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p1

    .line 513
    add-int/lit8 p1, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local p1    # "outOfs":I
    const/16 v3, 0x8

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 514
    add-int/lit8 p3, p1, 0x1

    .end local p1    # "outOfs":I
    .restart local p3    # "outOfs":I
    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, p1

    .line 515
    .end local v1    # "i":J
    move p1, v0

    goto :goto_1

    .line 517
    .end local v0    # "inOfs":I
    .local p1, "inOfs":I
    :cond_1
    return-void

    .line 494
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static l2bLittle([JI[BII)V
    .locals 7
    .param p0, "in"    # [J
    .param p1, "inOfs"    # I
    .param p2, "out"    # [B
    .param p3, "outOfs"    # I
    .param p4, "len"    # I

    .line 555
    if-ltz p1, :cond_2

    array-length v0, p0

    sub-int/2addr v0, p1

    div-int/lit8 v1, p4, 0x8

    if-lt v0, v1, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p2

    sub-int/2addr v0, p3

    if-lt v0, p4, :cond_2

    .line 559
    sget-boolean v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->littleEndianUnaligned:Z

    if-eqz v0, :cond_0

    .line 560
    sget v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->byteArrayOfs:I

    add-int/2addr p3, v0

    .line 561
    add-int/2addr p4, p3

    .line 562
    :goto_0
    if-ge p3, p4, :cond_1

    .line 563
    sget-object v0, Lorg/openjsse/sun/security/provider/ByteArrayAccess;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p3

    add-int/lit8 v6, p1, 0x1

    .end local p1    # "inOfs":I
    .local v6, "inOfs":I
    aget-wide v4, p0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 564
    add-int/lit8 p3, p3, 0x8

    move p1, v6

    goto :goto_0

    .line 567
    .end local v6    # "inOfs":I
    .restart local p1    # "inOfs":I
    :cond_0
    add-int/2addr p4, p3

    .line 568
    :goto_1
    if-ge p3, p4, :cond_1

    .line 569
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOfs":I
    .local v0, "inOfs":I
    aget-wide v1, p0, p1

    .line 570
    .local v1, "i":J
    add-int/lit8 p1, p3, 0x1

    .end local p3    # "outOfs":I
    .local p1, "outOfs":I
    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 571
    add-int/lit8 p3, p1, 0x1

    .end local p1    # "outOfs":I
    .restart local p3    # "outOfs":I
    const/16 v3, 0x8

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p1

    .line 572
    add-int/lit8 p1, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local p1    # "outOfs":I
    const/16 v3, 0x10

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 573
    add-int/lit8 p3, p1, 0x1

    .end local p1    # "outOfs":I
    .restart local p3    # "outOfs":I
    const/16 v3, 0x18

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p1

    .line 574
    add-int/lit8 p1, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local p1    # "outOfs":I
    const/16 v3, 0x20

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 575
    add-int/lit8 p3, p1, 0x1

    .end local p1    # "outOfs":I
    .restart local p3    # "outOfs":I
    const/16 v3, 0x28

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p1

    .line 576
    add-int/lit8 p1, p3, 0x1

    .end local p3    # "outOfs":I
    .restart local p1    # "outOfs":I
    const/16 v3, 0x30

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 577
    add-int/lit8 p3, p1, 0x1

    .end local p1    # "outOfs":I
    .restart local p3    # "outOfs":I
    const/16 v3, 0x38

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, p1

    .line 578
    .end local v1    # "i":J
    move p1, v0

    goto :goto_1

    .line 580
    .end local v0    # "inOfs":I
    .local p1, "inOfs":I
    :cond_1
    return-void

    .line 557
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static unaligned()Z
    .locals 3

    .line 141
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "os.arch"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "arch":Ljava/lang/String;
    const-string v1, "i386"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "amd64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ppc64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ppc64le"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 143
    :goto_1
    return v1
.end method
