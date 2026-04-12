.class public final Landroidx/core/content/ContentValuesKt;
.super Ljava/lang/Object;
.source "ContentValues.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentValues.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentValues.kt\nandroidx/core/content/ContentValuesKt\n*L\n1#1,46:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a;\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "contentValuesOf",
        "Landroid/content/ContentValues;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/content/ContentValues;",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final varargs contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;
    .locals 9
    .param p0, "pairs"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    const-string/jumbo v0, "pairs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/content/ContentValues;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 27
    .local v2, "$i$a$-apply-ContentValuesKt$contentValuesOf$1":I
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v5

    move-object v5, v4

    :goto_0
    if-ge v6, v3, :cond_a

    aget-object v7, p0, v6

    .local v4, "value":Ljava/lang/Object;
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_0
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_1
    instance-of v7, v4, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 32
    :cond_2
    instance-of v7, v4, Ljava/lang/Long;

    if-eqz v7, :cond_3

    move-object v7, v4

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 33
    :cond_3
    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    move-object v7, v4

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 34
    :cond_4
    instance-of v7, v4, Ljava/lang/Float;

    if-eqz v7, :cond_5

    move-object v7, v4

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 35
    :cond_5
    instance-of v7, v4, Ljava/lang/Double;

    if-eqz v7, :cond_6

    move-object v7, v4

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 36
    :cond_6
    instance-of v7, v4, [B

    if-eqz v7, :cond_7

    move-object v7, v4

    check-cast v7, [B

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 37
    :cond_7
    instance-of v7, v4, Ljava/lang/Byte;

    if-eqz v7, :cond_8

    move-object v7, v4

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_1

    .line 38
    :cond_8
    instance-of v7, v4, Ljava/lang/Short;

    if-eqz v7, :cond_9

    move-object v7, v4

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 27
    :goto_1
    nop

    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 40
    .restart local v4    # "value":Ljava/lang/Object;
    .restart local v5    # "key":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "valueType":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal value type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for key \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 45
    .end local v0    # "valueType":Ljava/lang/String;
    .end local v1    # "$this$apply":Landroid/content/ContentValues;
    .end local v2    # "$i$a$-apply-ContentValuesKt$contentValuesOf$1":I
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/String;
    :cond_a
    nop

    .line 26
    nop

    .line 45
    return-object v0
.end method
