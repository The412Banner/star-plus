.class public Lcom/winlator/cmod/xserver/WindowAttributes;
.super Ljava/lang/Object;
.source "WindowAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;,
        Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;,
        Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;,
        Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;
    }
.end annotation


# static fields
.field public static final FLAG_BACKGROUND_PIXEL:I = 0x2

.field public static final FLAG_BACKGROUND_PIXMAP:I = 0x1

.field public static final FLAG_BACKING_PIXEL:I = 0x100

.field public static final FLAG_BACKING_PLANES:I = 0x80

.field public static final FLAG_BACKING_STORE:I = 0x40

.field public static final FLAG_BIT_GRAVITY:I = 0x10

.field public static final FLAG_BORDER_PIXEL:I = 0x8

.field public static final FLAG_BORDER_PIXMAP:I = 0x4

.field public static final FLAG_COLORMAP:I = 0x2000

.field public static final FLAG_CURSOR:I = 0x4000

.field public static final FLAG_DO_NOT_PROPAGATE_MASK:I = 0x1000

.field public static final FLAG_EVENT_MASK:I = 0x800

.field public static final FLAG_OVERRIDE_REDIRECT:I = 0x200

.field public static final FLAG_SAVE_UNDER:I = 0x400

.field public static final FLAG_WIN_GRAVITY:I = 0x20


# instance fields
.field private backingPixel:I

.field private backingPlanes:I

.field private backingStore:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

.field private bitGravity:Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;

.field private cursor:Lcom/winlator/cmod/xserver/Cursor;

.field private doNotPropagateMask:Lcom/winlator/cmod/xserver/Bitmask;

.field private enabled:Z

.field private eventMask:Lcom/winlator/cmod/xserver/Bitmask;

.field private mapped:Z

.field private overrideRedirect:Z

.field private saveUnder:Z

.field private winGravity:Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;

.field public final window:Lcom/winlator/cmod/xserver/Window;

.field private windowClass:Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->backingPixel:I

    .line 26
    const/4 v1, 0x1

    iput v1, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->backingPlanes:I

    .line 27
    sget-object v2, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->NOT_USEFUL:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->backingStore:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    .line 28
    sget-object v2, Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;->CENTER:Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->bitGravity:Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;

    .line 30
    new-instance v2, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->doNotPropagateMask:Lcom/winlator/cmod/xserver/Bitmask;

    .line 31
    new-instance v2, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->eventMask:Lcom/winlator/cmod/xserver/Bitmask;

    .line 32
    iput-boolean v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->mapped:Z

    .line 33
    iput-boolean v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->overrideRedirect:Z

    .line 34
    iput-boolean v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->saveUnder:Z

    .line 35
    iput-boolean v1, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->enabled:Z

    .line 36
    sget-object v0, Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;->CENTER:Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;

    iput-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->winGravity:Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;

    .line 37
    sget-object v0, Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;->INPUT_OUTPUT:Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;

    iput-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->windowClass:Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;

    .line 41
    iput-object p1, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->window:Lcom/winlator/cmod/xserver/Window;

    .line 42
    return-void
.end method


# virtual methods
.method public getBackingPixel()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->backingPixel:I

    return v0
.end method

.method public getBackingPlanes()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->backingPlanes:I

    return v0
.end method

.method public getBackingStore()Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->backingStore:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    return-object v0
.end method

.method public getBitGravity()Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->bitGravity:Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;

    return-object v0
.end method

.method public getCursor()Lcom/winlator/cmod/xserver/Cursor;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->window:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 62
    .local v0, "parent":Lcom/winlator/cmod/xserver/Window;
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->cursor:Lcom/winlator/cmod/xserver/Cursor;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->getCursor()Lcom/winlator/cmod/xserver/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->cursor:Lcom/winlator/cmod/xserver/Cursor;

    :goto_0
    return-object v1
.end method

.method public getDoNotPropagateMask()Lcom/winlator/cmod/xserver/Bitmask;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->doNotPropagateMask:Lcom/winlator/cmod/xserver/Bitmask;

    return-object v0
.end method

.method public getEventMask()Lcom/winlator/cmod/xserver/Bitmask;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->eventMask:Lcom/winlator/cmod/xserver/Bitmask;

    return-object v0
.end method

.method public getWinGravity()Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->winGravity:Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;

    return-object v0
.end method

.method public getWindow()Lcom/winlator/cmod/xserver/Window;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->window:Lcom/winlator/cmod/xserver/Window;

    return-object v0
.end method

.method public getWindowClass()Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->windowClass:Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->enabled:Z

    return v0
.end method

.method public isMapped()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->mapped:Z

    return v0
.end method

.method public isOverrideRedirect()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->overrideRedirect:Z

    return v0
.end method

.method public isSaveUnder()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->saveUnder:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->enabled:Z

    .line 111
    return-void
.end method

.method public setMapped(Z)V
    .locals 0
    .param p1, "mapped"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->mapped:Z

    .line 79
    return-void
.end method

.method public setWindowClass(Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;)V
    .locals 0
    .param p1, "windowClass"    # Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;

    .line 98
    iput-object p1, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->windowClass:Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;

    .line 99
    return-void
.end method

.method public update(Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xserver/XClient;)V
    .locals 5
    .param p1, "valueMask"    # Lcom/winlator/cmod/xserver/Bitmask;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "client"    # Lcom/winlator/cmod/xserver/XClient;

    .line 114
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Bitmask;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 115
    .local v1, "index":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    .line 147
    :sswitch_0
    iget-object v2, p3, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->cursorManager:Lcom/winlator/cmod/xserver/CursorManager;

    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/CursorManager;->getCursor(I)Lcom/winlator/cmod/xserver/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->cursor:Lcom/winlator/cmod/xserver/Cursor;

    .line 148
    goto/16 :goto_1

    .line 144
    :sswitch_1
    new-instance v2, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->doNotPropagateMask:Lcom/winlator/cmod/xserver/Bitmask;

    .line 145
    goto/16 :goto_1

    .line 141
    :sswitch_2
    new-instance v2, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->eventMask:Lcom/winlator/cmod/xserver/Bitmask;

    .line 142
    goto :goto_1

    .line 135
    :sswitch_3
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->saveUnder:Z

    .line 136
    goto :goto_1

    .line 138
    :sswitch_4
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->overrideRedirect:Z

    .line 139
    goto :goto_1

    .line 120
    :sswitch_5
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->backingPixel:I

    .line 121
    goto :goto_1

    .line 123
    :sswitch_6
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->backingPlanes:I

    .line 124
    goto :goto_1

    .line 132
    :sswitch_7
    invoke-static {}, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->values()[Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    move-result-object v2

    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->backingStore:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    .line 133
    goto :goto_1

    .line 129
    :sswitch_8
    invoke-static {}, Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;->values()[Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;

    move-result-object v2

    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->winGravity:Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;

    .line 130
    goto :goto_1

    .line 126
    :sswitch_9
    invoke-static {}, Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;->values()[Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;

    move-result-object v2

    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->bitGravity:Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;

    .line 127
    goto :goto_1

    .line 117
    :sswitch_a
    iget-object v2, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->window:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v2

    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/Drawable;->fillColor(I)V

    .line 118
    goto :goto_1

    .line 153
    :sswitch_b
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 156
    .end local v1    # "index":I
    :goto_1
    goto/16 :goto_0

    .line 158
    :cond_2
    iget-object v0, p3, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowAttributes;->window:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v0, v1, p1}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnUpdateWindowAttributes(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;)V

    .line 159
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x4 -> :sswitch_b
        0x8 -> :sswitch_b
        0x10 -> :sswitch_9
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_5
        0x200 -> :sswitch_4
        0x400 -> :sswitch_3
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_0
    .end sparse-switch
.end method
