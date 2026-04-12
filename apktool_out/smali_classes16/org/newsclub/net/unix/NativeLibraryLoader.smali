.class final Lorg/newsclub/net/unix/NativeLibraryLoader;
.super Ljava/lang/Object;
.source "NativeLibraryLoader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;,
        Lorg/newsclub/net/unix/NativeLibraryLoader$StandardLibraryCandidate;,
        Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;
    }
.end annotation


# static fields
.field private static final ARCHITECTURE_AND_OS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIBRARY_NAME:Ljava/lang/String; = "junixsocket-native"

.field private static final PROP_LIBRARY_DISABLE:Ljava/lang/String; = "org.newsclub.net.unix.library.disable"

.field private static final PROP_LIBRARY_OVERRIDE:Ljava/lang/String; = "org.newsclub.net.unix.library.override"

.field private static final PROP_LIBRARY_OVERRIDE_FORCE:Ljava/lang/String; = "org.newsclub.net.unix.library.override.force"

.field private static final PROP_LIBRARY_TMPDIR:Ljava/lang/String; = "org.newsclub.net.unix.library.tmpdir"

.field private static final TEMP_DIR:Ljava/io/File;

.field private static loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lorg/newsclub/net/unix/NativeLibraryLoader;->architectureAndOS()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/NativeLibraryLoader;->ARCHITECTURE_AND_OS:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lorg/newsclub/net/unix/NativeLibraryLoader;->loaded:Z

    .line 50
    const-string v0, "org.newsclub.net.unix.library.tmpdir"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "dir":Ljava/lang/String;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v1, Lorg/newsclub/net/unix/NativeLibraryLoader;->TEMP_DIR:Ljava/io/File;

    .line 52
    .end local v0    # "dir":Ljava/lang/String;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static architectureAndOS()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    const-string v0, "os.arch"

    const-string v1, "UnknownArch"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ /\\\\\'\";:\\$]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "arch":Ljava/lang/String;
    const-string v3, "os.name"

    const-string v4, "UnknownOS"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "osName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v3, "Windows"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Windows10"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-Windows10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    return-object v2
.end method

.method private static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    sget-object v0, Lorg/newsclub/net/unix/NativeLibraryLoader;->TEMP_DIR:Ljava/io/File;

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private findLibraryCandidates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 18
    .param p1, "artifactName"    # Ljava/lang/String;
    .param p2, "libraryNameAndVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;",
            ">;"
        }
    .end annotation

    .line 369
    .local p3, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p2 .. p2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "mappedName":Ljava/lang/String;
    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    new-array v4, v8, [Ljava/lang/String;

    aput-object v6, v4, v9

    goto :goto_0

    :cond_0
    new-array v5, v7, [Ljava/lang/String;

    aput-object v6, v5, v9

    aput-object v4, v5, v8

    move-object v4, v5

    .line 373
    .local v4, "prefixes":[Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;>;"
    sget-object v6, Lorg/newsclub/net/unix/NativeLibraryLoader;->ARCHITECTURE_AND_OS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 375
    .local v10, "archOs":Ljava/lang/String;
    new-array v11, v7, [Ljava/lang/String;

    const-string v12, "clang"

    aput-object v12, v11, v9

    const-string v12, "gcc"

    aput-object v12, v11, v8

    move v12, v9

    :goto_2
    if-ge v12, v7, :cond_4

    aget-object v13, v11, v12

    .line 380
    .local v13, "compiler":Ljava/lang/String;
    array-length v14, v4

    move v15, v9

    :goto_3
    if-ge v15, v14, :cond_3

    aget-object v7, v4, v15

    .line 381
    .local v7, "prefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/lib/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/jni/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 386
    .local v9, "in":Ljava/io/InputStream;
    if-eqz v9, :cond_1

    .line 387
    move-object/from16 v16, v3

    .end local v3    # "mappedName":Ljava/lang/String;
    .local v16, "mappedName":Ljava/lang/String;
    new-instance v3, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;

    invoke-direct {v3, v0, v1, v8, v9}, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 386
    .end local v16    # "mappedName":Ljava/lang/String;
    .restart local v3    # "mappedName":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v3

    .line 393
    .end local v3    # "mappedName":Ljava/lang/String;
    .restart local v16    # "mappedName":Ljava/lang/String;
    :goto_4
    move-object/from16 v3, p0

    move-object/from16 v17, v4

    .end local v4    # "prefixes":[Ljava/lang/String;
    .local v17, "prefixes":[Ljava/lang/String;
    invoke-direct {v3, v8}, Lorg/newsclub/net/unix/NativeLibraryLoader;->nodepsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "nodepsPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 395
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 396
    if-eqz v9, :cond_2

    .line 397
    new-instance v2, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;

    invoke-direct {v2, v0, v1, v4, v9}, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v4    # "nodepsPath":Ljava/lang/String;
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "in":Ljava/io/InputStream;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_3

    .end local v16    # "mappedName":Ljava/lang/String;
    .end local v17    # "prefixes":[Ljava/lang/String;
    .restart local v3    # "mappedName":Ljava/lang/String;
    .local v4, "prefixes":[Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v3, p0

    .line 375
    .end local v3    # "mappedName":Ljava/lang/String;
    .end local v4    # "prefixes":[Ljava/lang/String;
    .end local v13    # "compiler":Ljava/lang/String;
    .restart local v16    # "mappedName":Ljava/lang/String;
    .restart local v17    # "prefixes":[Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .end local v16    # "mappedName":Ljava/lang/String;
    .end local v17    # "prefixes":[Ljava/lang/String;
    .restart local v3    # "mappedName":Ljava/lang/String;
    .restart local v4    # "prefixes":[Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v3, p0

    .line 403
    .end local v3    # "mappedName":Ljava/lang/String;
    .end local v4    # "prefixes":[Ljava/lang/String;
    .end local v10    # "archOs":Ljava/lang/String;
    .restart local v16    # "mappedName":Ljava/lang/String;
    .restart local v17    # "prefixes":[Ljava/lang/String;
    move-object/from16 v2, p3

    move-object/from16 v3, v16

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 404
    .end local v16    # "mappedName":Ljava/lang/String;
    .end local v17    # "prefixes":[Ljava/lang/String;
    .restart local v3    # "mappedName":Ljava/lang/String;
    .restart local v4    # "prefixes":[Ljava/lang/String;
    :cond_5
    return-object v5
.end method

.method private static varargs getArtifactVersion(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "artifactNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    .local p0, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 84
    .local v0, "artifactName":Ljava/lang/String;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 85
    .local v1, "p":Ljava/util/Properties;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/META-INF/maven/com.kohlschutter.junixsocket/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/pom.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "resource":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 88
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 92
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 93
    const-string v4, "version"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "version":Ljava/lang/String;
    const-string v5, "Could not read version from pom.properties"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    nop

    .line 97
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 96
    :cond_0
    return-object v4

    .line 87
    .end local v4    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 89
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " relative to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "artifactName":Ljava/lang/String;
    .end local v1    # "p":Ljava/util/Properties;
    .end local v2    # "resource":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local p0    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "artifactNames":[Ljava/lang/String;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .restart local v0    # "artifactName":Ljava/lang/String;
    .restart local v1    # "p":Ljava/util/Properties;
    .restart local v2    # "resource":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local p0    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "artifactNames":[Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4

    .line 99
    .end local v0    # "artifactName":Ljava/lang/String;
    .end local v1    # "p":Ljava/util/Properties;
    .end local v2    # "resource":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No artifact names specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJunixsocketVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-class v0, Lorg/newsclub/net/unix/AFSocket;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "junixsocket-common"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->getArtifactVersion(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCantLoadLibraryError(Ljava/util/List;)Ljava/lang/UnsatisfiedLinkError;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/UnsatisfiedLinkError;"
        }
    .end annotation

    .line 311
    .local p1, "suppressedThrowables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load native library junixsocket-native for architecture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/newsclub/net/unix/NativeLibraryLoader;->ARCHITECTURE_AND_OS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "message":Ljava/lang/String;
    const-string v1, "java.class.path"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "cp":Ljava/lang/String;
    const-string v2, "junixsocket-native-custom/target-eclipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "junixsocket-native-common/target-eclipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n*** ECLIPSE USERS ***\nIf you\'re running from within Eclipse, please close the projects \"junixsocket-native-common\" and \"junixsocket-native-custom\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_1
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v2, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 322
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    if-eqz p1, :cond_2

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 324
    .local v4, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v2, v4}, Ljava/lang/UnsatisfiedLinkError;->addSuppressed(Ljava/lang/Throwable;)V

    .line 325
    .end local v4    # "suppressed":Ljava/lang/Throwable;
    goto :goto_0

    .line 327
    :cond_2
    throw v2
.end method

.method private initLibraryCandidates(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;",
            ">;"
        }
    .end annotation

    .line 331
    .local p1, "suppressedThrowables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;>;"
    :try_start_0
    new-instance v1, Lorg/newsclub/net/unix/NativeLibraryLoader$StandardLibraryCandidate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "junixsocket-common"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "junixsocket-core"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/newsclub/net/unix/NativeLibraryLoader;->getArtifactVersion(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/newsclub/net/unix/NativeLibraryLoader$StandardLibraryCandidate;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    const-string v1, "org.newsclub.lib.junixsocket.custom.NarMetadata"

    const-string v2, "junixsocket-native-custom"

    invoke-direct {p0, v1, v2}, Lorg/newsclub/net/unix/NativeLibraryLoader;->tryProviderClass(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    goto :goto_1

    .line 341
    :catch_1
    move-exception v1

    .line 342
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v1, "org.newsclub.lib.junixsocket.common.NarMetadata"

    const-string v2, "junixsocket-native-common"

    invoke-direct {p0, v1, v2}, Lorg/newsclub/net/unix/NativeLibraryLoader;->tryProviderClass(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 349
    goto :goto_2

    .line 347
    :catch_2
    move-exception v1

    .line 348
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private loadLibraryOverride()Ljava/lang/Throwable;
    .locals 4

    .line 223
    const-string v0, "org.newsclub.net.unix.library.override"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "libraryOverride":Ljava/lang/String;
    const-string v1, "org.newsclub.net.unix.library.override.force"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "libraryOverrideForce":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    move-object v0, v1

    .line 228
    const-string v1, "true"

    .line 231
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 233
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/NativeLibraryLoader;->setLoaded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    const/4 v2, 0x0

    return-object v2

    .line 236
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    return-object v2

    .line 238
    :cond_1
    throw v2

    .line 243
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No library specified with -Dorg.newsclub.net.unix.library.override="

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private static loadLibrarySyncMonitor()Ljava/lang/Object;
    .locals 2

    .line 248
    const-class v0, Lorg/newsclub/net/unix/NativeLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 249
    .local v1, "monitor":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 251
    return-object v0

    .line 253
    :cond_0
    return-object v1
.end method

.method private nodepsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 408
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 409
    .local v0, "lastDot":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 410
    const/4 v1, 0x0

    return-object v1

    .line 412
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nodeps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized setLoaded(Ljava/lang/String;)V
    .locals 0
    .param p1, "library"    # Ljava/lang/String;

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-static {p1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->setLoaded0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 202
    .end local p0    # "this":Lorg/newsclub/net/unix/NativeLibraryLoader;
    .end local p1    # "library":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static declared-synchronized setLoaded0(Ljava/lang/String;)V
    .locals 3
    .param p0, "library"    # Ljava/lang/String;

    const-class v0, Lorg/newsclub/net/unix/NativeLibraryLoader;

    monitor-enter v0

    .line 208
    :try_start_0
    sget-boolean v1, Lorg/newsclub/net/unix/NativeLibraryLoader;->loaded:Z

    if-nez v1, :cond_0

    .line 209
    const/4 v1, 0x1

    sput-boolean v1, Lorg/newsclub/net/unix/NativeLibraryLoader;->loaded:Z

    .line 210
    sput-object p0, Lorg/newsclub/net/unix/AFSocket;->loadedLibrary:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :try_start_1
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->initPre()V

    .line 213
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->init()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 207
    .end local p0    # "library":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method static tempDir()Ljava/io/File;
    .locals 1

    .line 63
    sget-object v0, Lorg/newsclub/net/unix/NativeLibraryLoader;->TEMP_DIR:Ljava/io/File;

    return-object v0
.end method

.method private tryProviderClass(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "providerClassname"    # Ljava/lang/String;
    .param p2, "artifactName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 68
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->getArtifactVersion(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "junixsocket-native-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "libraryNameAndVersion":Ljava/lang/String;
    invoke-direct {p0, p2, v2, v0}, Lorg/newsclub/net/unix/NativeLibraryLoader;->findLibraryCandidates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 422
    return-void
.end method

.method public declared-synchronized loadLibrary()V
    .locals 8

    monitor-enter p0

    .line 260
    :try_start_0
    invoke-static {}, Lorg/newsclub/net/unix/NativeLibraryLoader;->loadLibrarySyncMonitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 261
    :try_start_1
    sget-boolean v1, Lorg/newsclub/net/unix/NativeLibraryLoader;->loaded:Z

    if-eqz v1, :cond_0

    .line 263
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 268
    :cond_0
    :try_start_2
    const-string v1, "provided"

    const-string v2, "org.newsclub.net.unix.library.override.force"

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const-string v1, "provided"

    invoke-direct {p0, v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->setLoaded(Ljava/lang/String;)V

    .line 270
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 273
    :cond_1
    :try_start_3
    const-string v1, "org.newsclub.net.unix.library.disable"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v1, "suppressedThrowables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lorg/newsclub/net/unix/NativeLibraryLoader;->loadLibraryOverride()Ljava/lang/Throwable;

    move-result-object v2

    .line 280
    .local v2, "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_2

    .line 281
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 283
    :cond_2
    :try_start_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-direct {p0, v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->initLibraryCandidates(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 287
    .local v3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;>;"
    const/4 v4, 0x0

    .line 288
    .local v4, "loadedLibraryId":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    .local v6, "candidate":Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;
    :try_start_5
    invoke-virtual {v6}, Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;->load()Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v7

    if-eqz v7, :cond_3

    .line 291
    goto :goto_3

    .line 295
    :cond_3
    goto :goto_2

    .line 293
    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    .line 294
    .local v7, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_6
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v6    # "candidate":Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;
    .end local v7    # "e":Ljava/lang/Throwable;
    :goto_2
    goto :goto_0

    .line 298
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;

    .line 299
    .restart local v6    # "candidate":Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;
    invoke-virtual {v6}, Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;->close()V

    .line 300
    .end local v6    # "candidate":Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;
    goto :goto_4

    .line 302
    :cond_5
    if-eqz v4, :cond_6

    .line 306
    invoke-direct {p0, v4}, Lorg/newsclub/net/unix/NativeLibraryLoader;->setLoaded(Ljava/lang/String;)V

    .line 307
    .end local v1    # "suppressedThrowables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;>;"
    .end local v4    # "loadedLibraryId":Ljava/lang/String;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 303
    .restart local v1    # "suppressedThrowables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v2    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;>;"
    .restart local v4    # "loadedLibraryId":Ljava/lang/String;
    :cond_6
    :try_start_7
    invoke-direct {p0, v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->initCantLoadLibraryError(Ljava/util/List;)Ljava/lang/UnsatisfiedLinkError;

    move-result-object v5

    throw v5

    .line 274
    .end local v1    # "suppressedThrowables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;>;"
    .end local v4    # "loadedLibraryId":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "junixsocket disabled by System.property org.newsclub.net.unix.library.disable"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->initCantLoadLibraryError(Ljava/util/List;)Ljava/lang/UnsatisfiedLinkError;

    move-result-object v1

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 307
    :catchall_0
    move-exception v1

    :goto_5
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1

    .end local p0    # "this":Lorg/newsclub/net/unix/NativeLibraryLoader;
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 259
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method
