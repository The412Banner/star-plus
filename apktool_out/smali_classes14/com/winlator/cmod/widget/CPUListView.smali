.class public Lcom/winlator/cmod/widget/CPUListView;
.super Landroid/widget/LinearLayout;
.source "CPUListView.java"


# instance fields
.field private checkedCPUList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final numProcessors:B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/widget/CPUListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/CPUListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/CPUListView;->setOrientation(I)V

    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/winlator/cmod/widget/CPUListView;->numProcessors:B

    .line 34
    invoke-direct {p0}, Lcom/winlator/cmod/widget/CPUListView;->refreshContent()V

    .line 35
    return-void
.end method

.method private refreshContent()V
    .locals 8

    .line 38
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/CPUListView;->removeAllViews()V

    .line 39
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/CPUListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/winlator/cmod/widget/CPUListView;->numProcessors:B

    if-ge v1, v2, :cond_2

    .line 42
    const v2, 0x7f0c0039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, "itemView":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "tag":Ljava/lang/String;
    const v5, 0x7f090072

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 45
    .local v5, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v6, p0, Lcom/winlator/cmod/widget/CPUListView;->checkedCPUList:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/winlator/cmod/widget/CPUListView;->checkedCPUList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    const v3, 0x7f09017c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/CPUListView;->addView(Landroid/view/View;)V

    .line 41
    .end local v2    # "itemView":Landroid/view/View;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "checkBox":Landroid/widget/CheckBox;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getCheckedCPUList()[Z
    .locals 4

    .line 75
    iget-byte v0, p0, Lcom/winlator/cmod/widget/CPUListView;->numProcessors:B

    new-array v0, v0, [Z

    .line 76
    .local v0, "cpuList":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/winlator/cmod/widget/CPUListView;->numProcessors:B

    if-ge v1, v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPU"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/CPUListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 78
    .local v2, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 76
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getCheckedCPUListAsString()Ljava/lang/String;
    .locals 5

    .line 65
    const-string v0, ""

    .line 67
    .local v0, "cpuList":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/winlator/cmod/widget/CPUListView;->numProcessors:B

    if-ge v1, v2, :cond_2

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPU"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/CPUListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 69
    .local v2, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public getNumProcessors()B
    .locals 1

    .line 84
    iget-byte v0, p0, Lcom/winlator/cmod/widget/CPUListView;->numProcessors:B

    return v0
.end method

.method public setCheckedCPUList(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 59
    iget-object v0, p0, Lcom/winlator/cmod/widget/CPUListView;->checkedCPUList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/CPUListView;->checkedCPUList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/widget/CPUListView;->refreshContent()V

    .line 62
    return-void
.end method

.method public setCheckedCPUList(Ljava/lang/String;)V
    .locals 1
    .param p1, "checkedCPUList"    # Ljava/lang/String;

    .line 54
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/CPUListView;->checkedCPUList:Ljava/util/List;

    .line 55
    invoke-direct {p0}, Lcom/winlator/cmod/widget/CPUListView;->refreshContent()V

    .line 56
    return-void
.end method
