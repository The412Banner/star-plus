.class public Lcom/winlator/cmod/renderer/effects/HDREffect;
.super Lcom/winlator/cmod/renderer/effects/Effect;
.source "HDREffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/renderer/effects/HDREffect$HDRMaterial;
    }
.end annotation


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/effects/Effect;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/effects/HDREffect;->enabled:Z

    return-void
.end method


# virtual methods
.method protected createMaterial()Lcom/winlator/cmod/renderer/material/ShaderMaterial;
    .locals 2

    .line 18
    new-instance v0, Lcom/winlator/cmod/renderer/effects/HDREffect$HDRMaterial;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/winlator/cmod/renderer/effects/HDREffect$HDRMaterial;-><init>(Lcom/winlator/cmod/renderer/effects/HDREffect;Lcom/winlator/cmod/renderer/effects/HDREffect-IA;)V

    return-object v0
.end method

.method public setStrength(F)V
    .locals 1
    .param p1, "s"    # F

    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/effects/HDREffect;->enabled:Z

    .line 14
    return-void
.end method
