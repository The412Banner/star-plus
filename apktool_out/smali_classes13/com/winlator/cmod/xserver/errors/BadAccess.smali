.class public Lcom/winlator/cmod/xserver/errors/BadAccess;
.super Lcom/winlator/cmod/xserver/errors/XRequestError;
.source "BadAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xserver/errors/XRequestError;-><init>(II)V

    .line 6
    return-void
.end method
