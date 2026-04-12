.class Lcom/winlator/cmod/xserver/DesktopHelper$2;
.super Ljava/lang/Object;
.source "DesktopHelper.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/xserver/DesktopHelper;->attachTo(Lcom/winlator/cmod/xserver/XServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/winlator/cmod/xserver/DesktopHelper$2;->val$xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 1
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 21
    iget-object v0, p0, Lcom/winlator/cmod/xserver/DesktopHelper$2;->val$xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-static {v0, p1}, Lcom/winlator/cmod/xserver/DesktopHelper;->-$$Nest$smsetFocusedWindow(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xserver/Window;)V

    .line 22
    return-void
.end method
