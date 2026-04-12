.class public Lorg/apache/commons/compress/archivers/sevenz/CLI;
.super Ljava/lang/Object;
.source "CLI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static grabMode([Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 101
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 102
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->LIST:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-object v0

    .line 104
    :cond_0
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    array-length v0, p0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/CLI;->usage()V

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/CLI;->grabMode([Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    move-result-object v0

    .line 83
    .local v0, "mode":Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/io/File;

    aget-object v2, p0, v3

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist or is a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    :cond_1
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;)V

    .line 90
    .local v2, "archive":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object v3

    move-object v4, v3

    .local v4, "ae":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {v0, v2, v4}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->takeAction(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v4    # "ae":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V

    .line 94
    .end local v2    # "archive":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    return-void

    .line 88
    .restart local v2    # "archive":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    :catchall_0
    move-exception v3

    .end local v0    # "mode":Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "archive":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .end local p0    # "args":[Ljava/lang/String;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .restart local v0    # "mode":Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "archive":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
.end method

.method private static usage()V
    .locals 2

    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Parameters: archive-name [list]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    return-void
.end method
