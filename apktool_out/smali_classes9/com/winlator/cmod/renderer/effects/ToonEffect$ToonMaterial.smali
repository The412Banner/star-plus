.class Lcom/winlator/cmod/renderer/effects/ToonEffect$ToonMaterial;
.super Lcom/winlator/cmod/renderer/material/ScreenMaterial;
.source "ToonEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/renderer/effects/ToonEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToonMaterial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/renderer/effects/ToonEffect;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/renderer/effects/ToonEffect;)V
    .locals 2

    .line 22
    iput-object p1, p0, Lcom/winlator/cmod/renderer/effects/ToonEffect$ToonMaterial;->this$0:Lcom/winlator/cmod/renderer/effects/ToonEffect;

    .line 23
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/material/ScreenMaterial;-><init>()V

    .line 25
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "screenTexture"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "resolution"

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/renderer/effects/ToonEffect$ToonMaterial;->setUniformNames([Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 3

    .line 31
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "precision highp float;"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uniform sampler2D screenTexture;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uniform vec2 resolution;"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "void main() {"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "    vec2 uv = gl_FragCoord.xy / resolution;"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "    float edgeThreshold = 0.2;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "    vec2 offset = vec2(1.0) / resolution;"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "    vec3 colorCenter = texture2D(screenTexture, uv).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "    vec3 colorLeft = texture2D(screenTexture, uv - vec2(offset.x, 0.0)).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "    vec3 colorRight = texture2D(screenTexture, uv + vec2(offset.x, 0.0)).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "    vec3 colorUp = texture2D(screenTexture, uv - vec2(0.0, offset.y)).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "    vec3 colorDown = texture2D(screenTexture, uv + vec2(0.0, offset.y)).rgb;"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "    float diffHorizontal = length(colorRight - colorLeft);"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "    float diffVertical = length(colorUp - colorDown);"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "    float edgeFactor = step(edgeThreshold, diffHorizontal + diffVertical);"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "    vec3 outlineColor = mix(colorCenter, vec3(0.0), edgeFactor);"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "    gl_FragColor = vec4(outlineColor, 1.0);"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "}"

    aput-object v2, v0, v1

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
