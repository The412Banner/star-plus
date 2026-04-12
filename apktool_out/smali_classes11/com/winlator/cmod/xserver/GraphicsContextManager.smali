.class public Lcom/winlator/cmod/xserver/GraphicsContextManager;
.super Lcom/winlator/cmod/xserver/XResourceManager;
.source "GraphicsContextManager.java"


# instance fields
.field private final graphicsContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/winlator/cmod/xserver/GraphicsContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/XResourceManager;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public copyGraphicsContext(Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 0
    .param p1, "src"    # Lcom/winlator/cmod/xserver/GraphicsContext;
    .param p2, "dst"    # Lcom/winlator/cmod/xserver/GraphicsContext;
    .param p3, "valueMask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 23
    invoke-virtual {p0, p2, p1, p3}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->updateGraphicsContext(Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/Bitmask;)V

    .line 24
    return-void
.end method

.method public createGraphicsContext(ILcom/winlator/cmod/xserver/Drawable;)Lcom/winlator/cmod/xserver/GraphicsContext;
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 15
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext;

    invoke-direct {v0, p1, p2}, Lcom/winlator/cmod/xserver/GraphicsContext;-><init>(ILcom/winlator/cmod/xserver/Drawable;)V

    .line 17
    .local v0, "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    iget-object v1, p0, Lcom/winlator/cmod/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->triggerOnCreateResourceListener(Lcom/winlator/cmod/xserver/XResource;)V

    .line 19
    return-object v0
.end method

.method public freeGraphicsContext(I)V
    .locals 1
    .param p1, "id"    # I

    .line 27
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/XResource;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->triggerOnFreeResourceListener(Lcom/winlator/cmod/xserver/XResource;)V

    .line 28
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 29
    return-void
.end method

.method public getGraphicsContext(I)Lcom/winlator/cmod/xserver/GraphicsContext;
    .locals 1
    .param p1, "id"    # I

    .line 11
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GraphicsContextManager;->graphicsContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/GraphicsContext;

    return-object v0
.end method

.method public updateGraphicsContext(Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xconnector/XInputStream;)V
    .locals 4
    .param p1, "graphicsContext"    # Lcom/winlator/cmod/xserver/GraphicsContext;
    .param p2, "valueMask"    # Lcom/winlator/cmod/xserver/Bitmask;
    .param p3, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;

    .line 75
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/Bitmask;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 76
    .local v1, "index":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 93
    :sswitch_0
    invoke-static {}, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->values()[Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    move-result-object v2

    invoke-virtual {p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setSubwindowMode(Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;)V

    .line 94
    goto :goto_1

    .line 112
    :sswitch_1
    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    goto :goto_1

    .line 90
    :sswitch_2
    invoke-virtual {p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setLineWidth(I)V

    .line 91
    goto :goto_1

    .line 87
    :sswitch_3
    invoke-virtual {p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setBackground(I)V

    .line 88
    goto :goto_1

    .line 84
    :sswitch_4
    invoke-virtual {p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setForeground(I)V

    .line 85
    goto :goto_1

    .line 81
    :sswitch_5
    invoke-virtual {p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setPlaneMask(I)V

    .line 82
    goto :goto_1

    .line 78
    :sswitch_6
    invoke-static {}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->values()[Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    move-result-object v2

    invoke-virtual {p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setFunction(Lcom/winlator/cmod/xserver/GraphicsContext$Function;)V

    .line 79
    nop

    .line 115
    .end local v1    # "index":I
    :goto_1
    goto :goto_0

    .line 116
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_1
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x200 -> :sswitch_1
        0x400 -> :sswitch_1
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_1
        0x200000 -> :sswitch_1
        0x400000 -> :sswitch_1
    .end sparse-switch
.end method

.method public updateGraphicsContext(Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 3
    .param p1, "dstContext"    # Lcom/winlator/cmod/xserver/GraphicsContext;
    .param p2, "srcContext"    # Lcom/winlator/cmod/xserver/GraphicsContext;
    .param p3, "valueMask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 32
    invoke-virtual {p3}, Lcom/winlator/cmod/xserver/Bitmask;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    .local v1, "index":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 50
    :sswitch_0
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/GraphicsContext;->getSubwindowMode()Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setSubwindowMode(Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;)V

    .line 51
    goto :goto_1

    .line 47
    :sswitch_1
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/GraphicsContext;->getLineWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setLineWidth(I)V

    .line 48
    goto :goto_1

    .line 44
    :sswitch_2
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/GraphicsContext;->getBackground()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setBackground(I)V

    .line 45
    goto :goto_1

    .line 41
    :sswitch_3
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/GraphicsContext;->getForeground()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setForeground(I)V

    .line 42
    goto :goto_1

    .line 38
    :sswitch_4
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/GraphicsContext;->getPlaneMask()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setPlaneMask(I)V

    .line 39
    goto :goto_1

    .line 35
    :sswitch_5
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/GraphicsContext;->getFunction()Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext;->setFunction(Lcom/winlator/cmod/xserver/GraphicsContext$Function;)V

    .line 36
    nop

    .line 71
    .end local v1    # "index":I
    :goto_1
    goto :goto_0

    .line 72
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method
