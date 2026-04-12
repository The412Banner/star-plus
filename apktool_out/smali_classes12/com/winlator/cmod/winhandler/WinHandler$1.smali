.class Lcom/winlator/cmod/winhandler/WinHandler$1;
.super Ljava/lang/Object;
.source "WinHandler.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/winhandler/WinHandler;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/winhandler/WinHandler;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/winhandler/WinHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/winhandler/WinHandler;

    .line 83
    iput-object p1, p0, Lcom/winlator/cmod/winhandler/WinHandler$1;->this$0:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 86
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 95
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 90
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler$1;->this$0:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-static {v0, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->-$$Nest$mreleaseSlot(Lcom/winlator/cmod/winhandler/WinHandler;I)V

    .line 91
    return-void
.end method
