.class Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$7;
.super Ljava/lang/Object;
.source "GraphicsDriverConfigDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->initializeDialog(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    .line 268
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$7;->this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 271
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$7;->this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$fgetsBCnEmulation(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$sfputselectedBCnEmulation(Ljava/lang/String;)V

    .line 272
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

    .line 277
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
