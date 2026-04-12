.class public final synthetic Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/core/DownloadProgressDialog;

.field public final synthetic f$1:Lcom/winlator/cmod/core/Callback;

.field public final synthetic f$2:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/core/Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda5;->f$0:Lcom/winlator/cmod/core/DownloadProgressDialog;

    iput-object p2, p0, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda5;->f$1:Lcom/winlator/cmod/core/Callback;

    iput-object p3, p0, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda5;->f$0:Lcom/winlator/cmod/core/DownloadProgressDialog;

    iget-object v1, p0, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda5;->f$1:Lcom/winlator/cmod/core/Callback;

    iget-object v2, p0, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/core/HttpUtils;->lambda$download$4(Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/core/Callback;Ljava/lang/Boolean;)V

    return-void
.end method
