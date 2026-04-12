.class public Lcom/winlator/cmod/renderer/material/ShaderMaterial;
.super Ljava/lang/Object;
.source "ShaderMaterial.java"


# instance fields
.field public programId:I

.field private final uniforms:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->uniforms:Landroidx/collection/ArrayMap;

    return-void
.end method

.method protected static compileShaders(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "vertexShader"    # Ljava/lang/String;
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .line 19
    const-string v0, "void main() {"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 20
    .local v0, "beginIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vec2 applyXForm(vec2 p, float xform[6]) {\nreturn vec2(xform[0] * p.x + xform[2] * p.y + xform[4], xform[1] * p.x + xform[3] * p.y + xform[5]);\n}\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 27
    .local v1, "programId":I
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 29
    .local v3, "compiled":[I
    const v4, 0x8b31

    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v4

    .line 30
    .local v4, "vertexShaderId":I
    invoke-static {v4, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 31
    invoke-static {v4}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 33
    const v5, 0x8b81

    invoke-static {v4, v5, v3, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 34
    aget v6, v3, v2

    if-eqz v6, :cond_1

    .line 37
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 39
    const v6, 0x8b30

    invoke-static {v6}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v6

    .line 40
    .local v6, "fragmentShaderId":I
    invoke-static {v6, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 41
    invoke-static {v6}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 43
    invoke-static {v6, v5, v3, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 44
    aget v2, v3, v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 49
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 51
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 52
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 53
    return v1

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not compile fragment shader: \n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    .end local v6    # "fragmentShaderId":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not compile vertex shader: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 91
    iget v0, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->programId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->programId:I

    .line 93
    return-void
.end method

.method protected getFragmentShader()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, ""

    return-object v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->uniforms:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 79
    .local v0, "location":Ljava/lang/Integer;
    const-string v1, "Uniform "

    const-string v2, "ShaderMaterial"

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not registered in setUniformNames()."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v3

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " location not found in shader program."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected getVertexShader()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public setUniformColor(Ljava/lang/String;I)V
    .locals 5
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 127
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 129
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 130
    .local v1, "red":F
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 131
    .local v3, "green":F
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 132
    .local v4, "blue":F
    invoke-static {v0, v1, v3, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 134
    .end local v1    # "red":F
    .end local v3    # "green":F
    .end local v4    # "blue":F
    :cond_0
    return-void
.end method

.method public setUniformFloat(Ljava/lang/String;F)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 110
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 112
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uniform location for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenMaterial"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void
.end method

.method public setUniformFloatArray(Ljava/lang/String;[F)V
    .locals 3
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .line 120
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 122
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 124
    :cond_0
    return-void
.end method

.method public setUniformInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 103
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 105
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 107
    :cond_0
    return-void
.end method

.method public varargs setUniformNames([Ljava/lang/String;)V
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->uniforms:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 15
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->uniforms:Landroidx/collection/ArrayMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public setUniformVec2(Ljava/lang/String;FF)V
    .locals 2
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 96
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 98
    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 100
    :cond_0
    return-void
.end method

.method public setUniformVec3(Ljava/lang/String;FFF)V
    .locals 3
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 137
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 139
    invoke-static {v0, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto :goto_0

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uniform location for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShaderMaterial"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void
.end method

.method public use()V
    .locals 5

    .line 65
    iget v0, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->programId:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->compileShaders(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->programId:I

    .line 66
    :cond_0
    iget v0, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->programId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->uniforms:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->uniforms:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 70
    .local v1, "location":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->uniforms:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->uniforms:Landroidx/collection/ArrayMap;

    iget v4, p0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->programId:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v1    # "location":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
