.class Lcom/winlator/cmod/ControlsEditorActivity$6;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ControlsEditorActivity;->loadBindingSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/ControlsEditorActivity;

.field final synthetic val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

.field final synthetic val$index:I

.field final synthetic val$sBindingType:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/Spinner;Lcom/winlator/cmod/inputcontrols/ControlElement;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/ControlsEditorActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    iput-object p2, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->val$sBindingType:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    iput p4, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->val$index:I

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

    .line 357
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    .line 358
    .local v0, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->val$sBindingType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->gamepadBindingValues()[Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    goto :goto_0

    .line 360
    :pswitch_1
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->mouseBindingValues()[Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    goto :goto_0

    .line 359
    :pswitch_2
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->keyboardBindingValues()[Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    iget v2, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->val$index:I

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    iget v2, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->val$index:I

    invoke-virtual {v1, v2, v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setBindingAt(ILcom/winlator/cmod/inputcontrols/Binding;)V

    .line 365
    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    invoke-static {v1}, Lcom/winlator/cmod/ControlsEditorActivity;->-$$Nest$fgetprofile(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 366
    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity$6;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    invoke-static {v1}, Lcom/winlator/cmod/ControlsEditorActivity;->-$$Nest$fgetinputControlsView(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/widget/InputControlsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 368
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

    .line 369
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
