.class public abstract Lcom/winlator/cmod/renderer/effects/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# instance fields
.field private material:Lcom/winlator/cmod/renderer/material/ShaderMaterial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method protected createMaterial()Lcom/winlator/cmod/renderer/material/ShaderMaterial;
    .locals 1

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaterial()Lcom/winlator/cmod/renderer/material/ShaderMaterial;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/winlator/cmod/renderer/effects/Effect;->material:Lcom/winlator/cmod/renderer/material/ShaderMaterial;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/effects/Effect;->createMaterial()Lcom/winlator/cmod/renderer/material/ShaderMaterial;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/effects/Effect;->material:Lcom/winlator/cmod/renderer/material/ShaderMaterial;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/effects/Effect;->material:Lcom/winlator/cmod/renderer/material/ShaderMaterial;

    return-object v0
.end method
