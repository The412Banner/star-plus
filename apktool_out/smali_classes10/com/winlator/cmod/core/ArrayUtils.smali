.class public abstract Lcom/winlator/cmod/core/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concat([[B)[B
    .locals 7
    .param p0, "elements"    # [[B

    .line 10
    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 11
    .local v1, "result":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 12
    array-length v3, v1

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 13
    .local v3, "newArray":[B
    aget-object v4, p0, v2

    array-length v5, v1

    aget-object v6, p0, v2

    array-length v6, v6

    invoke-static {v4, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    move-object v1, v3

    .line 11
    .end local v3    # "newArray":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static varargs concat([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 21
    .local p0, "elements":[[Ljava/lang/Object;, "[[TT;"
    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 22
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 23
    array-length v3, v1

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 24
    .local v3, "newArray":[Ljava/lang/Object;, "[TT;"
    aget-object v4, p0, v2

    array-length v5, v1

    aget-object v6, p0, v2

    array-length v6, v6

    invoke-static {v4, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    move-object v1, v3

    .line 22
    .end local v3    # "newArray":[Ljava/lang/Object;, "[TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Lorg/json/JSONArray;

    .line 31
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 32
    .local v0, "stringArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 34
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 36
    :catch_0
    move-exception v2

    :goto_1
    nop

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
