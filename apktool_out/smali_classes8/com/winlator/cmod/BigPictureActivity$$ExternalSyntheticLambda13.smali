.class public final synthetic Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/BigPictureActivity;

.field public final synthetic f$1:Landroid/content/SharedPreferences$Editor;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;->f$0:Lcom/winlator/cmod/BigPictureActivity;

    iput-object p2, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;->f$1:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;->f$0:Lcom/winlator/cmod/BigPictureActivity;

    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;->f$1:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;->f$3:Ljava/io/File;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/winlator/cmod/BigPictureActivity;->$r8$lambda$8MleicthdV0-Y06SGeLYThdzP7I(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method
