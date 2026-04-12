.class public abstract Lcom/winlator/cmod/core/ProcessHelper;
.super Ljava/lang/Object;
.source "ProcessHelper.java"


# static fields
.field public static final PRINT_DEBUG:Z = true

.field private static final SIGCONT:B = 0x12t

.field private static final SIGKILL:B = 0x9t

.field private static final SIGSTOP:B = 0x13t

.field private static final SIGTERM:B = 0xft

.field private static final debugCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDebugCallback(Lcom/winlator/cmod/core/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p0, "callback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    sget-object v0, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-object v1, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    const-string v1, "ProcessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added debug callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static createDebugThread(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/core/ProcessHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/core/ProcessHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method private static createWaitForThread(Ljava/lang/Process;Lcom/winlator/cmod/core/Callback;)V
    .locals 2
    .param p0, "process"    # Ljava/lang/Process;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Process;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "terminationCallback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/core/ProcessHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/core/ProcessHelper$1;-><init>(Ljava/lang/Process;Lcom/winlator/cmod/core/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public static exec(Ljava/lang/String;)I
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/ProcessHelper;->exec(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static exec(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "envp"    # [Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/ProcessHelper;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)I
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "envp"    # [Ljava/lang/String;
    .param p2, "workingDir"    # Ljava/io/File;

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/winlator/cmod/core/ProcessHelper;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/Callback;)I

    move-result v0

    return v0
.end method

.method public static exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/Callback;)I
    .locals 8
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "envp"    # [Ljava/lang/String;
    .param p2, "workingDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 78
    .local p3, "terminationCallback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "env: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Lcom/winlator/cmod/core/EnvironmentManager;->setEnvVars([Ljava/lang/String;)V

    .line 83
    const/4 v0, -0x1

    .line 85
    .local v0, "pid":I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Splitting command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p0}, Lcom/winlator/cmod/core/ProcessHelper;->splitCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "splitCommand":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Split command result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v3, "Starting process..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 90
    .local v3, "pb":Ljava/lang/ProcessBuilder;
    invoke-virtual {v3, p2}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 91
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lcom/winlator/cmod/core/EnvironmentManager;->getEnvVars()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 92
    sget-object v4, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/null"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v4, "null_file":Ljava/io/File;
    invoke-virtual {v3, v4}, Ljava/lang/ProcessBuilder;->redirectError(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 97
    .end local v4    # "null_file":Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 100
    .local v4, "process":Ljava/lang/Process;
    const-string v5, "Accessing hidden field to get PID"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "pid"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 102
    .local v5, "pidField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    move v0, v6

    .line 104
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process started with pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v6, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/winlator/cmod/core/ProcessHelper;->createDebugThread(Ljava/io/InputStream;)V

    .line 109
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/winlator/cmod/core/ProcessHelper;->createDebugThread(Ljava/io/InputStream;)V

    .line 112
    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v4, p3}, Lcom/winlator/cmod/core/ProcessHelper;->createWaitForThread(Ljava/lang/Process;Lcom/winlator/cmod/core/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v2    # "splitCommand":[Ljava/lang/String;
    .end local v3    # "pb":Ljava/lang/ProcessBuilder;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "pidField":Ljava/lang/reflect/Field;
    :cond_2
    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getAffinityMask(II)I
    .locals 6
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "affinityMask":I
    move v1, p0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static getAffinityMask(Ljava/lang/String;)I
    .locals 10
    .param p0, "cpuList"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 238
    .local v2, "affinityMask":I
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 239
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    .line 240
    .local v5, "index":B
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    or-int/2addr v2, v6

    .line 238
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "index":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    return v2

    .line 235
    .end local v1    # "values":[Ljava/lang/String;
    .end local v2    # "affinityMask":I
    :cond_2
    :goto_1
    return v0
.end method

.method public static getAffinityMask([Z)I
    .locals 6
    .param p0, "cpuList"    # [Z

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "affinityMask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 248
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    or-int/2addr v0, v2

    .line 247
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static getAffinityMaskAsHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "cpuList"    # Ljava/lang/String;

    .line 225
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 227
    .local v1, "affinityMask":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 228
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    .line 229
    .local v5, "index":B
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    or-int/2addr v1, v6

    .line 227
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "index":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static killProcess(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 43
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process killed with pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method static synthetic lambda$createDebugThread$0(Ljava/io/InputStream;)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 123
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .local v0, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 126
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :try_start_2
    sget-object v3, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    sget-object v3, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/cmod/core/Callback;

    .local v4, "callback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    invoke-interface {v4, v2}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .end local v4    # "callback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    goto :goto_1

    .line 131
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "inputStream":Ljava/io/InputStream;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    .end local v2    # "line":Ljava/lang/String;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    .end local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 123
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 134
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ProcessHelper"

    const-string v2, "Error in debug thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method public static listRunningWineProcesses()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "proc":Ljava/io/File;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "wine"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "exe"

    aput-object v3, v1, v2

    .line 263
    .local v1, "filters":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v2, "filteredPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 265
    .local v3, "filterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lcom/winlator/cmod/core/ProcessHelper$2;

    invoke-direct {v4}, Lcom/winlator/cmod/core/ProcessHelper$2;-><init>()V

    invoke-virtual {v0, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "allPids":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 272
    const-string v6, ""

    .line 274
    .local v6, "data":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/stat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 275
    .local v7, "fr":Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 276
    .local v8, "br":Ljava/io/BufferedReader;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .end local v7    # "fr":Ljava/io/FileInputStream;
    .end local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 278
    :catch_0
    move-exception v7

    :goto_1
    nop

    .line 279
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 280
    .local v8, "filter":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 281
    aget-object v9, v4, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v8    # "filter":Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 271
    .end local v6    # "data":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 284
    .end local v5    # "index":I
    :cond_2
    return-object v2
.end method

.method public static pauseAllWineProcesses()V
    .locals 3

    .line 54
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->listRunningWineProcesses()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "process":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/winlator/cmod/core/ProcessHelper;->suspendProcess(I)V

    .line 56
    .end local v1    # "process":Ljava/lang/String;
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public static removeAllDebugCallbacks()V
    .locals 3

    .line 156
    sget-object v0, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 158
    const-string v1, "ProcessHelper"

    const-string v2, "All debug callbacks removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeDebugCallback(Lcom/winlator/cmod/core/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p0, "callback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    sget-object v0, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-object v1, Lcom/winlator/cmod/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    const-string v1, "ProcessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed debug callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resumeAllWineProcesses()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->listRunningWineProcesses()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, "process":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/winlator/cmod/core/ProcessHelper;->resumeProcess(I)V

    .line 62
    .end local v1    # "process":Ljava/lang/String;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public static resumeProcess(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 33
    const/16 v0, 0x12

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process resumed with pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public static splitCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "command"    # Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 179
    .local v1, "startedQuotes":Z
    const-string v2, ""

    .line 181
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "count":I
    :goto_0
    const/4 v5, 0x0

    if-ge v3, v4, :cond_8

    .line 182
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 184
    .local v6, "currChar":C
    const/16 v7, 0x22

    if-eqz v1, :cond_1

    .line 185
    if-ne v6, v7, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v2, ""

    goto/16 :goto_2

    .line 193
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 195
    :cond_1
    if-ne v6, v7, :cond_2

    .line 196
    const/4 v1, 0x1

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 200
    :cond_2
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 201
    .local v5, "nextChar":C
    :cond_3
    const/16 v7, 0x5c

    const/16 v8, 0x20

    if-eq v6, v8, :cond_5

    if-ne v6, v7, :cond_4

    if-ne v5, v8, :cond_4

    goto :goto_1

    .line 212
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    add-int/lit8 v7, v4, -0x1

    if-ne v3, v7, :cond_7

    .line 214
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v2, ""

    goto :goto_2

    .line 202
    :cond_5
    :goto_1
    if-ne v6, v7, :cond_6

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 206
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 207
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v2, ""

    .line 181
    .end local v5    # "nextChar":C
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 221
    .end local v3    # "i":I
    .end local v4    # "count":I
    .end local v6    # "currChar":C
    :cond_8
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static suspendProcess(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 28
    const/16 v0, 0x13

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process suspended with pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static terminateAllWineProcesses()V
    .locals 3

    .line 48
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->listRunningWineProcesses()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "process":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/winlator/cmod/core/ProcessHelper;->terminateProcess(I)V

    .line 50
    .end local v1    # "process":Ljava/lang/String;
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public static terminateProcess(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 38
    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process terminated with pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
