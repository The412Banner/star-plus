.class Lcom/winlator/cmod/BigPictureActivity$5;
.super Landroid/webkit/WebViewClient;
.source "BigPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/BigPictureActivity;->loadYouTubeVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/BigPictureActivity;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/BigPictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/BigPictureActivity;

    .line 713
    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$5;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$5;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$5;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    invoke-static {v1}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$fgetwebView(Lcom/winlator/cmod/BigPictureActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$msimulateTouchOnWebView(Lcom/winlator/cmod/BigPictureActivity;Landroid/webkit/WebView;)V

    .line 718
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$5;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    invoke-static {v0}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$fgetwebView(Lcom/winlator/cmod/BigPictureActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 719
    return-void
.end method
