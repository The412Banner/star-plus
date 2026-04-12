.class public Lcom/winlator/cmod/xserver/PixmapFormat;
.super Ljava/lang/Object;
.source "PixmapFormat.java"


# instance fields
.field public final bitsPerPixel:B

.field public final depth:B

.field public final scanlinePad:B


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "depth"    # I
    .param p2, "bitsPerPixel"    # I
    .param p3, "scanlinePad"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/winlator/cmod/xserver/PixmapFormat;->depth:B

    .line 10
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/winlator/cmod/xserver/PixmapFormat;->bitsPerPixel:B

    .line 11
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/winlator/cmod/xserver/PixmapFormat;->scanlinePad:B

    .line 12
    return-void
.end method
