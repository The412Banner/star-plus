.class public Lcom/winlator/cmod/renderer/effects/ColorEffect;
.super Lcom/winlator/cmod/renderer/effects/Effect;
.source "ColorEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;
    }
.end annotation


# instance fields
.field private brightness:F

.field private contrast:F

.field private gamma:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/effects/Effect;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect;->brightness:F

    .line 14
    iput v0, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect;->contrast:F

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect;->gamma:F

    .line 16
    return-void
.end method


# virtual methods
.method protected createMaterial()Lcom/winlator/cmod/renderer/material/ShaderMaterial;
    .locals 1

    .line 21
    new-instance v0, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;-><init>(Lcom/winlator/cmod/renderer/effects/ColorEffect;)V

    return-object v0
.end method

.method public getBrightness()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect;->brightness:F

    return v0
.end method

.method public getContrast()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect;->contrast:F

    return v0
.end method

.method public getGamma()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect;->gamma:F

    return v0
.end method

.method public setBrightness(F)V
    .locals 0
    .param p1, "brightness"    # F

    .line 30
    iput p1, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect;->brightness:F

    .line 31
    return-void
.end method

.method public setContrast(F)V
    .locals 0
    .param p1, "contrast"    # F

    .line 38
    iput p1, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect;->contrast:F

    .line 39
    return-void
.end method

.method public setGamma(F)V
    .locals 0
    .param p1, "gamma"    # F

    .line 46
    iput p1, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect;->gamma:F

    .line 47
    return-void
.end method
