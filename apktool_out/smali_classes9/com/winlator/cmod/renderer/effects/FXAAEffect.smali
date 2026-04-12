.class public Lcom/winlator/cmod/renderer/effects/FXAAEffect;
.super Lcom/winlator/cmod/renderer/effects/Effect;
.source "FXAAEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/renderer/effects/FXAAEffect$FXAAMaterial;
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

    .line 16
    new-instance v0, Lcom/winlator/cmod/renderer/effects/FXAAEffect$FXAAMaterial;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/renderer/effects/FXAAEffect$FXAAMaterial;-><init>(Lcom/winlator/cmod/renderer/effects/FXAAEffect;)V

    return-object v0
.end method
