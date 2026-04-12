.class public Lorg/openjsse/sun/net/util/IPAddressUtil;
.super Ljava/lang/Object;
.source "IPAddressUtil.java"


# static fields
.field private static final H_AUTH_DELIMS:J = 0x28000001L

.field private static final H_BACKSLASH:J = 0x10000000L

.field private static final H_COLON:J = 0x0L

.field private static final H_EXCLUDE:J = -0x7fffffffc7ffffffL

.field private static final H_GEN_DELIMS:J = 0x28000001L

.field private static final H_IPV6_DELIMS:J = 0x28000000L

.field private static final H_NON_PRINTABLE:J = -0x8000000000000000L

.field private static final H_SLASH:J = 0x0L

.field private static final INADDR16SZ:I = 0x10

.field private static final INADDR4SZ:I = 0x4

.field private static final INT16SZ:I = 0x2

.field private static final L_AUTH_DELIMS:J = 0x400000000000000L

.field private static final L_BACKSLASH:J = 0x0L

.field private static final L_COLON:J = 0x400000000000000L

.field private static final L_EXCLUDE:J = -0x7bff7ff700000001L

.field private static final L_GEN_DELIMS:J = -0x7bff7ff800000000L

.field private static final L_IPV6_DELIMS:J = 0x0L

.field private static final L_NON_PRINTABLE:J = 0xffffffffL

.field private static final L_SLASH:J = 0x800000000000L

.field private static final OTHERS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 322
    const/16 v0, 0x11

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/openjsse/sun/net/util/IPAddressUtil;->OTHERS:[C

    return-void

    :array_0
    .array-data 2
        0x2047s
        0x2048s
        0x2049s
        0x2100s
        0x2101s
        0x2105s
        0x2106s
        0x2a74s
        -0x1abs
        -0x1aas
        -0x1a1s
        -0x195s
        -0xfds
        -0xf1s
        -0xe6s
        -0xe1s
        -0xe0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 413
    const-wide v0, -0x7fff7ff700000001L    # -6.9552656040468E-310

    const-wide v2, -0x7ffffffff0000000L    # -1.32624737E-315

    invoke-static {p0, v0, v1, v2, v3}, Lorg/openjsse/sun/net/util/IPAddressUtil;->scan(Ljava/lang/String;JJ)I

    move-result v0

    .line 416
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character found in authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 418
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/openjsse/sun/net/util/IPAddressUtil;->describeChar(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    return-object v1

    .line 420
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static checkAuthority(Ljava/net/URL;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;

    .line 427
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 428
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "u":Ljava/lang/String;
    invoke-static {v1}, Lorg/openjsse/sun/net/util/IPAddressUtil;->checkUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .local v3, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 429
    return-object v3

    .line 431
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .local v4, "h":Ljava/lang/String;
    invoke-static {v1}, Lorg/openjsse/sun/net/util/IPAddressUtil;->checkHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    if-eqz v1, :cond_2

    .line 432
    return-object v3

    .line 434
    :cond_2
    if-nez v4, :cond_3

    if-nez v2, :cond_3

    .line 435
    invoke-virtual {p0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/net/util/IPAddressUtil;->checkAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 437
    :cond_3
    return-object v0
.end method

.method public static checkExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/net/URL;

    .line 444
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 445
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "s":Ljava/lang/String;
    const-wide v3, 0x8000ffffffffL

    const-wide/high16 v5, -0x8000000000000000L

    invoke-static {v1, v3, v4, v5, v6}, Lorg/openjsse/sun/net/util/IPAddressUtil;->scan(Ljava/lang/String;JJ)I

    move-result v1

    .line 448
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character found in authority: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 450
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/openjsse/sun/net/util/IPAddressUtil;->describeChar(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    return-object v0

    .line 452
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/net/util/IPAddressUtil;->checkHostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2

    .line 453
    return-object v2

    .line 455
    :cond_2
    return-object v0
.end method

.method private static checkHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 386
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 388
    invoke-static {p0}, Lorg/openjsse/sun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 390
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 391
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object p0, v2

    const-wide v3, 0xffffffffL

    const-wide v5, -0x7fffffffd8000000L    # -3.315618423E-315

    invoke-static {v2, v3, v4, v5, v6}, Lorg/openjsse/sun/net/util/IPAddressUtil;->scan(Ljava/lang/String;JJ)I

    move-result v0

    .line 394
    if-ltz v0, :cond_0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character found in IPv6 scoped address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 396
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/openjsse/sun/net/util/IPAddressUtil;->describeChar(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    return-object v1

    .line 399
    :cond_0
    return-object v1

    .line 401
    .end local v0    # "index":I
    :cond_1
    const-string v0, "Unrecognized IPv6 address format"

    return-object v0

    .line 403
    :cond_2
    const-wide v2, -0x7bff7ff700000001L

    const-wide v4, -0x7fffffffc7ffffffL    # -4.6418658E-315

    invoke-static {p0, v2, v3, v4, v5}, Lorg/openjsse/sun/net/util/IPAddressUtil;->scan(Ljava/lang/String;JJ)I

    move-result v0

    .line 404
    .restart local v0    # "index":I
    if-ltz v0, :cond_3

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character found in host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/openjsse/sun/net/util/IPAddressUtil;->describeChar(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    return-object v1

    .line 409
    :cond_3
    return-object v1
.end method

.method public static checkHostString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "host"    # Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 460
    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    sget-object v6, Lorg/openjsse/sun/net/util/IPAddressUtil;->OTHERS:[C

    const-wide v2, 0x8000ffffffffL

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lorg/openjsse/sun/net/util/IPAddressUtil;->scan(Ljava/lang/String;JJ[C)I

    move-result v1

    .line 464
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character found in host: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 466
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/openjsse/sun/net/util/IPAddressUtil;->describeChar(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    return-object v0

    .line 468
    :cond_1
    return-object v0
.end method

.method private static checkUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 375
    const-wide v0, -0x7fff7ff700000001L    # -6.9552656040468E-310

    const-wide v2, -0x7fffffffc7ffffffL    # -4.6418658E-315

    invoke-static {p0, v0, v1, v2, v3}, Lorg/openjsse/sun/net/util/IPAddressUtil;->scan(Ljava/lang/String;JJ)I

    move-result v0

    .line 377
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character found in user-info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/openjsse/sun/net/util/IPAddressUtil;->describeChar(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    return-object v1

    .line 381
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static convertFromIPv4MappedAddress([B)[B
    .locals 4
    .param p0, "addr"    # [B

    .line 263
    invoke-static {p0}, Lorg/openjsse/sun/net/util/IPAddressUtil;->isIPv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 265
    .local v1, "newAddr":[B
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    return-object v1

    .line 268
    .end local v1    # "newAddr":[B
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static describeChar(C)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # C

    .line 364
    const/16 v0, 0x20

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    const-string v0, "\'\\\'"

    return-object v0

    .line 370
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_2
    :goto_0
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3

    const-string v0, "LF"

    return-object v0

    .line 366
    :cond_3
    const/16 v0, 0xd

    if-ne p0, v0, :cond_4

    const-string v0, "CR"

    return-object v0

    .line 367
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "control char (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isIPv4LiteralAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .line 244
    invoke-static {p0}, Lorg/openjsse/sun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIPv4MappedAddress([B)Z
    .locals 4
    .param p0, "addr"    # [B

    .line 279
    array-length v0, p0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 280
    return v2

    .line 282
    :cond_0
    aget-byte v0, p0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    if-ne v1, v3, :cond_1

    .line 289
    return v0

    .line 291
    :cond_1
    return v2
.end method

.method public static isIPv6LiteralAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .line 252
    invoke-static {p0}, Lorg/openjsse/sun/net/util/IPAddressUtil;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static match(CJJ)Z
    .locals 7
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .line 329
    const/16 v0, 0x40

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    if-ge p0, v0, :cond_1

    .line 330
    shl-long/2addr v4, p0

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    return v1

    .line 331
    :cond_1
    const/16 v0, 0x80

    if-ge p0, v0, :cond_3

    .line 332
    add-int/lit8 v0, p0, -0x40

    shl-long/2addr v4, v0

    and-long/2addr v4, p3

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    return v1

    .line 333
    :cond_3
    return v6
.end method

.method public static scan(Ljava/lang/String;JJ)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .line 340
    const/4 v0, -0x1

    .line 341
    .local v0, "i":I
    const/4 v1, -0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-nez v2, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    const/4 v2, 0x0

    .line 343
    .local v2, "match":Z
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1, p2, p3, p4}, Lorg/openjsse/sun/net/util/IPAddressUtil;->match(CJJ)Z

    move-result v4

    move v2, v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    if-eqz v2, :cond_2

    return v0

    .line 345
    :cond_2
    return v1

    .line 341
    .end local v2    # "match":Z
    .end local v3    # "len":I
    :cond_3
    :goto_1
    return v1
.end method

.method public static scan(Ljava/lang/String;JJ[C)I
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J
    .param p5, "others"    # [C

    .line 349
    const/4 v0, -0x1

    .line 350
    .local v0, "i":I
    const/4 v1, -0x1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-nez v2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    const/4 v2, 0x0

    .line 352
    .local v2, "match":Z
    const/4 v4, 0x0

    aget-char v4, p5, v4

    .line 353
    .local v4, "c0":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    invoke-static {v5, p1, p2, p3, p4}, Lorg/openjsse/sun/net/util/IPAddressUtil;->match(CJJ)Z

    move-result v5

    move v2, v5

    if-nez v5, :cond_2

    .line 354
    if-lt v6, v4, :cond_1

    invoke-static {p5, v6}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v5

    if-le v5, v1, :cond_1

    .line 355
    const/4 v2, 0x1

    .line 358
    .end local v6    # "c":C
    :cond_2
    if-eqz v2, :cond_3

    return v0

    .line 360
    :cond_3
    return v1

    .line 350
    .end local v2    # "match":Z
    .end local v3    # "len":I
    .end local v4    # "c0":C
    :cond_4
    :goto_0
    return v1
.end method

.method public static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 15
    .param p0, "src"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 48
    .local v0, "res":[B
    const-wide/16 v1, 0x0

    .line 49
    .local v1, "tmpValue":J
    const/4 v3, 0x0

    .line 50
    .local v3, "currByte":I
    const/4 v4, 0x1

    .line 52
    .local v4, "newOctet":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 53
    .local v5, "len":I
    const/4 v6, 0x0

    if-eqz v5, :cond_8

    const/16 v7, 0xf

    if-le v5, v7, :cond_0

    goto/16 :goto_5

    .line 81
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v8, 0x3

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0xff

    if-ge v7, v5, :cond_5

    .line 82
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 83
    .local v13, "c":C
    const/16 v14, 0x2e

    if-ne v13, v14, :cond_3

    .line 84
    if-nez v4, :cond_2

    cmp-long v9, v1, v9

    if-ltz v9, :cond_2

    cmp-long v9, v1, v11

    if-gtz v9, :cond_2

    if-ne v3, v8, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "currByte":I
    .local v8, "currByte":I
    and-long v9, v1, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v3

    .line 88
    const-wide/16 v1, 0x0

    .line 89
    const/4 v3, 0x1

    move v4, v3

    move v3, v8

    .end local v4    # "newOctet":Z
    .local v3, "newOctet":Z
    goto :goto_2

    .line 85
    .end local v8    # "currByte":I
    .local v3, "currByte":I
    .restart local v4    # "newOctet":Z
    :cond_2
    :goto_1
    return-object v6

    .line 91
    :cond_3
    const/16 v8, 0xa

    invoke-static {v13, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    .line 92
    .local v8, "digit":I
    if-gez v8, :cond_4

    .line 93
    return-object v6

    .line 95
    :cond_4
    const-wide/16 v9, 0xa

    mul-long/2addr v1, v9

    .line 96
    int-to-long v9, v8

    add-long/2addr v1, v9

    .line 97
    const/4 v4, 0x0

    .line 81
    .end local v8    # "digit":I
    .end local v13    # "c":C
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 100
    .end local v7    # "i":I
    :cond_5
    if-nez v4, :cond_7

    cmp-long v7, v1, v9

    if-ltz v7, :cond_7

    rsub-int/lit8 v7, v3, 0x4

    const/16 v9, 0x8

    mul-int/2addr v7, v9

    const-wide/16 v13, 0x1

    shl-long/2addr v13, v7

    cmp-long v7, v1, v13

    if-ltz v7, :cond_6

    goto :goto_4

    .line 103
    :cond_6
    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 105
    :pswitch_0
    const/16 v7, 0x18

    shr-long v13, v1, v7

    and-long/2addr v13, v11

    long-to-int v7, v13

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 107
    :pswitch_1
    const/16 v7, 0x10

    shr-long v13, v1, v7

    and-long/2addr v13, v11

    long-to-int v7, v13

    int-to-byte v7, v7

    const/4 v10, 0x1

    aput-byte v7, v0, v10

    .line 109
    :pswitch_2
    shr-long v9, v1, v9

    and-long/2addr v9, v11

    long-to-int v7, v9

    int-to-byte v7, v7

    const/4 v9, 0x2

    aput-byte v7, v0, v9

    .line 111
    :pswitch_3
    shr-long v6, v1, v6

    and-long/2addr v6, v11

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v8

    .line 113
    :goto_3
    return-object v0

    .line 101
    :cond_7
    :goto_4
    return-object v6

    .line 54
    :cond_8
    :goto_5
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 19
    .param p0, "src"    # Ljava/lang/String;

    .line 129
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 130
    return-object v3

    .line 137
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 138
    .local v1, "srcb":[C
    const/16 v2, 0x10

    new-array v4, v2, [B

    .line 140
    .local v4, "dst":[B
    array-length v5, v1

    .line 141
    .local v5, "srcb_length":I
    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 142
    .local v6, "pc":I
    add-int/lit8 v7, v5, -0x1

    if-ne v6, v7, :cond_1

    .line 143
    return-object v3

    .line 146
    :cond_1
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 147
    move v5, v6

    .line 150
    :cond_2
    const/4 v8, -0x1

    .line 151
    .local v8, "colonp":I
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .line 153
    .local v10, "j":I
    aget-char v11, v1, v9

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_3

    .line 154
    add-int/lit8 v9, v9, 0x1

    aget-char v11, v1, v9

    if-eq v11, v12, :cond_3

    .line 155
    return-object v3

    .line 156
    :cond_3
    move v11, v9

    .line 157
    .local v11, "curtok":I
    const/4 v13, 0x0

    .line 158
    .local v13, "saw_xdigit":Z
    const/4 v14, 0x0

    .line 159
    .local v14, "val":I
    :goto_0
    if-ge v9, v5, :cond_10

    .line 160
    add-int/lit8 v15, v9, 0x1

    .end local v9    # "i":I
    .local v15, "i":I
    aget-char v9, v1, v9

    .line 161
    .local v9, "ch":C
    invoke-static {v9, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    .line 162
    .local v12, "chval":I
    if-eq v12, v7, :cond_5

    .line 163
    shl-int/lit8 v14, v14, 0x4

    .line 164
    or-int/2addr v14, v12

    .line 165
    const v2, 0xffff

    if-le v14, v2, :cond_4

    .line 166
    return-object v3

    .line 167
    :cond_4
    const/4 v13, 0x1

    .line 168
    move v9, v15

    const/16 v2, 0x10

    const/16 v12, 0x3a

    goto :goto_0

    .line 170
    :cond_5
    const/16 v2, 0x3a

    if-ne v9, v2, :cond_a

    .line 171
    move v11, v15

    .line 172
    if-nez v13, :cond_7

    .line 173
    if-eq v8, v7, :cond_6

    .line 174
    return-object v3

    .line 175
    :cond_6
    move v8, v10

    .line 176
    move v12, v2

    move v9, v15

    const/16 v2, 0x10

    goto :goto_0

    .line 177
    :cond_7
    if-ne v15, v5, :cond_8

    .line 178
    return-object v3

    .line 180
    :cond_8
    add-int/lit8 v2, v10, 0x2

    const/16 v7, 0x10

    if-le v2, v7, :cond_9

    .line 181
    return-object v3

    .line 182
    :cond_9
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "j":I
    .local v2, "j":I
    shr-int/lit8 v7, v14, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    .line 183
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "j":I
    .restart local v10    # "j":I
    and-int/lit16 v7, v14, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    .line 184
    const/4 v13, 0x0

    .line 185
    const/4 v14, 0x0

    .line 186
    move v9, v15

    const/16 v2, 0x10

    const/4 v7, -0x1

    const/16 v12, 0x3a

    goto :goto_0

    .line 188
    :cond_a
    const/16 v2, 0x2e

    if-ne v9, v2, :cond_f

    add-int/lit8 v7, v10, 0x4

    const/16 v3, 0x10

    if-gt v7, v3, :cond_f

    .line 189
    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "ia4":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "dot_count":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .line 192
    .local v0, "index":I
    :goto_1
    move-object/from16 v16, v1

    .end local v1    # "srcb":[C
    .local v16, "srcb":[C
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    .line 193
    add-int/lit8 v7, v7, 0x1

    .line 194
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v16

    const/16 v2, 0x2e

    goto :goto_1

    .line 196
    :cond_b
    const/4 v1, 0x3

    if-eq v7, v1, :cond_c

    .line 197
    const/4 v1, 0x0

    return-object v1

    .line 199
    :cond_c
    const/4 v1, 0x0

    invoke-static {v3}, Lorg/openjsse/sun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v2

    .line 200
    .local v2, "v4addr":[B
    if-nez v2, :cond_d

    .line 201
    return-object v1

    .line 203
    :cond_d
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    move/from16 v17, v0

    .end local v0    # "index":I
    .local v17, "index":I
    const/4 v0, 0x4

    if-ge v1, v0, :cond_e

    .line 204
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "j":I
    .local v0, "j":I
    aget-byte v18, v2, v1

    aput-byte v18, v4, v10

    .line 203
    add-int/lit8 v1, v1, 0x1

    move v10, v0

    move/from16 v0, v17

    goto :goto_2

    .line 206
    .end local v0    # "j":I
    .end local v1    # "k":I
    .restart local v10    # "j":I
    :cond_e
    const/4 v13, 0x0

    .line 207
    move v9, v15

    const/4 v0, 0x0

    goto :goto_3

    .line 188
    .end local v2    # "v4addr":[B
    .end local v3    # "ia4":Ljava/lang/String;
    .end local v7    # "dot_count":I
    .end local v16    # "srcb":[C
    .end local v17    # "index":I
    .local v1, "srcb":[C
    :cond_f
    move-object/from16 v16, v1

    .line 209
    .end local v1    # "srcb":[C
    .restart local v16    # "srcb":[C
    const/4 v0, 0x0

    return-object v0

    .line 159
    .end local v12    # "chval":I
    .end local v15    # "i":I
    .end local v16    # "srcb":[C
    .restart local v1    # "srcb":[C
    .local v9, "i":I
    :cond_10
    move-object/from16 v16, v1

    move-object v0, v3

    .line 211
    .end local v1    # "srcb":[C
    .restart local v16    # "srcb":[C
    :goto_3
    if-eqz v13, :cond_12

    .line 212
    add-int/lit8 v1, v10, 0x2

    const/16 v2, 0x10

    if-le v1, v2, :cond_11

    .line 213
    return-object v0

    .line 214
    :cond_11
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "j":I
    .restart local v0    # "j":I
    shr-int/lit8 v1, v14, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v10

    .line 215
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "j":I
    .restart local v10    # "j":I
    and-int/lit16 v1, v14, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 218
    :cond_12
    const/4 v0, -0x1

    if-eq v8, v0, :cond_15

    .line 219
    sub-int v0, v10, v8

    .line 221
    .local v0, "n":I
    const/16 v1, 0x10

    if-ne v10, v1, :cond_13

    .line 222
    const/4 v1, 0x0

    return-object v1

    .line 223
    :cond_13
    const/4 v1, 0x1

    move v9, v1

    :goto_4
    if-gt v9, v0, :cond_14

    .line 224
    rsub-int/lit8 v1, v9, 0x10

    add-int v2, v8, v0

    sub-int/2addr v2, v9

    aget-byte v2, v4, v2

    aput-byte v2, v4, v1

    .line 225
    add-int v1, v8, v0

    sub-int/2addr v1, v9

    const/4 v2, 0x0

    aput-byte v2, v4, v1

    .line 223
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 227
    :cond_14
    const/16 v10, 0x10

    .line 229
    .end local v0    # "n":I
    :cond_15
    const/16 v0, 0x10

    if-eq v10, v0, :cond_16

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_16
    invoke-static {v4}, Lorg/openjsse/sun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    move-result-object v0

    .line 232
    .local v0, "newdst":[B
    if-eqz v0, :cond_17

    .line 233
    return-object v0

    .line 235
    :cond_17
    return-object v4
.end method
