.class public Lcom/winlator/cmod/inputcontrols/GamepadState;
.super Ljava/lang/Object;
.source "GamepadState.java"


# instance fields
.field public buttons:S

.field public final dpad:[Z

.field public thumbLX:F

.field public thumbLY:F

.field public thumbRX:F

.field public thumbRY:F

.field public triggerL:F

.field public triggerR:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    .line 7
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    .line 8
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    .line 9
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    .line 10
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    .line 11
    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    .line 13
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->buttons:S

    return-void
.end method


# virtual methods
.method public copy(Lcom/winlator/cmod/inputcontrols/GamepadState;)V
    .locals 4
    .param p1, "other"    # Lcom/winlator/cmod/inputcontrols/GamepadState;

    .line 60
    iget v0, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    .line 61
    iget v0, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    .line 62
    iget v0, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    .line 63
    iget v0, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    .line 64
    iget v0, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    .line 65
    iget v0, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    .line 66
    iget-short v0, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->buttons:S

    iput-short v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->buttons:S

    .line 67
    iget-object v0, p1, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    return-void
.end method

.method public getDPadX()B
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-byte v0, v1

    return v0
.end method

.method public getDPadY()B
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    int-to-byte v0, v1

    return v0
.end method

.method public getPovHat()B
    .locals 6

    .line 16
    const/4 v0, -0x1

    .line 17
    .local v0, "povHat":B
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v3

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v4

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    .line 21
    :cond_3
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    .line 23
    :cond_5
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    .line 24
    :cond_6
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    .line 25
    :cond_7
    :goto_0
    return v0
.end method

.method public isPressed(I)Z
    .locals 3
    .param p1, "buttonIdx"    # I

    .line 48
    iget-short v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->buttons:S

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setPressed(IZ)V
    .locals 3
    .param p1, "buttonIdx"    # I
    .param p2, "pressed"    # Z

    .line 40
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 41
    .local v0, "flag":I
    if-eqz p2, :cond_0

    .line 42
    iget-short v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->buttons:S

    or-int/2addr v1, v0

    int-to-short v1, v1

    iput-short v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->buttons:S

    goto :goto_0

    .line 44
    :cond_0
    iget-short v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->buttons:S

    not-int v2, v0

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->buttons:S

    .line 45
    :goto_0
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 29
    iget-short v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->buttons:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/GamepadState;->getPovHat()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    const v1, 0x46fffe00    # 32767.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 32
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 33
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 34
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 35
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 36
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method
