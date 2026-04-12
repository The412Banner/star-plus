.class Lcom/winlator/cmod/renderer/RenderableWindow;
.super Ljava/lang/Object;
.source "RenderableWindow.java"


# instance fields
.field final content:Lcom/winlator/cmod/xserver/Drawable;

.field rootX:S

.field rootY:S


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/Drawable;II)V
    .locals 1
    .param p1, "content"    # Lcom/winlator/cmod/xserver/Drawable;
    .param p2, "rootX"    # I
    .param p3, "rootY"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/winlator/cmod/renderer/RenderableWindow;->content:Lcom/winlator/cmod/xserver/Drawable;

    .line 12
    int-to-short v0, p2

    iput-short v0, p0, Lcom/winlator/cmod/renderer/RenderableWindow;->rootX:S

    .line 13
    int-to-short v0, p3

    iput-short v0, p0, Lcom/winlator/cmod/renderer/RenderableWindow;->rootY:S

    .line 14
    return-void
.end method
