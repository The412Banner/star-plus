.class public final synthetic Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/core/Callback;

.field public final synthetic f$1:Lcom/winlator/cmod/contentdialog/ContentDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/contentdialog/ContentDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda4;->f$0:Lcom/winlator/cmod/core/Callback;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda4;->f$1:Lcom/winlator/cmod/contentdialog/ContentDialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda4;->f$0:Lcom/winlator/cmod/core/Callback;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda4;->f$1:Lcom/winlator/cmod/contentdialog/ContentDialog;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/winlator/cmod/contentdialog/ContentDialog;->lambda$showSingleChoiceList$4(Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/contentdialog/ContentDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
