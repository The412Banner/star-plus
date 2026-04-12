.class public Lcom/winlator/cmod/renderer/effects/FSREffect;
.super Lcom/winlator/cmod/renderer/effects/Effect;
.source "FSREffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;
    }
.end annotation


# static fields
.field public static final MODE_DLS:I = 0x1

.field public static final MODE_SUPER_RESOLUTION:I


# instance fields
.field private currentMode:I

.field private sharpnessLevel:F


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentMode(Lcom/winlator/cmod/renderer/effects/FSREffect;)I
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/renderer/effects/FSREffect;->currentMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsharpnessLevel(Lcom/winlator/cmod/renderer/effects/FSREffect;)F
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/renderer/effects/FSREffect;->sharpnessLevel:F

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/effects/Effect;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/renderer/effects/FSREffect;->currentMode:I

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/cmod/renderer/effects/FSREffect;->sharpnessLevel:F

    return-void
.end method


# virtual methods
.method protected createMaterial()Lcom/winlator/cmod/renderer/material/ShaderMaterial;
    .locals 2

    .line 30
    new-instance v0, Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;-><init>(Lcom/winlator/cmod/renderer/effects/FSREffect;Lcom/winlator/cmod/renderer/effects/FSREffect-IA;)V

    return-object v0
.end method

.method public getLevel()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/winlator/cmod/renderer/effects/FSREffect;->sharpnessLevel:F

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/winlator/cmod/renderer/effects/FSREffect;->currentMode:I

    return v0
.end method

.method public setLevel(F)V
    .locals 0
    .param p1, "level"    # F

    .line 23
    iput p1, p0, Lcom/winlator/cmod/renderer/effects/FSREffect;->sharpnessLevel:F

    .line 24
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 17
    iput p1, p0, Lcom/winlator/cmod/renderer/effects/FSREffect;->currentMode:I

    .line 18
    return-void
.end method
