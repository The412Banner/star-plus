.class public Lcom/winlator/cmod/renderer/NativeRenderer;
.super Ljava/lang/Object;
.source "NativeRenderer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native eglSwapBuffersWrapper(JJ)V
.end method

.method public static native getEGLDisplay()J
.end method

.method public static native getEGLSurface()J
.end method

.method public static native initEGLContext(Ljava/lang/Object;)Z
.end method
