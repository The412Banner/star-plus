.class Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;
.super Landroid/widget/ArrayAdapter;
.source "MultiSelectionComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/widget/MultiSelectionComboBox;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/widget/MultiSelectionComboBox;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/widget/MultiSelectionComboBox;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "objects"    # [Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;->this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 101
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;->this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    invoke-static {v1}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->-$$Nest$fgetselectedItemSet(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;->this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    invoke-static {v2}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->-$$Nest$fgetitems(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;->this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    invoke-static {v1}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->-$$Nest$fgettext(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;->this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;->this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    invoke-static {v3}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->-$$Nest$fgetselectedItemSet(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;->this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    invoke-static {v3}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->-$$Nest$fgettext(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;->this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    iget-object v2, p0, Lcom/winlator/cmod/widget/MultiSelectionComboBox$1;->this$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    invoke-virtual {v2}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getSelectedItemsAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    return-object v0
.end method
