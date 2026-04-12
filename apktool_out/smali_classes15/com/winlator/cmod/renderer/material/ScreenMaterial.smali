.class public Lcom/winlator/cmod/renderer/material/ScreenMaterial;
.super Lcom/winlator/cmod/renderer/material/ShaderMaterial;
.source "ScreenMaterial.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;-><init>()V

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "resolution"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "screenTexture"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/renderer/material/ScreenMaterial;->setUniformNames([Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected getVertexShader()Ljava/lang/String;
    .locals 3

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "attribute vec2 position;"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "varying vec2 vUV;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "void main() {"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "    vUV = position;"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "    gl_Position = vec4(2.0 * position.x - 1.0, 2.0 * position.y - 1.0, 0.0, 1.0);"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "}"

    aput-object v2, v0, v1

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
