.class public Lcom/winlator/cmod/xserver/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/Pointer$Button;,
        Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;
    }
.end annotation


# static fields
.field public static final MAX_BUTTONS:B = 0x7t


# instance fields
.field private final buttonMask:Lcom/winlator/cmod/xserver/Bitmask;

.field private final onPointerMotionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;",
            ">;"
        }
    .end annotation
.end field

.field private x:S

.field private final xServer:Lcom/winlator/cmod/xserver/XServer;

.field private y:S


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-direct {v0}, Lcom/winlator/cmod/xserver/Bitmask;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Pointer;->buttonMask:Lcom/winlator/cmod/xserver/Bitmask;

    .line 33
    iput-object p1, p0, Lcom/winlator/cmod/xserver/Pointer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 34
    return-void
.end method

.method private triggerOnPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V
    .locals 2
    .param p1, "button"    # Lcom/winlator/cmod/xserver/Pointer$Button;

    .line 94
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1}, Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;->onPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 94
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private triggerOnPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V
    .locals 2
    .param p1, "button"    # Lcom/winlator/cmod/xserver/Pointer$Button;

    .line 100
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1}, Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;->onPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 100
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private triggerOnPointerMove(SS)V
    .locals 2
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 106
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1, p2}, Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;->onPointerMove(SS)V

    .line 106
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnPointerMotionListener(Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;)V
    .locals 1
    .param p1, "onPointerMotionListener"    # Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;

    .line 86
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public getButtonMask()Lcom/winlator/cmod/xserver/Bitmask;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Pointer;->buttonMask:Lcom/winlator/cmod/xserver/Bitmask;

    return-object v0
.end method

.method public getClampedX()S
    .locals 3

    .line 53
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Pointer;->x:S

    iget-object v1, p0, Lcom/winlator/cmod/xserver/Pointer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getClampedY()S
    .locals 3

    .line 57
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Pointer;->y:S

    iget-object v1, p0, Lcom/winlator/cmod/xserver/Pointer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getX()S
    .locals 1

    .line 45
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Pointer;->x:S

    return v0
.end method

.method public getY()S
    .locals 1

    .line 49
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Pointer;->y:S

    return v0
.end method

.method public isButtonPressed(Lcom/winlator/cmod/xserver/Pointer$Button;)Z
    .locals 2
    .param p1, "button"    # Lcom/winlator/cmod/xserver/Pointer$Button;

    .line 82
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Pointer;->buttonMask:Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Pointer$Button;->flag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public removeOnPointerMotionListener(Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;)V
    .locals 1
    .param p1, "onPointerMotionListener"    # Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;

    .line 90
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public setButton(Lcom/winlator/cmod/xserver/Pointer$Button;Z)V
    .locals 3
    .param p1, "button"    # Lcom/winlator/cmod/xserver/Pointer$Button;
    .param p2, "pressed"    # Z

    .line 71
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/Pointer;->isButtonPressed(Lcom/winlator/cmod/xserver/Pointer$Button;)Z

    move-result v0

    .line 72
    .local v0, "oldPressed":Z
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Pointer;->buttonMask:Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/winlator/cmod/xserver/Bitmask;->set(IZ)V

    .line 73
    if-eq v0, p2, :cond_1

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/Pointer;->triggerOnPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/Pointer;->triggerOnPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 61
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/Pointer;->setX(I)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/winlator/cmod/xserver/Pointer;->setY(I)V

    .line 63
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Pointer;->x:S

    iget-short v1, p0, Lcom/winlator/cmod/xserver/Pointer;->y:S

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xserver/Pointer;->triggerOnPointerMove(SS)V

    .line 64
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "x"    # I

    .line 37
    int-to-short v0, p1

    iput-short v0, p0, Lcom/winlator/cmod/xserver/Pointer;->x:S

    .line 38
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "y"    # I

    .line 41
    int-to-short v0, p1

    iput-short v0, p0, Lcom/winlator/cmod/xserver/Pointer;->y:S

    .line 42
    return-void
.end method
