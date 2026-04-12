.class Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;
.super Ljava/lang/Object;
.source "GLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/renderer/GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderableWindow"
.end annotation


# instance fields
.field public final content:Lcom/winlator/cmod/xserver/Drawable;

.field public rootX:I

.field public rootY:I


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/Drawable;II)V
    .locals 0
    .param p1, "content"    # Lcom/winlator/cmod/xserver/Drawable;
    .param p2, "rootX"    # I
    .param p3, "rootY"    # I

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->content:Lcom/winlator/cmod/xserver/Drawable;

    iput p2, p0, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->rootX:I

    iput p3, p0, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->rootY:I

    .line 451
    return-void
.end method
