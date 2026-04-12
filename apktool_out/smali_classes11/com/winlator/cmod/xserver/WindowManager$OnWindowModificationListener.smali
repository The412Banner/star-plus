.class public interface abstract Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWindowModificationListener"
.end annotation


# virtual methods
.method public onChangeWindowZOrder(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 36
    return-void
.end method

.method public onMapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 32
    return-void
.end method

.method public onModifyWindowProperty(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "property"    # Lcom/winlator/cmod/xserver/Property;

    .line 44
    return-void
.end method

.method public onUnmapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 34
    return-void
.end method

.method public onUpdateWindowAttributes(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "mask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 42
    return-void
.end method

.method public onUpdateWindowContent(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 38
    return-void
.end method

.method public onUpdateWindowGeometry(Lcom/winlator/cmod/xserver/Window;Z)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "resized"    # Z

    .line 40
    return-void
.end method
