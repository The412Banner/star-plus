.class public final synthetic Lcom/winlator/cmod/widget/ImagePickerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:[Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;[Landroid/widget/PopupWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/winlator/cmod/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$1:[Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$1:[Landroid/widget/PopupWindow;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/widget/ImagePickerView;->lambda$onClick$1(Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
