.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001e\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/CacheControl$Companion;",
        "",
        "()V",
        "FORCE_CACHE",
        "Lokhttp3/CacheControl;",
        "FORCE_NETWORK",
        "parse",
        "headers",
        "Lokhttp3/Headers;",
        "indexOfElement",
        "",
        "",
        "characters",
        "startIndex",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 258
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p1, "$this$indexOfElement"    # Ljava/lang/String;
    .param p2, "characters"    # Ljava/lang/String;
    .param p3, "startIndex"    # I

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p3

    :goto_0
    if-ge v1, v0, :cond_1

    .line 408
    .local v1, "i":I
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    return v1

    .line 407
    :cond_0
    nop

    .end local v1    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 406
    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 35
    .param p1, "headers"    # Lokhttp3/Headers;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "headers"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "noCache":Z
    const/4 v2, 0x0

    .line 287
    .local v2, "noStore":Z
    const/4 v3, -0x1

    .line 288
    .local v3, "maxAgeSeconds":I
    const/4 v4, -0x1

    .line 289
    .local v4, "sMaxAgeSeconds":I
    const/4 v5, 0x0

    .line 290
    .local v5, "isPrivate":Z
    const/4 v6, 0x0

    .line 291
    .local v6, "isPublic":Z
    const/4 v7, 0x0

    .line 292
    .local v7, "mustRevalidate":Z
    const/4 v8, -0x1

    .line 293
    .local v8, "maxStaleSeconds":I
    const/4 v9, -0x1

    .line 294
    .local v9, "minFreshSeconds":I
    const/4 v10, 0x0

    .line 295
    .local v10, "onlyIfCached":Z
    const/4 v11, 0x0

    .line 296
    .local v11, "noTransform":Z
    const/4 v12, 0x0

    .line 298
    .local v12, "immutable":Z
    const/4 v13, 0x1

    .line 299
    .local v13, "canUseHeaderValue":Z
    const/4 v14, 0x0

    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .line 301
    .local v15, "headerValue":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v14

    const/16 v16, 0x0

    move/from16 v34, v16

    move/from16 v16, v12

    move/from16 v12, v34

    .end local v12    # "immutable":Z
    .local v16, "immutable":Z
    :goto_0
    if-ge v12, v14, :cond_19

    .line 302
    .local v12, "i":I
    move/from16 v17, v14

    invoke-virtual {v0, v12}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v14

    .line 303
    .local v14, "name":Ljava/lang/String;
    move/from16 v32, v11

    .end local v11    # "noTransform":Z
    .local v32, "noTransform":Z
    invoke-virtual {v0, v12}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    .line 305
    .local v11, "value":Ljava/lang/String;
    nop

    .line 306
    const-string v0, "Cache-Control"

    move/from16 v33, v10

    .end local v10    # "onlyIfCached":Z
    .local v33, "onlyIfCached":Z
    const/4 v10, 0x1

    invoke-static {v14, v0, v10}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    if-eqz v15, :cond_0

    .line 309
    const/4 v13, 0x0

    goto :goto_1

    .line 311
    :cond_0
    move-object v15, v11

    .line 312
    goto :goto_1

    .line 314
    :cond_1
    const-string v0, "Pragma"

    invoke-static {v14, v0, v10}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 316
    const/4 v13, 0x0

    .line 321
    :goto_1
    nop

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "pos":I
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_17

    .line 325
    move v10, v0

    .line 326
    .local v10, "tokenStart":I
    move/from16 v19, v1

    .end local v1    # "noCache":Z
    .local v19, "noCache":Z
    move-object/from16 v1, p0

    check-cast v1, Lokhttp3/CacheControl$Companion;

    move/from16 v20, v2

    .end local v2    # "noStore":Z
    .local v20, "noStore":Z
    const-string v2, "=,;"

    invoke-direct {v1, v11, v2, v0}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 327
    const-string v1, "null cannot be cast to non-null type java.lang.String"

    if-eqz v11, :cond_16

    invoke-virtual {v11, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move/from16 v21, v3

    .end local v3    # "maxAgeSeconds":I
    .local v21, "maxAgeSeconds":I
    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v22, v4

    .end local v4    # "sMaxAgeSeconds":I
    .local v22, "sMaxAgeSeconds":I
    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v2, :cond_15

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "directive":Ljava/lang/String;
    const/16 v23, 0x0

    .line 330
    .local v23, "parameter":Ljava/lang/String;
    move/from16 v24, v5

    .end local v5    # "isPrivate":Z
    .local v24, "isPrivate":Z
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_8

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v25, v6

    .end local v6    # "isPublic":Z
    .local v25, "isPublic":Z
    const/16 v6, 0x2c

    if-eq v5, v6, :cond_7

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_2

    move/from16 v26, v7

    goto/16 :goto_3

    .line 334
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 335
    invoke-static {v11, v0}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 337
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    .line 339
    add-int/lit8 v0, v0, 0x1

    .line 340
    move v4, v0

    .line 341
    .local v4, "parameterStart":I
    move-object/from16 v26, v11

    check-cast v26, Ljava/lang/CharSequence;

    const/16 v30, 0x4

    const/16 v31, 0x0

    const/16 v27, 0x22

    const/16 v29, 0x0

    move/from16 v28, v0

    invoke-static/range {v26 .. v31}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 342
    if-eqz v11, :cond_3

    invoke-virtual {v11, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .end local v23    # "parameter":Ljava/lang/String;
    .local v1, "parameter":Ljava/lang/String;
    nop

    .end local v4    # "parameterStart":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v26, v7

    goto :goto_4

    .line 342
    .end local v1    # "parameter":Ljava/lang/String;
    .restart local v4    # "parameterStart":I
    .restart local v23    # "parameter":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    .end local v4    # "parameterStart":I
    :cond_4
    move v5, v0

    .line 347
    .local v5, "parameterStart":I
    move-object/from16 v6, p0

    check-cast v6, Lokhttp3/CacheControl$Companion;

    move/from16 v26, v7

    .end local v7    # "mustRevalidate":Z
    .local v26, "mustRevalidate":Z
    const-string v7, ",;"

    invoke-direct {v6, v11, v7, v0}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 348
    if-eqz v11, :cond_6

    invoke-virtual {v11, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v23    # "parameter":Ljava/lang/String;
    .restart local v1    # "parameter":Ljava/lang/String;
    goto :goto_4

    .end local v1    # "parameter":Ljava/lang/String;
    .restart local v23    # "parameter":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 330
    .end local v5    # "parameterStart":I
    .end local v26    # "mustRevalidate":Z
    .restart local v7    # "mustRevalidate":Z
    :cond_7
    move/from16 v26, v7

    .end local v7    # "mustRevalidate":Z
    .restart local v26    # "mustRevalidate":Z
    goto :goto_3

    .end local v25    # "isPublic":Z
    .end local v26    # "mustRevalidate":Z
    .restart local v6    # "isPublic":Z
    .restart local v7    # "mustRevalidate":Z
    :cond_8
    move/from16 v25, v6

    move/from16 v26, v7

    .line 331
    .end local v6    # "isPublic":Z
    .end local v7    # "mustRevalidate":Z
    .restart local v25    # "isPublic":Z
    .restart local v26    # "mustRevalidate":Z
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 332
    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 349
    .end local v23    # "parameter":Ljava/lang/String;
    .restart local v1    # "parameter":Ljava/lang/String;
    :goto_4
    nop

    .line 350
    nop

    .line 352
    nop

    .line 353
    const-string v3, "no-cache"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 354
    const/4 v3, 0x1

    move v1, v3

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v19    # "noCache":Z
    .local v3, "noCache":Z
    goto/16 :goto_5

    .line 356
    .end local v3    # "noCache":Z
    .restart local v19    # "noCache":Z
    :cond_9
    const-string v3, "no-store"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 357
    const/4 v3, 0x1

    move v2, v3

    move/from16 v1, v19

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v20    # "noStore":Z
    .local v3, "noStore":Z
    goto/16 :goto_5

    .line 359
    .end local v3    # "noStore":Z
    .restart local v20    # "noStore":Z
    :cond_a
    const-string v3, "max-age"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_b

    .line 360
    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v21    # "maxAgeSeconds":I
    .local v3, "maxAgeSeconds":I
    goto/16 :goto_5

    .line 362
    .end local v3    # "maxAgeSeconds":I
    .restart local v21    # "maxAgeSeconds":I
    :cond_b
    const-string/jumbo v3, "s-maxage"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 363
    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v22    # "sMaxAgeSeconds":I
    .local v3, "sMaxAgeSeconds":I
    goto/16 :goto_5

    .line 365
    .end local v3    # "sMaxAgeSeconds":I
    .restart local v22    # "sMaxAgeSeconds":I
    :cond_c
    const-string/jumbo v3, "private"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 366
    const/4 v3, 0x1

    move/from16 v24, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v24    # "isPrivate":Z
    .local v3, "isPrivate":Z
    goto/16 :goto_5

    .line 368
    .end local v3    # "isPrivate":Z
    .restart local v24    # "isPrivate":Z
    :cond_d
    const-string/jumbo v3, "public"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 369
    const/4 v3, 0x1

    move v6, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v7, v26

    .end local v25    # "isPublic":Z
    .local v3, "isPublic":Z
    goto/16 :goto_5

    .line 371
    .end local v3    # "isPublic":Z
    .restart local v25    # "isPublic":Z
    :cond_e
    const-string v3, "must-revalidate"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 372
    const/4 v3, 0x1

    move v7, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    .end local v26    # "mustRevalidate":Z
    .local v3, "mustRevalidate":Z
    goto/16 :goto_5

    .line 374
    .end local v3    # "mustRevalidate":Z
    .restart local v26    # "mustRevalidate":Z
    :cond_f
    const-string v3, "max-stale"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 375
    const v3, 0x7fffffff

    invoke-static {v1, v3}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v3

    move v8, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v8    # "maxStaleSeconds":I
    .local v3, "maxStaleSeconds":I
    goto/16 :goto_5

    .line 377
    .end local v3    # "maxStaleSeconds":I
    .restart local v8    # "maxStaleSeconds":I
    :cond_10
    const-string v3, "min-fresh"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 378
    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v3

    move v9, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v9    # "minFreshSeconds":I
    .local v3, "minFreshSeconds":I
    goto :goto_5

    .line 380
    .end local v3    # "minFreshSeconds":I
    .restart local v9    # "minFreshSeconds":I
    :cond_11
    const-string v3, "only-if-cached"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 381
    const/4 v3, 0x1

    move/from16 v33, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v33    # "onlyIfCached":Z
    .local v3, "onlyIfCached":Z
    goto :goto_5

    .line 383
    .end local v3    # "onlyIfCached":Z
    .restart local v33    # "onlyIfCached":Z
    :cond_12
    const-string v3, "no-transform"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 384
    const/4 v3, 0x1

    move/from16 v32, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v32    # "noTransform":Z
    .local v3, "noTransform":Z
    goto :goto_5

    .line 386
    .end local v3    # "noTransform":Z
    .restart local v32    # "noTransform":Z
    :cond_13
    const-string v3, "immutable"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 387
    const/4 v3, 0x1

    move/from16 v16, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .end local v16    # "immutable":Z
    .local v3, "immutable":Z
    goto :goto_5

    .line 386
    .end local v3    # "immutable":Z
    .restart local v16    # "immutable":Z
    :cond_14
    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    .line 389
    .end local v10    # "tokenStart":I
    .end local v19    # "noCache":Z
    .end local v20    # "noStore":Z
    .end local v21    # "maxAgeSeconds":I
    .end local v22    # "sMaxAgeSeconds":I
    .end local v25    # "isPublic":Z
    .end local v26    # "mustRevalidate":Z
    .local v1, "noCache":Z
    .local v2, "noStore":Z
    .local v3, "maxAgeSeconds":I
    .local v4, "sMaxAgeSeconds":I
    .restart local v6    # "isPublic":Z
    .restart local v7    # "mustRevalidate":Z
    :goto_5
    nop

    .line 324
    move v10, v5

    move/from16 v5, v24

    goto/16 :goto_2

    .line 327
    .end local v1    # "noCache":Z
    .end local v2    # "noStore":Z
    .end local v3    # "maxAgeSeconds":I
    .end local v4    # "sMaxAgeSeconds":I
    .end local v24    # "isPrivate":Z
    .local v5, "isPrivate":Z
    .restart local v10    # "tokenStart":I
    .restart local v19    # "noCache":Z
    .restart local v20    # "noStore":Z
    .restart local v21    # "maxAgeSeconds":I
    .restart local v22    # "sMaxAgeSeconds":I
    :cond_15
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v21    # "maxAgeSeconds":I
    .end local v22    # "sMaxAgeSeconds":I
    .restart local v3    # "maxAgeSeconds":I
    .restart local v4    # "sMaxAgeSeconds":I
    :cond_16
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v10    # "tokenStart":I
    .end local v19    # "noCache":Z
    .end local v20    # "noStore":Z
    .restart local v1    # "noCache":Z
    .restart local v2    # "noStore":Z
    :cond_17
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    .end local v1    # "noCache":Z
    .end local v2    # "noStore":Z
    .end local v3    # "maxAgeSeconds":I
    .end local v4    # "sMaxAgeSeconds":I
    .end local v5    # "isPrivate":Z
    .end local v6    # "isPublic":Z
    .end local v7    # "mustRevalidate":Z
    .restart local v19    # "noCache":Z
    .restart local v20    # "noStore":Z
    .restart local v21    # "maxAgeSeconds":I
    .restart local v22    # "sMaxAgeSeconds":I
    .restart local v24    # "isPrivate":Z
    .restart local v25    # "isPublic":Z
    .restart local v26    # "mustRevalidate":Z
    move/from16 v11, v32

    move/from16 v10, v33

    goto :goto_6

    .line 319
    .end local v0    # "pos":I
    .end local v19    # "noCache":Z
    .end local v20    # "noStore":Z
    .end local v21    # "maxAgeSeconds":I
    .end local v22    # "sMaxAgeSeconds":I
    .end local v24    # "isPrivate":Z
    .end local v25    # "isPublic":Z
    .end local v26    # "mustRevalidate":Z
    .restart local v1    # "noCache":Z
    .restart local v2    # "noStore":Z
    .restart local v3    # "maxAgeSeconds":I
    .restart local v4    # "sMaxAgeSeconds":I
    .restart local v5    # "isPrivate":Z
    .restart local v6    # "isPublic":Z
    .restart local v7    # "mustRevalidate":Z
    :cond_18
    move/from16 v11, v32

    move/from16 v10, v33

    .line 301
    .end local v14    # "name":Ljava/lang/String;
    .end local v32    # "noTransform":Z
    .end local v33    # "onlyIfCached":Z
    .local v10, "onlyIfCached":Z
    .local v11, "noTransform":Z
    :goto_6
    nop

    .end local v12    # "i":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v14, v17

    goto/16 :goto_0

    .line 393
    :cond_19
    move/from16 v33, v10

    move/from16 v32, v11

    .end local v10    # "onlyIfCached":Z
    .end local v11    # "noTransform":Z
    .restart local v32    # "noTransform":Z
    .restart local v33    # "onlyIfCached":Z
    if-nez v13, :cond_1a

    .line 394
    const/4 v0, 0x0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 397
    :cond_1a
    new-instance v0, Lokhttp3/CacheControl;

    .line 398
    nop

    .line 399
    nop

    .line 397
    const/16 v31, 0x0

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v33

    move/from16 v28, v32

    move/from16 v29, v16

    move-object/from16 v30, v15

    invoke-direct/range {v17 .. v31}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
