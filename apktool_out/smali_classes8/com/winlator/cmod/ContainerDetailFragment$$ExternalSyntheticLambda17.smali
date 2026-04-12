.class public final synthetic Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/CheckBox;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda17;->f$0:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda17;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda17;->f$0:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda17;->f$1:Landroid/widget/CheckBox;

    invoke-static {v0, v1, p1, p2}, Lcom/winlator/cmod/ContainerDetailFragment;->lambda$onCreateView$3(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
