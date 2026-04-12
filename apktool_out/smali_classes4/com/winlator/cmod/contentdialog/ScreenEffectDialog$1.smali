.class Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$1;
.super Ljava/lang/Object;
.source "ScreenEffectDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;

    .line 101
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;

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

    .line 104
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-lez p3, :cond_0

    .line 105
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;

    invoke-static {v1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->-$$Nest$fgetsProfile(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->-$$Nest$mloadProfile(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V

    .line 107
    :cond_0
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

    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
