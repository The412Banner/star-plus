.class public Lcom/winlator/cmod/core/PatchElf;
.super Ljava/lang/Object;
.source "PatchElf.java"


# instance fields
.field private elfFile:Ljava/io/File;

.field private elfInstancePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/winlator/cmod/core/PatchElf;->elfInstancePtr:J

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/core/PatchElf;->elfFile:Ljava/io/File;

    return-void
.end method

.method private native addNeeded(JLjava/lang/String;)Z
.end method

.method private native addRPath(JLjava/lang/String;)Z
.end method

.method private native createElfObject(Ljava/lang/String;)J
.end method

.method private native destroyElfObject(J)Z
.end method

.method private native getInterpreter(J)Ljava/lang/String;
.end method

.method private native getNeeded(J)[Ljava/lang/String;
.end method

.method private native getOsAbi(J)Ljava/lang/String;
.end method

.method private native getRPath(J)[Ljava/lang/String;
.end method

.method private native getSoName(J)Ljava/lang/String;
.end method

.method private native isChanged(J)Z
.end method

.method private native removeNeeded(JLjava/lang/String;)Z
.end method

.method private native removeRPath(JLjava/lang/String;)Z
.end method

.method private native replaceOsAbi(JLjava/lang/String;)Z
.end method

.method private native replaceSoName(JLjava/lang/String;)Z
.end method

.method private native setInterpreter(JLjava/lang/String;)Z
.end method


# virtual methods
.method public loadElf(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .line 16
    iget-wide v0, p0, Lcom/winlator/cmod/core/PatchElf;->elfInstancePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/core/PatchElf;->createElfObject(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/winlator/cmod/core/PatchElf;->elfInstancePtr:J

    .line 19
    iget-wide v4, p0, Lcom/winlator/cmod/core/PatchElf;->elfInstancePtr:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 20
    iput-object p1, p0, Lcom/winlator/cmod/core/PatchElf;->elfFile:Ljava/io/File;

    .line 21
    const/4 v0, 0x1

    return v0

    .line 23
    :cond_1
    return v1

    .line 17
    :cond_2
    :goto_0
    return v1
.end method

.method public loadElf(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/core/PatchElf;->loadElf(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public saveElf()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/winlator/cmod/core/PatchElf;->elfFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/core/PatchElf;->elfFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/core/PatchElf;->saveElf(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public saveElf(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 36
    iget-object v0, p0, Lcom/winlator/cmod/core/PatchElf;->elfFile:Ljava/io/File;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unloadElf()V
    .locals 4

    .line 31
    iget-wide v0, p0, Lcom/winlator/cmod/core/PatchElf;->elfInstancePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 32
    iget-wide v0, p0, Lcom/winlator/cmod/core/PatchElf;->elfInstancePtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/core/PatchElf;->destroyElfObject(J)Z

    .line 33
    :cond_0
    return-void
.end method
