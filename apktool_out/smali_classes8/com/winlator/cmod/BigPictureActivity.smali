.class public Lcom/winlator/cmod/BigPictureActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BigPictureActivity.java"


# static fields
.field private static API_KEY:Ljava/lang/String; = null

.field private static final BASE_URL:Ljava/lang/String; = "https://www.steamgriddb.com/api/v2/"

.field private static final REQUEST_CODE_SELECT_MP3:I = 0x42e

.field private static final REQUEST_CODE_SELECT_PNG_FOLDER:I = 0x442

.field private static final REQUEST_CODE_SELECT_WALLPAPER:I = 0x438

.field private static final REQUEST_CODE_UPLOAD_CUSTOM_COVER:I = 0x42d

.field public static final SEEK_BAR_PROGRESS_KEY:Ljava/lang/String; = "frame_duration_seekbar"

.field private static final WALLPAPER_DISPLAY_PREF_KEY:Ljava/lang/String; = "wallpaper_display_mode"

.field private static final WALLPAPER_PREF_KEY:Ljava/lang/String; = "custom_wallpaper_path"


# instance fields
.field private adapter:Lcom/winlator/cmod/bigpicture/BigPictureAdapter;

.field private audioDriverView:Landroid/widget/TextView;

.field private box64PresetView:Landroid/widget/TextView;

.field private coverArtView:Landroid/widget/ImageView;

.field private currentShortcut:Lcom/winlator/cmod/container/Shortcut;

.field private dxWrapperConfigView:Landroid/widget/TextView;

.field private dxWrapperView:Landroid/widget/TextView;

.field private emptyStateTextView:Landroid/widget/TextView;

.field private gameTitleView:Landroid/widget/TextView;

.field private graphicsDriverVersionView:Landroid/widget/TextView;

.field private graphicsDriverView:Landroid/widget/TextView;

.field private lastFocusedItemIndex:I

.field private manager:Lcom/winlator/cmod/container/ContainerManager;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playButton:Landroid/widget/ImageButton;

.field private playCountView:Landroid/widget/TextView;

.field private playtimeView:Landroid/widget/TextView;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selectedMp3Uri:Landroid/net/Uri;

.field private uploadText:Landroid/widget/TextView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$4r6m33qmYI6MDUFLxkX9Ne5_Q7k(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8MleicthdV0-Y06SGeLYThdzP7I(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onActivityResult$20(Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$C3m4tEcdf4Bl2GuyB1H629GtnYE(Lcom/winlator/cmod/BigPictureActivity;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$playMp3$22(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D-gIeRrumGF-RJLcFM3M33fryN4(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;Landroid/widget/Button;Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$1(Landroid/content/SharedPreferences;Landroid/widget/Button;Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DfETYu_zGujbBhMHc0TdK4AwGRE(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$loadShortcutData$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EPxOdH7vhhfcrtRBGWdsHxY3BNg(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$showCustomCoverArtUploadOption$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ozd_v_GLOEOKm3Bt5txsXxmwTO8(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/BigPictureActivity;->lambda$showCoverArtOptionsDialog$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$P3N8RBxUvyUKMv0rZPVElRgF0rM(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$4(Landroid/content/SharedPreferences;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PTLZX78_12foehWGs8J-1JrR7AI(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S0KUqgJ-1KBz0e6t3E0wnoB44Gk(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onActivityResult$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SO_So60_W0baqxFxJTzoZMlMolo(Lcom/winlator/cmod/BigPictureActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$8(Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X0AejEVQ42RPtfrBuM6AmC7_p28(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;Landroid/widget/RadioButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$6(Landroid/content/SharedPreferences;Landroid/widget/RadioButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xov1o7dkLd8qMIPFe53xfHoTgLg(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZLW4GVQ407s-JliG1m70b0kw_tY(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aHU1bhFdyacld8lDEP1HsT1SF1A(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fNhSG51LZTe6KRna81rcNnQh0Ok(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$frX2dWDEtWwwAg_fZptCzK-y93E(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$3(Landroid/content/SharedPreferences;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j7SQmB5awI5mpOSHH4zbDW_Vh74(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$showCustomCoverArtUploadOption$17(Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPWlhTQYSqEk8NNTIIdR9C6wHYc(Lcom/winlator/cmod/BigPictureActivity;Ljava/lang/String;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/BigPictureActivity;->lambda$downloadCoverArt$19(Ljava/lang/String;Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sSaAN99qTL6Aeu_h8g7f2o7hDI8(Lcom/winlator/cmod/BigPictureActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$downloadCoverArt$18(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yI99g7NaQwlhGgVYr8ufa_LryVU(Lcom/winlator/cmod/BigPictureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->lambda$onCreate$10(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetplayButton(Lcom/winlator/cmod/BigPictureActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView(Lcom/winlator/cmod/BigPictureActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdownloadCoverArt(Lcom/winlator/cmod/BigPictureActivity;Ljava/lang/String;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/BigPictureActivity;->downloadCoverArt(Ljava/lang/String;Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfetchGridsForGame(Lcom/winlator/cmod/BigPictureActivity;ILcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/BigPictureActivity;->fetchGridsForGame(ILcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCustomCoverArtUploadOption(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->showCustomCoverArtUploadOption(Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateTouchOnWebView(Lcom/winlator/cmod/BigPictureActivity;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->simulateTouchOnWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 97
    const-string v0, "0324c52513634547a7b32d6d323635d0"

    sput-object v0, Lcom/winlator/cmod/BigPictureActivity;->API_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/cmod/BigPictureActivity;->lastFocusedItemIndex:I

    return-void
.end method

.method private applyAnimationBasedOnState(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Ljava/lang/String;)V
    .locals 4
    .param p1, "backgroundView"    # Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    .param p2, "animationState"    # Ljava/lang/String;

    .line 1339
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1340
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "ab_quilt"

    const-string v2, "ab_gear"

    const-string v3, "folder"

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1357
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1358
    const-string v0, "ab"

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2

    .line 1355
    :pswitch_0
    goto :goto_2

    .line 1348
    :pswitch_1
    invoke-virtual {p1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->stopAnimation()V

    .line 1349
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setVisibility(I)V

    .line 1350
    return-void

    .line 1345
    :pswitch_2
    invoke-virtual {p1, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setAnimation(Ljava/lang/String;)V

    .line 1346
    goto :goto_2

    .line 1342
    :pswitch_3
    invoke-virtual {p1, v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setAnimation(Ljava/lang/String;)V

    .line 1343
    nop

    .line 1362
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->startAnimation()V

    .line 1364
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4ba2e392 -> :sswitch_3
        -0x481d8d13 -> :sswitch_2
        0x33af38 -> :sswitch_1
        0x4500396f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyParallaxMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 1663
    const v0, 0x7f0902cc

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    .line 1664
    .local v0, "backgroundView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    if-nez v0, :cond_0

    return-void

    .line 1666
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "slow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "fast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1677
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v3, v1, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setParallax(ZFF)V

    goto :goto_2

    .line 1674
    :pswitch_0
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3, v1, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setParallax(ZFF)V

    .line 1675
    goto :goto_2

    .line 1671
    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setParallax(ZFF)V

    .line 1672
    goto :goto_2

    .line 1668
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setParallax(ZFF)V

    .line 1669
    nop

    .line 1680
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1ad6f -> :sswitch_2
        0x2fd85c -> :sswitch_1
        0x35ea01 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyWallpaper(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "wallpaperUri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1326
    const v0, 0x7f0902cc

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    .line 1327
    .local v0, "backgroundView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1328
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1329
    .local v1, "wallpaper":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1330
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setVisibility(I)V

    .line 1331
    invoke-virtual {v0, v1, p2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setStaticWallpaper(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 1333
    :cond_0
    const-string v2, "BigPictureActivity"

    const-string v3, "Invalid wallpaper dimensions."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    .end local v1    # "wallpaper":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void
.end method

.method private cacheCoverArt(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p1, "coverArt"    # Landroid/graphics/Bitmap;
    .param p2, "shortcutName"    # Ljava/lang/String;

    .line 1168
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "coverArtCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1169
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1170
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1172
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1173
    .local v1, "coverFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1174
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1175
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1176
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "coverFile":Ljava/io/File;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1180
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private downloadCoverArt(Ljava/lang/String;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 1147
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/BigPictureActivity;Ljava/lang/String;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1164
    return-void
.end method

.method private enableImmersiveMode()V
    .locals 2

    .line 883
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 884
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 891
    return-void
.end method

.method private extractYouTubeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "youtubeUrl"    # Ljava/lang/String;

    .line 692
    const-string v0, "^(https?://)?(www\\.)?(youtube\\.com|youtu\\.?be)/.+$"

    .line 693
    .local v0, "videoIdPattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    const-string v1, "v="

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "splitUrl":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 697
    aget-object v2, v1, v3

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    return-object v2

    .line 698
    :cond_0
    const-string v2, "youtu.be/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 703
    .end local v1    # "splitUrl":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private fetchCoverArt(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 4
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 1048
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 1049
    const-string v1, "https://www.steamgriddb.com/api/v2/"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 1050
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 1051
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 1054
    .local v0, "retrofit":Lretrofit2/Retrofit;
    const-class v1, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridDBApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridDBApi;

    .line 1055
    .local v1, "api":Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridDBApi;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/winlator/cmod/BigPictureActivity;->API_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridDBApi;->searchGame(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 1057
    .local v2, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridSearchResponse;>;"
    new-instance v3, Lcom/winlator/cmod/BigPictureActivity$8;

    invoke-direct {v3, p0, p1}, Lcom/winlator/cmod/BigPictureActivity$8;-><init>(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1078
    return-void
.end method

.method private fetchGridsForGame(ILcom/winlator/cmod/container/Shortcut;)V
    .locals 9
    .param p1, "gameId"    # I
    .param p2, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 1116
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;

    new-instance v2, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponseDeserializer;

    invoke-direct {v2}, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponseDeserializer;-><init>()V

    .line 1117
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 1121
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 1122
    const-string v2, "https://www.steamgriddb.com/api/v2/"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 1123
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 1124
    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 1125
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    .line 1127
    .local v1, "retrofit":Lretrofit2/Retrofit;
    const-class v2, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridDBApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridDBApi;

    .line 1129
    .local v2, "api":Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridDBApi;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/winlator/cmod/BigPictureActivity;->API_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "600x900"

    const-string v8, "static"

    const-string v6, "alternate"

    move-object v3, v2

    move v5, p1

    invoke-interface/range {v3 .. v8}, Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridDBApi;->getGridsByGameId(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v3

    .line 1131
    .local v3, "gridsCall":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/winlator/cmod/bigpicture/steamgrid/SteamGridGridsResponse;>;"
    new-instance v4, Lcom/winlator/cmod/BigPictureActivity$9;

    invoke-direct {v4, p0, p2}, Lcom/winlator/cmod/BigPictureActivity$9;-><init>(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-interface {v3, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1144
    return-void
.end method

.method private focusClosestCarouselItem()V
    .locals 11

    .line 1478
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1479
    .local v0, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1480
    .local v1, "firstVisibleItemPosition":I
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 1482
    .local v2, "lastVisibleItemPosition":I
    const/4 v3, -0x1

    .line 1483
    .local v3, "closestPosition":I
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 1486
    .local v4, "closestDistance":F
    iget-object v5, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 1489
    .local v5, "recyclerViewCenter":I
    move v6, v1

    .local v6, "i":I
    :goto_0
    if-gt v6, v2, :cond_1

    .line 1490
    if-ltz v6, :cond_0

    .line 1491
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 1492
    .local v7, "itemView":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 1493
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 1494
    .local v8, "itemCenter":I
    sub-int v9, v5, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    .line 1496
    .local v9, "distanceFromCenter":F
    cmpg-float v10, v9, v4

    if-gez v10, :cond_0

    .line 1497
    move v4, v9

    .line 1498
    move v3, v6

    .line 1489
    .end local v7    # "itemView":Landroid/view/View;
    .end local v8    # "itemCenter":I
    .end local v9    # "distanceFromCenter":F
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1505
    .end local v6    # "i":I
    :cond_1
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 1506
    iget-object v6, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1507
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 1509
    :cond_2
    return-void
.end method

.method private formatPlaytime(J)Ljava/lang/String;
    .locals 12
    .param p1, "playtimeInMillis"    # J

    .line 1410
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    .line 1411
    .local v0, "seconds":J
    const-wide/32 v4, 0xea60

    div-long v4, p1, v4

    rem-long/2addr v4, v2

    .line 1412
    .local v4, "minutes":J
    const-wide/32 v2, 0x36ee80

    div-long v2, p1, v2

    const-wide/16 v6, 0x18

    rem-long/2addr v2, v6

    .line 1413
    .local v2, "hours":J
    const-wide/32 v6, 0x5265c00

    div-long v6, p1, v6

    .line 1415
    .local v6, "days":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%dd %02dh %02dm %02ds"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getCenterItemPosition()I
    .locals 11

    .line 902
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 903
    .local v0, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 904
    .local v1, "firstVisibleItemPosition":I
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 906
    .local v2, "lastVisibleItemPosition":I
    const/4 v3, -0x1

    .line 907
    .local v3, "centerPosition":I
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 908
    .local v4, "closestToCenter":F
    iget-object v5, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 910
    .local v5, "recyclerViewCenter":I
    move v6, v1

    .local v6, "i":I
    :goto_0
    if-gt v6, v2, :cond_1

    .line 911
    if-ltz v6, :cond_0

    .line 912
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 913
    .local v7, "itemView":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 914
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 915
    .local v8, "itemCenter":I
    sub-int v9, v5, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    .line 917
    .local v9, "distanceFromCenter":F
    cmpg-float v10, v9, v4

    if-gez v10, :cond_0

    .line 918
    move v4, v9

    .line 919
    move v3, v6

    .line 910
    .end local v7    # "itemView":Landroid/view/View;
    .end local v8    # "itemCenter":I
    .end local v9    # "distanceFromCenter":F
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 925
    .end local v6    # "i":I
    :cond_1
    return v3
.end method

.method private getSelectedShortcut()Lcom/winlator/cmod/container/Shortcut;
    .locals 2

    .line 894
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->getCenterItemPosition()I

    move-result v0

    .line 895
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->adapter:Lcom/winlator/cmod/bigpicture/BigPictureAdapter;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->getItem(I)Lcom/winlator/cmod/container/Shortcut;

    move-result-object v1

    return-object v1

    .line 898
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private hideSettingsView()V
    .locals 11

    .line 803
    const v0, 0x7f090268

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 804
    .local v0, "mainLayout":Landroid/widget/LinearLayout;
    const v1, 0x7f090326

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 807
    .local v1, "settingsLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    const/4 v6, 0x0

    aput v6, v4, v2

    const-string v7, "translationX"

    invoke-static {v0, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 808
    .local v4, "mainSlideIn":Landroid/animation/ObjectAnimator;
    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 809
    const-wide/16 v8, 0x1f4

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 810
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 813
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    new-array v3, v3, [F

    aput v6, v3, v5

    aput v10, v3, v2

    invoke-static {v1, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 814
    .local v2, "settingsSlideOut":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 815
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 816
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 817
    new-instance v3, Lcom/winlator/cmod/BigPictureActivity$7;

    invoke-direct {v3, p0, v1}, Lcom/winlator/cmod/BigPictureActivity$7;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 823
    return-void
.end method

.method private synthetic lambda$downloadCoverArt$18(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "coverArt"    # Landroid/graphics/Bitmap;

    .line 1159
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$downloadCoverArt$19(Ljava/lang/String;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 1149
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1150
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1151
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1152
    .local v1, "input":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1155
    .local v2, "coverArt":Landroid/graphics/Bitmap;
    iget-object v3, p2, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/winlator/cmod/BigPictureActivity;->cacheCoverArt(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/container/Shortcut;->setCoverArt(Landroid/graphics/Bitmap;)V

    .line 1159
    new-instance v3, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v2}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda11;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/BigPictureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "coverArt":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$loadShortcutData$15(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1001
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Shortcut;->getCustomCoverArtPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1003
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->showCoverArtOptionsDialog()V

    goto :goto_0

    .line 1006
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->promptForCustomCoverArtUpload()V

    .line 1008
    :goto_0
    return-void
.end method

.method private synthetic lambda$onActivityResult$20(Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "displayOptions"    # [Ljava/lang/String;
    .param p3, "wallpaperFile"    # Ljava/io/File;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 1225
    aget-object v0, p2, p5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wallpaper_display_mode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1226
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1230
    :try_start_0
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    aget-object v1, p2, p5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/BigPictureActivity;->applyWallpaper(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    nop

    .line 1234
    return-void

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic lambda$onActivityResult$21(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1286
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Shortcut;->getCustomCoverArtPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->showCoverArtOptionsDialog()V

    goto :goto_0

    .line 1291
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->promptForCustomCoverArtUpload()V

    .line 1293
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 160
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->selectPngFolder()V

    .line 161
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/content/SharedPreferences;Landroid/widget/Button;Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "selectWallpaperButton"    # Landroid/widget/Button;
    .param p3, "backgroundView"    # Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    .param p4, "group"    # Landroid/widget/RadioGroup;
    .param p5, "checkedId"    # I

    .line 242
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const v1, 0x7f0902e7

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, "selected_animation"

    if-ne p5, v1, :cond_0

    .line 244
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    invoke-virtual {p3, v3}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setVisibility(I)V

    .line 246
    const-string v1, "custom_wallpaper"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    invoke-virtual {p3, v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setVisibility(I)V

    .line 252
    const v1, 0x7f0902ea

    if-ne p5, v1, :cond_1

    .line 253
    const-string v1, "ab_gear"

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setAnimation(Ljava/lang/String;)V

    .line 254
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 255
    :cond_1
    const v1, 0x7f0902f0

    if-ne p5, v1, :cond_2

    .line 256
    const-string v1, "ab_quilt"

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setAnimation(Ljava/lang/String;)V

    .line 257
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 258
    :cond_2
    const v1, 0x7f0902e8

    if-ne p5, v1, :cond_3

    .line 259
    const-string v1, "ab"

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setAnimation(Ljava/lang/String;)V

    .line 260
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 261
    :cond_3
    const v1, 0x7f0902eb

    if-ne p5, v1, :cond_4

    .line 262
    invoke-virtual {p3}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->stopAnimation()V

    .line 263
    invoke-virtual {p3, v3}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setVisibility(I)V

    .line 264
    const-string v1, "none"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 265
    :cond_4
    const v1, 0x7f0902e9

    if-ne p5, v1, :cond_5

    .line 266
    const-string v1, "folder"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->selectPngFolder()V

    .line 270
    :cond_5
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    invoke-virtual {p3}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->startAnimation()V

    .line 272
    return-void
.end method

.method private synthetic lambda$onCreate$10(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 571
    const v0, 0x7f090326

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->hideSettingsView()V

    goto :goto_0

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->showSettingsView()V

    .line 576
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$11(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 615
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-direct {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->runFromShortcut(Lcom/winlator/cmod/container/Shortcut;)V

    .line 618
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$12(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 621
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Shortcut;->getCustomCoverArtPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->showCoverArtOptionsDialog()V

    goto :goto_0

    .line 627
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->promptForCustomCoverArtUpload()V

    .line 630
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const/16 v1, 0x438

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/BigPictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/content/SharedPreferences;Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "group"    # Landroid/widget/RadioGroup;
    .param p3, "checkedId"    # I

    .line 342
    packed-switch p3, :pswitch_data_0

    .line 353
    const-string v0, "default"

    .local v0, "mode":Ljava/lang/String;
    goto :goto_0

    .line 347
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_0
    const-string v0, "slow"

    .line 348
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 344
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string v0, "off"

    .line 345
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 350
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string v0, "fast"

    .line 351
    .restart local v0    # "mode":Ljava/lang/String;
    nop

    .line 356
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "parallax_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    invoke-direct {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->applyParallaxMode(Ljava/lang/String;)V

    .line 360
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0902ed
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onCreate$4(Landroid/content/SharedPreferences;Landroid/widget/Button;Landroid/view/View;)V
    .locals 4
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "disableBgMusicButton"    # Landroid/widget/Button;
    .param p3, "v"    # Landroid/view/View;

    .line 395
    const/4 v0, 0x1

    const-string v1, "bg_music_enabled"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 396
    .local v0, "currentBgMusicState":Z
    xor-int/lit8 v2, v0, 0x1

    .line 398
    .local v2, "newBgMusicState":Z
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 399
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 400
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 402
    invoke-direct {p0, p2, v2}, Lcom/winlator/cmod/BigPictureActivity;->updateBgMusicButtonText(Landroid/widget/Button;Z)V

    .line 405
    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->onResume()V

    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->stopBackgroundMusic()V

    .line 410
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$5(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "audio/mpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const/16 v1, 0x42e

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/BigPictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 419
    return-void
.end method

.method private synthetic lambda$onCreate$6(Landroid/content/SharedPreferences;Landroid/widget/RadioButton;Landroid/view/View;)V
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "mp3RadioButton"    # Landroid/widget/RadioButton;
    .param p3, "v"    # Landroid/view/View;

    .line 430
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->stopBackgroundMusic()V

    .line 433
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "selected_mp3_path"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    const-string v1, "music_source"

    const-string v2, "mp3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 439
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 442
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->playDefaultMp3FromAssets()V

    .line 445
    const-string v1, "MP3 reset to default"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 446
    return-void
.end method

.method static synthetic lambda$onCreate$7(Landroid/content/SharedPreferences;Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 460
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const v1, 0x7f0903a2

    const-string v2, "music_source"

    if-ne p2, v1, :cond_0

    .line 462
    const-string v1, "youtube"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 463
    :cond_0
    const v1, 0x7f09029d

    if-ne p2, v1, :cond_1

    .line 464
    const-string v1, "mp3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 466
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 467
    return-void
.end method

.method private synthetic lambda$onCreate$8(Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 4
    .param p1, "youtubeUrlInput"    # Landroid/widget/EditText;
    .param p2, "preferences"    # Landroid/content/SharedPreferences;
    .param p3, "v"    # Landroid/view/View;

    .line 517
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "userUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    invoke-direct {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->extractYouTubeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "videoId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 521
    invoke-direct {p0, v1}, Lcom/winlator/cmod/BigPictureActivity;->loadYouTubeVideo(Ljava/lang/String;)V

    .line 524
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 525
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "saved_youtube_url"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 526
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 527
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 529
    :cond_0
    const-string v2, "Invalid YouTube URL"

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 531
    .end local v1    # "videoId":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 533
    :cond_1
    const-string v1, "yNwKYgM6SkM"

    invoke-direct {p0, v1}, Lcom/winlator/cmod/BigPictureActivity;->loadYouTubeVideo(Ljava/lang/String;)V

    .line 535
    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreate$9(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 552
    const v0, 0x7f090326

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->hideSettingsView()V

    goto :goto_0

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->showSettingsView()V

    .line 557
    :goto_0
    return-void
.end method

.method private synthetic lambda$playMp3$22(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 1381
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private synthetic lambda$showCoverArtOptionsDialog$14(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 831
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 836
    :pswitch_0
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->promptForCustomCoverArtUpload()V

    goto :goto_0

    .line 833
    :pswitch_1
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->removeCustomCoverArt()V

    .line 834
    nop

    .line 839
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$showCustomCoverArtUploadOption$16(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 1088
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->promptForCustomCoverArtUpload()V

    return-void
.end method

.method private synthetic lambda$showCustomCoverArtUploadOption$17(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 4
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 1083
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1084
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    const-string v1, "#99000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1087
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    const v2, 0x7f0800f4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1088
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    new-instance v2, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1093
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1094
    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1098
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    .line 1099
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable cover art found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Click the image to upload custom cover art or rename the Shortcut to something SteamGrid can recognize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1101
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1102
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1103
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1104
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1107
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1108
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1109
    return-void
.end method

.method static synthetic lambda$simulateTouchOnWebView$13(Landroid/webkit/WebView;)V
    .locals 19
    .param p0, "webView"    # Landroid/webkit/WebView;

    .line 744
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    .line 745
    .local v1, "webViewWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    .line 748
    .local v2, "webViewHeight":I
    int-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 749
    .local v3, "x":F
    int-to-float v5, v2

    div-float v4, v5, v4

    .line 752
    .local v4, "y":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 753
    .local v13, "downTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v15, 0x64

    add-long v17, v5, v15

    .line 756
    .local v17, "eventTime":J
    const/4 v9, 0x0

    const/4 v12, 0x0

    move-wide v5, v13

    move-wide/from16 v7, v17

    move v10, v3

    move v11, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 761
    .local v12, "touchDown":Landroid/view/MotionEvent;
    add-long v7, v17, v15

    const/4 v9, 0x1

    const/4 v15, 0x0

    move/from16 v16, v1

    move-object v1, v12

    .end local v12    # "touchDown":Landroid/view/MotionEvent;
    .local v1, "touchDown":Landroid/view/MotionEvent;
    .local v16, "webViewWidth":I
    move v12, v15

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 766
    .local v5, "touchUp":Landroid/view/MotionEvent;
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 767
    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 770
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 771
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 774
    return-void
.end method

.method private loadCachedCoverArt(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "shortcutName"    # Ljava/lang/String;

    .line 1184
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "coverArtCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1185
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1186
    .local v1, "coverFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1187
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1191
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "coverFile":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1192
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadFramesFromFolder(Landroid/net/Uri;)V
    .locals 10
    .param p1, "folderUri"    # Landroid/net/Uri;

    .line 1624
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .line 1625
    .local v0, "docFolder":Landroidx/documentfile/provider/DocumentFile;
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 1631
    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    .line 1632
    .local v2, "docFiles":[Landroidx/documentfile/provider/DocumentFile;
    if-eqz v2, :cond_8

    array-length v3, v2

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 1637
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1638
    .local v3, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    array-length v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    .line 1639
    .local v6, "df":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1640
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1642
    .local v8, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 1643
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1645
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1647
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_3
    goto :goto_2

    .line 1640
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_4

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v9

    :try_start_4
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "docFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v2    # "docFiles":[Landroidx/documentfile/provider/DocumentFile;
    .end local v3    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .end local v6    # "df":Landroidx/documentfile/provider/DocumentFile;
    .end local p1    # "folderUri":Landroid/net/Uri;
    :cond_4
    :goto_1
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1645
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v0    # "docFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v2    # "docFiles":[Landroidx/documentfile/provider/DocumentFile;
    .restart local v3    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .restart local v6    # "df":Landroidx/documentfile/provider/DocumentFile;
    .restart local p1    # "folderUri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 1646
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1638
    .end local v6    # "df":Landroidx/documentfile/provider/DocumentFile;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1651
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1652
    const-string v4, "No PNG files found in this folder!"

    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1653
    return-void

    .line 1656
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " PNG frames from folder."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AnimationCheck"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const v1, 0x7f0902cc

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    .line 1659
    .local v1, "backgroundView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    invoke-virtual {v1, v3}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->loadFramesFromBitmaps(Ljava/util/List;)V

    .line 1660
    return-void

    .line 1633
    .end local v1    # "backgroundView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    .end local v3    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :cond_8
    :goto_3
    const-string v3, "No files in folder!"

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1634
    return-void

    .line 1626
    .end local v2    # "docFiles":[Landroidx/documentfile/provider/DocumentFile;
    :cond_9
    :goto_4
    const-string v2, "Invalid folder selected!"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1627
    return-void
.end method

.method private loadShortcutsList()V
    .locals 4

    .line 929
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->manager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/ContainerManager;->loadShortcuts()Ljava/util/ArrayList;

    move-result-object v0

    .line 930
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/container/Shortcut;>;"
    const v1, 0x7f09013c

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->emptyStateTextView:Landroid/widget/TextView;

    .line 933
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 936
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 937
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->emptyStateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 941
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->emptyStateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    new-instance v1, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;

    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, v0, v2}, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;-><init>(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->adapter:Lcom/winlator/cmod/bigpicture/BigPictureAdapter;

    .line 945
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 946
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->adapter:Lcom/winlator/cmod/bigpicture/BigPictureAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 949
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/BigPictureActivity;->loadShortcutData(Lcom/winlator/cmod/container/Shortcut;)V

    .line 951
    :goto_0
    return-void
.end method

.method private loadYouTubeVideo(Ljava/lang/String;)V
    .locals 4
    .param p1, "videoId"    # Ljava/lang/String;

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body><iframe id=\"player\" type=\"text/html\" width=\"100%\" height=\"100%\"src=\"https://www.youtube.com/embed/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?enablejsapi=1\"frameborder=\"0\" allowfullscreen></iframe></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "html":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/winlator/cmod/BigPictureActivity$5;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/BigPictureActivity$5;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 722
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method private playDefaultMp3FromAssets()V
    .locals 7

    .line 1567
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1571
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 1573
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "default_music.mp3"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 1574
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1575
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1576
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1577
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 1578
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 1579
    :catch_0
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1582
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private playMp3(Ljava/io/File;)V
    .locals 3
    .param p1, "mp3File"    # Ljava/io/File;

    .line 1370
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1374
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 1376
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1377
    .local v0, "fis":Ljava/io/FileInputStream;
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1378
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1380
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1381
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda9;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    .end local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1385
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private promptForCustomCoverArtUpload()V
    .locals 2

    .line 876
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const/16 v1, 0x42d

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/BigPictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 880
    return-void
.end method

.method private removeCustomCoverArt()V
    .locals 5

    .line 845
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v0, :cond_1

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing cover art for shortcut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigPictureActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current custom cover art path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Shortcut;->getCustomCoverArtPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Shortcut;->removeCustomCoverArt()V

    .line 853
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverArtCache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 854
    .local v0, "cachedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    const-string v2, "Cached cover art deleted successfully."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 857
    :cond_0
    const-string v2, "Failed to delete cached cover art or it doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :goto_0
    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    const v3, 0x7f080117

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 862
    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    const-string v3, "#99000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 864
    const-string v2, "Custom cover art removed and data saved."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/BigPictureActivity;->loadShortcutData(Lcom/winlator/cmod/container/Shortcut;)V

    .line 868
    const-string v2, "Shortcut data reloaded after removal."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .end local v0    # "cachedFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private runFromShortcut(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 3
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 1014
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1015
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v1, v1, Lcom/winlator/cmod/container/Container;->id:I

    const-string v2, "container_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1016
    iget-object v1, p1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    const-string v1, "shortcut_name"

    iget-object v2, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1019
    const-string v1, "0"

    const-string v2, "disableXinput"

    invoke-virtual {p1, v2, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    .local v1, "disableXinputValue":Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->startActivity(Landroid/content/Intent;)V

    .line 1022
    return-void
.end method

.method private selectPngFolder()V
    .locals 2

    .line 1613
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1619
    const/16 v1, 0x442

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/BigPictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1620
    return-void
.end method

.method private setTextFromContainer(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "shortcutValue"    # Ljava/lang/String;
    .param p4, "containerValue"    # Ljava/lang/String;

    .line 1037
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1039
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1042
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Not Set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    :goto_0
    return-void
.end method

.method private setTextOrPlaceholder(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "shortcutValue"    # Ljava/lang/String;
    .param p3, "containerValue"    # Ljava/lang/String;

    .line 1026
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1028
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1029
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1031
    :cond_1
    const-string v0, "Not Set"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    :goto_0
    return-void
.end method

.method private showCoverArtOptionsDialog()V
    .locals 4

    .line 828
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 829
    const-string v1, "Cover Art Options"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Remove Custom Cover Art"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Upload New Cover Art"

    aput-object v3, v1, v2

    new-instance v2, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    .line 830
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 840
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 842
    return-void
.end method

.method private showCustomCoverArtUploadOption(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 1
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 1082
    new-instance v0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda10;-><init>(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1110
    return-void
.end method

.method private showSettingsView()V
    .locals 4

    .line 778
    const v0, 0x7f090268

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 779
    .local v0, "mainLayout":Landroid/widget/LinearLayout;
    const v1, 0x7f090326

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 781
    .local v1, "settingsLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 783
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/BigPictureActivity$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/winlator/cmod/BigPictureActivity$6;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 800
    return-void
.end method

.method private simulateTouchOnWebView(Landroid/webkit/WebView;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 742
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/WebView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 775
    return-void
.end method

.method private stopBackgroundMusic()V
    .locals 2

    .line 1590
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1597
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 1600
    :cond_1
    return-void
.end method

.method private updateBgMusicButtonText(Landroid/widget/Button;Z)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "isEnabled"    # Z

    .line 677
    if-eqz p2, :cond_0

    .line 678
    const-string v0, "Disable BG Music"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 680
    :cond_0
    const-string v0, "Enable BG Music"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1420
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1421
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1423
    .local v0, "currentFocus":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 1464
    :sswitch_0
    const v1, 0x7f090326

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1465
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->hideSettingsView()V

    goto :goto_0

    .line 1467
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->showSettingsView()V

    .line 1469
    :goto_0
    return v2

    .line 1452
    :sswitch_1
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    if-ne v0, v1, :cond_1

    .line 1454
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->performClick()Z

    .line 1455
    return v2

    .line 1456
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_4

    .line 1458
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    .line 1459
    return v2

    .line 1449
    :sswitch_2
    goto :goto_1

    .line 1440
    :sswitch_3
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    if-ne v0, v1, :cond_4

    .line 1442
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->focusClosestCarouselItem()V

    .line 1443
    return v2

    .line 1425
    :sswitch_4
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, v1, :cond_2

    .line 1426
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1427
    return v2

    .line 1428
    :cond_2
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    if-ne v0, v1, :cond_3

    .line 1430
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->graphicsDriverView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1431
    return v2

    .line 1432
    :cond_3
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    if-eq v0, v1, :cond_4

    .line 1434
    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1435
    return v2

    .line 1474
    .end local v0    # "currentFocus":Landroid/view/View;
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x60 -> :sswitch_1
        0x67 -> :sswitch_0
        0x69 -> :sswitch_0
    .end sparse-switch
.end method

.method public loadShortcutData(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 9
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 955
    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded cover art path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/winlator/cmod/container/Shortcut;->getCustomCoverArtPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigPictureActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->gameTitleView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    const-string v0, "playtime_stats"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/BigPictureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 965
    .local v0, "playtimePrefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_playtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 966
    .local v2, "totalPlaytime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_play_count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 967
    .local v1, "playCount":I
    iget-object v4, p0, Lcom/winlator/cmod/BigPictureActivity;->playCountView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Times Played: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    iget-object v4, p0, Lcom/winlator/cmod/BigPictureActivity;->playtimeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playtime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2, v3}, Lcom/winlator/cmod/BigPictureActivity;->formatPlaytime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    iget-object v4, p0, Lcom/winlator/cmod/BigPictureActivity;->manager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v4, p1}, Lcom/winlator/cmod/container/ContainerManager;->getContainerForShortcut(Lcom/winlator/cmod/container/Shortcut;)Lcom/winlator/cmod/container/Container;

    move-result-object v4

    .line 972
    .local v4, "container":Lcom/winlator/cmod/container/Container;
    const-string v5, "graphicsDriver"

    invoke-virtual {p1, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 974
    .local v5, "graphicsDriver":Ljava/lang/String;
    iget-object v6, p0, Lcom/winlator/cmod/BigPictureActivity;->graphicsDriverView:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v5, v7}, Lcom/winlator/cmod/BigPictureActivity;->setTextOrPlaceholder(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v6, p0, Lcom/winlator/cmod/BigPictureActivity;->graphicsDriverVersionView:Landroid/widget/TextView;

    const-string v7, "graphicsDroverConfig"

    invoke-virtual {p1, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/winlator/cmod/BigPictureActivity;->setTextOrPlaceholder(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v6, p0, Lcom/winlator/cmod/BigPictureActivity;->dxWrapperView:Landroid/widget/TextView;

    const-string v7, "dxwrapper"

    invoke-virtual {p1, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/winlator/cmod/BigPictureActivity;->setTextOrPlaceholder(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v6, p0, Lcom/winlator/cmod/BigPictureActivity;->dxWrapperConfigView:Landroid/widget/TextView;

    const-string v7, "dxwrapperConfig"

    invoke-virtual {p1, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/winlator/cmod/BigPictureActivity;->setTextOrPlaceholder(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v6, p0, Lcom/winlator/cmod/BigPictureActivity;->audioDriverView:Landroid/widget/TextView;

    const-string v7, "audioDriver"

    invoke-virtual {p1, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/winlator/cmod/BigPictureActivity;->setTextOrPlaceholder(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v6, p0, Lcom/winlator/cmod/BigPictureActivity;->box64PresetView:Landroid/widget/TextView;

    const-string v7, "box64Preset"

    invoke-virtual {p1, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/winlator/cmod/BigPictureActivity;->setTextOrPlaceholder(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/4 v6, 0x0

    .line 983
    .local v6, "coverArt":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Shortcut;->getCustomCoverArtPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/winlator/cmod/container/Shortcut;->getCustomCoverArtPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 984
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Shortcut;->getCustomCoverArtPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 987
    :cond_0
    if-nez v6, :cond_1

    .line 989
    iget-object v7, p1, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/winlator/cmod/BigPictureActivity;->loadCachedCoverArt(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 992
    :cond_1
    if-eqz v6, :cond_2

    .line 993
    iget-object v7, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 995
    :cond_2
    iget-object v7, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    const v8, 0x7f0800f4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 996
    invoke-direct {p0, p1}, Lcom/winlator/cmod/BigPictureActivity;->fetchCoverArt(Lcom/winlator/cmod/container/Shortcut;)V

    .line 1000
    :goto_0
    iget-object v7, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    new-instance v8, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1197
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1199
    const/16 v0, 0x438

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    .line 1200
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1204
    .local v0, "selectedImageUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1205
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1206
    .local v4, "wallpaper":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 1207
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "custom_bg.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1208
    .local v5, "wallpaperFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1209
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v4, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1210
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 1211
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1214
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1215
    .local v7, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1216
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "custom_wallpaper_path"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1217
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1220
    new-array v9, v1, [Ljava/lang/String;

    const-string v10, "Center"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string v10, "Stretch"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string v10, "Tile"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 1221
    .local v9, "displayOptions":[Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "Select Display Mode"

    .line 1222
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;

    invoke-direct {v11, p0, v8, v9, v5}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda13;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences$Editor;[Ljava/lang/String;Ljava/io/File;)V

    .line 1223
    invoke-virtual {v10, v9, v11}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1235
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "wallpaper":Landroid/graphics/Bitmap;
    .end local v5    # "wallpaperFile":Ljava/io/File;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "displayOptions":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1237
    :catch_0
    move-exception v3

    .line 1238
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1243
    .end local v0    # "selectedImageUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    const/16 v0, 0x42e

    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1244
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/BigPictureActivity;->selectedMp3Uri:Landroid/net/Uri;

    .line 1247
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1248
    .local v0, "appStorageDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "bigpicturemode_bgmusic.mp3"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1251
    .local v3, "musicFile":Ljava/io/File;
    iget-object v4, p0, Lcom/winlator/cmod/BigPictureActivity;->selectedMp3Uri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5}, Lcom/winlator/cmod/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;Lcom/winlator/cmod/core/Callback;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1253
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1254
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1255
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "selected_mp3_path"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1256
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1259
    invoke-direct {p0, v3}, Lcom/winlator/cmod/BigPictureActivity;->playMp3(Ljava/io/File;)V

    .line 1260
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_1

    .line 1261
    :cond_2
    const-string v4, "BigPictureActivity"

    const-string v5, "Failed to copy the MP3 file."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1263
    .end local v0    # "appStorageDir":Ljava/io/File;
    .end local v3    # "musicFile":Ljava/io/File;
    :cond_3
    const/16 v0, 0x42d

    if-ne p1, v0, :cond_6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1264
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1266
    .local v0, "selectedImageUri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1267
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1270
    .local v4, "customCoverArt":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v5, :cond_5

    .line 1271
    iget-object v5, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v5, v4}, Lcom/winlator/cmod/container/Shortcut;->saveCustomCoverArt(Landroid/graphics/Bitmap;)V

    .line 1274
    iget-object v5, p0, Lcom/winlator/cmod/BigPictureActivity;->currentShortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v5, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/winlator/cmod/BigPictureActivity;->cacheCoverArt(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1277
    iget-object v5, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1280
    iget-object v5, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 1281
    iget-object v5, p0, Lcom/winlator/cmod/BigPictureActivity;->uploadText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1285
    :cond_4
    iget-object v5, p0, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    new-instance v6, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda14;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1297
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "customCoverArt":Landroid/graphics/Bitmap;
    :cond_5
    goto :goto_2

    .line 1295
    :catch_1
    move-exception v3

    .line 1296
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1263
    .end local v0    # "selectedImageUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    nop

    .line 1300
    :goto_2
    const/16 v0, 0x442

    if-ne p1, v0, :cond_7

    if-ne p2, v2, :cond_7

    .line 1301
    if-eqz p3, :cond_7

    .line 1302
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1304
    .local v0, "folderUri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v1, v2

    .line 1308
    .local v1, "takeFlags":I
    invoke-virtual {p0}, Lcom/winlator/cmod/BigPictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 1311
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1312
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1313
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "png_folder_uri"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1314
    const-string v4, "selected_animation"

    const-string v5, "folder"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1315
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1318
    invoke-direct {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->loadFramesFromFolder(Landroid/net/Uri;)V

    .line 1322
    .end local v0    # "folderUri":Landroid/net/Uri;
    .end local v1    # "takeFlags":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 669
    const v0, 0x7f090326

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->hideSettingsView()V

    goto :goto_0

    .line 672
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 674
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 41
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 138
    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/BigPictureActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 140
    const v0, 0x7f0c0025

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->setContentView(I)V

    .line 153
    const v0, 0x7f0902cc

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    .line 155
    .local v2, "backgroundView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    const v3, 0x7f09031f

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 156
    .local v3, "selectWallpaperButton":Landroid/widget/Button;
    const v4, 0x7f0902e7

    invoke-virtual {v1, v4}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 158
    .local v5, "rbCustomWallpaper":Landroid/widget/RadioButton;
    const v6, 0x7f09031e

    invoke-virtual {v1, v6}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 159
    .local v6, "folderPickerButton":Landroid/widget/Button;
    new-instance v7, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda15;

    invoke-direct {v7, v1}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda15;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-static/range {p0 .. p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 164
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "png_folder_uri"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, "savedFolderUri":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 166
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 167
    .local v11, "folderUri":Landroid/net/Uri;
    invoke-direct {v1, v11}, Lcom/winlator/cmod/BigPictureActivity;->loadFramesFromFolder(Landroid/net/Uri;)V

    .line 170
    .end local v11    # "folderUri":Landroid/net/Uri;
    :cond_0
    const-string v11, "frame_duration"

    const/16 v12, 0x42

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 171
    .local v11, "storedFrameDuration":I
    invoke-virtual {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    .line 172
    .local v13, "bgView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    if-eqz v13, :cond_1

    .line 173
    invoke-virtual {v13, v11}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setFrameDuration(I)V

    .line 178
    :cond_1
    const v14, 0x7f090236

    invoke-virtual {v1, v14}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/SeekBar;

    .line 179
    .local v14, "frameSpeedSeekBar":Landroid/widget/SeekBar;
    invoke-virtual {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    .line 180
    invoke-static/range {p0 .. p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 183
    const-string v0, "frame_duration_seekbar"

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 185
    .local v12, "storedSeekBarProgress":I
    invoke-virtual {v14, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 188
    invoke-virtual {v14}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    sub-int v15, v0, v12

    .line 189
    .local v15, "reversedProgress":I
    invoke-virtual {v13, v15}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setFrameDuration(I)V

    .line 192
    move-object/from16 v16, v13

    .line 193
    .local v16, "finalBgView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    move-object/from16 v17, v7

    .line 194
    .local v17, "finalPrefs":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/winlator/cmod/BigPictureActivity$1;

    move-object/from16 v4, v16

    move-object/from16 v9, v17

    .end local v16    # "finalBgView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    .end local v17    # "finalPrefs":Landroid/content/SharedPreferences;
    .local v4, "finalBgView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    .local v9, "finalPrefs":Landroid/content/SharedPreferences;
    invoke-direct {v0, v1, v4, v9}, Lcom/winlator/cmod/BigPictureActivity$1;-><init>(Lcom/winlator/cmod/BigPictureActivity;Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Landroid/content/SharedPreferences;)V

    invoke-virtual {v14, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 213
    const v0, 0x7f0901c0

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v4

    .end local v4    # "finalBgView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    .local v17, "finalBgView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    move-object v4, v0

    check-cast v4, Landroid/widget/RadioGroup;

    .line 214
    .local v4, "animationSelectorGroup":Landroid/widget/RadioGroup;
    move-object/from16 v19, v5

    .end local v5    # "rbCustomWallpaper":Landroid/widget/RadioButton;
    .local v19, "rbCustomWallpaper":Landroid/widget/RadioButton;
    invoke-static/range {p0 .. p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 217
    .local v5, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v20, v6

    const/4 v6, 0x0

    .end local v6    # "folderPickerButton":Landroid/widget/Button;
    .local v20, "folderPickerButton":Landroid/widget/Button;
    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 220
    const-string v0, "selected_animation"

    const-string v6, "ab"

    move-object/from16 v21, v7

    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    .local v21, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "savedAnimation":Ljava/lang/String;
    const-string v0, "custom_wallpaper"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    move-object/from16 v23, v9

    .end local v9    # "finalPrefs":Landroid/content/SharedPreferences;
    .local v23, "finalPrefs":Landroid/content/SharedPreferences;
    const-string v9, "folder"

    move-object/from16 v24, v10

    .end local v10    # "savedFolderUri":Ljava/lang/String;
    .local v24, "savedFolderUri":Ljava/lang/String;
    const-string v10, "none"

    move/from16 v25, v11

    .end local v11    # "storedFrameDuration":I
    .local v25, "storedFrameDuration":I
    const-string v11, "ab_quilt"

    move/from16 v26, v12

    .end local v12    # "storedSeekBarProgress":I
    .local v26, "storedSeekBarProgress":I
    const-string v12, "ab_gear"

    move-object/from16 v27, v13

    .end local v13    # "bgView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    .local v27, "bgView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    if-eqz v22, :cond_2

    .line 222
    const v13, 0x7f0902e7

    invoke-virtual {v1, v13}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    move-object/from16 v18, v14

    const/4 v14, 0x1

    .end local v14    # "frameSpeedSeekBar":Landroid/widget/SeekBar;
    .local v18, "frameSpeedSeekBar":Landroid/widget/SeekBar;
    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 223
    .end local v18    # "frameSpeedSeekBar":Landroid/widget/SeekBar;
    .restart local v14    # "frameSpeedSeekBar":Landroid/widget/SeekBar;
    :cond_2
    move-object/from16 v18, v14

    const/4 v14, 0x1

    .end local v14    # "frameSpeedSeekBar":Landroid/widget/SeekBar;
    .restart local v18    # "frameSpeedSeekBar":Landroid/widget/SeekBar;
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 224
    const v13, 0x7f0902ea

    invoke-virtual {v1, v13}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 226
    const v13, 0x7f0902f0

    invoke-virtual {v1, v13}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 227
    :cond_4
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 228
    const v13, 0x7f0902eb

    invoke-virtual {v1, v13}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 229
    :cond_5
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 230
    const v13, 0x7f0902e9

    invoke-virtual {v1, v13}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 231
    const/4 v13, 0x0

    invoke-interface {v5, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 232
    .end local v24    # "savedFolderUri":Ljava/lang/String;
    .local v14, "savedFolderUri":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 233
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 234
    .local v13, "folderUri":Landroid/net/Uri;
    invoke-direct {v1, v13}, Lcom/winlator/cmod/BigPictureActivity;->loadFramesFromFolder(Landroid/net/Uri;)V

    .line 235
    .end local v13    # "folderUri":Landroid/net/Uri;
    goto :goto_1

    .line 237
    .end local v14    # "savedFolderUri":Ljava/lang/String;
    .restart local v24    # "savedFolderUri":Ljava/lang/String;
    :cond_6
    const v13, 0x7f0902e8

    invoke-virtual {v1, v13}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 241
    :goto_0
    move-object/from16 v14, v24

    .end local v24    # "savedFolderUri":Ljava/lang/String;
    .restart local v14    # "savedFolderUri":Ljava/lang/String;
    :cond_7
    :goto_1
    new-instance v13, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;

    invoke-direct {v13, v1, v5, v3, v2}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda19;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;Landroid/widget/Button;Lcom/winlator/cmod/bigpicture/TiledBackgroundView;)V

    invoke-virtual {v4, v13}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 275
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 276
    invoke-virtual {v2, v12}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_8
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 278
    invoke-virtual {v2, v11}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :cond_9
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 280
    invoke-virtual {v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->stopAnimation()V

    .line 281
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setVisibility(I)V

    goto :goto_2

    .line 282
    :cond_a
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 283
    const/4 v6, 0x0

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 284
    if-eqz v14, :cond_c

    .line 285
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 286
    .local v6, "folderUri":Landroid/net/Uri;
    invoke-direct {v1, v6}, Lcom/winlator/cmod/BigPictureActivity;->loadFramesFromFolder(Landroid/net/Uri;)V

    .line 287
    .end local v6    # "folderUri":Landroid/net/Uri;
    goto :goto_2

    .line 289
    :cond_b
    invoke-virtual {v2, v6}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->setAnimation(Ljava/lang/String;)V

    .line 291
    :cond_c
    :goto_2
    invoke-virtual {v2}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->startAnimation()V

    .line 294
    new-instance v6, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda20;

    invoke-direct {v6, v1}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda20;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 302
    const-string v0, "custom_wallpaper_path"

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "savedWallpaperPath":Ljava/lang/String;
    if-eqz v8, :cond_d

    .line 304
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 305
    .local v6, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 307
    :try_start_0
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v9, "wallpaper_display_mode"

    const-string v10, "center"

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v0, v9}, Lcom/winlator/cmod/BigPictureActivity;->applyWallpaper(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_3

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 313
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "wallpaperFile":Ljava/io/File;
    .end local v8    # "savedWallpaperPath":Ljava/lang/String;
    :cond_d
    :goto_3
    goto :goto_4

    .line 315
    :cond_e
    invoke-direct {v1, v2, v7}, Lcom/winlator/cmod/BigPictureActivity;->applyAnimationBasedOnState(Lcom/winlator/cmod/bigpicture/TiledBackgroundView;Ljava/lang/String;)V

    .line 319
    :goto_4
    const v0, 0x7f0902cd

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 321
    .local v0, "parallaxModeGroup":Landroid/widget/RadioGroup;
    const-string v6, "parallax_mode"

    const-string v8, "default"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "savedParallaxMode":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    :cond_f
    goto :goto_5

    :sswitch_0
    const-string v8, "slow"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    goto :goto_6

    :sswitch_1
    const-string v8, "fast"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x2

    goto :goto_6

    :sswitch_2
    const-string v8, "off"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    move v8, v9

    goto :goto_6

    :goto_5
    const/4 v8, -0x1

    :goto_6
    packed-switch v8, :pswitch_data_0

    .line 334
    const/4 v11, 0x1

    const v8, 0x7f0902ec

    invoke-virtual {v1, v8}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    invoke-virtual {v8, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_7

    .line 331
    :pswitch_0
    const v8, 0x7f0902ed

    invoke-virtual {v1, v8}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 332
    goto :goto_7

    .line 328
    :pswitch_1
    const/4 v11, 0x1

    const v8, 0x7f0902ef

    invoke-virtual {v1, v8}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    invoke-virtual {v8, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 329
    goto :goto_7

    .line 325
    :pswitch_2
    const/4 v11, 0x1

    const v8, 0x7f0902ee

    invoke-virtual {v1, v8}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    invoke-virtual {v8, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 326
    nop

    .line 338
    :goto_7
    invoke-direct {v1, v6}, Lcom/winlator/cmod/BigPictureActivity;->applyParallaxMode(Ljava/lang/String;)V

    .line 340
    new-instance v8, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda21;

    invoke-direct {v8, v1, v5}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda21;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 365
    const v8, 0x7f0903a3

    invoke-virtual {v1, v8}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 366
    .local v8, "youtubeUrlInput":Landroid/widget/EditText;
    const v11, 0x7f090265

    invoke-virtual {v1, v11}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 369
    .local v11, "loadVideoButton":Landroid/widget/Button;
    const-string v12, "yNwKYgM6SkM"

    .line 372
    .local v12, "defaultVideoId":Ljava/lang/String;
    const v13, 0x7f090326

    invoke-virtual {v1, v13}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 376
    .local v13, "settingsLayout":Landroid/widget/LinearLayout;
    const-string v10, "enable_custom_api_key"

    invoke-interface {v5, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 377
    .local v9, "isCustomApiKeyEnabled":Z
    const-string v10, ""

    if-eqz v9, :cond_10

    .line 378
    move-object/from16 v28, v0

    .end local v0    # "parallaxModeGroup":Landroid/widget/RadioGroup;
    .local v28, "parallaxModeGroup":Landroid/widget/RadioGroup;
    const-string v0, "custom_api_key"

    invoke-interface {v5, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "customApiKey":Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_11

    .line 380
    sput-object v0, Lcom/winlator/cmod/BigPictureActivity;->API_KEY:Ljava/lang/String;

    goto :goto_8

    .line 377
    .end local v28    # "parallaxModeGroup":Landroid/widget/RadioGroup;
    .local v0, "parallaxModeGroup":Landroid/widget/RadioGroup;
    :cond_10
    move-object/from16 v28, v0

    .line 385
    .end local v0    # "parallaxModeGroup":Landroid/widget/RadioGroup;
    .restart local v28    # "parallaxModeGroup":Landroid/widget/RadioGroup;
    :cond_11
    :goto_8
    const v0, 0x7f09020d

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 388
    .local v0, "disableBgMusicButton":Landroid/widget/Button;
    move-object/from16 v29, v2

    .end local v2    # "backgroundView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    .local v29, "backgroundView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    const-string v2, "bg_music_enabled"

    move-object/from16 v30, v3

    const/4 v3, 0x1

    .end local v3    # "selectWallpaperButton":Landroid/widget/Button;
    .local v30, "selectWallpaperButton":Landroid/widget/Button;
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 391
    .local v2, "isBgMusicEnabled":Z
    invoke-direct {v1, v0, v2}, Lcom/winlator/cmod/BigPictureActivity;->updateBgMusicButtonText(Landroid/widget/Button;Z)V

    .line 394
    new-instance v3, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda22;

    invoke-direct {v3, v1, v5, v0}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda22;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;Landroid/widget/Button;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    const v3, 0x7f09031d

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 414
    .local v3, "selectMp3Button":Landroid/widget/Button;
    move-object/from16 v31, v0

    .end local v0    # "disableBgMusicButton":Landroid/widget/Button;
    .local v31, "disableBgMusicButton":Landroid/widget/Button;
    new-instance v0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    const v0, 0x7f0902b6

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 424
    .local v0, "musicSourceGroup":Landroid/widget/RadioGroup;
    move-object/from16 v32, v3

    .end local v3    # "selectMp3Button":Landroid/widget/Button;
    .local v32, "selectMp3Button":Landroid/widget/Button;
    const v3, 0x7f0903a2

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 425
    .local v3, "youtubeRadioButton":Landroid/widget/RadioButton;
    move-object/from16 v33, v4

    .end local v4    # "animationSelectorGroup":Landroid/widget/RadioGroup;
    .local v33, "animationSelectorGroup":Landroid/widget/RadioGroup;
    const v4, 0x7f09029d

    invoke-virtual {v1, v4}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 428
    .local v4, "mp3RadioButton":Landroid/widget/RadioButton;
    move-object/from16 v34, v6

    .end local v6    # "savedParallaxMode":Ljava/lang/String;
    .local v34, "savedParallaxMode":Ljava/lang/String;
    const v6, 0x7f0902f5

    invoke-virtual {v1, v6}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 429
    .local v6, "resetMp3Button":Landroid/widget/Button;
    move-object/from16 v35, v7

    .end local v7    # "savedAnimation":Ljava/lang/String;
    .local v35, "savedAnimation":Ljava/lang/String;
    new-instance v7, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1, v5, v4}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/content/SharedPreferences;Landroid/widget/RadioButton;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    const-string v7, "music_source"

    move-object/from16 v36, v6

    .end local v6    # "resetMp3Button":Landroid/widget/Button;
    .local v36, "resetMp3Button":Landroid/widget/Button;
    const-string v6, "mp3"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 452
    .local v7, "musicSource":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_12

    .line 453
    move/from16 v37, v9

    const/4 v9, 0x1

    .end local v9    # "isCustomApiKeyEnabled":Z
    .local v37, "isCustomApiKeyEnabled":Z
    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_9

    .line 455
    .end local v37    # "isCustomApiKeyEnabled":Z
    .restart local v9    # "isCustomApiKeyEnabled":Z
    :cond_12
    move/from16 v37, v9

    const/4 v9, 0x1

    .end local v9    # "isCustomApiKeyEnabled":Z
    .restart local v37    # "isCustomApiKeyEnabled":Z
    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 459
    :goto_9
    new-instance v9, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda3;

    invoke-direct {v9, v5}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda3;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v9}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 470
    const v9, 0x7f09039d

    invoke-virtual {v1, v9}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    iput-object v9, v1, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    .line 471
    iget-object v9, v1, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    move-object/from16 v38, v3

    const/4 v3, 0x1

    .end local v3    # "youtubeRadioButton":Landroid/widget/RadioButton;
    .local v38, "youtubeRadioButton":Landroid/widget/RadioButton;
    invoke-virtual {v9, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 472
    iget-object v3, v1, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    new-instance v9, Landroid/webkit/WebViewClient;

    invoke-direct {v9}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v3, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 475
    const-string v3, "selected_mp3_path"

    const/4 v9, 0x0

    invoke-interface {v5, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "selectedMp3Path":Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 479
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 481
    if-eqz v3, :cond_14

    .line 483
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v6, "mp3File":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 487
    invoke-direct {v1, v6}, Lcom/winlator/cmod/BigPictureActivity;->playMp3(Ljava/io/File;)V

    goto :goto_a

    .line 489
    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MP3 file not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BigPictureActivity"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/BigPictureActivity;->playDefaultMp3FromAssets()V

    .line 492
    .end local v6    # "mp3File":Ljava/io/File;
    :goto_a
    move-object/from16 v16, v0

    goto :goto_c

    .line 494
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/BigPictureActivity;->playDefaultMp3FromAssets()V

    move-object/from16 v16, v0

    goto :goto_c

    .line 496
    :cond_15
    const-string v6, "youtube"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 498
    const-string v6, "saved_youtube_url"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "savedUrl":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    move-object/from16 v16, v0

    .end local v0    # "musicSourceGroup":Landroid/widget/RadioGroup;
    .local v16, "musicSourceGroup":Landroid/widget/RadioGroup;
    const-string v0, "yNwKYgM6SkM"

    if-eqz v9, :cond_16

    move-object v9, v0

    goto :goto_b

    :cond_16
    invoke-direct {v1, v6}, Lcom/winlator/cmod/BigPictureActivity;->extractYouTubeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 501
    .local v9, "videoId":Ljava/lang/String;
    :goto_b
    if-eqz v9, :cond_17

    .line 502
    invoke-direct {v1, v9}, Lcom/winlator/cmod/BigPictureActivity;->loadYouTubeVideo(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 506
    :cond_17
    invoke-direct {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->loadYouTubeVideo(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 496
    .end local v6    # "savedUrl":Ljava/lang/String;
    .end local v9    # "videoId":Ljava/lang/String;
    .end local v16    # "musicSourceGroup":Landroid/widget/RadioGroup;
    .restart local v0    # "musicSourceGroup":Landroid/widget/RadioGroup;
    :cond_18
    move-object/from16 v16, v0

    .end local v0    # "musicSourceGroup":Landroid/widget/RadioGroup;
    .restart local v16    # "musicSourceGroup":Landroid/widget/RadioGroup;
    goto :goto_c

    .line 478
    .end local v16    # "musicSourceGroup":Landroid/widget/RadioGroup;
    .restart local v0    # "musicSourceGroup":Landroid/widget/RadioGroup;
    :cond_19
    move-object/from16 v16, v0

    .line 516
    .end local v0    # "musicSourceGroup":Landroid/widget/RadioGroup;
    .restart local v16    # "musicSourceGroup":Landroid/widget/RadioGroup;
    :goto_c
    new-instance v0, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1, v8, v5}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/BigPictureActivity;->enableImmersiveMode()V

    .line 541
    const v0, 0x7f090323

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 544
    .local v0, "settingsButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 545
    .local v6, "settingsIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1a

    .line 546
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 547
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v10, -0x1

    invoke-virtual {v6, v10, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 551
    :cond_1a
    new-instance v9, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda5;

    invoke-direct {v9, v1}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    const v9, 0x7f0901c8

    invoke-virtual {v1, v9}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 563
    .local v9, "backButton":Landroid/widget/ImageButton;
    invoke-virtual {v9}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 564
    .local v10, "backIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_1b

    .line 565
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 566
    move/from16 v22, v2

    .end local v2    # "isBgMusicEnabled":Z
    .local v22, "isBgMusicEnabled":Z
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v39, v3

    const/4 v3, -0x1

    .end local v3    # "selectedMp3Path":Ljava/lang/String;
    .local v39, "selectedMp3Path":Ljava/lang/String;
    invoke-virtual {v10, v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_d

    .line 564
    .end local v22    # "isBgMusicEnabled":Z
    .end local v39    # "selectedMp3Path":Ljava/lang/String;
    .restart local v2    # "isBgMusicEnabled":Z
    .restart local v3    # "selectedMp3Path":Ljava/lang/String;
    :cond_1b
    move/from16 v22, v2

    move-object/from16 v39, v3

    .line 570
    .end local v2    # "isBgMusicEnabled":Z
    .end local v3    # "selectedMp3Path":Ljava/lang/String;
    .restart local v22    # "isBgMusicEnabled":Z
    .restart local v39    # "selectedMp3Path":Ljava/lang/String;
    :goto_d
    new-instance v2, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda16;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v9, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    .line 580
    const v2, 0x7f090147

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->gameTitleView:Landroid/widget/TextView;

    .line 581
    const v2, 0x7f09014a

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->graphicsDriverView:Landroid/widget/TextView;

    .line 582
    const v2, 0x7f09014c

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->graphicsDriverVersionView:Landroid/widget/TextView;

    .line 583
    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->dxWrapperView:Landroid/widget/TextView;

    .line 584
    const v2, 0x7f090133

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->dxWrapperConfigView:Landroid/widget/TextView;

    .line 585
    const v2, 0x7f090120

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->audioDriverView:Landroid/widget/TextView;

    .line 586
    const v2, 0x7f090127

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->box64PresetView:Landroid/widget/TextView;

    .line 587
    const v2, 0x7f09015d

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->playCountView:Landroid/widget/TextView;

    .line 588
    const v2, 0x7f09015e

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->playtimeView:Landroid/widget/TextView;

    .line 589
    const v2, 0x7f0900bb

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 590
    const v2, 0x7f0902d9

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    .line 593
    iget-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 594
    .local v2, "playIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1c

    .line 595
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 596
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v40, v4

    const/4 v4, -0x1

    .end local v4    # "mp3RadioButton":Landroid/widget/RadioButton;
    .local v40, "mp3RadioButton":Landroid/widget/RadioButton;
    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_e

    .line 594
    .end local v40    # "mp3RadioButton":Landroid/widget/RadioButton;
    .restart local v4    # "mp3RadioButton":Landroid/widget/RadioButton;
    :cond_1c
    move-object/from16 v40, v4

    .line 600
    .end local v4    # "mp3RadioButton":Landroid/widget/RadioButton;
    .restart local v40    # "mp3RadioButton":Landroid/widget/RadioButton;
    :goto_e
    iget-object v3, v1, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/winlator/cmod/bigpicture/CarouselItemDecoration;

    move-object/from16 v24, v2

    .end local v2    # "playIcon":Landroid/graphics/drawable/Drawable;
    .local v24, "playIcon":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0xf

    invoke-direct {v4, v2}, Lcom/winlator/cmod/bigpicture/CarouselItemDecoration;-><init>(I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 603
    new-instance v2, Lcom/winlator/cmod/container/ContainerManager;

    invoke-direct {v2, v1}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/winlator/cmod/BigPictureActivity;->manager:Lcom/winlator/cmod/container/ContainerManager;

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/BigPictureActivity;->loadShortcutsList()V

    .line 609
    new-instance v2, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {v2}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    .line 610
    .local v2, "snapHelper":Landroidx/recyclerview/widget/SnapHelper;
    iget-object v3, v1, Lcom/winlator/cmod/BigPictureActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 614
    iget-object v3, v1, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda17;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v3, v1, Lcom/winlator/cmod/BigPictureActivity;->coverArtView:Landroid/widget/ImageView;

    new-instance v4, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/BigPictureActivity$$ExternalSyntheticLambda18;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v3, v1, Lcom/winlator/cmod/BigPictureActivity;->playButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/winlator/cmod/BigPictureActivity$2;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/BigPictureActivity$2;-><init>(Lcom/winlator/cmod/BigPictureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 643
    new-instance v3, Lcom/winlator/cmod/BigPictureActivity$3;

    invoke-direct {v3, v1, v0}, Lcom/winlator/cmod/BigPictureActivity$3;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 654
    new-instance v3, Lcom/winlator/cmod/BigPictureActivity$4;

    invoke-direct {v3, v1, v9}, Lcom/winlator/cmod/BigPictureActivity$4;-><init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/widget/ImageButton;)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 665
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1ad6f -> :sswitch_2
        0x2fd85c -> :sswitch_1
        0x35ea01 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .line 1605
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 1606
    invoke-direct {p0}, Lcom/winlator/cmod/BigPictureActivity;->stopBackgroundMusic()V

    .line 1607
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1513
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 1514
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1515
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "bg_music_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1516
    .local v1, "isBgMusicEnabled":Z
    const-string v3, "music_source"

    const-string v4, "mp3"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1517
    .local v3, "musicSource":Ljava/lang/String;
    const-string v5, "selected_mp3_path"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1520
    .local v5, "selectedMp3Path":Ljava/lang/String;
    const-string v6, "selected_animation"

    const-string v7, "ab"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1521
    .local v6, "savedAnimation":Ljava/lang/String;
    const-string v7, "custom_wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1522
    const v7, 0x7f0902e7

    invoke-virtual {p0, v7}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1523
    :cond_0
    const-string v7, "ab_gear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1524
    const v7, 0x7f0902ea

    invoke-virtual {p0, v7}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1525
    :cond_1
    const-string v7, "ab_quilt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1526
    const v7, 0x7f0902f0

    invoke-virtual {p0, v7}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1527
    :cond_2
    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1528
    const v7, 0x7f0902eb

    invoke-virtual {p0, v7}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1529
    :cond_3
    const-string v7, "folder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1530
    const v7, 0x7f0902e9

    invoke-virtual {p0, v7}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1532
    :cond_4
    const v7, 0x7f0902e8

    invoke-virtual {p0, v7}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1535
    :goto_0
    if-nez v1, :cond_5

    .line 1536
    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1537
    return-void

    .line 1541
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1542
    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_6

    .line 1543
    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1547
    :cond_6
    if-eqz v5, :cond_c

    .line 1548
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v2, "mp3File":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/winlator/cmod/BigPictureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1550
    :cond_7
    invoke-direct {p0, v2}, Lcom/winlator/cmod/BigPictureActivity;->playMp3(Ljava/io/File;)V

    .line 1552
    .end local v2    # "mp3File":Ljava/io/File;
    :cond_8
    goto :goto_2

    .line 1553
    :cond_9
    const-string v2, "youtube"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1554
    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_a

    .line 1555
    iget-object v2, p0, Lcom/winlator/cmod/BigPictureActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1558
    :cond_a
    const-string v2, "saved_youtube_url"

    const-string v4, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1559
    .local v2, "savedUrl":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "yNwKYgM6SkM"

    goto :goto_1

    :cond_b
    invoke-direct {p0, v2}, Lcom/winlator/cmod/BigPictureActivity;->extractYouTubeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1560
    .local v4, "videoId":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_c

    .line 1561
    invoke-direct {p0, v4}, Lcom/winlator/cmod/BigPictureActivity;->loadYouTubeVideo(Ljava/lang/String;)V

    .line 1564
    .end local v2    # "savedUrl":Ljava/lang/String;
    .end local v4    # "videoId":Ljava/lang/String;
    :cond_c
    :goto_2
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 123
    const v0, 0x7f0902cc

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    .line 124
    .local v0, "backgroundView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    invoke-virtual {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->startAnimation()V

    .line 125
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 130
    const v0, 0x7f0902cc

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/BigPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;

    .line 131
    .local v0, "backgroundView":Lcom/winlator/cmod/bigpicture/TiledBackgroundView;
    invoke-virtual {v0}, Lcom/winlator/cmod/bigpicture/TiledBackgroundView;->stopAnimation()V

    .line 132
    return-void
.end method
