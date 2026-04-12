.class public final synthetic Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onScreenshotTaken(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->$r8$lambda$BgEeomM-AE54Iu5uhE509iyIRlA(Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
