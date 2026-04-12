.class public Lorg/newsclub/net/unix/NamedInteger;
.super Ljava/lang/Object;
.source "NamedInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/NamedInteger$UndefinedValueConstructor;,
        Lorg/newsclub/net/unix/NamedInteger$HasOfValue;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 64
    const-string v0, "UNDEFINED"

    invoke-direct {p0, v0, p1}, Lorg/newsclub/net/unix/NamedInteger;-><init>(Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/newsclub/net/unix/NamedInteger;->name:Ljava/lang/String;

    .line 75
    iput p2, p0, Lorg/newsclub/net/unix/NamedInteger;->id:I

    .line 76
    return-void
.end method

.method protected static final init([Lorg/newsclub/net/unix/NamedInteger;)[Lorg/newsclub/net/unix/NamedInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/newsclub/net/unix/NamedInteger;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 127
    .local p0, "values":[Lorg/newsclub/net/unix/NamedInteger;, "[TT;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    .local v0, "seenValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 129
    .local v3, "val":Lorg/newsclub/net/unix/NamedInteger;, "TT;"
    invoke-virtual {v3}, Lorg/newsclub/net/unix/NamedInteger;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    .end local v3    # "val":Lorg/newsclub/net/unix/NamedInteger;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .restart local v3    # "val":Lorg/newsclub/net/unix/NamedInteger;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate value: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/newsclub/net/unix/NamedInteger;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v3    # "val":Lorg/newsclub/net/unix/NamedInteger;, "TT;"
    :cond_1
    return-object p0
.end method

.method protected static final ofValue([Lorg/newsclub/net/unix/NamedInteger;Lorg/newsclub/net/unix/NamedInteger$UndefinedValueConstructor;I)Lorg/newsclub/net/unix/NamedInteger;
    .locals 4
    .param p2, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/newsclub/net/unix/NamedInteger;",
            ">([TT;",
            "Lorg/newsclub/net/unix/NamedInteger$UndefinedValueConstructor<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 163
    .local p0, "values":[Lorg/newsclub/net/unix/NamedInteger;, "[TT;"
    .local p1, "constr":Lorg/newsclub/net/unix/NamedInteger$UndefinedValueConstructor;, "Lorg/newsclub/net/unix/NamedInteger$UndefinedValueConstructor<TT;>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 164
    .local v2, "e":Lorg/newsclub/net/unix/NamedInteger;, "TT;"
    invoke-virtual {v2}, Lorg/newsclub/net/unix/NamedInteger;->value()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 165
    return-object v2

    .line 163
    .end local v2    # "e":Lorg/newsclub/net/unix/NamedInteger;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {p1, p2}, Lorg/newsclub/net/unix/NamedInteger$UndefinedValueConstructor;->newInstance(I)Lorg/newsclub/net/unix/NamedInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 109
    return v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 111
    return v1

    .line 112
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 113
    return v1

    .line 115
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/newsclub/net/unix/NamedInteger;

    .line 116
    .local v2, "other":Lorg/newsclub/net/unix/NamedInteger;
    iget v3, p0, Lorg/newsclub/net/unix/NamedInteger;->id:I

    invoke-virtual {v2}, Lorg/newsclub/net/unix/NamedInteger;->value()I

    move-result v4

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/newsclub/net/unix/NamedInteger;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/newsclub/net/unix/NamedInteger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/newsclub/net/unix/NamedInteger;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/newsclub/net/unix/NamedInteger;->id:I

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

    .line 93
    iget v0, p0, Lorg/newsclub/net/unix/NamedInteger;->id:I

    return v0
.end method
