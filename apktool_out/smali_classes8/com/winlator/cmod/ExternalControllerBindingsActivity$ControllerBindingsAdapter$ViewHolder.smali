.class Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExternalControllerBindingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private final binding:Landroid/widget/Spinner;

.field private final bindingType:Landroid/widget/Spinner;

.field private final removeButton:Landroid/widget/ImageButton;

.field final synthetic this$1:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->binding:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbindingType(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->bindingType:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremoveButton(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->removeButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 267
    iput-object p1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->this$1:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    .line 268
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 269
    const p1, 0x7f09016f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 270
    const p1, 0x7f0900d9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->bindingType:Landroid/widget/Spinner;

    .line 271
    const p1, 0x7f0900d5

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->binding:Landroid/widget/Spinner;

    .line 272
    const p1, 0x7f090037

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->removeButton:Landroid/widget/ImageButton;

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;Lcom/winlator/cmod/ExternalControllerBindingsActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;-><init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;)V

    return-void
.end method
