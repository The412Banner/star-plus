.class Lcom/winlator/cmod/ControlsEditorActivity$2;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ControlsEditorActivity;->loadTypeSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/ControlsEditorActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/ControlsEditorActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/winlator/cmod/ControlsEditorActivity$2;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    iput-object p2, p0, Lcom/winlator/cmod/ControlsEditorActivity$2;->val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    iput-object p3, p0, Lcom/winlator/cmod/ControlsEditorActivity$2;->val$callback:Ljava/lang/Runnable;

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

    .line 277
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$2;->val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setType(Lcom/winlator/cmod/inputcontrols/ControlElement$Type;)V

    .line 278
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$2;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ControlsEditorActivity;->-$$Nest$fgetprofile(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 279
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 280
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$2;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ControlsEditorActivity;->-$$Nest$fgetinputControlsView(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 281
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

    .line 282
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
