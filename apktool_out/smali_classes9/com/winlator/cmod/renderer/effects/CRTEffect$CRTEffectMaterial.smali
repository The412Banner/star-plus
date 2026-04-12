.class Lcom/winlator/cmod/renderer/effects/CRTEffect$CRTEffectMaterial;
.super Lcom/winlator/cmod/renderer/material/ScreenMaterial;
.source "CRTEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/renderer/effects/CRTEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CRTEffectMaterial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/renderer/effects/CRTEffect;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/renderer/effects/CRTEffect;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/winlator/cmod/renderer/effects/CRTEffect$CRTEffectMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/CRTEffect;

    .line 22
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/material/ScreenMaterial;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 3

    .line 30
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "precision highp float;"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#define CA_AMOUNT 1.0025"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#define SCANLINE_INTENSITY_X 0.125"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#define SCANLINE_INTENSITY_Y 0.375"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#define SCANLINE_SIZE 1024.0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "uniform sampler2D screenTexture;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "varying vec2 vUV;"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "void main() {"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "    vec4 finalColor = texture2D(screenTexture, vUV);"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "    finalColor.rgb = vec3("

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "        texture2D(screenTexture, (vUV - 0.5) * CA_AMOUNT + 0.5).r,"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "        finalColor.g,"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "        texture2D(screenTexture, (vUV - 0.5) / CA_AMOUNT + 0.5).b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "    );"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "    float scanlineX = abs(sin(vUV.x * SCANLINE_SIZE) * 0.5 * SCANLINE_INTENSITY_X);"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "    float scanlineY = abs(sin(vUV.y * SCANLINE_SIZE) * 0.5 * SCANLINE_INTENSITY_Y);"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "    gl_FragColor = vec4(mix(finalColor.rgb, vec3(0.0), scanlineX + scanlineY), finalColor.a);"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "}"

    aput-object v2, v0, v1

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
