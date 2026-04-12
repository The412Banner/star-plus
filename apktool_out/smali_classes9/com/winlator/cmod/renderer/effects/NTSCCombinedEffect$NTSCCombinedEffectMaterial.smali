.class Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect$NTSCCombinedEffectMaterial;
.super Lcom/winlator/cmod/renderer/material/ScreenMaterial;
.source "NTSCCombinedEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NTSCCombinedEffectMaterial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V
    .locals 2

    .line 21
    iput-object p1, p0, Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect$NTSCCombinedEffectMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;

    .line 22
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/material/ScreenMaterial;-><init>()V

    .line 24
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "screenTexture"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "FrameCount"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "TextureSize"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "resolution"

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect$NTSCCombinedEffectMaterial;->setUniformNames([Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 5

    .line 32
    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "precision highp float;"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#define PI 3.14159265"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#define SCANLINE_INTENSITY 0.35"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#define CHROMA_OFFSET 0.005"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#define BLUR_RADIUS 0.002"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#define WARP_AMOUNT 0.01"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#define SCANLINE_DARKEN 0.5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "uniform sampler2D screenTexture;"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "uniform int FrameCount;"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "uniform vec2 TextureSize;"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "uniform vec2 resolution;"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "varying vec2 vUV;"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "const mat3 yiq_mat = mat3("

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "   0.299, 0.587, 0.114,"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "   0.596, -0.275, -0.321,"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "   0.212, -0.523, 0.311"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ");"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v3, "const mat3 yiq2rgb_mat = mat3("

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "   1.0, 0.956, 0.621,"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-string v3, "   1.0, -0.272, -0.647,"

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v3, "   1.0, -1.106, 1.705"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "vec3 applyNTSC(vec2 uv) {"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "   vec3 col = texture2D(screenTexture, uv).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v3, "   vec3 yiq = col * yiq_mat;"

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v3, "   float chromaPhase = PI * (mod(uv.y * TextureSize.y, 2.0) + float(FrameCount));"

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-string v3, "   yiq.y *= cos(chromaPhase * 0.5);"

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    const-string v3, "   yiq.z *= sin(chromaPhase * 0.5);"

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    const-string v3, "   vec3 rgb = yiq * yiq2rgb_mat;"

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string v3, "   vec3 finalColor;"

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    const-string v3, "   finalColor.r = texture2D(screenTexture, uv + vec2(CHROMA_OFFSET, 0.0)).r;"

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const-string v3, "   finalColor.g = texture2D(screenTexture, uv + vec2(0.0, BLUR_RADIUS)).g;"

    aput-object v3, v0, v1

    const/16 v1, 0x20

    const-string v3, "   finalColor.b = texture2D(screenTexture, uv - vec2(CHROMA_OFFSET, 0.0)).b;"

    aput-object v3, v0, v1

    const/16 v1, 0x21

    const-string v3, "   return finalColor;"

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v3, "}"

    aput-object v3, v0, v1

    const/16 v1, 0x23

    const-string v4, "vec3 applyScanlines(vec2 uv) {"

    aput-object v4, v0, v1

    const/16 v1, 0x24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "   float scanline = abs(sin(uv.y * resolution.y * 2.0)) * SCANLINE_INTENSITY;"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "   col *= 1.0 - (scanline * SCANLINE_DARKEN);"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "   return col;"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    const-string v2, "vec2 applyWarp(vec2 uv) {"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "   uv = uv * 2.0 - 1.0;"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "   float r = sqrt(uv.x * uv.x + uv.y * uv.y);"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "   uv += uv * (r * r) * WARP_AMOUNT;"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "   return uv * 0.5 + 0.5;"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    const-string v2, "void main() {"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "   vec2 warpedUV = applyWarp(vUV);"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "   vec3 ntscColor = applyNTSC(warpedUV);"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "   vec3 scanlineColor = applyScanlines(warpedUV);"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "   vec3 finalColor = mix(ntscColor, scanlineColor, 0.7);"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "   gl_FragColor = vec4(finalColor, 1.0);"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
