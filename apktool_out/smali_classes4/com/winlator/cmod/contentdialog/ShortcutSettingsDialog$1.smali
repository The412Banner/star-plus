.class Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$1;
.super Ljava/lang/Object;
.source "ShortcutSettingsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->createContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

    .line 253
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

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

    .line 256
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "selectedVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

    invoke-static {v1, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->-$$Nest$fputbox64Version(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;

    invoke-static {v1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->-$$Nest$fgetshortcut(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;)Lcom/winlator/cmod/container/Shortcut;

    move-result-object v1

    const-string v2, "box64Version"

    invoke-virtual {v1, v2, v0}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
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

    .line 266
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
