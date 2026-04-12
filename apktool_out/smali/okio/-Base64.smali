.class public final Lokio/-Base64;
.super Ljava/lang/Object;
.source "-Base64.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0000\u001a\u0016\u0010\u0008\u001a\u00020\u0007*\u00020\u00012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0001H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\n"
    }
    d2 = {
        "BASE64",
        "",
        "getBASE64",
        "()[B",
        "BASE64_URL_SAFE",
        "getBASE64_URL_SAFE",
        "decodeBase64ToArray",
        "",
        "encodeBase64",
        "map",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final BASE64:[B

.field private static final BASE64_URL_SAFE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64:[B

    .line 29
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-void
.end method

.method public static final decodeBase64ToArray(Ljava/lang/String;)[B
    .locals 14
    .param p0, "$this$decodeBase64ToArray"    # Ljava/lang/String;

    const-string v0, "$this$decodeBase64ToArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    .local v0, "limit":I
    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v0, :cond_1

    .line 35
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 36
    .local v5, "c":C
    const/16 v6, 0x3d

    if-eq v5, v6, :cond_0

    if-eq v5, v4, :cond_0

    if-eq v5, v3, :cond_0

    if-eq v5, v2, :cond_0

    if-eq v5, v1, :cond_0

    .line 37
    goto :goto_1

    .line 39
    :cond_0
    nop

    .end local v5    # "c":C
    add-int/lit8 v0, v0, -0x1

    .line 34
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    int-to-long v5, v0

    const-wide/16 v7, 0x6

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x8

    div-long/2addr v5, v7

    long-to-int v5, v5

    new-array v5, v5, [B

    .line 44
    .local v5, "out":[B
    const/4 v6, 0x0

    .line 45
    .local v6, "outCount":I
    const/4 v7, 0x0

    .line 47
    .local v7, "inCount":I
    const/4 v8, 0x0

    .line 48
    .local v8, "word":I
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x0

    if-ge v9, v0, :cond_f

    .line 49
    .local v9, "pos":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 51
    .local v11, "c":C
    const/4 v12, 0x0

    .line 52
    .local v12, "bits":I
    const/16 v13, 0x41

    if-le v13, v11, :cond_2

    goto :goto_3

    :cond_2
    const/16 v13, 0x5a

    if-lt v13, v11, :cond_3

    .line 56
    add-int/lit8 v10, v11, -0x41

    .end local v12    # "bits":I
    .local v10, "bits":I
    goto :goto_9

    .line 57
    .end local v10    # "bits":I
    .restart local v12    # "bits":I
    :cond_3
    :goto_3
    const/16 v13, 0x61

    if-le v13, v11, :cond_4

    goto :goto_4

    :cond_4
    const/16 v13, 0x7a

    if-lt v13, v11, :cond_5

    .line 61
    add-int/lit8 v10, v11, -0x47

    .end local v12    # "bits":I
    .restart local v10    # "bits":I
    goto :goto_9

    .line 62
    .end local v10    # "bits":I
    .restart local v12    # "bits":I
    :cond_5
    :goto_4
    const/16 v13, 0x30

    if-le v13, v11, :cond_6

    goto :goto_5

    :cond_6
    const/16 v13, 0x39

    if-lt v13, v11, :cond_7

    .line 66
    add-int/lit8 v10, v11, 0x4

    .end local v12    # "bits":I
    .restart local v10    # "bits":I
    goto :goto_9

    .line 67
    .end local v10    # "bits":I
    .restart local v12    # "bits":I
    :cond_7
    :goto_5
    const/16 v13, 0x2b

    if-eq v11, v13, :cond_d

    const/16 v13, 0x2d

    if-ne v11, v13, :cond_8

    goto :goto_8

    .line 69
    :cond_8
    const/16 v13, 0x2f

    if-eq v11, v13, :cond_c

    const/16 v13, 0x5f

    if-ne v11, v13, :cond_9

    goto :goto_7

    .line 71
    :cond_9
    if-eq v11, v4, :cond_b

    if-eq v11, v3, :cond_b

    if-eq v11, v2, :cond_b

    if-ne v11, v1, :cond_a

    goto :goto_6

    .line 74
    :cond_a
    return-object v10

    .line 72
    :cond_b
    :goto_6
    goto :goto_a

    .line 70
    :cond_c
    :goto_7
    const/16 v10, 0x3f

    .end local v12    # "bits":I
    .restart local v10    # "bits":I
    goto :goto_9

    .line 68
    .end local v10    # "bits":I
    .restart local v12    # "bits":I
    :cond_d
    :goto_8
    const/16 v10, 0x3e

    .line 75
    .end local v12    # "bits":I
    .restart local v10    # "bits":I
    :goto_9
    nop

    .line 78
    shl-int/lit8 v12, v8, 0x6

    or-int v8, v12, v10

    .line 81
    add-int/lit8 v7, v7, 0x1

    .line 82
    rem-int/lit8 v12, v7, 0x4

    if-nez v12, :cond_e

    .line 83
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "outCount":I
    .local v12, "outCount":I
    shr-int/lit8 v13, v8, 0x10

    int-to-byte v13, v13

    aput-byte v13, v5, v6

    .line 84
    add-int/lit8 v6, v12, 0x1

    .end local v12    # "outCount":I
    .restart local v6    # "outCount":I
    shr-int/lit8 v13, v8, 0x8

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 85
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "outCount":I
    .restart local v12    # "outCount":I
    int-to-byte v13, v8

    aput-byte v13, v5, v6

    move v6, v12

    .line 48
    .end local v10    # "bits":I
    .end local v11    # "c":C
    .end local v12    # "outCount":I
    .restart local v6    # "outCount":I
    :cond_e
    :goto_a
    nop

    .end local v9    # "pos":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 89
    :cond_f
    rem-int/lit8 v1, v7, 0x4

    .line 90
    .local v1, "lastWordChars":I
    packed-switch v1, :pswitch_data_0

    goto :goto_b

    .line 102
    :pswitch_0
    shl-int/lit8 v8, v8, 0x6

    .line 103
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outCount":I
    .local v2, "outCount":I
    shr-int/lit8 v3, v8, 0x10

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    .line 104
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outCount":I
    .restart local v6    # "outCount":I
    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    goto :goto_b

    .line 97
    :pswitch_1
    shl-int/lit8 v8, v8, 0xc

    .line 98
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outCount":I
    .restart local v2    # "outCount":I
    shr-int/lit8 v3, v8, 0x10

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    move v6, v2

    goto :goto_b

    .line 93
    .end local v2    # "outCount":I
    .restart local v6    # "outCount":I
    :pswitch_2
    return-object v10

    .line 106
    :goto_b
    nop

    .line 109
    array-length v2, v5

    if-ne v6, v2, :cond_10

    return-object v5

    .line 112
    :cond_10
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .locals 11
    .param p0, "$this$encodeBase64"    # [B
    .param p1, "map"    # [B

    const-string v0, "$this$encodeBase64"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 117
    .local v0, "length":I
    new-array v1, v0, [B

    .line 118
    .local v1, "out":[B
    const/4 v2, 0x0

    .line 119
    .local v2, "index":I
    array-length v3, p0

    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    .line 120
    .local v3, "end":I
    const/4 v4, 0x0

    .line 121
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 122
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, p0, v4

    .line 123
    .local v4, "b0":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-byte v5, p0, v5

    .line 124
    .local v5, "b1":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-byte v6, p0, v6

    .line 125
    .local v6, "b2":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .local v8, "index":I
    and-int/lit16 v9, v4, 0xff

    shr-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 126
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v9, v4, 0x3

    shl-int/lit8 v9, v9, 0x4

    and-int/lit16 v10, v5, 0xff

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, v1, v8

    .line 127
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .restart local v8    # "index":I
    and-int/lit8 v9, v5, 0xf

    shl-int/lit8 v9, v9, 0x2

    and-int/lit16 v10, v6, 0xff

    shr-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 128
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v9, v6, 0x3f

    aget-byte v9, p1, v9

    aput-byte v9, v1, v8

    .line 121
    .end local v4    # "b0":I
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    move v4, v7

    goto :goto_0

    .line 130
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_0
    array-length v5, p0

    sub-int/2addr v5, v3

    const/16 v6, 0x3d

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 139
    :pswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, p0, v4

    .line 140
    .local v4, "b0":I
    aget-byte v7, p0, v5

    .line 141
    .local v7, "b1":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .restart local v8    # "index":I
    and-int/lit16 v9, v4, 0xff

    shr-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 142
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v9, v4, 0x3

    shl-int/lit8 v9, v9, 0x4

    and-int/lit16 v10, v7, 0xff

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, v1, v8

    .line 143
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .restart local v8    # "index":I
    and-int/lit8 v9, v7, 0xf

    shl-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 144
    int-to-byte v2, v6

    aput-byte v2, v1, v8

    move v4, v5

    move v2, v8

    .end local v4    # "b0":I
    .end local v7    # "b1":I
    goto :goto_1

    .line 132
    .end local v5    # "i":I
    .end local v8    # "index":I
    .restart local v2    # "index":I
    .local v4, "i":I
    :pswitch_1
    aget-byte v5, p0, v4

    .line 133
    .local v5, "b0":I
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .local v7, "index":I
    and-int/lit16 v8, v5, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    aput-byte v8, v1, v2

    .line 134
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v8, v5, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v8, p1, v8

    aput-byte v8, v1, v7

    .line 135
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .restart local v7    # "index":I
    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 136
    aput-byte v6, v1, v7

    move v2, v7

    .line 146
    .end local v5    # "b0":I
    .end local v7    # "index":I
    .restart local v2    # "index":I
    :goto_1
    nop

    .line 147
    invoke-static {v1}, Lokio/-Platform;->toUtf8String([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 115
    sget-object p1, Lokio/-Base64;->BASE64:[B

    :cond_0
    invoke-static {p0, p1}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getBASE64()[B
    .locals 1

    .line 26
    sget-object v0, Lokio/-Base64;->BASE64:[B

    return-object v0
.end method

.method public static final getBASE64_URL_SAFE()[B
    .locals 1

    .line 28
    sget-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-object v0
.end method
