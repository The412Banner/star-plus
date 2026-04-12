.class Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExternalControllerBindingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/ExternalControllerBindingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerBindingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity;


# direct methods
.method public static synthetic $r8$lambda$h9o3KwU8ho6WWIlYJQnX8DDSUg4(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->lambda$onBindViewHolder$0(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity;Lcom/winlator/cmod/ExternalControllerBindingsActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;-><init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)V

    return-void
.end method

.method static synthetic lambda$loadBindingSpinner$1(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V
    .locals 4
    .param p0, "holder"    # Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p1, "$this"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "bindingEntries":[Ljava/lang/String;
    invoke-static {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetbindingType(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->gamepadBindingLabels()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->mouseBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 311
    goto :goto_0

    .line 307
    :pswitch_2
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->keyboardBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 308
    nop

    .line 317
    :goto_0
    invoke-static {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetbinding(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 319
    invoke-static {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetbinding(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {p2}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/Binding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 320
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    .param p2, "view"    # Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->-$$Nest$fgetcontroller(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->removeControllerBinding(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V

    .line 289
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->-$$Nest$fgetprofile(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 290
    invoke-virtual {p0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->notifyDataSetChanged()V

    .line 291
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->-$$Nest$mupdateEmptyTextView(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)V

    .line 292
    return-void
.end method

.method private loadBindingSpinner(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V
    .locals 6
    .param p1, "holder"    # Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p2, "item"    # Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    .line 301
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity;

    .line 303
    .local v0, "$this":Landroid/content/Context;
    new-instance v1, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p2}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V

    .line 322
    .local v1, "update":Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetbindingType(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;-><init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 333
    invoke-virtual {p2}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v2

    .line 334
    .local v2, "selectedBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/Binding;->isKeyboard()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 335
    invoke-static {p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetbindingType(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/Binding;->isMouse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    invoke-static {p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetbindingType(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/Binding;->isGamepad()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    invoke-static {p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetbindingType(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 342
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetbinding(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    new-instance v4, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;-><init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 369
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 371
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->-$$Nest$fgetcontroller(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBindingCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 260
    check-cast p1, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->onBindViewHolder(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 284
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->-$$Nest$fgetcontroller(Lcom/winlator/cmod/ExternalControllerBindingsActivity;)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBindingAt(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    move-result-object v0

    .line 285
    .local v0, "item":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    invoke-static {p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgettitle(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->loadBindingSpinner(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V

    .line 287
    invoke-static {p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->-$$Nest$fgetremoveButton(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 278
    new-instance v0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 279
    const v2, 0x7f0c0052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;-><init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;Lcom/winlator/cmod/ExternalControllerBindingsActivity-IA;)V

    .line 278
    return-object v0
.end method
