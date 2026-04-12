.class public Lcom/winlator/cmod/xenvironment/XEnvironment;
.super Ljava/lang/Object;
.source "XEnvironment.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/winlator/cmod/xenvironment/EnvironmentComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/xenvironment/EnvironmentComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/winlator/cmod/xenvironment/ImageFs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageFs"    # Lcom/winlator/cmod/xenvironment/ImageFs;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/XEnvironment;->components:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/XEnvironment;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/winlator/cmod/xenvironment/XEnvironment;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    .line 20
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/winlator/cmod/xenvironment/EnvironmentComponent;)V
    .locals 1
    .param p1, "environmentComponent"    # Lcom/winlator/cmod/xenvironment/EnvironmentComponent;

    .line 31
    iput-object p0, p1, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    .line 32
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/XEnvironment;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public getComponent(Ljava/lang/Class;)Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/winlator/cmod/xenvironment/EnvironmentComponent;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 36
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/XEnvironment;->components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;

    .line 37
    .local v1, "component":Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 38
    .end local v1    # "component":Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
    :cond_0
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/XEnvironment;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getImageFs()Lcom/winlator/cmod/xenvironment/ImageFs;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/XEnvironment;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    return-object v0
.end method

.method public getTmpDir()Ljava/io/File;
    .locals 3

    .line 48
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/XEnvironment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v0, "tmpDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    const/16 v1, 0x1f9

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V

    .line 53
    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/winlator/cmod/xenvironment/EnvironmentComponent;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/XEnvironment;->components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 66
    const-class v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getComponent(Ljava/lang/Class;)Lcom/winlator/cmod/xenvironment/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    .line 67
    .local v0, "guestProgramLauncherComponent":Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->suspendProcess()V

    .line 68
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 71
    const-class v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getComponent(Ljava/lang/Class;)Lcom/winlator/cmod/xenvironment/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    .line 72
    .local v0, "guestProgramLauncherComponent":Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->resumeProcess()V

    .line 73
    :cond_0
    return-void
.end method

.method public startEnvironmentComponents()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->getTmpDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 58
    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;

    .local v1, "environmentComponent":Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;->start()V

    .end local v1    # "environmentComponent":Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public stopEnvironmentComponents()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;

    .local v1, "environmentComponent":Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;->stop()V

    .end local v1    # "environmentComponent":Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method
