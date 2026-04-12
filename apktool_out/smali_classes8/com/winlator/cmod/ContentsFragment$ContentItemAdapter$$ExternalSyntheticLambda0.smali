.class public final synthetic Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;

.field public final synthetic f$1:Lcom/winlator/cmod/contents/ContentProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/contents/ContentProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;

    iput-object p2, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/contents/ContentProfile;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;

    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/contents/ContentProfile;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->$r8$lambda$Ae3Mm9T9vVhTXn4ih1rvRdMzO_Y(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
