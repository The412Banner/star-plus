.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;
.super Ljava/lang/Object;
.source "SevenZFileOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private maxMemoryLimitInKb:I

.field private useDefaultNameForUnnamedEntries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->maxMemoryLimitInKb:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->useDefaultNameForUnnamedEntries:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .locals 4

    .line 117
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->maxMemoryLimitInKb:I

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->useDefaultNameForUnnamedEntries:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;-><init>(IZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$1;)V

    return-object v0
.end method

.method public withMaxMemoryLimitInKb(I)Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;
    .locals 0
    .param p1, "maxMemoryLimitInKb"    # I

    .line 94
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->maxMemoryLimitInKb:I

    .line 95
    return-object p0
.end method

.method public withUseDefaultNameForUnnamedEntries(Z)Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;
    .locals 0
    .param p1, "useDefaultNameForUnnamedEntries"    # Z

    .line 107
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->useDefaultNameForUnnamedEntries:Z

    .line 108
    return-object p0
.end method
