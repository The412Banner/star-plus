.class public Lorg/apache/commons/compress/utils/ServiceLoaderIterator;
.super Ljava/lang/Object;
.source "ServiceLoaderIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private nextServiceLoader:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final serviceLoaderIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/apache/commons/compress/utils/ServiceLoaderIterator;, "Lorg/apache/commons/compress/utils/ServiceLoaderIterator<TE;>;"
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/apache/commons/compress/utils/ServiceLoaderIterator;, "Lorg/apache/commons/compress/utils/ServiceLoaderIterator<TE;>;"
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->service:Ljava/lang/Class;

    .line 47
    invoke-static {p1, p2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 48
    .local v0, "serviceLoader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TE;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->serviceLoaderIterator:Ljava/util/Iterator;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->nextServiceLoader:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private getNextServiceLoader()Z
    .locals 2

    .line 53
    .local p0, "this":Lorg/apache/commons/compress/utils/ServiceLoaderIterator;, "Lorg/apache/commons/compress/utils/ServiceLoaderIterator<TE;>;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->nextServiceLoader:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->serviceLoaderIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->serviceLoaderIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->nextServiceLoader:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v0}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_1

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    throw v0

    .line 68
    .end local v0    # "e":Ljava/util/ServiceConfigurationError;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 73
    .local p0, "this":Lorg/apache/commons/compress/utils/ServiceLoaderIterator;, "Lorg/apache/commons/compress/utils/ServiceLoaderIterator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->getNextServiceLoader()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/compress/utils/ServiceLoaderIterator;, "Lorg/apache/commons/compress/utils/ServiceLoaderIterator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->getNextServiceLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->nextServiceLoader:Ljava/lang/Object;

    .line 82
    .local v0, "tempNext":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->nextServiceLoader:Ljava/lang/Object;

    .line 83
    return-object v0

    .line 79
    .end local v0    # "tempNext":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more elements for service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->service:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 88
    .local p0, "this":Lorg/apache/commons/compress/utils/ServiceLoaderIterator;, "Lorg/apache/commons/compress/utils/ServiceLoaderIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;->service:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
