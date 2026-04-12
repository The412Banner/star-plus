.class public Lcom/winlator/cmod/xserver/Cursor;
.super Lcom/winlator/cmod/xserver/XResource;
.source "Cursor.java"


# instance fields
.field public final cursorImage:Lcom/winlator/cmod/xserver/Drawable;

.field public final hotSpotX:I

.field public final hotSpotY:I

.field public final maskImage:Lcom/winlator/cmod/xserver/Drawable;

.field public final sourceImage:Lcom/winlator/cmod/xserver/Drawable;

.field private visible:Z


# direct methods
.method public constructor <init>(IIILcom/winlator/cmod/xserver/Drawable;Lcom/winlator/cmod/xserver/Drawable;Lcom/winlator/cmod/xserver/Drawable;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "hotSpotX"    # I
    .param p3, "hotSpotY"    # I
    .param p4, "cursorImage"    # Lcom/winlator/cmod/xserver/Drawable;
    .param p5, "sourceImage"    # Lcom/winlator/cmod/xserver/Drawable;
    .param p6, "maskImage"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 12
    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/XResource;-><init>(I)V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/xserver/Cursor;->visible:Z

    .line 13
    iput p2, p0, Lcom/winlator/cmod/xserver/Cursor;->hotSpotX:I

    .line 14
    iput p3, p0, Lcom/winlator/cmod/xserver/Cursor;->hotSpotY:I

    .line 15
    iput-object p4, p0, Lcom/winlator/cmod/xserver/Cursor;->cursorImage:Lcom/winlator/cmod/xserver/Drawable;

    .line 16
    iput-object p5, p0, Lcom/winlator/cmod/xserver/Cursor;->sourceImage:Lcom/winlator/cmod/xserver/Drawable;

    .line 17
    iput-object p6, p0, Lcom/winlator/cmod/xserver/Cursor;->maskImage:Lcom/winlator/cmod/xserver/Drawable;

    .line 18
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/Cursor;->visible:Z

    return v0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/winlator/cmod/xserver/Cursor;->visible:Z

    .line 26
    return-void
.end method
