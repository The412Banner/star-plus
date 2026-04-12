.class Lcom/winlator/cmod/ContainerDetailFragment$1;
.super Ljava/lang/Object;
.source "ContainerDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ContainerDetailFragment;->createWineConfigurationTab(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/ContainerDetailFragment;

.field final synthetic val$cpvDesktopBackgroundColor:Lcom/winlator/cmod/widget/ColorPickerView;

.field final synthetic val$ipvDesktopBackgroundImage:Lcom/winlator/cmod/widget/ImagePickerView;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/ContainerDetailFragment;Lcom/winlator/cmod/widget/ImagePickerView;Lcom/winlator/cmod/widget/ColorPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/ContainerDetailFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 641
    iput-object p1, p0, Lcom/winlator/cmod/ContainerDetailFragment$1;->this$0:Lcom/winlator/cmod/ContainerDetailFragment;

    iput-object p2, p0, Lcom/winlator/cmod/ContainerDetailFragment$1;->val$ipvDesktopBackgroundImage:Lcom/winlator/cmod/widget/ImagePickerView;

    iput-object p3, p0, Lcom/winlator/cmod/ContainerDetailFragment$1;->val$cpvDesktopBackgroundColor:Lcom/winlator/cmod/widget/ColorPickerView;

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

    .line 644
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->values()[Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    move-result-object v0

    aget-object v0, v0, p3

    .line 645
    .local v0, "type":Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;
    iget-object v1, p0, Lcom/winlator/cmod/ContainerDetailFragment$1;->val$ipvDesktopBackgroundImage:Lcom/winlator/cmod/widget/ImagePickerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/ImagePickerView;->setVisibility(I)V

    .line 646
    iget-object v1, p0, Lcom/winlator/cmod/ContainerDetailFragment$1;->val$cpvDesktopBackgroundColor:Lcom/winlator/cmod/widget/ColorPickerView;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/ColorPickerView;->setVisibility(I)V

    .line 648
    sget-object v1, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/winlator/cmod/ContainerDetailFragment$1;->val$ipvDesktopBackgroundImage:Lcom/winlator/cmod/widget/ImagePickerView;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/ImagePickerView;->setVisibility(I)V

    goto :goto_0

    .line 651
    :cond_0
    sget-object v1, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->COLOR:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    if-ne v0, v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/winlator/cmod/ContainerDetailFragment$1;->val$cpvDesktopBackgroundColor:Lcom/winlator/cmod/widget/ColorPickerView;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/ColorPickerView;->setVisibility(I)V

    .line 654
    :cond_1
    :goto_0
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

    .line 657
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
