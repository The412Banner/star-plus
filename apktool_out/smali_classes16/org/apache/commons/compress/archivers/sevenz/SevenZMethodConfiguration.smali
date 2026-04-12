.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
.super Ljava/lang/Object;
.source "SevenZMethodConfiguration.java"


# instance fields
.field private final method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field private final options:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)V
    .locals 1
    .param p1, "method"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V
    .locals 3
    .param p1, "method"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .param p2, "options"    # Ljava/lang/Object;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 60
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->options:Ljava/lang/Object;

    .line 61
    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->canAcceptOptions(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method doesn\'t support options of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 91
    return v0

    .line 93
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 97
    .local v2, "other":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    iget-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->options:Ljava/lang/Object;

    iget-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->options:Ljava/lang/Object;

    .line 98
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 94
    .end local v2    # "other":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    :cond_3
    :goto_1
    return v1
.end method

.method public getMethod()Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    return-object v0
.end method

.method public getOptions()Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->options:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
