.class public Lcom/winlator/cmod/xconnector/UnixSocketConfig;
.super Ljava/lang/Object;
.source "UnixSocketConfig.java"


# static fields
.field public static final ALSA_SERVER_PATH:Ljava/lang/String; = "/usr/tmp/.sound/AS0"

.field public static final PULSE_SERVER_PATH:Ljava/lang/String; = "/usr/tmp/.sound/PS0"

.field public static final SYSVSHM_SERVER_PATH:Ljava/lang/String; = "/usr/tmp/.sysvshm/SM0"

.field public static final VIRGL_SERVER_PATH:Ljava/lang/String; = "/tmp/.virgl/V0"

.field public static final XSERVER_PATH:Ljava/lang/String; = "/usr/tmp/.X11-unix/X0"


# instance fields
.field public final path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/winlator/cmod/xconnector/UnixSocketConfig;->path:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static createSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/cmod/xconnector/UnixSocketConfig;
    .locals 4
    .param p0, "rootPath"    # Ljava/lang/String;
    .param p1, "relativePath"    # Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .local v0, "socketFile":Ljava/io/File;
    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->getDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "dirname":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 24
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->getDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .local v2, "socketDir":Ljava/io/File;
    invoke-static {v2}, Lcom/winlator/cmod/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 27
    .end local v2    # "socketDir":Ljava/io/File;
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 30
    :goto_0
    new-instance v2, Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/winlator/cmod/xconnector/UnixSocketConfig;-><init>(Ljava/lang/String;)V

    return-object v2
.end method
