.class public Lcom/winlator/cmod/widget/MultiSelectionComboBox;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MultiSelectionComboBox.java"


# instance fields
.field private items:[Ljava/lang/String;

.field private final selectedItemSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$dpnmzMhLHlVTfD-Swfn6kou2dl4(Lcom/winlator/cmod/widget/MultiSelectionComboBox;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->lambda$performClick$0(Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetitems(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedItemSet(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettext(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->text:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->text:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private synthetic lambda$performClick$0(Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ArrayAdapter;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 116
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    aget-object v0, v0, p4

    .line 117
    .local v0, "item":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method


# virtual methods
.method public getItems()[Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedItemsAsString()Ljava/lang/String;
    .locals 7

    .line 82
    const-string v0, ""

    .line 83
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .local v4, "item":Ljava/lang/String;
    iget-object v5, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ","

    goto :goto_1

    :cond_0
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v4    # "item":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_2
    return-object v0
.end method

.method public getUnSelectedItemsAsString()Ljava/lang/String;
    .locals 7

    .line 88
    const-string v0, ""

    .line 89
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .local v4, "item":Ljava/lang/String;
    iget-object v5, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ","

    goto :goto_1

    :cond_0
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v4    # "item":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_2
    return-object v0
.end method

.method public performClick()Z
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090010

    iget-object v4, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;-><init>(Lcom/winlator/cmod/widget/MultiSelectionComboBox;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 110
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 111
    .local v2, "popupWindow":Landroidx/appcompat/widget/ListPopupWindow;
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 113
    const/high16 v3, 0x43820000    # 260.0f

    invoke-static {v3}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 115
    new-instance v3, Lcom/winlator/cmod/widget/MultiSelectionComboBox$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/widget/MultiSelectionComboBox;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 126
    return v1

    .line 95
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2    # "popupWindow":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_1
    :goto_0
    return v1
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getSelectedItemsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public setItems([Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->items:[Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->text:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getSelectedItemsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getSelectedItemsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    return-void
.end method

.method public setSelectedItems([Ljava/lang/String;)V
    .locals 2
    .param p1, "selectedItems"    # [Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 58
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getSelectedItemsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_0
    return-void
.end method

.method public unsetSelectedItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->selectedItemSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getSelectedItemsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    return-void
.end method
