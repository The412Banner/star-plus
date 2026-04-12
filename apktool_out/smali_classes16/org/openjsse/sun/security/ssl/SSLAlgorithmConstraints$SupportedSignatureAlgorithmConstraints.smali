.class Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;
.super Ljava/lang/Object;
.source "SSLAlgorithmConstraints.java"

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupportedSignatureAlgorithmConstraints"
.end annotation


# instance fields
.field private supportedAlgorithms:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "supportedAlgorithms"    # [Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    .line 236
    :goto_0
    return-void
.end method


# virtual methods
.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 7
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .line 242
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 247
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 252
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    const-string v0, "and"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "position":I
    if-lez v0, :cond_1

    .line 260
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 263
    :cond_1
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 264
    .local v5, "supportedAlgorithm":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    const/4 v1, 0x1

    return v1

    .line 263
    .end local v5    # "supportedAlgorithm":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    :cond_3
    return v1

    .line 254
    .end local v0    # "position":I
    :cond_4
    :goto_1
    return v1

    .line 248
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cryptographic primitive specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No algorithm name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .line 281
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0, p1, p2, p4}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No algorithm name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 1
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    .line 274
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    return v0
.end method
