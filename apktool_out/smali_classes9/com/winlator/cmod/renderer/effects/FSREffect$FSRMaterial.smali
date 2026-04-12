.class Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;
.super Lcom/winlator/cmod/renderer/material/ScreenMaterial;
.source "FSREffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/renderer/effects/FSREffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FSRMaterial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/renderer/effects/FSREffect;


# direct methods
.method private constructor <init>(Lcom/winlator/cmod/renderer/effects/FSREffect;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/FSREffect;

    invoke-direct {p0}, Lcom/winlator/cmod/renderer/material/ScreenMaterial;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/renderer/effects/FSREffect;Lcom/winlator/cmod/renderer/effects/FSREffect-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;-><init>(Lcom/winlator/cmod/renderer/effects/FSREffect;)V

    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 8

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "sharpness":F
    iget-object v1, p0, Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/FSREffect;

    invoke-static {v1}, Lcom/winlator/cmod/renderer/effects/FSREffect;->-$$Nest$fgetsharpnessLevel(Lcom/winlator/cmod/renderer/effects/FSREffect;)F

    move-result v1

    const v2, 0x3f8ccccd    # 1.1f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 42
    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/FSREffect;

    invoke-static {v1}, Lcom/winlator/cmod/renderer/effects/FSREffect;->-$$Nest$fgetsharpnessLevel(Lcom/winlator/cmod/renderer/effects/FSREffect;)F

    move-result v1

    const v2, 0x40066666    # 2.1f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 45
    const v0, 0x3f333333    # 0.7f

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/FSREffect;

    invoke-static {v1}, Lcom/winlator/cmod/renderer/effects/FSREffect;->-$$Nest$fgetsharpnessLevel(Lcom/winlator/cmod/renderer/effects/FSREffect;)F

    move-result v1

    const v2, 0x40466666    # 3.1f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 48
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/FSREffect;

    invoke-static {v1}, Lcom/winlator/cmod/renderer/effects/FSREffect;->-$$Nest$fgetsharpnessLevel(Lcom/winlator/cmod/renderer/effects/FSREffect;)F

    move-result v1

    const v2, 0x40833333    # 4.1f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 51
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    .line 55
    :cond_3
    const v0, 0x3df5c28f    # 0.12f

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/renderer/effects/FSREffect$FSRMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/FSREffect;

    invoke-static {v1}, Lcom/winlator/cmod/renderer/effects/FSREffect;->-$$Nest$fgetcurrentMode(Lcom/winlator/cmod/renderer/effects/FSREffect;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    .line 60
    .local v1, "useDLS":Z
    if-eqz v1, :cond_5

    const v2, 0x3f933333    # 1.15f

    goto :goto_2

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 62
    .local v2, "saturation":F
    :goto_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.4f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "sSharpness":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "sSat":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v5, "shader":Ljava/lang/StringBuilder;
    const-string v6, "precision mediump float;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v6, "uniform sampler2D screenTexture;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v6, "uniform vec2 resolution;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v6, "const float SHARPNESS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    if-eqz v1, :cond_6

    .line 73
    const-string v6, "const float SAT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_6
    const-string v6, "void main() {\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v6, "    vec2 uv = gl_FragCoord.xy / resolution;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v6, "    vec2 px = 1.0 / resolution;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v6, "    vec3 a = texture2D(screenTexture, uv + vec2(-px.x, -px.y)).rgb;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v6, "    vec3 b = texture2D(screenTexture, uv + vec2( 0.0,  -px.y)).rgb;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v6, "    vec3 c = texture2D(screenTexture, uv + vec2( px.x, -px.y)).rgb;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v6, "    vec3 d = texture2D(screenTexture, uv + vec2(-px.x,  0.0)).rgb;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v6, "    vec3 e = texture2D(screenTexture, uv).rgb;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v6, "    vec3 f = texture2D(screenTexture, uv + vec2( px.x,  0.0)).rgb;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v6, "    vec3 g = texture2D(screenTexture, uv + vec2(-px.x,  px.y)).rgb;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v6, "    vec3 h = texture2D(screenTexture, uv + vec2( 0.0,   px.y)).rgb;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v6, "    vec3 i = texture2D(screenTexture, uv + vec2( px.x,  px.y)).rgb;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v6, "    vec3 mnRGB  = min(min(min(d,e),min(f,b)),h);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, "    vec3 mnRGB2 = min(min(min(mnRGB,a),min(g,c)),i);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v6, "    mnRGB += mnRGB2;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v6, "    vec3 mxRGB  = max(max(max(d,e),max(f,b)),h);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v6, "    vec3 mxRGB2 = max(max(max(mxRGB,a),max(g,c)),i);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v6, "    mxRGB += mxRGB2;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v6, "    vec3 rcpMxRGB = vec3(1.0) / mxRGB;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v6, "    vec3 ampRGB = clamp((min(mnRGB, 2.0 - mxRGB) * rcpMxRGB), 0.0, 1.0);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v6, "    ampRGB = inversesqrt(ampRGB);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v6, "    float peak = 8.0 - 3.0 * SHARPNESS;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v6, "    vec3 wRGB = -vec3(1.0) / (ampRGB * peak);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v6, "    vec3 rcpWeightRGB = vec3(1.0) / (1.0 + 4.0 * wRGB);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v6, "    vec3 window = (b + d) + (f + h);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v6, "    vec3 outColor = clamp((window * wRGB + e) * rcpWeightRGB, 0.0, 1.0);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    if-eqz v1, :cond_7

    .line 113
    const-string v6, "    float luma = dot(outColor, vec3(0.299, 0.587, 0.114));\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v6, "    outColor = mix(vec3(luma), outColor, SAT);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_7
    const-string v6, "    gl_FragColor = vec4(clamp(outColor, 0.0, 1.0), 1.0);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
