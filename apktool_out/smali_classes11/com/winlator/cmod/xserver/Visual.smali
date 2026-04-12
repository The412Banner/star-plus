.class public Lcom/winlator/cmod/xserver/Visual;
.super Ljava/lang/Object;
.source "Visual.java"


# instance fields
.field public final bitsPerRGBValue:B

.field public final blueMask:I

.field public final colormapEntries:S

.field public final depth:B

.field public final displayable:Z

.field public final greenMask:I

.field public final id:I

.field public final redMask:I

.field public final visualClass:B


# direct methods
.method public constructor <init>(IZIIIII)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "displayable"    # Z
    .param p3, "depth"    # I
    .param p4, "bitsPerRGBValue"    # I
    .param p5, "redMask"    # I
    .param p6, "greenMask"    # I
    .param p7, "blueMask"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/winlator/cmod/xserver/Visual;->visualClass:B

    .line 9
    const/16 v0, 0x100

    iput-short v0, p0, Lcom/winlator/cmod/xserver/Visual;->colormapEntries:S

    .line 15
    iput p1, p0, Lcom/winlator/cmod/xserver/Visual;->id:I

    .line 16
    iput-boolean p2, p0, Lcom/winlator/cmod/xserver/Visual;->displayable:Z

    .line 17
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/winlator/cmod/xserver/Visual;->depth:B

    .line 18
    int-to-byte v0, p4

    iput-byte v0, p0, Lcom/winlator/cmod/xserver/Visual;->bitsPerRGBValue:B

    .line 19
    iput p5, p0, Lcom/winlator/cmod/xserver/Visual;->redMask:I

    .line 20
    iput p6, p0, Lcom/winlator/cmod/xserver/Visual;->greenMask:I

    .line 21
    iput p7, p0, Lcom/winlator/cmod/xserver/Visual;->blueMask:I

    .line 22
    return-void
.end method
