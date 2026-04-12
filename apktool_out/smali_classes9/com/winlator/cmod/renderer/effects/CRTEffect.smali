.class public Lcom/winlator/cmod/renderer/effects/CRTEffect;
.super Lcom/winlator/cmod/renderer/effects/Effect;
.source "CRTEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/renderer/effects/CRTEffect$CRTEffectMaterial;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/effects/Effect;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected createMaterial()Lcom/winlator/cmod/renderer/material/ShaderMaterial;
    .locals 1

    .line 15
    new-instance v0, Lcom/winlator/cmod/renderer/effects/CRTEffect$CRTEffectMaterial;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/renderer/effects/CRTEffect$CRTEffectMaterial;-><init>(Lcom/winlator/cmod/renderer/effects/CRTEffect;)V

    return-object v0
.end method
