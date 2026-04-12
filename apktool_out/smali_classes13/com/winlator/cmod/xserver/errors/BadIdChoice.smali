.class public Lcom/winlator/cmod/xserver/errors/BadIdChoice;
.super Lcom/winlator/cmod/xserver/errors/XRequestError;
.source "BadIdChoice.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 5
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/winlator/cmod/xserver/errors/XRequestError;-><init>(II)V

    .line 6
    return-void
.end method
