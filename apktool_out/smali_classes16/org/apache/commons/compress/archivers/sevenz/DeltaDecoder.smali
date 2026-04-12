.class Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "DeltaDecoder.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Number;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 30
    return-void
.end method

.method private getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I
    .locals 3
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 62
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    return v0

    .line 63
    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;
    .locals 2
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "uncompressedLength"    # J
    .param p5, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p6, "password"    # [B
    .param p7, "maxMemoryLimitInKb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/tukaani/xz/DeltaOptions;

    invoke-direct {p0, p5}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/DeltaOptions;-><init>(I)V

    invoke-virtual {v0, p2}, Lorg/tukaani/xz/DeltaOptions;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;->numberOptionOrDefault(Ljava/lang/Object;I)I

    move-result v0

    .line 43
    .local v0, "distance":I
    :try_start_0
    new-instance v1, Lorg/tukaani/xz/DeltaOptions;

    invoke-direct {v1, v0}, Lorg/tukaani/xz/DeltaOptions;-><init>(I)V

    new-instance v2, Lorg/tukaani/xz/FinishableWrapperOutputStream;

    invoke-direct {v2, p1}, Lorg/tukaani/xz/FinishableWrapperOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/DeltaOptions;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v1
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "ex":Lorg/tukaani/xz/UnsupportedOptionsException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/tukaani/xz/UnsupportedOptionsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getOptionsAsProperties(Ljava/lang/Object;)[B
    .locals 3
    .param p1, "options"    # Ljava/lang/Object;

    .line 51
    nop

    .line 52
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;->numberOptionOrDefault(Ljava/lang/Object;I)I

    move-result v1

    sub-int/2addr v1, v0

    int-to-byte v1, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 51
    return-object v0
.end method

.method getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p2, "in"    # Ljava/io/InputStream;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
