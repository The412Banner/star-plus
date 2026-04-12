.class Lcom/winlator/cmod/xserver/DesktopHelper$1;
.super Ljava/lang/Object;
.source "DesktopHelper.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;


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

    .line 11
    iput-object p1, p0, Lcom/winlator/cmod/xserver/DesktopHelper$1;->val$xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V
    .locals 1
    .param p1, "button"    # Lcom/winlator/cmod/xserver/Pointer$Button;

    .line 14
    iget-object v0, p0, Lcom/winlator/cmod/xserver/DesktopHelper$1;->val$xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-static {v0}, Lcom/winlator/cmod/xserver/DesktopHelper;->-$$Nest$smupdateFocusedWindow(Lcom/winlator/cmod/xserver/XServer;)V

    .line 15
    return-void
.end method
