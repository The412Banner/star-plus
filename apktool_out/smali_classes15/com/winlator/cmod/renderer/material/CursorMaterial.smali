.class public Lcom/winlator/cmod/renderer/material/CursorMaterial;
.super Lcom/winlator/cmod/renderer/material/ShaderMaterial;
.source "CursorMaterial.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;-><init>()V

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "xform"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "viewSize"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "texture"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/renderer/material/CursorMaterial;->setUniformNames([Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "precision mediump float;\nuniform sampler2D texture;\nvarying vec2 vUV;\nvoid main() {\ngl_FragColor = texture2D(texture, vUV);\n}"

    return-object v0
.end method

.method protected getVertexShader()Ljava/lang/String;
    .locals 1

    .line 10
    const-string v0, "uniform float xform[6];\nuniform vec2 viewSize;\nattribute vec2 position;\nvarying vec2 vUV;\nvoid main() {\nvUV = position;\nvec2 transformedPos = applyXForm(position, xform);\ngl_Position = vec4(2.0 * transformedPos.x / viewSize.x - 1.0, 1.0 - 2.0 * transformedPos.y / viewSize.y, 0.0, 1.0);\n}"

    return-object v0
.end method
