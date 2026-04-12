.class Lcom/winlator/cmod/InputControlsFragment$2;
.super Ljava/lang/Object;
.source "InputControlsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/InputControlsFragment;

.field final synthetic val$profiles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/InputControlsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/InputControlsFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/winlator/cmod/InputControlsFragment$2;->this$0:Lcom/winlator/cmod/InputControlsFragment;

    iput-object p2, p0, Lcom/winlator/cmod/InputControlsFragment$2;->val$profiles:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 317
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment$2;->this$0:Lcom/winlator/cmod/InputControlsFragment;

    if-lez p3, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/InputControlsFragment$2;->val$profiles:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/winlator/cmod/InputControlsFragment;->-$$Nest$fputcurrentProfile(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    .line 318
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment$2;->this$0:Lcom/winlator/cmod/InputControlsFragment;

    invoke-static {v0}, Lcom/winlator/cmod/InputControlsFragment;->-$$Nest$fgetupdateLayout(Lcom/winlator/cmod/InputControlsFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 319
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 322
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
