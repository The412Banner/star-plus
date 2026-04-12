.class public final synthetic Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lcom/winlator/cmod/MainActivity;

.field public final synthetic f$2:Lcom/winlator/cmod/core/DownloadProgressDialog;

.field public final synthetic f$3:Lcom/winlator/cmod/xenvironment/ImageFs;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/winlator/cmod/MainActivity;Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/xenvironment/ImageFs;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/MainActivity;

    iput-object p3, p0, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;->f$2:Lcom/winlator/cmod/core/DownloadProgressDialog;

    iput-object p4, p0, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;->f$3:Lcom/winlator/cmod/xenvironment/ImageFs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/MainActivity;

    iget-object v2, p0, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;->f$2:Lcom/winlator/cmod/core/DownloadProgressDialog;

    iget-object v3, p0, Lcom/winlator/cmod/xenvironment/ImageFsInstaller$$ExternalSyntheticLambda0;->f$3:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-static {v0, v1, v2, v3}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->lambda$installFromAssets$2(Ljava/io/File;Lcom/winlator/cmod/MainActivity;Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/xenvironment/ImageFs;)V

    return-void
.end method
