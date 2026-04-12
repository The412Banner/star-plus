.class public Lcom/winlator/cmod/xserver/Window;
.super Lcom/winlator/cmod/xserver/XResource;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/Window$WMHints;,
        Lcom/winlator/cmod/xserver/Window$MapState;,
        Lcom/winlator/cmod/xserver/Window$StackMode;
    }
.end annotation


# static fields
.field public static final FLAG_BORDER_WIDTH:I = 0x10

.field public static final FLAG_HEIGHT:I = 0x8

.field public static final FLAG_SIBLING:I = 0x20

.field public static final FLAG_STACK_MODE:I = 0x40

.field public static final FLAG_WIDTH:I = 0x4

.field public static final FLAG_X:I = 0x1

.field public static final FLAG_Y:I = 0x2


# instance fields
.field public final attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

.field private borderWidth:S

.field private final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/xserver/Window;",
            ">;"
        }
    .end annotation
.end field

.field private content:Lcom/winlator/cmod/xserver/Drawable;

.field private final eventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/xserver/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private height:S

.field private final immutableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/xserver/Window;",
            ">;"
        }
    .end annotation
.end field

.field public final originClient:Lcom/winlator/cmod/xserver/XClient;

.field private parent:Lcom/winlator/cmod/xserver/Window;

.field private final properties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/winlator/cmod/xserver/Property;",
            ">;"
        }
    .end annotation
.end field

.field private width:S

.field private x:S

.field private y:S


# direct methods
.method public constructor <init>(ILcom/winlator/cmod/xserver/Drawable;IIIILcom/winlator/cmod/xserver/XClient;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "content"    # Lcom/winlator/cmod/xserver/Drawable;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "originClient"    # Lcom/winlator/cmod/xserver/XClient;

    .line 40
    invoke-direct {p0, p1}, Lcom/winlator/cmod/xserver/XResource;-><init>(I)V

    .line 33
    new-instance v0, Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/xserver/WindowAttributes;-><init>(Lcom/winlator/cmod/xserver/Window;)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Window;->properties:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Window;->immutableChildren:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    .line 41
    iput-object p2, p0, Lcom/winlator/cmod/xserver/Window;->content:Lcom/winlator/cmod/xserver/Drawable;

    .line 42
    int-to-short v0, p3

    iput-short v0, p0, Lcom/winlator/cmod/xserver/Window;->x:S

    .line 43
    int-to-short v0, p4

    iput-short v0, p0, Lcom/winlator/cmod/xserver/Window;->y:S

    .line 44
    int-to-short v0, p5

    iput-short v0, p0, Lcom/winlator/cmod/xserver/Window;->width:S

    .line 45
    int-to-short v0, p6

    iput-short v0, p0, Lcom/winlator/cmod/xserver/Window;->height:S

    .line 46
    iput-object p7, p0, Lcom/winlator/cmod/xserver/Window;->originClient:Lcom/winlator/cmod/xserver/XClient;

    .line 47
    return-void
.end method


# virtual methods
.method public addChild(Lcom/winlator/cmod/xserver/Window;)V
    .locals 1
    .param p1, "child"    # Lcom/winlator/cmod/xserver/Window;

    .line 212
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iput-object p0, p1, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    .line 214
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    return-void

    .line 212
    :cond_1
    :goto_0
    return-void
.end method

.method public addEventListener(Lcom/winlator/cmod/xserver/EventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/winlator/cmod/xserver/EventListener;

    .line 256
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public addProperty(Lcom/winlator/cmod/xserver/Property;)V
    .locals 2
    .param p1, "property"    # Lcom/winlator/cmod/xserver/Property;

    .line 133
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->properties:Landroid/util/SparseArray;

    iget v1, p1, Lcom/winlator/cmod/xserver/Property;->name:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public containsPoint(SS)Z
    .locals 5
    .param p1, "rootX"    # S
    .param p2, "rootY"    # S

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v0

    .line 315
    .local v0, "localPoint":[S
    const/4 v1, 0x0

    aget-short v2, v0, v1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    aget-short v3, v0, v2

    if-ltz v3, :cond_0

    aget-short v3, v0, v1

    iget-short v4, p0, Lcom/winlator/cmod/xserver/Window;->width:S

    if-ge v3, v4, :cond_0

    aget-short v3, v0, v2

    iget-short v4, p0, Lcom/winlator/cmod/xserver/Window;->height:S

    if-ge v3, v4, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public disableAllDescendants()V
    .locals 4

    .line 424
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 425
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/winlator/cmod/xserver/Window;>;"
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/Window;

    .line 428
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    iget-object v2, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/WindowAttributes;->setEnabled(Z)V

    .line 429
    iget-object v2, v1, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 430
    .end local v1    # "window":Lcom/winlator/cmod/xserver/Window;
    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method

.method public getAllEventMasks()Lcom/winlator/cmod/xserver/Bitmask;
    .locals 4

    .line 411
    new-instance v0, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-direct {v0}, Lcom/winlator/cmod/xserver/Bitmask;-><init>()V

    .line 412
    .local v0, "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/xserver/EventListener;

    .local v2, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    iget-object v3, v2, Lcom/winlator/cmod/xserver/EventListener;->eventMask:Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/xserver/Bitmask;->join(Lcom/winlator/cmod/xserver/Bitmask;)V

    .end local v2    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    goto :goto_0

    .line 413
    :cond_0
    return-object v0
.end method

.method public getAncestorWithEventId(I)Lcom/winlator/cmod/xserver/Window;
    .locals 1
    .param p1, "eventId"    # I

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/winlator/cmod/xserver/Window;->getAncestorWithEventId(ILcom/winlator/cmod/xserver/Window;)Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    return-object v0
.end method

.method public getAncestorWithEventId(ILcom/winlator/cmod/xserver/Window;)Lcom/winlator/cmod/xserver/Window;
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "endWindow"    # Lcom/winlator/cmod/xserver/Window;

    .line 373
    move-object v0, p0

    .line 374
    .local v0, "window":Lcom/winlator/cmod/xserver/Window;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/Window;->hasEventListenerFor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 376
    :cond_0
    if-eq v0, p2, :cond_2

    iget-object v2, v0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/WindowAttributes;->getDoNotPropagateMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 377
    :cond_1
    iget-object v0, v0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    .line 376
    :cond_2
    :goto_1
    return-object v1

    .line 379
    :cond_3
    return-object v1
.end method

.method public getAncestorWithEventMask(Lcom/winlator/cmod/xserver/Bitmask;)Lcom/winlator/cmod/xserver/Window;
    .locals 3
    .param p1, "eventMask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 359
    move-object v0, p0

    .line 360
    .local v0, "window":Lcom/winlator/cmod/xserver/Window;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/Window;->hasEventListenerFor(Lcom/winlator/cmod/xserver/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 362
    :cond_0
    iget-object v2, v0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/WindowAttributes;->getDoNotPropagateMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/winlator/cmod/xserver/Bitmask;->intersects(Lcom/winlator/cmod/xserver/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 363
    :cond_1
    iget-object v0, v0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    .line 365
    :cond_2
    return-object v1
.end method

.method public getBorderWidth()S
    .locals 1

    .line 105
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Window;->borderWidth:S

    return v0
.end method

.method public getButtonPressListener()Lcom/winlator/cmod/xserver/EventListener;
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/EventListener;

    .line 418
    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 419
    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 420
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildByCoords(SS)Lcom/winlator/cmod/xserver/Window;
    .locals 3
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 392
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 393
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/Window;

    .line 394
    .local v1, "child":Lcom/winlator/cmod/xserver/Window;
    iget-object v2, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/winlator/cmod/xserver/Window;->containsPoint(SS)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 392
    .end local v1    # "child":Lcom/winlator/cmod/xserver/Window;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 396
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/xserver/Window;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->immutableChildren:Ljava/util/List;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 178
    const-string v0, "WM_CLASS"

    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/Window;->getProperty(I)Lcom/winlator/cmod/xserver/Property;

    move-result-object v0

    .line 179
    .local v0, "property":Lcom/winlator/cmod/xserver/Property;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Property;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getContent()Lcom/winlator/cmod/xserver/Drawable;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->content:Lcom/winlator/cmod/xserver/Drawable;

    return-object v0
.end method

.method public getHandle()J
    .locals 3

    .line 198
    const-string v0, "_NET_WM_HWND"

    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/Window;->getProperty(I)Lcom/winlator/cmod/xserver/Property;

    move-result-object v0

    .line 199
    .local v0, "property":Lcom/winlator/cmod/xserver/Property;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Property;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getHeight()S
    .locals 1

    .line 97
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Window;->height:S

    return v0
.end method

.method public getMapState()Lcom/winlator/cmod/xserver/Window$MapState;
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/winlator/cmod/xserver/Window$MapState;->UNMAPPED:Lcom/winlator/cmod/xserver/Window$MapState;

    return-object v0

    .line 401
    :cond_0
    move-object v0, p0

    .line 403
    .local v0, "window":Lcom/winlator/cmod/xserver/Window;
    :cond_1
    iget-object v0, v0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    .line 404
    if-nez v0, :cond_2

    sget-object v1, Lcom/winlator/cmod/xserver/Window$MapState;->VIEWABLE:Lcom/winlator/cmod/xserver/Window$MapState;

    return-object v1

    .line 406
    :cond_2
    iget-object v1, v0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    sget-object v1, Lcom/winlator/cmod/xserver/Window$MapState;->UNVIEWABLE:Lcom/winlator/cmod/xserver/Window$MapState;

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 173
    const-string v0, "WM_NAME"

    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/Window;->getProperty(I)Lcom/winlator/cmod/xserver/Property;

    move-result-object v0

    .line 174
    .local v0, "property":Lcom/winlator/cmod/xserver/Property;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Property;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getParent()Lcom/winlator/cmod/xserver/Window;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    return-object v0
.end method

.method public getProcessId()I
    .locals 2

    .line 188
    const-string v0, "_NET_WM_PID"

    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/Window;->getProperty(I)Lcom/winlator/cmod/xserver/Property;

    move-result-object v0

    .line 189
    .local v0, "property":Lcom/winlator/cmod/xserver/Property;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Property;->getInt(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getProperty(I)Lcom/winlator/cmod/xserver/Property;
    .locals 1
    .param p1, "id"    # I

    .line 129
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->properties:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Property;

    return-object v0
.end method

.method public getRootX()S
    .locals 3

    .line 339
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Window;->x:S

    .line 340
    .local v0, "rootX":S
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    .line 341
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    :goto_0
    if-eqz v1, :cond_0

    .line 342
    iget-short v2, v1, Lcom/winlator/cmod/xserver/Window;->x:S

    add-int/2addr v2, v0

    int-to-short v0, v2

    .line 343
    iget-object v1, v1, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    .line 345
    :cond_0
    return v0
.end method

.method public getRootY()S
    .locals 3

    .line 349
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Window;->y:S

    .line 350
    .local v0, "rootY":S
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    .line 351
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    :goto_0
    if-eqz v1, :cond_0

    .line 352
    iget-short v2, v1, Lcom/winlator/cmod/xserver/Window;->y:S

    add-int/2addr v2, v0

    int-to-short v0, v2

    .line 353
    iget-object v1, v1, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    .line 355
    :cond_0
    return v0
.end method

.method public getWMHintsValue(Lcom/winlator/cmod/xserver/Window$WMHints;)I
    .locals 2
    .param p1, "wmHints"    # Lcom/winlator/cmod/xserver/Window$WMHints;

    .line 183
    const-string v0, "WM_HINTS"

    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/Window;->getProperty(I)Lcom/winlator/cmod/xserver/Property;

    move-result-object v0

    .line 184
    .local v0, "property":Lcom/winlator/cmod/xserver/Property;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window$WMHints;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Property;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getWidth()S
    .locals 1

    .line 89
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Window;->width:S

    return v0
.end method

.method public getX()S
    .locals 1

    .line 73
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Window;->x:S

    return v0
.end method

.method public getY()S
    .locals 1

    .line 81
    iget-short v0, p0, Lcom/winlator/cmod/xserver/Window;->y:S

    return v0
.end method

.method public hasEventListenerFor(I)Z
    .locals 3
    .param p1, "eventId"    # I

    .line 264
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/EventListener;

    .line 265
    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 266
    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasEventListenerFor(Lcom/winlator/cmod/xserver/Bitmask;)Z
    .locals 3
    .param p1, "mask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 271
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/EventListener;

    .line 272
    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(Lcom/winlator/cmod/xserver/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 273
    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z
    .locals 1
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 383
    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    .line 384
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 385
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 386
    :cond_1
    iget-object p1, p1, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    .line 388
    :cond_2
    return v0
.end method

.method public isApplicationWindow()Z
    .locals 3

    .line 203
    sget-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->WINDOW_GROUP:Lcom/winlator/cmod/xserver/Window$WMHints;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/Window;->getWMHintsValue(Lcom/winlator/cmod/xserver/Window$WMHints;)I

    move-result v0

    .line 204
    .local v0, "windowGroup":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/winlator/cmod/xserver/Window;->id:I

    if-ne v0, v1, :cond_0

    iget-short v1, p0, Lcom/winlator/cmod/xserver/Window;->width:S

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-short v1, p0, Lcom/winlator/cmod/xserver/Window;->height:S

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isDesktopWindow()Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "explorer.exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInputOutput()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->content:Lcom/winlator/cmod/xserver/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMapped()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    return v0
.end method

.method public isRenderable()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->content:Lcom/winlator/cmod/xserver/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/Window;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWoW64()Z
    .locals 4

    .line 193
    const-string v0, "_NET_WM_WOW64"

    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/Window;->getProperty(I)Lcom/winlator/cmod/xserver/Property;

    move-result-object v0

    .line 194
    .local v0, "property":Lcom/winlator/cmod/xserver/Property;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public localPointToRoot(SS)[S
    .locals 3
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 329
    move-object v0, p0

    .line 330
    .local v0, "window":Lcom/winlator/cmod/xserver/Window;
    :goto_0
    if-eqz v0, :cond_0

    .line 331
    iget-short v1, v0, Lcom/winlator/cmod/xserver/Window;->x:S

    add-int/2addr v1, p1

    int-to-short p1, v1

    .line 332
    iget-short v1, v0, Lcom/winlator/cmod/xserver/Window;->y:S

    add-int/2addr v1, p2

    int-to-short p2, v1

    .line 333
    iget-object v0, v0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    .line 335
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [S

    const/4 v2, 0x0

    aput-short p1, v1, v2

    const/4 v2, 0x1

    aput-short p2, v1, v2

    return-object v1
.end method

.method public modifyProperty(IILcom/winlator/cmod/xserver/Property$Format;Lcom/winlator/cmod/xserver/Property$Mode;[B)Lcom/winlator/cmod/xserver/Property;
    .locals 4
    .param p1, "atom"    # I
    .param p2, "type"    # I
    .param p3, "format"    # Lcom/winlator/cmod/xserver/Property$Format;
    .param p4, "mode"    # Lcom/winlator/cmod/xserver/Property$Mode;
    .param p5, "data"    # [B

    .line 142
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/xserver/Window;->getProperty(I)Lcom/winlator/cmod/xserver/Property;

    move-result-object v0

    .line 143
    .local v0, "property":Lcom/winlator/cmod/xserver/Property;
    const/4 v1, 0x0

    .line 144
    .local v1, "modified":Z
    if-nez v0, :cond_0

    .line 145
    new-instance v2, Lcom/winlator/cmod/xserver/Property;

    invoke-direct {v2, p1, p2, p3, p5}, Lcom/winlator/cmod/xserver/Property;-><init>(IILcom/winlator/cmod/xserver/Property$Format;[B)V

    move-object v0, v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/xserver/Window;->addProperty(Lcom/winlator/cmod/xserver/Property;)V

    .line 146
    const/4 v1, 0x1

    goto :goto_2

    .line 148
    :cond_0
    sget-object v2, Lcom/winlator/cmod/xserver/Property$Mode;->REPLACE:Lcom/winlator/cmod/xserver/Property$Mode;

    if-ne p4, v2, :cond_2

    .line 149
    iget-object v2, v0, Lcom/winlator/cmod/xserver/Property;->format:Lcom/winlator/cmod/xserver/Property$Format;

    if-ne v2, p3, :cond_1

    .line 150
    invoke-virtual {v0, p5}, Lcom/winlator/cmod/xserver/Property;->replace([B)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/winlator/cmod/xserver/Window;->properties:Landroid/util/SparseArray;

    new-instance v3, Lcom/winlator/cmod/xserver/Property;

    invoke-direct {v3, p1, p2, p3, p5}, Lcom/winlator/cmod/xserver/Property;-><init>(IILcom/winlator/cmod/xserver/Property$Format;[B)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 155
    :cond_2
    iget-object v2, v0, Lcom/winlator/cmod/xserver/Property;->format:Lcom/winlator/cmod/xserver/Property$Format;

    if-ne v2, p3, :cond_5

    iget v2, v0, Lcom/winlator/cmod/xserver/Property;->type:I

    if-ne v2, p2, :cond_5

    .line 156
    sget-object v2, Lcom/winlator/cmod/xserver/Property$Mode;->PREPEND:Lcom/winlator/cmod/xserver/Property$Mode;

    if-ne p4, v2, :cond_3

    .line 157
    invoke-virtual {v0, p5}, Lcom/winlator/cmod/xserver/Property;->prepend([B)V

    goto :goto_1

    .line 159
    :cond_3
    sget-object v2, Lcom/winlator/cmod/xserver/Property$Mode;->APPEND:Lcom/winlator/cmod/xserver/Property$Mode;

    if-ne p4, v2, :cond_4

    .line 160
    invoke-virtual {v0, p5}, Lcom/winlator/cmod/xserver/Property;->append([B)V

    .line 162
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 165
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 166
    new-instance v2, Lcom/winlator/cmod/xserver/events/PropertyNotify;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/winlator/cmod/xserver/events/PropertyNotify;-><init>(Lcom/winlator/cmod/xserver/Window;IZ)V

    const/high16 v3, 0x400000

    invoke-virtual {p0, v3, v2}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 167
    return-object v0

    .line 169
    :cond_6
    const/4 v2, 0x0

    return-object v2
.end method

.method public moveChildAbove(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "child"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "sibling"    # Lcom/winlator/cmod/xserver/Window;

    .line 230
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 233
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public moveChildBelow(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "child"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "sibling"    # Lcom/winlator/cmod/xserver/Window;

    .line 239
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 245
    return-void
.end method

.method public previousSibling()Lcom/winlator/cmod/xserver/Window;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 226
    .local v0, "index":I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/Window;

    :cond_1
    return-object v1
.end method

.method public removeChild(Lcom/winlator/cmod/xserver/Window;)V
    .locals 1
    .param p1, "child"    # Lcom/winlator/cmod/xserver/Window;

    .line 218
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    .line 220
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    return-void

    .line 218
    :cond_1
    :goto_0
    return-void
.end method

.method public removeEventListener(Lcom/winlator/cmod/xserver/EventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/winlator/cmod/xserver/EventListener;

    .line 260
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public removeProperty(I)V
    .locals 2
    .param p1, "id"    # I

    .line 137
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->properties:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 138
    new-instance v0, Lcom/winlator/cmod/xserver/events/PropertyNotify;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/winlator/cmod/xserver/events/PropertyNotify;-><init>(Lcom/winlator/cmod/xserver/Window;IZ)V

    const/high16 v1, 0x400000

    invoke-virtual {p0, v1, v0}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 139
    return-void
.end method

.method public rootPointToLocal(SS)[S
    .locals 3
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 319
    move-object v0, p0

    .line 320
    .local v0, "window":Lcom/winlator/cmod/xserver/Window;
    :goto_0
    if-eqz v0, :cond_0

    .line 321
    iget-short v1, v0, Lcom/winlator/cmod/xserver/Window;->x:S

    sub-int v1, p1, v1

    int-to-short p1, v1

    .line 322
    iget-short v1, v0, Lcom/winlator/cmod/xserver/Window;->y:S

    sub-int v1, p2, v1

    int-to-short p2, v1

    .line 323
    iget-object v0, v0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    .line 325
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [S

    const/4 v2, 0x0

    aput-short p1, v1, v2

    const/4 v2, 0x1

    aput-short p2, v1, v2

    return-object v1
.end method

.method public sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "event"    # Lcom/winlator/cmod/xserver/events/Event;

    .line 278
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/EventListener;

    .line 279
    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v1, p2}, Lcom/winlator/cmod/xserver/EventListener;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 282
    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 283
    :cond_1
    return-void
.end method

.method public sendEvent(ILcom/winlator/cmod/xserver/events/Event;Lcom/winlator/cmod/xserver/XClient;)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "event"    # Lcom/winlator/cmod/xserver/events/Event;
    .param p3, "client"    # Lcom/winlator/cmod/xserver/XClient;

    .line 294
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/EventListener;

    .line 295
    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/winlator/cmod/xserver/EventListener;->client:Lcom/winlator/cmod/xserver/XClient;

    if-ne v2, p3, :cond_0

    .line 296
    invoke-virtual {v1, p2}, Lcom/winlator/cmod/xserver/EventListener;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 298
    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 299
    :cond_1
    return-void
.end method

.method public sendEvent(Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/Event;)V
    .locals 3
    .param p1, "eventMask"    # Lcom/winlator/cmod/xserver/Bitmask;
    .param p2, "event"    # Lcom/winlator/cmod/xserver/events/Event;

    .line 286
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/EventListener;

    .line 287
    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(Lcom/winlator/cmod/xserver/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v1, p2}, Lcom/winlator/cmod/xserver/EventListener;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 290
    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 291
    :cond_1
    return-void
.end method

.method public sendEvent(Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/Event;Lcom/winlator/cmod/xserver/XClient;)V
    .locals 3
    .param p1, "eventMask"    # Lcom/winlator/cmod/xserver/Bitmask;
    .param p2, "event"    # Lcom/winlator/cmod/xserver/events/Event;
    .param p3, "client"    # Lcom/winlator/cmod/xserver/XClient;

    .line 302
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/EventListener;

    .line 303
    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(Lcom/winlator/cmod/xserver/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/winlator/cmod/xserver/EventListener;->client:Lcom/winlator/cmod/xserver/XClient;

    if-ne v2, p3, :cond_0

    .line 304
    invoke-virtual {v1, p2}, Lcom/winlator/cmod/xserver/EventListener;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 306
    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    :cond_0
    goto :goto_0

    .line 307
    :cond_1
    return-void
.end method

.method public sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/winlator/cmod/xserver/events/Event;

    .line 310
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Window;->eventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/EventListener;

    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/xserver/EventListener;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method public serializeProperties()Ljava/lang/String;
    .locals 5

    .line 434
    const-string v0, ""

    .line 435
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/winlator/cmod/xserver/Window;->properties:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/winlator/cmod/xserver/Window;->properties:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/xserver/Property;

    .line 437
    .local v2, "property":Lcom/winlator/cmod/xserver/Property;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Property;->nameAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .end local v2    # "property":Lcom/winlator/cmod/xserver/Property;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public setBorderWidth(S)V
    .locals 0
    .param p1, "borderWidth"    # S

    .line 109
    iput-short p1, p0, Lcom/winlator/cmod/xserver/Window;->borderWidth:S

    .line 110
    return-void
.end method

.method public setContent(Lcom/winlator/cmod/xserver/Drawable;)V
    .locals 0
    .param p1, "content"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 117
    iput-object p1, p0, Lcom/winlator/cmod/xserver/Window;->content:Lcom/winlator/cmod/xserver/Drawable;

    .line 118
    return-void
.end method

.method public setHeight(S)V
    .locals 0
    .param p1, "height"    # S

    .line 101
    iput-short p1, p0, Lcom/winlator/cmod/xserver/Window;->height:S

    .line 102
    return-void
.end method

.method public setParent(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "parent"    # Lcom/winlator/cmod/xserver/Window;

    .line 125
    iput-object p1, p0, Lcom/winlator/cmod/xserver/Window;->parent:Lcom/winlator/cmod/xserver/Window;

    .line 126
    return-void
.end method

.method public setWidth(S)V
    .locals 0
    .param p1, "width"    # S

    .line 93
    iput-short p1, p0, Lcom/winlator/cmod/xserver/Window;->width:S

    .line 94
    return-void
.end method

.method public setX(S)V
    .locals 0
    .param p1, "x"    # S

    .line 77
    iput-short p1, p0, Lcom/winlator/cmod/xserver/Window;->x:S

    .line 78
    return-void
.end method

.method public setY(S)V
    .locals 0
    .param p1, "y"    # S

    .line 85
    iput-short p1, p0, Lcom/winlator/cmod/xserver/Window;->y:S

    .line 86
    return-void
.end method
