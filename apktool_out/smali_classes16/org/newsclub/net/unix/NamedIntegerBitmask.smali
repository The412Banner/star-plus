.class public abstract Lorg/newsclub/net/unix/NamedIntegerBitmask;
.super Ljava/lang/Object;
.source "NamedIntegerBitmask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/newsclub/net/unix/NamedIntegerBitmask<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final flags:I

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 56
    .local p0, "this":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "Lorg/newsclub/net/unix/NamedIntegerBitmask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    const-string v0, "UNDEFINED"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/newsclub/net/unix/NamedIntegerBitmask;->name:Ljava/lang/String;

    .line 58
    iput p2, p0, Lorg/newsclub/net/unix/NamedIntegerBitmask;->flags:I

    .line 59
    return-void
.end method

.method protected static final resolve([Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;I)Lorg/newsclub/net/unix/NamedIntegerBitmask;
    .locals 6
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/newsclub/net/unix/NamedIntegerBitmask<",
            "TT;>;>([TT;TT;",
            "Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 149
    .local p0, "allFlags":[Lorg/newsclub/net/unix/NamedIntegerBitmask;, "[TT;"
    .local p1, "flagsNone":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    .local p2, "constr":Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;, "Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor<TT;>;"
    if-nez p3, :cond_0

    .line 150
    return-object p1

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "flags":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 155
    .local v3, "flag":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    invoke-virtual {v3}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->value()I

    move-result v4

    .line 156
    .local v4, "val":I
    if-ne v4, p3, :cond_1

    .line 157
    return-object v3

    .line 159
    :cond_1
    and-int v5, p3, v4

    if-ne v5, v4, :cond_2

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v3    # "flag":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    .end local v4    # "val":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_3
    nop

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 164
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/newsclub/net/unix/NamedIntegerBitmask;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/newsclub/net/unix/NamedIntegerBitmask;

    invoke-static {p0, p1, p2, v1}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->resolve([Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;[Lorg/newsclub/net/unix/NamedIntegerBitmask;)Lorg/newsclub/net/unix/NamedIntegerBitmask;

    move-result-object v1

    return-object v1
.end method

.method protected static final resolve([Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;[Lorg/newsclub/net/unix/NamedIntegerBitmask;)Lorg/newsclub/net/unix/NamedIntegerBitmask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/newsclub/net/unix/NamedIntegerBitmask<",
            "TT;>;>([TT;TT;",
            "Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor<",
            "TT;>;[TT;)TT;"
        }
    .end annotation

    .line 180
    .local p0, "allFlags":[Lorg/newsclub/net/unix/NamedIntegerBitmask;, "[TT;"
    .local p1, "flagsNone":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    .local p2, "constr":Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;, "Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor<TT;>;"
    .local p3, "setFlags":[Lorg/newsclub/net/unix/NamedIntegerBitmask;, "[TT;"
    const/4 v0, 0x0

    .line 181
    .local v0, "flags":I
    const/4 v1, 0x0

    .line 183
    .local v1, "numFlagsSet":I
    const/4 v2, 0x0

    .line 184
    .local v2, "lastFlagSet":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 185
    array-length v4, p3

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p3, v5

    .line 186
    .local v6, "flag":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    invoke-virtual {v6}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->value()I

    move-result v7

    or-int/2addr v0, v7

    .line 187
    move-object v2, v6

    .line 188
    nop

    .end local v6    # "flag":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    add-int/lit8 v1, v1, 0x1

    .line 185
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 191
    :cond_0
    if-nez v0, :cond_1

    .line 192
    return-object p1

    .line 193
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    if-eqz v2, :cond_2

    .line 194
    return-object v2

    .line 197
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v5, "sb":Ljava/lang/StringBuilder;
    array-length v6, p3

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v7, p3, v3

    .line 199
    .local v7, "flag":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    invoke-virtual {v7}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/16 v8, 0x2c

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    .end local v7    # "flag":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 204
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v0}, Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;->newInstance(Ljava/lang/String;I)Lorg/newsclub/net/unix/NamedIntegerBitmask;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public abstract combineWith(Lorg/newsclub/net/unix/NamedIntegerBitmask;)Lorg/newsclub/net/unix/NamedIntegerBitmask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method protected final combineWith([Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;Lorg/newsclub/net/unix/NamedIntegerBitmask;)Lorg/newsclub/net/unix/NamedIntegerBitmask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;TT;",
            "Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "Lorg/newsclub/net/unix/NamedIntegerBitmask<TT;>;"
    .local p1, "allFlags":[Lorg/newsclub/net/unix/NamedIntegerBitmask;, "[TT;"
    .local p2, "flagsNone":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    .local p3, "constr":Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;, "Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor<TT;>;"
    .local p4, "other":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->value()I

    move-result v0

    invoke-virtual {p4}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->value()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p1, p2, p3, v0}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->resolve([Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask;Lorg/newsclub/net/unix/NamedIntegerBitmask$Constructor;I)Lorg/newsclub/net/unix/NamedIntegerBitmask;

    move-result-object v0

    return-object v0
.end method

.method public final hasFlag(Lorg/newsclub/net/unix/NamedIntegerBitmask;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "Lorg/newsclub/net/unix/NamedIntegerBitmask<TT;>;"
    .local p1, "flag":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "TT;"
    invoke-virtual {p1}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->value()I

    move-result v0

    .line 87
    .local v0, "v":I
    iget v1, p0, Lorg/newsclub/net/unix/NamedIntegerBitmask;->flags:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 67
    .local p0, "this":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "Lorg/newsclub/net/unix/NamedIntegerBitmask<TT;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/NamedIntegerBitmask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 92
    .local p0, "this":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "Lorg/newsclub/net/unix/NamedIntegerBitmask<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/NamedIntegerBitmask;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()I
    .locals 1

    .line 76
    .local p0, "this":Lorg/newsclub/net/unix/NamedIntegerBitmask;, "Lorg/newsclub/net/unix/NamedIntegerBitmask<TT;>;"
    iget v0, p0, Lorg/newsclub/net/unix/NamedIntegerBitmask;->flags:I

    return v0
.end method
