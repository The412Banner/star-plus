.class Lcom/winlator/cmod/ContentsFragment$2;
.super Ljava/lang/Object;
.source "ContentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ContentsFragment;->updateContentTypeSpinner(Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/ContentsFragment;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/ContentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/ContentsFragment;

    .line 151
    iput-object p1, p0, Lcom/winlator/cmod/ContentsFragment$2;->this$0:Lcom/winlator/cmod/ContentsFragment;

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

    .line 154
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$2;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fputcurrentContentType(Lcom/winlator/cmod/ContentsFragment;Lcom/winlator/cmod/contents/ContentProfile$ContentType;)V

    .line 155
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$2;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$mupdateContentsListView(Lcom/winlator/cmod/ContentsFragment;)V

    .line 156
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

    .line 161
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
