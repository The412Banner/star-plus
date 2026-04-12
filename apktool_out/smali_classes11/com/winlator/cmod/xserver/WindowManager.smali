.class public Lcom/winlator/cmod/xserver/WindowManager;
.super Lcom/winlator/cmod/xserver/XResourceManager;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;,
        Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;
    }
.end annotation


# instance fields
.field public final drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

.field private focusRevertTo:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

.field private focusedWindow:Lcom/winlator/cmod/xserver/Window;

.field private final onWindowModificationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;",
            ">;"
        }
    .end annotation
.end field

.field public final rootWindow:Lcom/winlator/cmod/xserver/Window;

.field private final windows:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/winlator/cmod/xserver/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bmPMLFsucIi0_4PONeVtnty_9DU(Lcom/winlator/cmod/xserver/WindowManager;Lcom/winlator/cmod/xserver/Window;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/WindowManager;->lambda$changeWindowGeometry$1(Lcom/winlator/cmod/xserver/Window;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tltqQQf5_k40r_NSYhFaVK5zmtM(Lcom/winlator/cmod/xserver/WindowManager;Lcom/winlator/cmod/xserver/Window;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/WindowManager;->lambda$createWindow$0(Lcom/winlator/cmod/xserver/Window;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/xserver/ScreenInfo;Lcom/winlator/cmod/xserver/DrawableManager;)V
    .locals 11
    .param p1, "screenInfo"    # Lcom/winlator/cmod/xserver/ScreenInfo;
    .param p2, "drawableManager"    # Lcom/winlator/cmod/xserver/DrawableManager;

    .line 47
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/XResourceManager;-><init>()V

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    .line 28
    sget-object v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->NONE:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    iput-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusRevertTo:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    .line 48
    iput-object p2, p0, Lcom/winlator/cmod/xserver/WindowManager;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    .line 49
    invoke-static {}, Lcom/winlator/cmod/xserver/IDGenerator;->generate()I

    move-result v0

    .line 50
    .local v0, "id":I
    iget-short v1, p1, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    iget-short v2, p1, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/DrawableManager;->getVisual()Lcom/winlator/cmod/xserver/Visual;

    move-result-object v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/winlator/cmod/xserver/DrawableManager;->createDrawable(ISSLcom/winlator/cmod/xserver/Visual;)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v9

    .line 51
    .local v9, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    new-instance v10, Lcom/winlator/cmod/xserver/Window;

    iget-short v6, p1, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    iget-short v7, p1, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move v2, v0

    move-object v3, v9

    invoke-direct/range {v1 .. v8}, Lcom/winlator/cmod/xserver/Window;-><init>(ILcom/winlator/cmod/xserver/Drawable;IIIILcom/winlator/cmod/xserver/XClient;)V

    iput-object v10, p0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    .line 52
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/WindowAttributes;->setMapped(Z)V

    .line 53
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method private changeWindowGeometry(Lcom/winlator/cmod/xserver/Window;SSSS)V
    .locals 5
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "x"    # S
    .param p3, "y"    # S
    .param p4, "width"    # S
    .param p5, "height"    # S

    .line 183
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getWidth()S

    move-result v0

    if-ne v0, p4, :cond_1

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getHeight()S

    move-result v0

    if-eq v0, p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 184
    .local v0, "resized":Z
    :goto_1
    if-eqz v0, :cond_2

    const/high16 v1, 0x40000

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/xserver/Window;->hasEventListenerFor(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    new-instance v1, Lcom/winlator/cmod/xserver/events/ResizeRequest;

    invoke-direct {v1, p1, p4, p5}, Lcom/winlator/cmod/xserver/events/ResizeRequest;-><init>(Lcom/winlator/cmod/xserver/Window;SS)V

    const/high16 v2, 0x100000

    invoke-virtual {p1, v2, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 186
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getWidth()S

    move-result p4

    .line 187
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getHeight()S

    move-result p5

    .line 188
    const/4 v0, 0x0

    .line 191
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->isInputOutput()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v1

    .line 193
    .local v1, "oldContent":Lcom/winlator/cmod/xserver/Drawable;
    iget-object v2, p0, Lcom/winlator/cmod/xserver/WindowManager;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    iget v3, v1, Lcom/winlator/cmod/xserver/Drawable;->id:I

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/DrawableManager;->removeDrawable(I)V

    .line 194
    iget-object v2, p0, Lcom/winlator/cmod/xserver/WindowManager;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    iget v3, v1, Lcom/winlator/cmod/xserver/Drawable;->id:I

    iget-object v4, v1, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    invoke-virtual {v2, v3, p4, p5, v4}, Lcom/winlator/cmod/xserver/DrawableManager;->createDrawable(ISSLcom/winlator/cmod/xserver/Visual;)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v2

    .line 195
    .local v2, "newContent":Lcom/winlator/cmod/xserver/Drawable;
    new-instance v3, Lcom/winlator/cmod/xserver/WindowManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/winlator/cmod/xserver/WindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/xserver/WindowManager;Lcom/winlator/cmod/xserver/Window;)V

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/Drawable;->setOnDrawListener(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xserver/Window;->setContent(Lcom/winlator/cmod/xserver/Drawable;)V

    .line 199
    .end local v1    # "oldContent":Lcom/winlator/cmod/xserver/Drawable;
    .end local v2    # "newContent":Lcom/winlator/cmod/xserver/Drawable;
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getX()S

    move-result v1

    if-ne v1, p2, :cond_4

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getY()S

    move-result v1

    if-eq v1, p3, :cond_5

    .line 200
    :cond_4
    invoke-virtual {p1, p2}, Lcom/winlator/cmod/xserver/Window;->setX(S)V

    .line 201
    invoke-virtual {p1, p3}, Lcom/winlator/cmod/xserver/Window;->setY(S)V

    .line 202
    invoke-virtual {p1, p4}, Lcom/winlator/cmod/xserver/Window;->setWidth(S)V

    .line 203
    invoke-virtual {p1, p5}, Lcom/winlator/cmod/xserver/Window;->setHeight(S)V

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnUpdateWindowGeometry(Lcom/winlator/cmod/xserver/Window;Z)V

    .line 207
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->isInputOutput()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 208
    new-instance v1, Lcom/winlator/cmod/xserver/events/Expose;

    invoke-direct {v1, p1}, Lcom/winlator/cmod/xserver/events/Expose;-><init>(Lcom/winlator/cmod/xserver/Window;)V

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 210
    :cond_6
    return-void
.end method

.method private changeWindowZOrder(Lcom/winlator/cmod/xserver/Window$StackMode;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V
    .locals 3
    .param p1, "stackMode"    # Lcom/winlator/cmod/xserver/Window$StackMode;
    .param p2, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "sibling"    # Lcom/winlator/cmod/xserver/Window;

    .line 213
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 214
    .local v0, "parent":Lcom/winlator/cmod/xserver/Window;
    sget-object v1, Lcom/winlator/cmod/xserver/WindowManager$1;->$SwitchMap$com$winlator$cmod$xserver$Window$StackMode:[I

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window$StackMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    invoke-virtual {v0, p2, p3}, Lcom/winlator/cmod/xserver/Window;->moveChildBelow(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    goto :goto_0

    .line 216
    :pswitch_1
    invoke-virtual {v0, p2, p3}, Lcom/winlator/cmod/xserver/Window;->moveChildAbove(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    .line 217
    nop

    .line 222
    :goto_0
    invoke-direct {p0, p2}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnChangeWindowZOrder(Lcom/winlator/cmod/xserver/Window;)V

    .line 223
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findPointWindow(Lcom/winlator/cmod/xserver/Window;SS)Lcom/winlator/cmod/xserver/Window;
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "rootX"    # S
    .param p3, "rootY"    # S

    .line 286
    iget-object v0, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/winlator/cmod/xserver/Window;->containsPoint(SS)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/winlator/cmod/xserver/Window;->getChildByCoords(SS)Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 288
    .local v0, "child":Lcom/winlator/cmod/xserver/Window;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2, p3}, Lcom/winlator/cmod/xserver/WindowManager;->findPointWindow(Lcom/winlator/cmod/xserver/Window;SS)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1

    .line 286
    .end local v0    # "child":Lcom/winlator/cmod/xserver/Window;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$changeWindowGeometry$1(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 195
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnUpdateWindowContent(Lcom/winlator/cmod/xserver/Window;)V

    return-void
.end method

.method private synthetic lambda$createWindow$0(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 175
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnUpdateWindowContent(Lcom/winlator/cmod/xserver/Window;)V

    return-void
.end method

.method private removeAllSubwindowsAndWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 4
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/xserver/Window;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/xserver/Window;

    .local v2, "child":Lcom/winlator/cmod/xserver/Window;
    invoke-direct {p0, v2}, Lcom/winlator/cmod/xserver/WindowManager;->removeAllSubwindowsAndWindow(Lcom/winlator/cmod/xserver/Window;)V

    .end local v2    # "child":Lcom/winlator/cmod/xserver/Window;
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 81
    .local v1, "parent":Lcom/winlator/cmod/xserver/Window;
    new-instance v2, Lcom/winlator/cmod/xserver/events/DestroyNotify;

    invoke-direct {v2, p1, p1}, Lcom/winlator/cmod/xserver/events/DestroyNotify;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    const/high16 v3, 0x20000

    invoke-virtual {p1, v3, v2}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 82
    new-instance v2, Lcom/winlator/cmod/xserver/events/DestroyNotify;

    invoke-direct {v2, v1, p1}, Lcom/winlator/cmod/xserver/events/DestroyNotify;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3, v2}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 83
    iget-object v2, p0, Lcom/winlator/cmod/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    iget v3, p1, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 84
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->isInputOutput()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/winlator/cmod/xserver/WindowManager;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v3

    iget v3, v3, Lcom/winlator/cmod/xserver/Drawable;->id:I

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/DrawableManager;->removeDrawable(I)V

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnFreeResourceListener(Lcom/winlator/cmod/xserver/XResource;)V

    .line 86
    iget-object v2, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusedWindow:Lcom/winlator/cmod/xserver/Window;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/WindowManager;->revertFocus()V

    .line 87
    :cond_2
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/xserver/Window;->removeChild(Lcom/winlator/cmod/xserver/Window;)V

    .line 88
    return-void
.end method

.method private triggerOnChangeWindowZOrder(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 312
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1}, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;->onChangeWindowZOrder(Lcom/winlator/cmod/xserver/Window;)V

    .line 312
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private triggerOnMapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 300
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1}, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;->onMapWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 300
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 303
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private triggerOnUnmapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 306
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1}, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;->onUnmapWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 306
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 309
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnWindowModificationListener(Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;)V
    .locals 1
    .param p1, "onWindowModificationListener"    # Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;

    .line 292
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public configureWindow(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xconnector/XInputStream;)V
    .locals 25
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "valueMask"    # Lcom/winlator/cmod/xserver/Bitmask;
    .param p3, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;

    .line 226
    move-object/from16 v6, p0

    move-object/from16 v5, p1

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Window;->getX()S

    move-result v0

    .line 227
    .local v0, "x":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Window;->getY()S

    move-result v1

    .line 228
    .local v1, "y":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Window;->getWidth()S

    move-result v2

    .line 229
    .local v2, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Window;->getHeight()S

    move-result v3

    .line 230
    .local v3, "height":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Window;->getBorderWidth()S

    move-result v4

    .line 231
    .local v4, "borderWidth":S
    const/4 v7, 0x0

    .line 232
    .local v7, "sibling":Lcom/winlator/cmod/xserver/Window;
    const/4 v8, 0x0

    .line 234
    .local v8, "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xserver/Bitmask;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move-object v3, v7

    move-object v2, v8

    .end local v0    # "x":S
    .end local v1    # "y":S
    .end local v7    # "sibling":Lcom/winlator/cmod/xserver/Window;
    .end local v8    # "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    .local v2, "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    .local v3, "sibling":Lcom/winlator/cmod/xserver/Window;
    .local v18, "x":S
    .local v19, "y":S
    .local v20, "width":S
    .local v21, "height":S
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 235
    .local v0, "index":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 255
    :sswitch_0
    invoke-static {}, Lcom/winlator/cmod/xserver/Window$StackMode;->values()[Lcom/winlator/cmod/xserver/Window$StackMode;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v7

    aget-object v1, v1, v7

    move-object v2, v1

    .end local v2    # "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    .local v1, "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    goto :goto_1

    .line 252
    .end local v1    # "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    .restart local v2    # "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 253
    .end local v3    # "sibling":Lcom/winlator/cmod/xserver/Window;
    .local v1, "sibling":Lcom/winlator/cmod/xserver/Window;
    move-object v3, v1

    goto :goto_1

    .line 249
    .end local v1    # "sibling":Lcom/winlator/cmod/xserver/Window;
    .restart local v3    # "sibling":Lcom/winlator/cmod/xserver/Window;
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    int-to-short v1, v1

    .line 250
    .end local v4    # "borderWidth":S
    .local v1, "borderWidth":S
    move v4, v1

    goto :goto_1

    .line 246
    .end local v1    # "borderWidth":S
    .restart local v4    # "borderWidth":S
    :sswitch_3
    invoke-virtual/range {p3 .. p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    int-to-short v1, v1

    .line 247
    .end local v21    # "height":S
    .local v1, "height":S
    move/from16 v21, v1

    goto :goto_1

    .line 243
    .end local v1    # "height":S
    .restart local v21    # "height":S
    :sswitch_4
    invoke-virtual/range {p3 .. p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    int-to-short v1, v1

    .line 244
    .end local v20    # "width":S
    .local v1, "width":S
    move/from16 v20, v1

    goto :goto_1

    .line 240
    .end local v1    # "width":S
    .restart local v20    # "width":S
    :sswitch_5
    invoke-virtual/range {p3 .. p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    int-to-short v1, v1

    .line 241
    .end local v19    # "y":S
    .local v1, "y":S
    move/from16 v19, v1

    goto :goto_1

    .line 237
    .end local v1    # "y":S
    .restart local v19    # "y":S
    :sswitch_6
    invoke-virtual/range {p3 .. p3}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    int-to-short v1, v1

    .line 238
    .end local v18    # "x":S
    .local v1, "x":S
    move/from16 v18, v1

    .line 258
    .end local v0    # "index":I
    .end local v1    # "x":S
    .restart local v18    # "x":S
    :goto_1
    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 261
    .local v1, "parent":Lcom/winlator/cmod/xserver/Window;
    iget-object v0, v5, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v22

    .line 262
    .local v22, "overrideRedirect":Z
    const/high16 v0, 0x100000

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/Window;->hasEventListenerFor(I)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v22, :cond_1

    move-object/from16 v23, v3

    goto :goto_2

    .line 272
    :cond_1
    new-instance v15, Lcom/winlator/cmod/xserver/events/ConfigureRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Window;->previousSibling()Lcom/winlator/cmod/xserver/Window;

    move-result-object v10

    move-object v7, v15

    move-object v8, v1

    move-object/from16 v9, p1

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v21

    move-object/from16 v23, v3

    move-object v3, v15

    .end local v3    # "sibling":Lcom/winlator/cmod/xserver/Window;
    .local v23, "sibling":Lcom/winlator/cmod/xserver/Window;
    move v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, p2

    invoke-direct/range {v7 .. v17}, Lcom/winlator/cmod/xserver/events/ConfigureRequest;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSSLcom/winlator/cmod/xserver/Window$StackMode;Lcom/winlator/cmod/xserver/Bitmask;)V

    invoke-virtual {v1, v0, v3}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    move-object/from16 v3, v23

    move-object/from16 v24, v5

    move-object v5, v2

    move-object/from16 v2, v24

    goto :goto_3

    .line 262
    .end local v23    # "sibling":Lcom/winlator/cmod/xserver/Window;
    .restart local v3    # "sibling":Lcom/winlator/cmod/xserver/Window;
    :cond_2
    move-object/from16 v23, v3

    .line 263
    .end local v3    # "sibling":Lcom/winlator/cmod/xserver/Window;
    .restart local v23    # "sibling":Lcom/winlator/cmod/xserver/Window;
    :goto_2
    move-object/from16 v0, p0

    move-object v15, v1

    .end local v1    # "parent":Lcom/winlator/cmod/xserver/Window;
    .local v15, "parent":Lcom/winlator/cmod/xserver/Window;
    move-object/from16 v1, p1

    move-object v14, v2

    .end local v2    # "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    .local v14, "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    move/from16 v2, v18

    move-object/from16 v13, v23

    .end local v23    # "sibling":Lcom/winlator/cmod/xserver/Window;
    .local v13, "sibling":Lcom/winlator/cmod/xserver/Window;
    move/from16 v3, v19

    move v12, v4

    .end local v4    # "borderWidth":S
    .local v12, "borderWidth":S
    move/from16 v4, v20

    move-object v11, v5

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/winlator/cmod/xserver/WindowManager;->changeWindowGeometry(Lcom/winlator/cmod/xserver/Window;SSSS)V

    .line 265
    invoke-virtual {v11, v12}, Lcom/winlator/cmod/xserver/Window;->setBorderWidth(S)V

    .line 266
    if-eqz v14, :cond_3

    invoke-direct {v6, v14, v11, v13}, Lcom/winlator/cmod/xserver/WindowManager;->changeWindowZOrder(Lcom/winlator/cmod/xserver/Window$StackMode;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    .line 268
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Window;->previousSibling()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 269
    .local v0, "previousSibling":Lcom/winlator/cmod/xserver/Window;
    new-instance v1, Lcom/winlator/cmod/xserver/events/ConfigureNotify;

    move-object v7, v1

    move-object/from16 v8, p1

    move-object/from16 v9, p1

    move-object v10, v0

    move-object v2, v11

    move/from16 v11, v18

    move v4, v12

    .end local v12    # "borderWidth":S
    .restart local v4    # "borderWidth":S
    move/from16 v12, v19

    move-object v3, v13

    .end local v13    # "sibling":Lcom/winlator/cmod/xserver/Window;
    .restart local v3    # "sibling":Lcom/winlator/cmod/xserver/Window;
    move/from16 v13, v20

    move-object v5, v14

    .end local v14    # "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    .local v5, "stackMode":Lcom/winlator/cmod/xserver/Window$StackMode;
    move/from16 v14, v21

    move-object/from16 v17, v15

    .end local v15    # "parent":Lcom/winlator/cmod/xserver/Window;
    .local v17, "parent":Lcom/winlator/cmod/xserver/Window;
    move v15, v4

    move/from16 v16, v22

    invoke-direct/range {v7 .. v16}, Lcom/winlator/cmod/xserver/events/ConfigureNotify;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;IIIIIZ)V

    const/high16 v7, 0x20000

    invoke-virtual {v2, v7, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 270
    new-instance v1, Lcom/winlator/cmod/xserver/events/ConfigureNotify;

    move-object v7, v1

    move-object/from16 v8, v17

    invoke-direct/range {v7 .. v16}, Lcom/winlator/cmod/xserver/events/ConfigureNotify;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;IIIIIZ)V

    const/high16 v7, 0x80000

    .end local v17    # "parent":Lcom/winlator/cmod/xserver/Window;
    .local v8, "parent":Lcom/winlator/cmod/xserver/Window;
    invoke-virtual {v8, v7, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 271
    .end local v0    # "previousSibling":Lcom/winlator/cmod/xserver/Window;
    nop

    .line 273
    :goto_3
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
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public createWindow(ILcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/WindowAttributes$WindowClass;Lcom/winlator/cmod/xserver/Visual;BLcom/winlator/cmod/xserver/XClient;)Lcom/winlator/cmod/xserver/Window;
    .locals 17
    .param p1, "id"    # I
    .param p2, "parent"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "x"    # S
    .param p4, "y"    # S
    .param p5, "width"    # S
    .param p6, "height"    # S
    .param p7, "windowClass"    # Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;
    .param p8, "visual"    # Lcom/winlator/cmod/xserver/Visual;
    .param p9, "depth"    # B
    .param p10, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 143
    move-object/from16 v0, p0

    move/from16 v9, p1

    iget-object v1, v0, Lcom/winlator/cmod/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_a

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "isInputOutput":Z
    sget-object v2, Lcom/winlator/cmod/xserver/WindowManager$1;->$SwitchMap$com$winlator$cmod$xserver$WindowAttributes$WindowClass:[I

    invoke-virtual/range {p7 .. p7}, Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move/from16 v10, p9

    move v11, v1

    goto :goto_3

    .line 158
    :pswitch_0
    const/4 v1, 0x0

    move/from16 v10, p9

    move v11, v1

    goto :goto_3

    .line 152
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xserver/Window;->isInputOutput()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    if-nez p9, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v2

    iget-object v2, v2, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v2, v2, Lcom/winlator/cmod/xserver/Visual;->depth:B

    goto :goto_0

    :cond_0
    move/from16 v2, p9

    .line 154
    .end local p9    # "depth":B
    .local v2, "depth":B
    :goto_0
    const/4 v1, 0x1

    move v11, v1

    move v10, v2

    goto :goto_3

    .line 155
    .end local v2    # "depth":B
    .restart local p9    # "depth":B
    :cond_1
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v2}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    throw v2

    .line 148
    :pswitch_2
    if-nez p9, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xserver/Window;->isInputOutput()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v2

    iget-object v2, v2, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v2, v2, Lcom/winlator/cmod/xserver/Visual;->depth:B

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v2, p9

    .line 149
    .end local p9    # "depth":B
    .restart local v2    # "depth":B
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xserver/Window;->isInputOutput()Z

    move-result v1

    .line 150
    move v11, v1

    move v10, v2

    .line 162
    .end local v1    # "isInputOutput":Z
    .end local v2    # "depth":B
    .local v10, "depth":B
    .local v11, "isInputOutput":Z
    :goto_3
    if-eqz v11, :cond_6

    .line 163
    if-nez p8, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v1

    iget-object v1, v1, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    goto :goto_4

    :cond_4
    move-object/from16 v1, p8

    .line 164
    .end local p8    # "visual":Lcom/winlator/cmod/xserver/Visual;
    .local v1, "visual":Lcom/winlator/cmod/xserver/Visual;
    :goto_4
    iget-byte v2, v1, Lcom/winlator/cmod/xserver/Visual;->depth:B

    if-ne v10, v2, :cond_5

    move-object v12, v1

    goto :goto_5

    :cond_5
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v2}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    throw v2

    .line 162
    .end local v1    # "visual":Lcom/winlator/cmod/xserver/Visual;
    .restart local p8    # "visual":Lcom/winlator/cmod/xserver/Visual;
    :cond_6
    move-object/from16 v12, p8

    .line 167
    .end local p8    # "visual":Lcom/winlator/cmod/xserver/Visual;
    .local v12, "visual":Lcom/winlator/cmod/xserver/Visual;
    :goto_5
    const/4 v1, 0x0

    .line 168
    .local v1, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v11, :cond_8

    .line 169
    iget-object v2, v0, Lcom/winlator/cmod/xserver/WindowManager;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-virtual {v2, v9, v13, v14, v12}, Lcom/winlator/cmod/xserver/DrawableManager;->createDrawable(ISSLcom/winlator/cmod/xserver/Visual;)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_7

    move-object v15, v1

    goto :goto_6

    :cond_7
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v2, v9}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v2

    .line 168
    :cond_8
    move/from16 v13, p5

    move/from16 v14, p6

    move-object v15, v1

    .line 173
    .end local v1    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .local v15, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    :goto_6
    new-instance v16, Lcom/winlator/cmod/xserver/Window;

    move-object/from16 v1, v16

    move/from16 v2, p1

    move-object v3, v15

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lcom/winlator/cmod/xserver/Window;-><init>(ILcom/winlator/cmod/xserver/Drawable;IIIILcom/winlator/cmod/xserver/XClient;)V

    .line 174
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    iget-object v2, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    move-object/from16 v3, p7

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/WindowAttributes;->setWindowClass(Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;)V

    .line 175
    if-eqz v15, :cond_9

    new-instance v2, Lcom/winlator/cmod/xserver/WindowManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/winlator/cmod/xserver/WindowManager$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/xserver/WindowManager;Lcom/winlator/cmod/xserver/Window;)V

    invoke-virtual {v15, v2}, Lcom/winlator/cmod/xserver/Drawable;->setOnDrawListener(Ljava/lang/Runnable;)V

    .line 176
    :cond_9
    iget-object v2, v0, Lcom/winlator/cmod/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/xserver/Window;->addChild(Lcom/winlator/cmod/xserver/Window;)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnCreateResourceListener(Lcom/winlator/cmod/xserver/XResource;)V

    .line 179
    return-object v1

    .line 143
    .end local v1    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local v10    # "depth":B
    .end local v11    # "isInputOutput":Z
    .end local v12    # "visual":Lcom/winlator/cmod/xserver/Visual;
    .end local v15    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local p8    # "visual":Lcom/winlator/cmod/xserver/Visual;
    .restart local p9    # "depth":B
    :cond_a
    move-object/from16 v2, p2

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v3, p7

    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v1, v9}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public destroyWindow(I)V
    .locals 2
    .param p1, "id"    # I

    .line 69
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 70
    .local v0, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iget v1, v1, Lcom/winlator/cmod/xserver/Window;->id:I

    if-eq v1, p1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/WindowManager;->unmapWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 72
    invoke-direct {p0, v0}, Lcom/winlator/cmod/xserver/WindowManager;->removeAllSubwindowsAndWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 74
    :cond_0
    return-void
.end method

.method public findPointWindow(SS)Lcom/winlator/cmod/xserver/Window;
    .locals 1
    .param p1, "rootX"    # S
    .param p2, "rootY"    # S

    .line 282
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-direct {p0, v0, p1, p2}, Lcom/winlator/cmod/xserver/WindowManager;->findPointWindow(Lcom/winlator/cmod/xserver/Window;SS)Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    return-object v0
.end method

.method public findWindowWithProcessId(I)Lcom/winlator/cmod/xserver/Window;
    .locals 3
    .param p1, "processId"    # I

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/Window;

    .line 63
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getProcessId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 61
    .end local v1    # "window":Lcom/winlator/cmod/xserver/Window;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusRevertTo()Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusRevertTo:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    return-object v0
.end method

.method public getFocusedWindow()Lcom/winlator/cmod/xserver/Window;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusedWindow:Lcom/winlator/cmod/xserver/Window;

    return-object v0
.end method

.method public getWindow(I)Lcom/winlator/cmod/xserver/Window;
    .locals 1
    .param p1, "id"    # I

    .line 57
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->windows:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Window;

    return-object v0
.end method

.method public mapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 91
    iget-object v0, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 93
    .local v0, "parent":Lcom/winlator/cmod/xserver/Window;
    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Window;->hasEventListenerFor(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v2, Lcom/winlator/cmod/xserver/events/MapRequest;

    invoke-direct {v2, v0, p1}, Lcom/winlator/cmod/xserver/events/MapRequest;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/WindowAttributes;->setMapped(Z)V

    .line 95
    new-instance v1, Lcom/winlator/cmod/xserver/events/MapNotify;

    invoke-direct {v1, p1, p1}, Lcom/winlator/cmod/xserver/events/MapNotify;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 96
    new-instance v1, Lcom/winlator/cmod/xserver/events/MapNotify;

    invoke-direct {v1, v0, p1}, Lcom/winlator/cmod/xserver/events/MapNotify;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 97
    new-instance v1, Lcom/winlator/cmod/xserver/events/Expose;

    invoke-direct {v1, p1}, Lcom/winlator/cmod/xserver/events/Expose;-><init>(Lcom/winlator/cmod/xserver/Window;)V

    const v2, 0x8000

    invoke-virtual {p1, v2, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnMapWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 102
    .end local v0    # "parent":Lcom/winlator/cmod/xserver/Window;
    :cond_2
    :goto_1
    return-void
.end method

.method public removeOnWindowModificationListener(Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;)V
    .locals 1
    .param p1, "onWindowModificationListener"    # Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;

    .line 296
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method public reparentWindow(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V
    .locals 1
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "newParent"    # Lcom/winlator/cmod/xserver/Window;

    .line 276
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 277
    .local v0, "oldParent":Lcom/winlator/cmod/xserver/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/Window;->removeChild(Lcom/winlator/cmod/xserver/Window;)V

    .line 278
    :cond_0
    invoke-virtual {p2, p1}, Lcom/winlator/cmod/xserver/Window;->addChild(Lcom/winlator/cmod/xserver/Window;)V

    .line 279
    return-void
.end method

.method public revertFocus()V
    .locals 2

    .line 120
    sget-object v0, Lcom/winlator/cmod/xserver/WindowManager$1;->$SwitchMap$com$winlator$cmod$xserver$WindowManager$FocusRevertTo:[I

    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusRevertTo:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusedWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusedWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusedWindow:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iput-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusedWindow:Lcom/winlator/cmod/xserver/Window;

    .line 126
    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusedWindow:Lcom/winlator/cmod/xserver/Window;

    .line 123
    nop

    .line 131
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFocus(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;)V
    .locals 0
    .param p1, "focusedWindow"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "focusRevertTo"    # Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    .line 134
    iput-object p1, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusedWindow:Lcom/winlator/cmod/xserver/Window;

    .line 135
    iput-object p2, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusRevertTo:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    .line 136
    return-void
.end method

.method public triggerOnModifyWindowProperty(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "property"    # Lcom/winlator/cmod/xserver/Property;

    .line 336
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1, p2}, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;->onModifyWindowProperty(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V

    .line 336
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 339
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public triggerOnUpdateWindowAttributes(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "mask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 330
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1, p2}, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;->onUpdateWindowAttributes(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;)V

    .line 330
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected triggerOnUpdateWindowContent(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 318
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1}, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;->onUpdateWindowContent(Lcom/winlator/cmod/xserver/Window;)V

    .line 318
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 321
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected triggerOnUpdateWindowGeometry(Lcom/winlator/cmod/xserver/Window;Z)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "resized"    # Z

    .line 324
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->onWindowModificationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;

    invoke-interface {v1, p1, p2}, Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;->onUpdateWindowGeometry(Lcom/winlator/cmod/xserver/Window;Z)V

    .line 324
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 327
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public unmapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 105
    iget-object v0, p0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iget v0, v0, Lcom/winlator/cmod/xserver/Window;->id:I

    iget v1, p1, Lcom/winlator/cmod/xserver/Window;->id:I

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->setMapped(Z)V

    .line 107
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 108
    .local v0, "parent":Lcom/winlator/cmod/xserver/Window;
    new-instance v1, Lcom/winlator/cmod/xserver/events/UnmapNotify;

    invoke-direct {v1, p1, p1}, Lcom/winlator/cmod/xserver/events/UnmapNotify;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 109
    new-instance v1, Lcom/winlator/cmod/xserver/events/UnmapNotify;

    invoke-direct {v1, v0, p1}, Lcom/winlator/cmod/xserver/events/UnmapNotify;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 110
    iget-object v1, p0, Lcom/winlator/cmod/xserver/WindowManager;->focusedWindow:Lcom/winlator/cmod/xserver/Window;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/WindowManager;->revertFocus()V

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnUnmapWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 113
    .end local v0    # "parent":Lcom/winlator/cmod/xserver/Window;
    :cond_1
    return-void
.end method
