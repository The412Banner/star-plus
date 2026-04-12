.class public interface abstract Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;
.super Ljava/lang/Object;
.source "XResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/XResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnResourceLifecycleListener"
.end annotation


# virtual methods
.method public onCreateResource(Lcom/winlator/cmod/xserver/XResource;)V
    .locals 0
    .param p1, "resource"    # Lcom/winlator/cmod/xserver/XResource;

    .line 9
    return-void
.end method

.method public onFreeResource(Lcom/winlator/cmod/xserver/XResource;)V
    .locals 0
    .param p1, "resource"    # Lcom/winlator/cmod/xserver/XResource;

    .line 11
    return-void
.end method
