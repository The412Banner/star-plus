.class public Lorg/apache/commons/compress/MemoryLimitException;
.super Ljava/io/IOException;
.source "MemoryLimitException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final memoryLimitInKb:I

.field private final memoryNeededInKb:J


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "memoryNeededInKb"    # J
    .param p3, "memoryLimitInKb"    # I

    .line 40
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/MemoryLimitException;->buildMessage(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    iput-wide p1, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededInKb:J

    .line 42
    iput p3, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitInKb:I

    .line 43
    return-void
.end method

.method public constructor <init>(JILjava/lang/Exception;)V
    .locals 1
    .param p1, "memoryNeededInKb"    # J
    .param p3, "memoryLimitInKb"    # I
    .param p4, "e"    # Ljava/lang/Exception;

    .line 46
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/MemoryLimitException;->buildMessage(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iput-wide p1, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededInKb:J

    .line 48
    iput p3, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitInKb:I

    .line 49
    return-void
.end method

.method private static buildMessage(JI)Ljava/lang/String;
    .locals 2
    .param p0, "memoryNeededInKb"    # J
    .param p2, "memoryLimitInKb"    # I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kb of memory would be needed; limit was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kb. If the file is not corrupt, consider increasing the memory limit."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMemoryLimitInKb()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitInKb:I

    return v0
.end method

.method public getMemoryNeededInKb()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededInKb:J

    return-wide v0
.end method
