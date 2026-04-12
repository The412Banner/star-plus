.class public final synthetic Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda3;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda3;->f$0:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$7(Landroid/content/SharedPreferences;Landroid/widget/RadioGroup;I)V

    return-void
.end method
