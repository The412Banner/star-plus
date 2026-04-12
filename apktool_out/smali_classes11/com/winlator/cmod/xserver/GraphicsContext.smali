.class public Lcom/winlator/cmod/xserver/GraphicsContext;
.super Lcom/winlator/cmod/xserver/XResource;
.source "GraphicsContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/GraphicsContext$Function;,
        Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;
    }
.end annotation


# static fields
.field public static final FLAG_ARC_MODE:I = 0x400000

.field public static final FLAG_BACKGROUND:I = 0x8

.field public static final FLAG_CAP_STYLE:I = 0x40

.field public static final FLAG_CLIP_MASK:I = 0x80000

.field public static final FLAG_CLIP_X_ORIGIN:I = 0x20000

.field public static final FLAG_CLIP_Y_ORIGIN:I = 0x40000

.field public static final FLAG_DASHES:I = 0x200000

.field public static final FLAG_DASH_OFFSET:I = 0x100000

.field public static final FLAG_FILL_RULE:I = 0x200

.field public static final FLAG_FILL_STYLE:I = 0x100

.field public static final FLAG_FONT:I = 0x4000

.field public static final FLAG_FOREGROUND:I = 0x4

.field public static final FLAG_FUNCTION:I = 0x1

.field public static final FLAG_GRAPHICS_EXPOSURES:I = 0x10000

.field public static final FLAG_JOIN_STYLE:I = 0x80

.field public static final FLAG_LINE_STYLE:I = 0x20

.field public static final FLAG_LINE_WIDTH:I = 0x10

.field public static final FLAG_PLANE_MASK:I = 0x2

.field public static final FLAG_STIPPLE:I = 0x800

.field public static final FLAG_SUBWINDOW_MODE:I = 0x8000

.field public static final FLAG_TILE:I = 0x400

.field public static final FLAG_TILE_STIPPLE_X_ORIGIN:I = 0x1000

.field public static final FLAG_TILE_STIPPLE_Y_ORIGIN:I = 0x2000


# instance fields
.field private background:I

.field public final drawable:Lcom/winlator/cmod/xserver/Drawable;

.field private foreground:I

.field private function:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field private lineWidth:I

.field private planeMask:I

.field private subwindowMode:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;


# direct methods
.method public constructor <init>(ILcom/winlator/cmod/xserver/Drawable;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 38
    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/XResource;-><init>(I)V

    .line 30
    sget-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->COPY:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    iput-object v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->function:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    .line 31
    const v0, 0xffffff

    iput v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->background:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->foreground:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->lineWidth:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->planeMask:I

    .line 35
    sget-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->CLIP_BY_CHILDREN:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    iput-object v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->subwindowMode:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    .line 39
    iput-object p2, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    .line 40
    return-void
.end method


# virtual methods
.method public getBackground()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->background:I

    return v0
.end method

.method public getForeground()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->foreground:I

    return v0
.end method

.method public getFunction()Lcom/winlator/cmod/xserver/GraphicsContext$Function;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->function:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    return-object v0
.end method

.method public getLineWidth()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->lineWidth:I

    return v0
.end method

.method public getPlaneMask()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->planeMask:I

    return v0
.end method

.method public getSubwindowMode()Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->subwindowMode:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    return-object v0
.end method

.method public setBackground(I)V
    .locals 0
    .param p1, "background"    # I

    .line 55
    iput p1, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->background:I

    .line 56
    return-void
.end method

.method public setForeground(I)V
    .locals 0
    .param p1, "foreground"    # I

    .line 47
    iput p1, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->foreground:I

    .line 48
    return-void
.end method

.method public setFunction(Lcom/winlator/cmod/xserver/GraphicsContext$Function;)V
    .locals 0
    .param p1, "function"    # Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    .line 79
    iput-object p1, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->function:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    .line 80
    return-void
.end method

.method public setLineWidth(I)V
    .locals 0
    .param p1, "lineWidth"    # I

    .line 63
    iput p1, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->lineWidth:I

    .line 64
    return-void
.end method

.method public setPlaneMask(I)V
    .locals 0
    .param p1, "planeMask"    # I

    .line 71
    iput p1, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->planeMask:I

    .line 72
    return-void
.end method

.method public setSubwindowMode(Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;)V
    .locals 0
    .param p1, "subwindowMode"    # Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    .line 87
    iput-object p1, p0, Lcom/winlator/cmod/xserver/GraphicsContext;->subwindowMode:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    .line 88
    return-void
.end method
