.class public Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;
.super Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
.source "PulseAudioComponent.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static pid:I


# instance fields
.field private final socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->pid:I

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/xconnector/UnixSocketConfig;)V
    .locals 0
    .param p1, "socketConfig"    # Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    .line 27
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    .line 29
    return-void
.end method

.method private copyFromLibraryDir(Ljava/io/File;)V
    .locals 11
    .param p1, "dst"    # Ljava/io/File;

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "libltdl.so"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "libpulseaudio.so"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "libpulse.so"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "libpulsecommon-13.0.so"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "libpulsecore-13.0.so"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "libsndfile.so"

    aput-object v4, v0, v1

    .line 53
    .local v0, "libs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib/arm64-v8a/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "path":Ljava/lang/String;
    const-class v5, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 56
    .local v5, "loader":Ljava/lang/ClassLoader;
    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v6

    .line 57
    .local v7, "res":Ljava/net/URL;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    .line 59
    .local v8, "dstDir":Ljava/nio/file/Path;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    goto :goto_2

    .line 65
    :catch_0
    move-exception v2

    goto :goto_3

    .line 60
    .local v6, "is":Ljava/io/InputStream;
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 61
    new-array v9, v3, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v10, v9, v2

    invoke-static {v6, v8, v9}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 62
    invoke-interface {v8}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v9

    const/16 v10, 0x1f9

    invoke-static {v9, v10}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 66
    .end local v6    # "is":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 67
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    nop

    .line 53
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "loader":Ljava/lang/ClassLoader;
    .end local v7    # "res":Ljava/net/URL;
    .end local v8    # "dstDir":Ljava/nio/file/Path;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private execPulseAudio()I
    .locals 11

    .line 72
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "/pulseaudio"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v1, "workingDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 76
    const/16 v2, 0x1f9

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 79
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "default.pa"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v2, "configFile":Ljava/io/File;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load-module module-native-protocol-unix auth-anonymous=1 auth-cookie-enabled=0 socket=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    iget-object v5, v5, Lcom/winlator/cmod/xconnector/UnixSocketConfig;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v6, "load-module module-aaudio-sink"

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const-string v6, "set-default-sink AAudioSink"

    aput-object v6, v3, v4

    const-string v4, "\n"

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 86
    invoke-static {}, Lcom/winlator/cmod/core/AppUtils;->getArchName()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "archName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modules/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v4, "modulesDir":Ljava/io/File;
    const-string v6, "arm64"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "/system/lib64"

    goto :goto_0

    :cond_1
    const-string v6, "system/lib"

    .line 90
    .local v6, "systemLibPath":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v7, "envVars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LD_LIBRARY_PATH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HOME="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TMPDIR="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v9}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getTmpDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-direct {p0, v1}, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->copyFromLibraryDir(Ljava/io/File;)V

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/libpulseaudio.so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "command":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --system=false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --disable-shm=true"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --fail=false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -n --file=default.pa"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --daemonize=false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --use-pid-file=false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --exit-idle-time=-1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 106
    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v8, v5, v1}, Lcom/winlator/cmod/core/ProcessHelper;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)I

    move-result v5

    return v5
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 33
    sget-object v0, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->stop()V

    .line 35
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->execPulseAudio()I

    move-result v1

    sput v1, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->pid:I

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    .line 41
    sget-object v0, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    sget v1, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 43
    sget v1, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 44
    sput v2, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;->pid:I

    .line 46
    :cond_0
    monitor-exit v0

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
