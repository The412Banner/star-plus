.class public Lcom/winlator/cmod/bigpicture/CarouselItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CarouselItemDecoration.java"


# instance fields
.field private final spacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "spacing"    # I

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 12
    iput p1, p0, Lcom/winlator/cmod/bigpicture/CarouselItemDecoration;->spacing:I

    .line 13
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 18
    iget v0, p0, Lcom/winlator/cmod/bigpicture/CarouselItemDecoration;->spacing:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 19
    iget v0, p0, Lcom/winlator/cmod/bigpicture/CarouselItemDecoration;->spacing:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 20
    return-void
.end method
