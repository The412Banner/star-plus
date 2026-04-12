.class public Lcom/winlator/cmod/renderer/GPUImage;
.super Lcom/winlator/cmod/renderer/Texture;
.source "GPUImage.java"


# static fields
.field private static supported:Z


# instance fields
.field private hardwareBufferPtr:J

.field private imageKHRPtr:J

.field private stride:S

.field private virtualData:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/winlator/cmod/renderer/GPUImage;->supported:Z

    .line 15
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "socketFd"    # I

    .line 32
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/Texture;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferFromSocket(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    .line 34
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 35
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/renderer/GPUImage;->lockHardwareBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    .line 36
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Failed to lock hardware buffer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/renderer/GPUImage;->destroyHardwareBuffer(J)V

    .line 39
    iput-wide v2, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Failed to create hardware buffer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 4
    .param p1, "width"    # S
    .param p2, "height"    # S

    .line 18
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/Texture;-><init>()V

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/renderer/GPUImage;->createHardwareBuffer(SS)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    .line 20
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 21
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/renderer/GPUImage;->lockHardwareBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    .line 22
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 23
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Failed to lock hardware buffer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/renderer/GPUImage;->destroyHardwareBuffer(J)V

    .line 25
    iput-wide v2, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Failed to create hardware buffer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public static checkIsSupported()V
    .locals 6

    .line 98
    const/16 v0, 0x8

    .line 99
    .local v0, "size":S
    new-instance v1, Lcom/winlator/cmod/renderer/GPUImage;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v2}, Lcom/winlator/cmod/renderer/GPUImage;-><init>(SS)V

    .line 100
    .local v1, "gpuImage":Lcom/winlator/cmod/renderer/GPUImage;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v2, v3}, Lcom/winlator/cmod/renderer/GPUImage;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    .line 101
    iget-wide v2, v1, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, v1, Lcom/winlator/cmod/renderer/GPUImage;->imageKHRPtr:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/winlator/cmod/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/winlator/cmod/renderer/GPUImage;->supported:Z

    .line 102
    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/GPUImage;->destroy()V

    .line 103
    return-void
.end method

.method private native createHardwareBuffer(SS)J
.end method

.method private native createImageKHR(JI)J
.end method

.method private native destroyHardwareBuffer(J)V
.end method

.method private native destroyImageKHR(J)V
.end method

.method private native hardwareBufferFromSocket(I)J
.end method

.method public static isSupported()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/winlator/cmod/renderer/GPUImage;->supported:Z

    return v0
.end method

.method private native lockHardwareBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method private setStride(S)V
    .locals 0
    .param p1, "stride"    # S

    .line 72
    iput-short p1, p0, Lcom/winlator/cmod/renderer/GPUImage;->stride:S

    .line 73
    return-void
.end method


# virtual methods
.method public allocateTexture(SSLjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "width"    # S
    .param p2, "height"    # S
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/GPUImage;->isAllocated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/winlator/cmod/renderer/Texture;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    .line 50
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 51
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    iget v4, p0, Lcom/winlator/cmod/renderer/GPUImage;->textureId:I

    invoke-direct {p0, v0, v1, v4}, Lcom/winlator/cmod/renderer/GPUImage;->createImageKHR(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->imageKHRPtr:J

    .line 52
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->imageKHRPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Failed to create EGL image"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/renderer/GPUImage;->destroyHardwareBuffer(J)V

    .line 55
    iput-wide v2, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    .line 58
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 81
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->imageKHRPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->imageKHRPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/renderer/GPUImage;->destroyImageKHR(J)V

    .line 83
    iput-wide v2, p0, Lcom/winlator/cmod/renderer/GPUImage;->imageKHRPtr:J

    .line 85
    :cond_0
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 86
    iget-wide v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/renderer/GPUImage;->destroyHardwareBuffer(J)V

    .line 87
    iput-wide v2, p0, Lcom/winlator/cmod/renderer/GPUImage;->hardwareBufferPtr:J

    .line 89
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    .line 90
    invoke-super {p0}, Lcom/winlator/cmod/renderer/Texture;->destroy()V

    .line 91
    return-void
.end method

.method public getStride()S
    .locals 1

    .line 67
    iget-short v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->stride:S

    return v0
.end method

.method public getVirtualData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->virtualData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public updateFromDrawable(Lcom/winlator/cmod/xserver/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 62
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/GPUImage;->isAllocated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-short v0, p1, Lcom/winlator/cmod/xserver/Drawable;->width:S

    iget-short v1, p1, Lcom/winlator/cmod/xserver/Drawable;->height:S

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/winlator/cmod/renderer/GPUImage;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/GPUImage;->needsUpdate:Z

    .line 64
    return-void
.end method
