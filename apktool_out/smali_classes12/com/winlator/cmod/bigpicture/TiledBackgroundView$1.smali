.class Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;
.super Ljava/lang/Object;
.source "TiledBackgroundView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    .line 72
    iput-object p1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetisAnimating(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetcurrentFrame(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetframes(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)[Landroid/graphics/Bitmap;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fputcurrentFrame(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;I)V

    .line 77
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$mupdateShader(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)V

    .line 79
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetenableParallax(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetscrollX(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F

    move-result v1

    iget-object v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetscrollSpeedX(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fputscrollX(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;F)V

    .line 81
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetscrollY(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F

    move-result v1

    iget-object v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetscrollSpeedY(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fputscrollY(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;F)V

    .line 83
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetscrollX(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F

    move-result v0

    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetframes(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetcurrentFrame(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fputscrollX(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;F)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetscrollY(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)F

    move-result v0

    iget-object v2, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetframes(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)[Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v3}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetcurrentFrame(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fputscrollY(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;F)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-virtual {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->invalidate()V

    .line 88
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgethandler(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView$1;->this$0:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    invoke-static {v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->-$$Nest$fgetframeDuration(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_2
    return-void
.end method
