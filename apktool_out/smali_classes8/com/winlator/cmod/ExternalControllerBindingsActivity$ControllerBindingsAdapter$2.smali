.class Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;
.super Ljava/lang/Object;
.source "ExternalControllerBindingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->loadBindingSpinner(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field final synthetic val$holder:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

.field final synthetic val$item:Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V
    .locals 0
    .param p1, "this$1"    # Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->this$1:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    iput-object p2, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$holder:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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

    .line 345
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    .line 346
    .local v0, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$holder:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-static {v1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetbindingType(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 354
    :pswitch_0
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->gamepadBindingValues()[Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    goto :goto_0

    .line 351
    :pswitch_1
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->mouseBindingValues()[Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 352
    goto :goto_0

    .line 348
    :pswitch_2
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->keyboardBindingValues()[Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 349
    nop

    .line 358
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/winlator/cmod/inputcontrols/Binding;)V

    .line 360
    iget-object v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->this$1:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    iget-object v1, v1, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity;

    invoke-static {v1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->-$$Nest$fgetprofile(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 362
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 366
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
