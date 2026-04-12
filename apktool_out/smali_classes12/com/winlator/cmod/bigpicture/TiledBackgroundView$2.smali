.class Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;
.super Ljava/lang/Object;
.source "TiledBackgroundView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setStaticWallpaper(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

.field final synthetic val$finalWallpaper:Landroid/graphics/Bitmap;

.field final synthetic val$mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    iput-object p2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;->val$finalWallpaper:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;->val$mode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-virtual {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 127
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;->val$finalWallpaper:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$2;->val$mode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setStaticWallpaper(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 128
    return-void
.end method
