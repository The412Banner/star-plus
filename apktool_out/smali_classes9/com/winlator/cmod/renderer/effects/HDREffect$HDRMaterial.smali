.class Lcom/winlator/cmod/renderer/effects/HDREffect$HDRMaterial;
.super Lcom/winlator/cmod/renderer/material/ScreenMaterial;
.source "HDREffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/renderer/effects/HDREffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HDRMaterial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/renderer/effects/HDREffect;


# direct methods
.method private constructor <init>(Lcom/winlator/cmod/renderer/effects/HDREffect;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/winlator/cmod/renderer/effects/HDREffect$HDRMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/HDREffect;

    invoke-direct {p0}, Lcom/winlator/cmod/renderer/material/ScreenMaterial;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/renderer/effects/HDREffect;Lcom/winlator/cmod/renderer/effects/HDREffect-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/renderer/effects/HDREffect$HDRMaterial;-><init>(Lcom/winlator/cmod/renderer/effects/HDREffect;)V

    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 7

    .line 25
    const-string v0, "1.30"

    .line 26
    .local v0, "sPower":Ljava/lang/String;
    const-string v1, "0.793"

    .line 27
    .local v1, "radius1":Ljava/lang/String;
    const-string v2, "0.870"

    .line 29
    .local v2, "radius2":Ljava/lang/String;
    const/16 v3, 0x29

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const-string v5, "precision mediump float;"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "uniform sampler2D screenTexture;"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "uniform vec2 resolution;"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "const float HDRPower = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "const float radius1 = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "const float radius2 = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const/4 v4, 0x6

    const-string v5, "void main() {"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "    vec2 texcoord = gl_FragCoord.xy / resolution;"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "    vec2 px = 1.0 / resolution;"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "    vec3 color = texture2D(screenTexture, texcoord).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "    // --- BLOOM PASS 1 (Radius 1) ---"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "    vec3 bloom_sum1 = texture2D(screenTexture, texcoord + vec2(1.5, -1.5) * radius1 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "    bloom_sum1 += texture2D(screenTexture, texcoord + vec2(-1.5, -1.5) * radius1 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "    bloom_sum1 += texture2D(screenTexture, texcoord + vec2( 1.5,  1.5) * radius1 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "    bloom_sum1 += texture2D(screenTexture, texcoord + vec2(-1.5,  1.5) * radius1 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "    bloom_sum1 += texture2D(screenTexture, texcoord + vec2( 0.0, -2.5) * radius1 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "    bloom_sum1 += texture2D(screenTexture, texcoord + vec2( 0.0,  2.5) * radius1 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "    bloom_sum1 += texture2D(screenTexture, texcoord + vec2(-2.5,  0.0) * radius1 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "    bloom_sum1 += texture2D(screenTexture, texcoord + vec2( 2.5,  0.0) * radius1 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "    bloom_sum1 *= 0.005;"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "    // --- BLOOM PASS 2 (Radius 2) ---"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "    vec3 bloom_sum2 = texture2D(screenTexture, texcoord + vec2(1.5, -1.5) * radius2 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "    bloom_sum2 += texture2D(screenTexture, texcoord + vec2(-1.5, -1.5) * radius2 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "    bloom_sum2 += texture2D(screenTexture, texcoord + vec2( 1.5,  1.5) * radius2 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "    bloom_sum2 += texture2D(screenTexture, texcoord + vec2(-1.5,  1.5) * radius2 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "    bloom_sum2 += texture2D(screenTexture, texcoord + vec2( 0.0, -2.5) * radius2 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "    bloom_sum2 += texture2D(screenTexture, texcoord + vec2( 0.0,  2.5) * radius2 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "    bloom_sum2 += texture2D(screenTexture, texcoord + vec2(-2.5,  0.0) * radius2 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "    bloom_sum2 += texture2D(screenTexture, texcoord + vec2( 2.5,  0.0) * radius2 * px).rgb;"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "    bloom_sum2 *= 0.010;"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "    // --- FAKE HDR CALCULATION ---"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, "    float dist = radius2 - radius1;"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-string v5, "    vec3 HDR = (color + (bloom_sum2 - bloom_sum1)) * dist;"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, "    vec3 blend = HDR + color;"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, "    "

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-string v6, "    // Pow() aplica o contraste forte caracter\u00edstico desse shader"

    aput-object v6, v3, v4

    const/16 v4, 0x24

    const-string v6, "    // Abs() protege contra valores negativos que causam glitch visual"

    aput-object v6, v3, v4

    const/16 v4, 0x25

    const-string v6, "    color = pow(abs(blend), vec3(abs(HDRPower))) + HDR;"

    aput-object v6, v3, v4

    const/16 v4, 0x26

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-string v5, "    gl_FragColor = vec4(clamp(color, 0.0, 1.0), 1.0);"

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-string v5, "}"

    aput-object v5, v3, v4

    const-string v4, "\n"

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
