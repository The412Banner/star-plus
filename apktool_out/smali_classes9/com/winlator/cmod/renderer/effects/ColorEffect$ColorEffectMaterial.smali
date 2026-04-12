.class Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;
.super Lcom/winlator/cmod/renderer/material/ScreenMaterial;
.source "ColorEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/renderer/effects/ColorEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorEffectMaterial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/renderer/effects/ColorEffect;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/renderer/effects/ColorEffect;)V
    .locals 2

    .line 51
    iput-object p1, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/ColorEffect;

    .line 52
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/material/ScreenMaterial;-><init>()V

    .line 53
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "brightness"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "contrast"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "gamma"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "screenTexture"

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;->setUniformNames([Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 3

    .line 58
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "precision highp float;"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uniform sampler2D screenTexture;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uniform float brightness;"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "uniform float contrast;"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "uniform float gamma;"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "varying vec2 vUV;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "void main() {"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "    vec4 texelColor = texture2D(screenTexture, vUV);"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "    vec3 color = texelColor.rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "    color = clamp(color + brightness, 0.0, 1.0);"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "    color = (color - 0.5) * clamp(contrast + 1.0, 0.5, 2.0) + 0.5;"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "    color = pow(color, vec3(1.0 / gamma));"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "    gl_FragColor = vec4(color, texelColor.a);"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "}"

    aput-object v2, v0, v1

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use()V
    .locals 5

    .line 78
    invoke-super {p0}, Lcom/winlator/cmod/renderer/material/ScreenMaterial;->use()V

    .line 81
    iget-object v0, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/ColorEffect;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/effects/ColorEffect;->getBrightness()F

    move-result v0

    .line 82
    .local v0, "brightness":F
    iget-object v1, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/ColorEffect;

    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/effects/ColorEffect;->getContrast()F

    move-result v1

    .line 83
    .local v1, "contrast":F
    iget-object v2, p0, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/ColorEffect;

    invoke-virtual {v2}, Lcom/winlator/cmod/renderer/effects/ColorEffect;->getGamma()F

    move-result v2

    .line 86
    .local v2, "gamma":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 87
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 88
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 91
    const-string v3, "brightness"

    invoke-virtual {p0, v3, v0}, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;->setUniformFloat(Ljava/lang/String;F)V

    .line 92
    const-string v3, "contrast"

    invoke-virtual {p0, v3, v1}, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;->setUniformFloat(Ljava/lang/String;F)V

    .line 93
    const-string v3, "gamma"

    invoke-virtual {p0, v3, v2}, Lcom/winlator/cmod/renderer/effects/ColorEffect$ColorEffectMaterial;->setUniformFloat(Ljava/lang/String;F)V

    .line 94
    return-void
.end method
