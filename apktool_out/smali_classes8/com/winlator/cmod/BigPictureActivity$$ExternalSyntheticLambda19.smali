.class public final synthetic Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/BigPictureActivity;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;Landroid/widget/Button;Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;->f$0:Lcom/winlator/cmod/BigPictureActivity;

    iput-object p2, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;->f$3:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;->f$0:Lcom/winlator/cmod/BigPictureActivity;

    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;->f$1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;->f$3:Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/winlator/cmod/BigPictureActivity;->$r8$lambda$D-gIeRrumGF-RJLcFM3M33fryN4(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;Landroid/widget/Button;Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Landroid/widget/RadioGroup;I)V

    return-void
.end method
