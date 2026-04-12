.class Lcom/winlator/cmod/renderer/effects/FXAAEffect$FXAAMaterial;
.super Lcom/winlator/cmod/renderer/material/ScreenMaterial;
.source "FXAAEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/renderer/effects/FXAAEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FXAAMaterial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/renderer/effects/FXAAEffect;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/renderer/effects/FXAAEffect;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/winlator/cmod/renderer/effects/FXAAEffect$FXAAMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/FXAAEffect;

    .line 23
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/material/ScreenMaterial;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 3

    .line 30
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "precision highp float;"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#define FXAA_MIN_REDUCE (1.0 / 128.0)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#define FXAA_MUL_REDUCE (1.0 / 8.0)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#define MAX_SPAN 8.0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "uniform sampler2D screenTexture;"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "uniform vec2 resolution;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "const vec3 luma = vec3(0.299, 0.587, 0.114);"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "void main() {"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "    vec2 invResolution = 1.0 / resolution;"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "    vec3 rgbNW = texture2D(screenTexture, (gl_FragCoord.xy + vec2(-1.0, -1.0)) * invResolution).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "    vec3 rgbNE = texture2D(screenTexture, (gl_FragCoord.xy + vec2( 1.0, -1.0)) * invResolution).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "    vec3 rgbSW = texture2D(screenTexture, (gl_FragCoord.xy + vec2(-1.0,  1.0)) * invResolution).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "    vec3 rgbSE = texture2D(screenTexture, (gl_FragCoord.xy + vec2( 1.0,  1.0)) * invResolution).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "    vec3 rgbM  = texture2D(screenTexture,  gl_FragCoord.xy * invResolution).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "    float lumaNW = dot(rgbNW, luma);"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "    float lumaNE = dot(rgbNE, luma);"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "    float lumaSW = dot(rgbSW, luma);"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "    float lumaSE = dot(rgbSE, luma);"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "    float lumaM  = dot(rgbM,  luma);"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "    float lumaMin = min(lumaM, min(min(lumaNW, lumaNE), min(lumaSW, lumaSE)));"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "    float lumaMax = max(lumaM, max(max(lumaNW, lumaNE), max(lumaSW, lumaSE)));"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "    vec2 dir;"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "    dir.x = -((lumaNW + lumaNE) - (lumaSW + lumaSE));"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "    dir.y =  ((lumaNW + lumaSW) - (lumaNE + lumaSE));"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "    float dirReduce = max((lumaNW + lumaNE + lumaSW + lumaSE) * 0.25 * FXAA_MUL_REDUCE, FXAA_MIN_REDUCE);"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "    float minDirFactor = 1.0 / (min(abs(dir.x), abs(dir.y)) + dirReduce);"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "    dir = clamp(dir * minDirFactor, vec2(-MAX_SPAN), vec2(MAX_SPAN)) * invResolution;"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "    vec4 rgbA = 0.5 * ("

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "        texture2D(screenTexture, gl_FragCoord.xy * invResolution + dir * (1.0 / 3.0 - 0.5)) +"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "        texture2D(screenTexture, gl_FragCoord.xy * invResolution + dir * (2.0 / 3.0 - 0.5)));"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "    vec4 rgbB = rgbA * 0.5 + 0.25 * ("

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "        texture2D(screenTexture, gl_FragCoord.xy * invResolution + dir * -0.5) +"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "        texture2D(screenTexture, gl_FragCoord.xy * invResolution + dir *  0.5));"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "    float lumaB = dot(rgbB, vec4(luma, 0.0));"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "    gl_FragColor = lumaB < lumaMin || lumaB > lumaMax ? rgbA : rgbB;"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "}"

    aput-object v2, v0, v1

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
