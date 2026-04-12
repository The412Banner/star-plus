.class Lcom/winlator/cmod/ControlsEditorActivity$3;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ControlsEditorActivity;->loadShapeSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/ControlsEditorActivity;

.field final synthetic val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/ControlsEditorActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/winlator/cmod/ControlsEditorActivity$3;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    iput-object p2, p0, Lcom/winlator/cmod/ControlsEditorActivity$3;->val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

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

    .line 292
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$3;->val$element:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setShape(Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;)V

    .line 293
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$3;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ControlsEditorActivity;->-$$Nest$fgetprofile(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 294
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity$3;->this$0:Lcom/winlator/cmod/ControlsEditorActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ControlsEditorActivity;->-$$Nest$fgetinputControlsView(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 295
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

    .line 296
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
