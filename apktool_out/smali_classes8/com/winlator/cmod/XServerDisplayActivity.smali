.class public Lcom/winlator/cmod/XServerDisplayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XServerDisplayActivity.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final COLLAPSE_TRANSLATION_DP:F = 6.0f

.field private static final CURSOR_IDS:[I

.field public static NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = null

.field public static NOTIFICATION_ID:I = 0x0

.field private static final PREF_EXP_CURSOR:Ljava/lang/String; = "drawer_exp_cursor"

.field private static final RECAPTURE_DELAY_MS:I = 0x2710

.field private static final SAVE_INTERVAL_MS:J = 0x3e8L

.field private static final SEMVER_LOOSE:Ljava/util/regex/Pattern;

.field private static final SLIDE_DP:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "DXWrapperExtraction"


# instance fields
.field private allowMagnifier:Z

.field private audioDriver:Ljava/lang/String;

.field private configChangedCallback:Ljava/lang/Runnable;

.field protected container:Lcom/winlator/cmod/container/Container;

.field private containerManager:Lcom/winlator/cmod/container/ContainerManager;

.field private contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

.field private controlsEditorActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private cursorLock:Z

.field private debugDialog:Lcom/winlator/cmod/contentdialog/DebugDialog;

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private dxwrapper:Ljava/lang/String;

.field private dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

.field private editInputControlsCallback:Ljava/lang/Runnable;

.field private emulator:Ljava/lang/String;

.field private enableLogs:Z

.field private final envVars:Lcom/winlator/cmod/core/EnvVars;

.field private environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

.field private expCursor:Z

.field private firstTimeBoot:Z

.field private frameRating:Lcom/winlator/cmod/widget/FrameRating;

.field private frameRatingWindowId:I

.field private globalCursorSpeed:F

.field private graphicsDriver:Ljava/lang/String;

.field private graphicsDriverConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

.field private handler:Landroid/os/Handler;

.field private hideControlsRunnable:Ljava/lang/Runnable;

.field private imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

.field private inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

.field private inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

.field private isDarkMode:Z

.field private isMouseDisabled:Z

.field private isPaused:Z

.field private isRelativeMouseMovement:Z

.field private lc_all:Ljava/lang/String;

.field private magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

.field private midiHandler:Lcom/winlator/cmod/midi/MidiHandler;

.field private midiSoundFont:Ljava/lang/String;

.field private navLayoutAnim:Landroid/view/animation/LayoutAnimationController;

.field private navigationFocused:Z

.field private navigationView:Lcom/google/android/material/navigation/NavigationView;

.field private onExtractFileListener:Lcom/winlator/cmod/core/OnExtractFileListener;

.field private overrideEnvVars:Lcom/winlator/cmod/core/EnvVars;

.field private playtimePrefs:Landroid/content/SharedPreferences;

.field private pointerCaptureRequested:Z

.field private preferences:Landroid/content/SharedPreferences;

.field preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

.field private savePlaytimeRunnable:Ljava/lang/Runnable;

.field private screenEffectProfile:Ljava/lang/String;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private shortcut:Lcom/winlator/cmod/container/Shortcut;

.field private shortcutName:Ljava/lang/String;

.field private startTime:J

.field private startupSelection:Ljava/lang/String;

.field private taskAffinityMask:S

.field private taskAffinityMaskWoW64:S

.field private timeoutHandler:Landroid/os/Handler;

.field private touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

.field private vkbasaltConfig:Ljava/lang/String;

.field private winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

.field private wineInfo:Lcom/winlator/cmod/core/WineInfo;

.field private wineRequestHandler:Lcom/winlator/cmod/core/WineRequestHandler;

.field private xServer:Lcom/winlator/cmod/xserver/XServer;

.field private xServerView:Lcom/winlator/cmod/widget/XServerView;

.field private final xform:[F


# direct methods
.method public static synthetic $r8$lambda$-tOWhbqAyZtEZ_T3-FVwVKYQNeY(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$startTouchscreenTimeout$20(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0t4T89Sn-9612ehra8DMSdx88Io(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/renderer/GLRenderer;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$onNavigationItemSelected$9(Lcom/winlator/cmod/renderer/GLRenderer;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7F_fMWUvKcq2o519o0pRu57KPxs(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$onNavigationItemSelected$10(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FqULefaeazBBmLTKPWATtcVF_Us(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/xserver/Property;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$changeFrameRatingVisibility$23(Lcom/winlator/cmod/xserver/Property;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IFVaVnOePDMYMlvUfk8i_pZRHiM(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$onNavigationItemSelected$11(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IevWqobs0nqwc0bHXKtqXkNLz9o(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$onCreate$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$K9eiisKTJCraloBRcuE8EPUtfP4(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$showInputControlsDialog$17(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KNBzvHYCjEJT8wmpKXCEag00LVc(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$changeFrameRatingVisibility$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$NvhKnxzoE37lqYCBNpg2Hkb8jn0(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/Spinner;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$showInputControlsDialog$18(Landroid/widget/Spinner;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O8Ni52rQ-hrGRZeZ5FgoN76Uh6s(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$setupXEnvironment$12(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OvZ0XKxh1x3qiCyAZ8oIkb8D47s(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$showInputControlsDialog$15(Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q72rApqBiiz7512OCJtvK8uTTnU(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$showInputControlsDialog$19(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V41mgq8Tt8KoqeMz9JMPJrfntIw(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$showInputControlsDialog$16(Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a8SPfwBcnm7RyOJGGBnsSSajV4E(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$setupUI$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$at6r-m_hhOPqDHYfW3PnDF05r9w(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$onCreate$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gu6-0dOsF4TBYI3mLOhDp7jqx9Q(Lcom/winlator/cmod/XServerDisplayActivity;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$animateInGroupItems$6([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hjsZK76Oqf0GuNolEgiMfiRpM1I(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$changeFrameRatingVisibility$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$il_1rc0iGIgOzEam2u3o8aTuFpo(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/xserver/Property;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$changeFrameRatingVisibility$22(Lcom/winlator/cmod/xserver/Property;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qD3tgWISkblAyMu45_KH9b_1O-c(Lcom/winlator/cmod/XServerDisplayActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$onCreate$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhTi2cH4CbV_mH0EqqEOKJf11Es(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$changeFrameRatingVisibility$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$tr9Wad037TCscvxoUFvDnv-SMkU(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$showActiveWindowsDialog$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$umlWj6UElNz6Ce-l8JVy4GJhTnY(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$onCreate$2(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vrDiKHw0PwS2RFAoXTxJMK3z3iw(Lcom/winlator/cmod/XServerDisplayActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->lambda$new$14(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdrawerLayout(Lcom/winlator/cmod/XServerDisplayActivity;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenvironment(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/xenvironment/XEnvironment;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetframeRating(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/FrameRating;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetframeRatingWindowId(Lcom/winlator/cmod/XServerDisplayActivity;)I
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRatingWindowId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/winlator/cmod/XServerDisplayActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisRelativeMouseMovement(Lcom/winlator/cmod/XServerDisplayActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isRelativeMouseMovement:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmidiHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/midi/MidiHandler;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->midiHandler:Lcom/winlator/cmod/midi/MidiHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointerCaptureRequested(Lcom/winlator/cmod/XServerDisplayActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->pointerCaptureRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsavePlaytimeRunnable(Lcom/winlator/cmod/XServerDisplayActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->savePlaytimeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettouchpadView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/TouchpadView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwinHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/winhandler/WinHandler;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwineRequestHandler(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/core/WineRequestHandler;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->wineRequestHandler:Lcom/winlator/cmod/core/WineRequestHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetxServerView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/XServerView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmidiHandler(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/midi/MidiHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->midiHandler:Lcom/winlator/cmod/midi/MidiHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpointerCaptureRequested(Lcom/winlator/cmod/XServerDisplayActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->pointerCaptureRequested:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$massignTaskAffinity(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/xserver/Window;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->assignTaskAffinity(Lcom/winlator/cmod/xserver/Window;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeFrameRatingVisibility(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/XServerDisplayActivity;->changeFrameRatingVisibility(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mensurePointerCapture(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->ensurePointerCapture(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishCollapse(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/Menu;IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/XServerDisplayActivity;->finishCollapse(Landroid/view/Menu;IILandroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCapturedPointer(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->handleCapturedPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msavePlaytimeData(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->savePlaytimeData()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 157
    const-string v0, "Winlator"

    sput-object v0, Lcom/winlator/cmod/XServerDisplayActivity;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    .line 158
    const/4 v0, -0x1

    sput v0, Lcom/winlator/cmod/XServerDisplayActivity;->NOTIFICATION_ID:I

    .line 1034
    const v0, 0x7f090278

    const v1, 0x7f09026e

    const v2, 0x7f090275

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/XServerDisplayActivity;->CURSOR_IDS:[I

    .line 2078
    nop

    .line 2079
    const-string v0, "(\\d+)\\.(\\d+)(?:\\.(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/XServerDisplayActivity;->SEMVER_LOOSE:Ljava/util/regex/Pattern;

    .line 2078
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 156
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    .line 172
    const-string v1, "wrapper"

    iput-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriver:Ljava/lang/String;

    .line 174
    const-string v1, "alsa"

    iput-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    .line 175
    const-string v1, "FEXCore"

    iput-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->emulator:Ljava/lang/String;

    .line 176
    const-string v1, "dxvk+vkd3d"

    iput-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    .line 180
    new-instance v1, Lcom/winlator/cmod/core/EnvVars;

    invoke-direct {v1}, Lcom/winlator/cmod/core/EnvVars;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->firstTimeBoot:Z

    .line 186
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->globalCursorSpeed:F

    .line 189
    iput-short v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMask:S

    .line 190
    iput-short v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMaskWoW64:S

    .line 191
    const/4 v2, -0x1

    iput v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRatingWindowId:I

    .line 193
    invoke-static {}, Lcom/winlator/cmod/math/XForm;->getInstance()[F

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xform:[F

    .line 195
    iput-boolean v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->navigationFocused:Z

    .line 197
    const-string v2, ""

    iput-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->midiSoundFont:Ljava/lang/String;

    .line 198
    iput-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->lc_all:Ljava/lang/String;

    .line 199
    iput-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->vkbasaltConfig:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    .line 201
    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->configChangedCallback:Ljava/lang/Runnable;

    .line 202
    iput-boolean v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isPaused:Z

    .line 203
    iput-boolean v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isRelativeMouseMovement:Z

    .line 204
    iput-boolean v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isMouseDisabled:Z

    .line 205
    iput-boolean v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->pointerCaptureRequested:Z

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->timeoutHandler:Landroid/os/Handler;

    .line 918
    iput-boolean v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->expCursor:Z

    .line 924
    iput-boolean v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->enableLogs:Z

    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->allowMagnifier:Z

    .line 1601
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->controlsEditorActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private MoveCursorToTouchpoint()V
    .locals 4

    .line 2333
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "move_cursor_to_touchpoint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2334
    .local v0, "currentValue":Z
    xor-int/lit8 v1, v0, 0x1

    .line 2336
    .local v1, "newValue":Z
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2339
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    if-eqz v2, :cond_0

    .line 2340
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setMoveCursorToTouchpoint(Z)V

    .line 2342
    :cond_0
    return-void
.end method

.method private animateInGroupItems([I)V
    .locals 2
    .param p1, "itemIds"    # [I

    .line 983
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->navRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 984
    .local v0, "rv":Landroidx/recyclerview/widget/RecyclerView;
    if-nez v0, :cond_0

    return-void

    .line 987
    :cond_0
    new-instance v1, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda16;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;[I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1004
    return-void
.end method

.method private animateOutGroupItems([ILjava/lang/Runnable;)V
    .locals 12
    .param p1, "itemIds"    # [I
    .param p2, "after"    # Ljava/lang/Runnable;

    .line 1007
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->navRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 1008
    .local v0, "rv":Landroidx/recyclerview/widget/RecyclerView;
    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1011
    .local v1, "menu":Landroid/view/Menu;
    invoke-direct {p0, v1, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->titlesForIds(Landroid/view/Menu;[I)Ljava/util/Set;

    move-result-object v2

    .line 1012
    .local v2, "titles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, v2}, Lcom/winlator/cmod/XServerDisplayActivity;->findVisibleRowsForTitles(Ljava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 1014
    .local v3, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1016
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    .line 1017
    .local v4, "remaining":[I
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/winlator/cmod/XServerDisplayActivity;->dp(F)F

    move-result v6

    .line 1019
    .local v6, "endTrans":F
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1020
    .local v8, "row":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 1021
    invoke-virtual {v9, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 1022
    invoke-virtual {v9, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 1023
    const-wide/16 v10, 0x12c

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 1024
    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda5;

    invoke-direct {v10, v4, p2}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda5;-><init>([ILjava/lang/Runnable;)V

    .line 1025
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 1030
    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1031
    .end local v8    # "row":Landroid/view/View;
    goto :goto_0

    .line 1032
    :cond_2
    return-void
.end method

.method private applyGeneralPatches(Lcom/winlator/cmod/container/Container;)V
    .locals 5
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 2272
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 2273
    .local v0, "rootDir":Ljava/io/File;
    sget-object v1, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    const-string v2, "container_pattern_common.tzst"

    invoke-static {v1, p0, v2, v0}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 2274
    sget-object v1, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "pulseaudio"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "pulseaudio.tzst"

    invoke-static {v1, p0, v3, v2}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 2275
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    invoke-static {p0, v1}, Lcom/winlator/cmod/core/WineUtils;->applySystemTweaks(Landroid/content/Context;Lcom/winlator/cmod/core/WineInfo;)V

    .line 2276
    const-string v1, "graphicsDriver"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2277
    const-string v1, "desktopTheme"

    invoke-virtual {p1, v1, v2}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2278
    return-void
.end method

.method private applyGroup(Landroid/view/Menu;IIZ)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "groupId"    # I
    .param p3, "headerId"    # I
    .param p4, "expanded"    # Z

    .line 1055
    invoke-interface {p1, p2, p4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1057
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1058
    .local v0, "header":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1059
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1060
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->findNavRecycler(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 1064
    .local v1, "rv":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v1, :cond_2

    .line 1065
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 1066
    .local v2, "ad":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1067
    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1068
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 1069
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 1070
    .end local v2    # "ad":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    goto :goto_0

    .line 1071
    :cond_2
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->invalidate()V

    .line 1072
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->postInvalidateOnAnimation()V

    .line 1074
    :goto_0
    return-void
.end method

.method private assignTaskAffinity(Lcom/winlator/cmod/xserver/Window;)V
    .locals 5
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 2281
    iget-short v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMask:S

    if-eqz v0, :cond_4

    iget-short v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMaskWoW64:S

    if-nez v0, :cond_0

    goto :goto_2

    .line 2282
    :cond_0
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getProcessId()I

    move-result v0

    .line 2283
    .local v0, "processId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2284
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->isWoW64()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-short v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMaskWoW64:S

    goto :goto_0

    :cond_1
    iget-short v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMask:S

    .line 2286
    .local v2, "processAffinity":I
    :goto_0
    if-lez v0, :cond_2

    .line 2287
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v3, v0, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->setProcessAffinity(II)V

    goto :goto_1

    .line 2289
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2290
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->setProcessAffinity(Ljava/lang/String;I)V

    .line 2292
    :cond_3
    :goto_1
    return-void

    .line 2281
    .end local v0    # "processId":I
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "processAffinity":I
    :cond_4
    :goto_2
    return-void
.end method

.method private changeFrameRatingVisibility(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "property"    # Lcom/winlator/cmod/xserver/Property;

    .line 2295
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    if-nez v0, :cond_0

    return-void

    .line 2297
    :cond_0
    const-string v0, "XServerDisplayActivity"

    const/4 v1, -0x1

    if-eqz p2, :cond_3

    .line 2298
    iget v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRatingWindowId:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/Property;->nameAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_MESA_DRV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2299
    iget v1, p1, Lcom/winlator/cmod/xserver/Window;->id:I

    iput v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRatingWindowId:I

    .line 2300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing hud for Window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda27;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2305
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/FrameRating;->update()V

    .line 2307
    :cond_1
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/Property;->nameAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_MESA_DRV_ENGINE_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2308
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p2}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda28;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/xserver/Property;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2310
    :cond_2
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/Property;->nameAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_MESA_DRV_GPU_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2311
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/xserver/Property;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2314
    :cond_3
    iget v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRatingWindowId:I

    if-eq v2, v1, :cond_4

    .line 2315
    iput v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRatingWindowId:I

    .line 2316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hiding hud for Window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2318
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2320
    :cond_4
    :goto_0
    return-void
.end method

.method private changeWineAudioDriver()V
    .locals 8

    .line 2255
    const-string v0, "alsa"

    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    const-string v3, "audioDriver"

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2256
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v1

    .line 2257
    .local v1, "rootDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/home/xuser/.wine/user.reg"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2258
    .local v2, "userRegFile":Ljava/io/File;
    new-instance v4, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v4, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 2259
    .local v4, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :try_start_0
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "Audio"

    const-string v7, "Software\\Wine\\Drivers"

    if-eqz v5, :cond_0

    .line 2260
    :try_start_1
    invoke-virtual {v4, v7, v6, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2262
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    const-string v5, "pulseaudio"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2263
    const-string v0, "pulse"

    invoke-virtual {v4, v7, v6, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2265
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    .line 2266
    .end local v4    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2267
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->saveData()V

    goto :goto_2

    .line 2258
    .restart local v4    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    .line 2269
    .end local v1    # "rootDir":Ljava/io/File;
    .end local v2    # "userRegFile":Ljava/io/File;
    .end local v4    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :cond_2
    :goto_2
    return-void
.end method

.method private collapseGroup(Landroid/view/Menu;II[I)V
    .locals 27
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "groupId"    # I
    .param p3, "headerId"    # I
    .param p4, "itemIds"    # [I

    .line 1087
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->navRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v12

    .line 1088
    .local v12, "rv":Landroidx/recyclerview/widget/RecyclerView;
    const/4 v13, 0x0

    if-nez v12, :cond_0

    invoke-direct {v8, v9, v10, v11, v13}, Lcom/winlator/cmod/XServerDisplayActivity;->applyGroup(Landroid/view/Menu;IIZ)V

    return-void

    .line 1091
    :cond_0
    move-object/from16 v14, p4

    invoke-direct {v8, v9, v14}, Lcom/winlator/cmod/XServerDisplayActivity;->titlesForIds(Landroid/view/Menu;[I)Ljava/util/Set;

    move-result-object v15

    .line 1092
    .local v15, "titles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    invoke-direct {v8, v15}, Lcom/winlator/cmod/XServerDisplayActivity;->findVisibleRowsForTitles(Ljava/util/Set;)Ljava/util/List;

    move-result-object v16

    .line 1093
    .local v16, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {v8, v9, v10, v11, v13}, Lcom/winlator/cmod/XServerDisplayActivity;->applyGroup(Landroid/view/Menu;IIZ)V

    return-void

    .line 1095
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v12, v7}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 1097
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    move-object/from16 v17, v0

    .line 1098
    .local v17, "remaining":[I
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-direct {v8, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->dp(F)F

    move-result v18

    .line 1100
    .local v18, "endTrans":F
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/View;

    .line 1101
    .local v20, "row":Landroid/view/View;
    move-object/from16 v6, v20

    .line 1102
    .local v6, "r":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1103
    .local v5, "startH":I
    if-gtz v5, :cond_3

    aget v0, v17, v13

    sub-int/2addr v0, v7

    aput v0, v17, v13

    if-nez v0, :cond_2

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/winlator/cmod/XServerDisplayActivity;->finishCollapse(Landroid/view/Menu;IILandroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 1106
    :cond_3
    filled-new-array {v5, v13}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1107
    .local v4, "hAnim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, v6}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda24;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1115
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v6, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 1116
    .local v21, "aAnim":Landroid/animation/ObjectAnimator;
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v3, v2, v13

    aput v18, v2, v7

    invoke-static {v6, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 1118
    .local v22, "tAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v3, v0

    .line 1119
    .local v3, "set":Landroid/animation/AnimatorSet;
    const-wide/16 v1, 0x12c

    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1120
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1121
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v4, v1, v13

    aput-object v21, v1, v7

    const/4 v0, 0x2

    aput-object v22, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1122
    new-instance v2, Lcom/winlator/cmod/XServerDisplayActivity$7;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v6

    move-object v8, v3

    .end local v3    # "set":Landroid/animation/AnimatorSet;
    .local v8, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v3, v17

    move-object/from16 v23, v4

    .end local v4    # "hAnim":Landroid/animation/ValueAnimator;
    .local v23, "hAnim":Landroid/animation/ValueAnimator;
    move-object/from16 v4, p1

    move/from16 v24, v5

    .end local v5    # "startH":I
    .local v24, "startH":I
    move/from16 v5, p2

    move-object/from16 v25, v6

    .end local v6    # "r":Landroid/view/View;
    .local v25, "r":Landroid/view/View;
    move/from16 v6, p3

    move/from16 v26, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/winlator/cmod/XServerDisplayActivity$7;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/View;[ILandroid/view/Menu;IILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1136
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 1137
    .end local v8    # "set":Landroid/animation/AnimatorSet;
    .end local v20    # "row":Landroid/view/View;
    .end local v21    # "aAnim":Landroid/animation/ObjectAnimator;
    .end local v22    # "tAnim":Landroid/animation/ObjectAnimator;
    .end local v23    # "hAnim":Landroid/animation/ValueAnimator;
    .end local v24    # "startH":I
    .end local v25    # "r":Landroid/view/View;
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move/from16 v7, v26

    goto/16 :goto_0

    .line 1138
    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "varA"    # Ljava/lang/String;
    .param p1, "varB"    # Ljava/lang/String;

    .line 2070
    invoke-static {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->parseSemverLoose(Ljava/lang/String;)[I

    move-result-object v0

    .line 2071
    .local v0, "a":[I
    invoke-static {p1}, Lcom/winlator/cmod/XServerDisplayActivity;->parseSemverLoose(Ljava/lang/String;)[I

    move-result-object v1

    .line 2073
    .local v1, "b":[I
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v1, v2

    if-eq v3, v4, :cond_0

    aget v3, v0, v2

    aget v2, v1, v2

    sub-int/2addr v3, v2

    return v3

    .line 2074
    :cond_0
    const/4 v2, 0x1

    aget v3, v0, v2

    aget v4, v1, v2

    if-eq v3, v4, :cond_1

    aget v3, v0, v2

    aget v2, v1, v2

    sub-int/2addr v3, v2

    return v3

    .line 2075
    :cond_1
    const/4 v2, 0x2

    aget v3, v0, v2

    aget v2, v1, v2

    sub-int/2addr v3, v2

    return v3
.end method

.method private createNotifcationChannel()V
    .locals 5

    .line 229
    const-string v0, "Winlator"

    .line 230
    .local v0, "name":Ljava/lang/String;
    const-string v1, "Winlator XServer Messages"

    .line 231
    .local v1, "description":Ljava/lang/String;
    const/4 v2, 0x4

    .line 232
    .local v2, "importance":I
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/winlator/cmod/XServerDisplayActivity;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 233
    .local v3, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 234
    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/XServerDisplayActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 235
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 236
    return-void
.end method

.method private createWrapperScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 1512
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v0, "scriptFile":Ljava/io/File;
    invoke-static {v0, p2}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 1514
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/File;->setExecutable(Z)Z

    .line 1515
    return-void
.end method

.method private dp(F)F
    .locals 1
    .param p1, "v"    # F

    .line 933
    invoke-virtual {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private ensurePointerCapture(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 746
    iget-boolean v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isRelativeMouseMovement:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 749
    .local v0, "tries":[I
    new-instance v1, Lcom/winlator/cmod/XServerDisplayActivity$5;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/XServerDisplayActivity$5;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    .line 765
    .local v1, "attempt":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/winlator/cmod/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 766
    return-void

    .line 746
    .end local v0    # "tries":[I
    .end local v1    # "attempt":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void
.end method

.method private exit()V
    .locals 4

    .line 843
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    sget v1, Lcom/winlator/cmod/XServerDisplayActivity;->NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 844
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    const v1, 0x7f100233

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->showOnUiThread(I)V

    .line 845
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/winlator/cmod/XServerDisplayActivity$6;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/XServerDisplayActivity$6;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 870
    return-void
.end method

.method private expandGroup(Landroid/view/Menu;II[I)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "groupId"    # I
    .param p3, "headerId"    # I
    .param p4, "itemIds"    # [I

    .line 1082
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->applyGroup(Landroid/view/Menu;IIZ)V

    .line 1083
    invoke-direct {p0, p4}, Lcom/winlator/cmod/XServerDisplayActivity;->animateInGroupItems([I)V

    .line 1084
    return-void
.end method

.method private extractDXWrapperFiles(Ljava/lang/String;)V
    .locals 19
    .param p1, "dxwrapper"    # Ljava/lang/String;

    .line 1997
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "d3d10.dll"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "d3d10_1.dll"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "d3d10core.dll"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string v7, "d3d11.dll"

    aput-object v7, v2, v3

    const/4 v3, 0x4

    const-string v7, "d3d12.dll"

    aput-object v7, v2, v3

    const/4 v3, 0x5

    const-string v8, "d3d12core.dll"

    aput-object v8, v2, v3

    const/4 v3, 0x6

    const-string v9, "d3d8.dll"

    aput-object v9, v2, v3

    const/4 v3, 0x7

    const-string v9, "d3d9.dll"

    aput-object v9, v2, v3

    const/16 v3, 0x8

    const-string v9, "dxgi.dll"

    aput-object v9, v2, v3

    const/16 v3, 0x9

    const-string v9, "ddraw.dll"

    aput-object v9, v2, v3

    const/16 v3, 0xa

    const-string v10, "d3dimm.dll"

    aput-object v10, v2, v3

    .line 1999
    .local v2, "dlls":[Ljava/lang/String;
    iget-object v3, v0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v3

    .line 2000
    .local v3, "rootDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v12, "/home/xuser/.wine/drive_c/windows"

    invoke-direct {v11, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2002
    .local v11, "windowsDir":Ljava/io/File;
    const-string v12, "dxvk"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, "DXWrapperExtraction"

    if-eqz v12, :cond_8

    .line 2003
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Extracting DXVK wrapper files, version: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    const-string v12, ";"

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v4

    .line 2006
    .local v14, "dxvkWrapper":Ljava/lang/String;
    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v5

    .line 2007
    .local v15, "vkd3dWrapper":Ljava/lang/String;
    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v6

    .line 2009
    .local v12, "ddrawrapper":Ljava/lang/String;
    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v5, v14}, Lcom/winlator/cmod/contents/ContentsManager;->getProfileByEntryName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile;

    move-result-object v5

    .line 2010
    .local v5, "dxvkProfile":Lcom/winlator/cmod/contents/ContentProfile;
    const-string v4, "dxwrapper/"

    const-string v6, ".tzst"

    if-eqz v5, :cond_0

    .line 2011
    move-object/from16 v16, v3

    .end local v3    # "rootDir":Ljava/io/File;
    .local v16, "rootDir":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    .end local v2    # "dlls":[Ljava/lang/String;
    .local v17, "dlls":[Ljava/lang/String;
    const-string v2, "Applying user-defined DXVK content profile: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v2, v0, Lcom/winlator/cmod/XServerDisplayActivity;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v2, v5}, Lcom/winlator/cmod/contents/ContentsManager;->applyContent(Lcom/winlator/cmod/contents/ContentProfile;)Z

    move-object/from16 v18, v5

    goto :goto_0

    .line 2014
    .end local v16    # "rootDir":Ljava/io/File;
    .end local v17    # "dlls":[Ljava/lang/String;
    .restart local v2    # "dlls":[Ljava/lang/String;
    .restart local v3    # "rootDir":Ljava/io/File;
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .end local v2    # "dlls":[Ljava/lang/String;
    .end local v3    # "rootDir":Ljava/io/File;
    .restart local v16    # "rootDir":Ljava/io/File;
    .restart local v17    # "dlls":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extracting fallback DXVK .tzst archive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    sget-object v2, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v5

    .end local v5    # "dxvkProfile":Lcom/winlator/cmod/contents/ContentProfile;
    .local v18, "dxvkProfile":Lcom/winlator/cmod/contents/ContentProfile;
    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->onExtractFileListener:Lcom/winlator/cmod/core/OnExtractFileListener;

    invoke-static {v2, v0, v3, v11, v5}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    .line 2017
    const-string v2, "2.4"

    invoke-static {v14, v2}, Lcom/winlator/cmod/XServerDisplayActivity;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 2018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extracting d8vk as part of DXVK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    sget-object v2, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    const-string v3, "dxwrapper/d8vk-1.0.tzst"

    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->onExtractFileListener:Lcom/winlator/cmod/core/OnExtractFileListener;

    invoke-static {v2, v0, v3, v11, v5}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    .line 2023
    :cond_1
    :goto_0
    const-string v2, "None"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2024
    const-string v3, "No VKD3D has been selected, restoring original d3d12"

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v7, v4, v3

    const/4 v3, 0x1

    aput-object v8, v4, v3

    invoke-direct {v0, v4}, Lcom/winlator/cmod/XServerDisplayActivity;->restoreOriginalDllFiles([Ljava/lang/String;)V

    goto :goto_1

    .line 2028
    :cond_2
    iget-object v3, v0, Lcom/winlator/cmod/XServerDisplayActivity;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v3, v15}, Lcom/winlator/cmod/contents/ContentsManager;->getProfileByEntryName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile;

    move-result-object v3

    .line 2029
    .local v3, "vkd3dProfile":Lcom/winlator/cmod/contents/ContentProfile;
    if-eqz v3, :cond_3

    .line 2030
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying user-defined VKD3D content profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    iget-object v4, v0, Lcom/winlator/cmod/XServerDisplayActivity;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v4, v3}, Lcom/winlator/cmod/contents/ContentsManager;->applyContent(Lcom/winlator/cmod/contents/ContentProfile;)Z

    goto :goto_1

    .line 2033
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extracting fallback VKD3D .tzst archive: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    sget-object v5, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lcom/winlator/cmod/XServerDisplayActivity;->onExtractFileListener:Lcom/winlator/cmod/core/OnExtractFileListener;

    invoke-static {v5, v0, v4, v11, v7}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    .line 2038
    .end local v3    # "vkd3dProfile":Lcom/winlator/cmod/contents/ContentProfile;
    :goto_1
    const-string v3, "Extracting nglide wrapper"

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    sget-object v3, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    const-string v4, "ddrawrapper/nglide.tzst"

    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->onExtractFileListener:Lcom/winlator/cmod/core/OnExtractFileListener;

    invoke-static {v3, v0, v4, v11, v5}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    .line 2041
    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2042
    const-string v2, "No DDRaw wrapper has been selected, restoring original ddraw files"

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-direct {v0, v2}, Lcom/winlator/cmod/XServerDisplayActivity;->restoreOriginalDllFiles([Ljava/lang/String;)V

    goto :goto_3

    .line 2046
    :cond_4
    const-string v2, "cnc-ddraw"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "dgvoodoo"

    if-eqz v2, :cond_5

    .line 2047
    iget-object v2, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v4, "CNC_DDRAW_CONFIG_FILE"

    const-string v5, "C:\\windows\\syswow64\\ddraw.ini"

    invoke-virtual {v2, v4, v5}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 2050
    :cond_5
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2051
    const-string v2, "Applying dgvoodoo ddrawrapper"

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    sget-object v2, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    const-string v4, "ddrawrapper/dgvoodoo.tzst"

    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->onExtractFileListener:Lcom/winlator/cmod/core/OnExtractFileListener;

    invoke-static {v2, v0, v4, v11, v5}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    .line 2055
    :cond_6
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extracting ddrawrapper "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2058
    sget-object v2, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ddrawrapper/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/winlator/cmod/XServerDisplayActivity;->onExtractFileListener:Lcom/winlator/cmod/core/OnExtractFileListener;

    invoke-static {v2, v0, v3, v11, v4}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    .line 2062
    :cond_7
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished extraction of DXVK wrapper files, version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    .end local v12    # "ddrawrapper":Ljava/lang/String;
    .end local v14    # "dxvkWrapper":Ljava/lang/String;
    .end local v15    # "vkd3dWrapper":Ljava/lang/String;
    .end local v18    # "dxvkProfile":Lcom/winlator/cmod/contents/ContentProfile;
    move-object/from16 v2, v17

    goto :goto_4

    .end local v16    # "rootDir":Ljava/io/File;
    .end local v17    # "dlls":[Ljava/lang/String;
    .restart local v2    # "dlls":[Ljava/lang/String;
    .local v3, "rootDir":Ljava/io/File;
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .end local v2    # "dlls":[Ljava/lang/String;
    .end local v3    # "rootDir":Ljava/io/File;
    .restart local v16    # "rootDir":Ljava/io/File;
    .restart local v17    # "dlls":[Ljava/lang/String;
    const-string v2, "wined3d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2064
    const-string v2, "Restoring original DLL files for wined3d."

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    move-object/from16 v2, v17

    .end local v17    # "dlls":[Ljava/lang/String;
    .restart local v2    # "dlls":[Ljava/lang/String;
    invoke-direct {v0, v2}, Lcom/winlator/cmod/XServerDisplayActivity;->restoreOriginalDllFiles([Ljava/lang/String;)V

    goto :goto_4

    .line 2063
    .end local v2    # "dlls":[Ljava/lang/String;
    .restart local v17    # "dlls":[Ljava/lang/String;
    :cond_9
    move-object/from16 v2, v17

    .line 2067
    .end local v17    # "dlls":[Ljava/lang/String;
    .restart local v2    # "dlls":[Ljava/lang/String;
    :goto_4
    return-void
.end method

.method private extractGraphicsDriverFiles()V
    .locals 23

    .line 1835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1837
    .local v1, "adrenoToolsDriverId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adrenotools DriverID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GraphicsDriverExtraction"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v3, v0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v3

    .line 1841
    .local v3, "rootDir":Ljava/io/File;
    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    const-string v6, "dxvk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "1.11.1-sarek"

    const-string v7, "1"

    if-eqz v5, :cond_1

    .line 1842
    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

    iget-object v8, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-static {v0, v5, v8}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->setEnvVars(Landroid/content/Context;Lcom/winlator/cmod/core/KeyValueSet;Lcom/winlator/cmod/core/EnvVars;)V

    .line 1843
    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

    invoke-virtual {v5, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1844
    .local v5, "version":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1845
    const-string v8, "Disabling Wrapper PATCH_OPCONSTCOMP SPIR-V pass"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v4, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v8, "WRAPPER_NO_PATCH_OPCONSTCOMP"

    invoke-virtual {v4, v8, v7}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1848
    .end local v5    # "version":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1850
    :cond_1
    iget-object v4, v0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-static {v0, v4, v5}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->setEnvVars(Landroid/content/Context;Lcom/winlator/cmod/core/KeyValueSet;Lcom/winlator/cmod/core/EnvVars;)V

    .line 1853
    :goto_0
    iget-object v4, v0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "use_dri3"

    const/4 v8, 0x1

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1854
    .local v4, "useDRI3":Z
    const-string v5, "MESA_VK_WSI_DEBUG"

    if-nez v4, :cond_2

    .line 1855
    iget-object v9, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v10, "sw"

    invoke-virtual {v9, v5, v10}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1858
    :cond_2
    iget-object v9, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v11}, Lcom/winlator/cmod/xenvironment/ImageFs;->getShareDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/vulkan/icd.d/wrapper_icd.aarch64.json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "VK_ICD_FILENAMES"

    invoke-virtual {v9, v11, v10}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1859
    iget-object v9, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v10, "GALLIUM_DRIVER"

    const-string v11, "zink"

    invoke-virtual {v9, v10, v11}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1861
    iget-boolean v9, v0, Lcom/winlator/cmod/XServerDisplayActivity;->firstTimeBoot:Z

    if-eqz v9, :cond_3

    .line 1862
    const-string v9, "XServerDisplayActivity"

    const-string v10, "First time container boot, re-extracting libs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    sget-object v9, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    const-string v10, "graphics_driver/wrapper.tzst"

    invoke-static {v9, v0, v10, v3}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 1864
    sget-object v9, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    const-string v10, "layers.tzst"

    invoke-static {v9, v0, v10, v3}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 1865
    sget-object v9, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    const-string v10, "graphics_driver/extra_libs.tzst"

    invoke-static {v9, v0, v10, v3}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 1868
    :cond_3
    const-string v9, "System"

    if-eq v1, v9, :cond_4

    .line 1869
    new-instance v9, Lcom/winlator/cmod/contents/AdrenotoolsManager;

    invoke-direct {v9, v0}, Lcom/winlator/cmod/contents/AdrenotoolsManager;-><init>(Landroid/content/Context;)V

    .line 1870
    .local v9, "adrenotoolsManager":Lcom/winlator/cmod/contents/AdrenotoolsManager;
    iget-object v10, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    iget-object v11, v0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v9, v10, v11, v1}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->setDriverById(Lcom/winlator/cmod/core/EnvVars;Lcom/winlator/cmod/xenvironment/ImageFs;Ljava/lang/String;)V

    .line 1873
    .end local v9    # "adrenotoolsManager":Lcom/winlator/cmod/contents/AdrenotoolsManager;
    :cond_4
    iget-object v9, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v10, "vulkanVersion"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1874
    .local v9, "vulkanVersion":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/winlator/cmod/core/GPUInformation;->getVulkanVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    .line 1875
    .local v10, "vulkanVersionPatch":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1876
    iget-object v12, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v13, "WRAPPER_VK_VERSION"

    invoke-virtual {v12, v13, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1878
    iget-object v12, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v13, "blacklistedExtensions"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1879
    .local v12, "blacklistedExtensions":Ljava/lang/String;
    iget-object v13, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v14, "WRAPPER_EXTENSION_BLACKLIST"

    invoke-virtual {v13, v14, v12}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1881
    iget-object v13, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v14, "gpuName"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1882
    .local v13, "gpuName":Ljava/lang/String;
    iget-object v14, v0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

    invoke-virtual {v14, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1883
    .local v2, "dxvkVersion":Ljava/lang/String;
    const-string v14, "Device"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1884
    iget-object v6, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v14, "WRAPPER_DEVICE_NAME"

    invoke-virtual {v6, v14, v13}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1885
    iget-object v6, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v14, "WRAPPER_DEVICE_ID"

    invoke-static {v0, v13}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->getDeviceIdFromGPUName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1886
    iget-object v6, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v14, "WRAPPER_VENDOR_ID"

    invoke-static {v0, v13}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->getVendorIdFromGPUName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1889
    :cond_5
    iget-object v6, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v14, "maxDeviceMemory"

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1890
    .local v6, "maxDeviceMemory":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_6

    .line 1891
    iget-object v14, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v15, "WRAPPER_VMEM_MAX_SIZE"

    invoke-virtual {v14, v15, v6}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1893
    :cond_6
    iget-object v14, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v15, "presentMode"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1894
    .local v14, "presentMode":Ljava/lang/String;
    const-string v15, "immediate"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1895
    iget-object v15, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v8, "WRAPPER_MAX_IMAGE_COUNT"

    invoke-virtual {v15, v8, v7}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1897
    :cond_7
    iget-object v8, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v15, "MESA_VK_WSI_PRESENT_MODE"

    invoke-virtual {v8, v15, v14}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1899
    iget-object v8, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v15, "resourceType"

    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1900
    .local v8, "resourceType":Ljava/lang/String;
    iget-object v15, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v11, "WRAPPER_RESOURCE_TYPE"

    invoke-virtual {v15, v11, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1902
    iget-object v11, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v15, "syncFrame"

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1903
    .local v11, "syncFrame":Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1904
    iget-object v15, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    move-object/from16 v18, v1

    .end local v1    # "adrenoToolsDriverId":Ljava/lang/String;
    .local v18, "adrenoToolsDriverId":Ljava/lang/String;
    const-string v1, "forcesync"

    invoke-virtual {v15, v5, v1}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1903
    .end local v18    # "adrenoToolsDriverId":Ljava/lang/String;
    .restart local v1    # "adrenoToolsDriverId":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v1

    .line 1906
    .end local v1    # "adrenoToolsDriverId":Ljava/lang/String;
    .restart local v18    # "adrenoToolsDriverId":Ljava/lang/String;
    :goto_1
    iget-object v1, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v5, "disablePresentWait"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1907
    .local v1, "disablePresentWait":Ljava/lang/String;
    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v15, "WRAPPER_DISABLE_PRESENT_WAIT"

    invoke-virtual {v5, v15, v1}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1909
    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v15, "bcnEmulation"

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1910
    .local v5, "bcnEmulation":Ljava/lang/String;
    iget-object v15, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    move-object/from16 v19, v1

    .end local v1    # "disablePresentWait":Ljava/lang/String;
    .local v19, "disablePresentWait":Ljava/lang/String;
    const-string v1, "bcnEmulationType"

    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1912
    .local v1, "bcnEmulationType":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_9
    goto :goto_2

    :sswitch_0
    const-string v15, "none"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x2

    goto :goto_3

    :sswitch_1
    const-string v15, "full"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    :sswitch_2
    const-string v15, "auto"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    goto :goto_3

    :goto_2
    const/4 v15, -0x1

    :goto_3
    move-object/from16 v16, v2

    .end local v2    # "dxvkVersion":Ljava/lang/String;
    .local v16, "dxvkVersion":Ljava/lang/String;
    const-string v2, "BCN_COMPUTE_AUTO"

    move-object/from16 v17, v3

    .end local v3    # "rootDir":Ljava/io/File;
    .local v17, "rootDir":Ljava/io/File;
    const-string v3, "ENABLE_BCN_COMPUTE"

    move/from16 v20, v4

    .end local v4    # "useDRI3":Z
    .local v20, "useDRI3":Z
    const-string v4, "0"

    move-object/from16 v21, v5

    .end local v5    # "bcnEmulation":Ljava/lang/String;
    .local v21, "bcnEmulation":Ljava/lang/String;
    const-string v5, "compute"

    move-object/from16 v22, v6

    .end local v6    # "maxDeviceMemory":Ljava/lang/String;
    .local v22, "maxDeviceMemory":Ljava/lang/String;
    const-string v6, "WRAPPER_EMULATE_BCN"

    packed-switch v15, :pswitch_data_0

    .line 1928
    iget-object v2, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v2, v6, v7}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 1927
    :pswitch_0
    iget-object v2, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v2, v6, v4}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 1921
    :pswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    invoke-static {v5, v5}, Lcom/winlator/cmod/core/GPUInformation;->getVendorID(Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    const/16 v15, 0x5143

    if-eq v5, v15, :cond_a

    .line 1922
    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v5, v3, v7}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1923
    iget-object v3, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v3, v2, v4}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1925
    :cond_a
    iget-object v2, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v3, "2"

    invoke-virtual {v2, v6, v3}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1926
    goto :goto_4

    .line 1914
    :pswitch_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lcom/winlator/cmod/core/GPUInformation;->getVendorID(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0x5143

    if-eq v4, v5, :cond_b

    .line 1915
    iget-object v4, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v4, v3, v7}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1916
    iget-object v3, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v3, v2, v7}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1918
    :cond_b
    iget-object v2, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v3, "3"

    invoke-virtual {v2, v6, v3}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1919
    nop

    .line 1931
    :goto_4
    iget-object v2, v0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v3, "bcnEmulationCache"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1932
    .local v2, "bcnEmulationCache":Ljava/lang/String;
    iget-object v3, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v4, "WRAPPER_USE_BCN_CACHE"

    invoke-virtual {v3, v4, v2}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1934
    iget-object v3, v0, Lcom/winlator/cmod/XServerDisplayActivity;->vkbasaltConfig:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1935
    iget-object v3, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v4, "ENABLE_VKBASALT"

    invoke-virtual {v3, v4, v7}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1936
    iget-object v3, v0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v4, "VKBASALT_CONFIG"

    iget-object v5, v0, Lcom/winlator/cmod/XServerDisplayActivity;->vkbasaltConfig:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1938
    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2dddaf -> :sswitch_2
        0x30228f -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extractWinComponentFiles()V
    .locals 18

    .line 2113
    move-object/from16 v1, p0

    const-string v0, "Extracting WinComponents"

    const-string v2, "XServerDisplayActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v3

    .line 2115
    .local v3, "rootDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "/home/xuser/.wine/drive_c/windows"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 2116
    .local v4, "windowsDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "/home/xuser/.wine/system.reg"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 2119
    .local v5, "systemRegFile":Ljava/io/File;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v6, "wincomponents/wincomponents.json"

    invoke-static {v1, v6}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2120
    .local v0, "wincomponentsJSONObject":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2121
    .local v6, "dlls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v8, "wincomponents"

    if-eqz v7, :cond_0

    :try_start_1
    iget-object v7, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v9}, Lcom/winlator/cmod/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2147
    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v6    # "dlls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_5

    .line 2121
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v6    # "dlls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    iget-object v7, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v7}, Lcom/winlator/cmod/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v7

    .line 2123
    .local v7, "wincomponents":Ljava/lang/String;
    :goto_0
    new-instance v9, Lcom/winlator/cmod/core/KeyValueSet;

    iget-object v10, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    const-string v11, "direct3d=1,directsound=1,directmusic=1,directshow=1,directplay=1,xaudio=1,vcrun2010=1"

    invoke-virtual {v10, v8, v11}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/winlator/cmod/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2125
    .local v8, "oldWinComponentsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    new-instance v9, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-direct {v9, v7}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/winlator/cmod/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 2126
    .local v10, "wincomponent":[Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v13, v10, v12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    aget-object v14, v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v13, :cond_1

    :try_start_3
    iget-boolean v13, v1, Lcom/winlator/cmod/XServerDisplayActivity;->firstTimeBoot:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v13, :cond_1

    goto :goto_1

    .line 2127
    :cond_1
    :try_start_4
    aget-object v11, v10, v11

    .line 2128
    .local v11, "identifier":Ljava/lang/String;
    aget-object v12, v10, v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2130
    .local v12, "useNative":Z
    if-eqz v12, :cond_2

    .line 2131
    :try_start_5
    sget-object v13, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wincomponents/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".tzst"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/winlator/cmod/XServerDisplayActivity;->onExtractFileListener:Lcom/winlator/cmod/core/OnExtractFileListener;

    invoke-static {v13, v1, v14, v4, v15}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    goto :goto_4

    .line 2134
    :cond_2
    :try_start_6
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 2135
    .local v13, "dlnames":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_4

    .line 2136
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2137
    .local v15, "dlname":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .local v16, "wincomponentsJSONObject":Lorg/json/JSONObject;
    const-string v0, ".exe"

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v17, v3

    .end local v3    # "rootDir":Ljava/io/File;
    .local v17, "rootDir":Ljava/io/File;
    :try_start_7
    const-string v3, ".dll"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .end local v17    # "rootDir":Ljava/io/File;
    .restart local v3    # "rootDir":Ljava/io/File;
    :cond_3
    move-object/from16 v17, v3

    .end local v3    # "rootDir":Ljava/io/File;
    .restart local v17    # "rootDir":Ljava/io/File;
    move-object v0, v15

    :goto_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2135
    nop

    .end local v15    # "dlname":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto :goto_2

    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v17    # "rootDir":Ljava/io/File;
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v3    # "rootDir":Ljava/io/File;
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .line 2140
    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v3    # "rootDir":Ljava/io/File;
    .end local v13    # "dlnames":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .restart local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v17    # "rootDir":Ljava/io/File;
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting wincomponent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-static {v1, v0, v11, v12}, Lcom/winlator/cmod/core/WineUtils;->overrideWinComponentDlls(Landroid/content/Context;Lcom/winlator/cmod/container/Container;Ljava/lang/String;Z)V

    .line 2142
    invoke-static {v5, v11, v12, v1}, Lcom/winlator/cmod/core/WineUtils;->setWinComponentRegistryKeys(Ljava/io/File;Ljava/lang/String;ZLandroid/content/Context;)V

    .line 2143
    .end local v10    # "wincomponent":[Ljava/lang/String;
    .end local v11    # "identifier":Ljava/lang/String;
    .end local v12    # "useNative":Z
    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto/16 :goto_1

    .line 2145
    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v17    # "rootDir":Ljava/io/File;
    .restart local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v3    # "rootDir":Ljava/io/File;
    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .end local v0    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .end local v3    # "rootDir":Ljava/io/File;
    .restart local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    .restart local v17    # "rootDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v11, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->restoreOriginalDllFiles([Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 2147
    .end local v6    # "dlls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "wincomponents":Ljava/lang/String;
    .end local v8    # "oldWinComponentsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/String;>;"
    .end local v16    # "wincomponentsJSONObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v17    # "rootDir":Ljava/io/File;
    .restart local v3    # "rootDir":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "rootDir":Ljava/io/File;
    .restart local v17    # "rootDir":Ljava/io/File;
    :cond_6
    :goto_5
    nop

    .line 2148
    return-void
.end method

.method private findNavRecycler(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .line 1043
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0

    .line 1044
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1045
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 1046
    .local v0, "vg":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1047
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/winlator/cmod/XServerDisplayActivity;->findNavRecycler(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    .line 1048
    .local v2, "rv":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v2, :cond_1

    return-object v2

    .line 1046
    .end local v2    # "rv":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findVisibleRowsForTitles(Ljava/util/Set;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 968
    .local p1, "wantedTitles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v0, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->navRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 970
    .local v1, "rv":Landroidx/recyclerview/widget/RecyclerView;
    if-nez v1, :cond_0

    return-object v0

    .line 972
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 973
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 974
    .local v3, "row":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/winlator/cmod/XServerDisplayActivity;->rowTitle(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v4

    .line 975
    .local v4, "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 976
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    .end local v3    # "row":Landroid/view/View;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 979
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private finishCollapse(Landroid/view/Menu;IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "groupId"    # I
    .param p3, "headerId"    # I
    .param p4, "rv"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 1141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->applyGroup(Landroid/view/Menu;IIZ)V

    .line 1142
    invoke-virtual {p4, v0}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 1143
    return-void
.end method

.method private getExecutable()Ljava/lang/String;
    .locals 2

    .line 2217
    const-string v0, ""

    .line 2218
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v1, :cond_0

    .line 2219
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/winlator/cmod/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2222
    :cond_0
    const-string v0, "wfm.exe"

    .line 2223
    :goto_0
    return-object v0
.end method

.method private getWineStartCommand()Ljava/lang/String;
    .locals 10

    .line 2176
    invoke-virtual {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getOverrideEnvVars()Lcom/winlator/cmod/core/EnvVars;

    move-result-object v0

    .line 2179
    .local v0, "envVars":Lcom/winlator/cmod/core/EnvVars;
    const-string v1, ""

    .line 2181
    .local v1, "args":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, " "

    if-eqz v2, :cond_4

    .line 2182
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v4, "execArgs"

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2183
    .local v2, "execArgs":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    move-object v2, v4

    .line 2185
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    const-string v5, ".lnk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "\""

    if-eqz v4, :cond_1

    .line 2186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2188
    :cond_1
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/winlator/cmod/core/FileUtils;->getDirname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2189
    .local v4, "exeDir":Ljava/lang/String;
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v6, v6, Lcom/winlator/cmod/container/Shortcut;->path:Ljava/lang/String;

    invoke-static {v6}, Lcom/winlator/cmod/core/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2191
    .local v6, "filename":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 2192
    .local v7, "dotIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v8

    .line 2194
    .local v3, "spaceIndex":I
    :goto_1
    if-eq v3, v8, :cond_3

    .line 2195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2196
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2199
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/dir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/winlator/cmod/core/StringUtils;->escapeDOSPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2201
    .end local v2    # "execArgs":Ljava/lang/String;
    .end local v3    # "spaceIndex":I
    .end local v4    # "exeDir":Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "dotIndex":I
    :goto_2
    goto :goto_3

    .line 2203
    :cond_4
    const-string v2, "EXTRA_EXEC_ARGS"

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2205
    invoke-virtual {v0, v2}, Lcom/winlator/cmod/core/EnvVars;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 2207
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"wfm.exe\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2211
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "winhandler.exe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2213
    .local v2, "command":Ljava/lang/String;
    return-object v2
.end method

.method private handleCapturedPointer(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    .line 675
    .local v1, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4

    .line 696
    :sswitch_0
    if-ne v1, v5, :cond_1

    .line 697
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_0

    .line 701
    :cond_1
    if-ne v1, v4, :cond_3

    .line 702
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 703
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 705
    :cond_2
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_0

    .line 706
    :cond_3
    if-ne v1, v3, :cond_5

    .line 707
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 708
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 710
    :cond_4
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_MIDDLE:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 712
    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 713
    goto/16 :goto_4

    .line 677
    :sswitch_1
    if-ne v1, v5, :cond_7

    .line 678
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 679
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    invoke-virtual {v2, v4, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_1

    .line 681
    :cond_6
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_1

    .line 682
    :cond_7
    if-ne v1, v4, :cond_9

    .line 683
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 684
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_1

    .line 686
    :cond_8
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_1

    .line 687
    :cond_9
    if-ne v1, v3, :cond_b

    .line 688
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 689
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_1

    .line 691
    :cond_a
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_MIDDLE:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 693
    :cond_b
    :goto_1
    const/4 v0, 0x1

    .line 694
    goto/16 :goto_4

    .line 724
    :sswitch_2
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 725
    .local v2, "scrollY":F
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    const/16 v4, 0x800

    if-gtz v3, :cond_d

    .line 726
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 727
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v3

    float-to-int v5, v2

    mul-int/lit16 v5, v5, 0x10e

    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_2

    .line 729
    :cond_c
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v4, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 730
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v4, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_2

    .line 732
    :cond_d
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_f

    .line 733
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 734
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v3

    float-to-int v5, v2

    mul-int/lit16 v5, v5, 0x10e

    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_2

    .line 736
    :cond_e
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v4, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 737
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v4, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    .line 740
    :cond_f
    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    .line 716
    .end local v2    # "scrollY":F
    :sswitch_3
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v2

    .line 717
    .local v2, "transformedPoint":[F
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 718
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v3

    aget v4, v2, v6

    float-to-int v4, v4

    aget v7, v2, v5

    float-to-int v7, v7

    invoke-virtual {v3, v5, v4, v7, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_3

    .line 720
    :cond_10
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    aget v4, v2, v6

    float-to-int v4, v4

    aget v5, v2, v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMoveDelta(II)V

    .line 721
    :goto_3
    const/4 v0, 0x1

    .line 722
    nop

    .line 743
    .end local v2    # "transformedPoint":[F
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private hideInputControls()V
    .locals 3

    .line 1822
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->setShowTouchscreenControls(Z)V

    .line 1823
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/widget/InputControlsView;->setVisibility(I)V

    .line 1824
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/widget/InputControlsView;->setProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    .line 1826
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    iget v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->globalCursorSpeed:F

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/widget/TouchpadView;->setSensitivity(F)V

    .line 1827
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setPointerButtonLeftEnabled(Z)V

    .line 1828
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setPointerButtonRightEnabled(Z)V

    .line 1830
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 1831
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v0}, Lcom/winlator/cmod/winhandler/WinHandler;->sendGamepadState()V

    .line 1832
    return-void
.end method

.method private incrementPlayCount()V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->playtimePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 836
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcutName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_play_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "playCountKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->playtimePrefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 838
    .local v2, "playCount":I
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 839
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 840
    return-void
.end method

.method private synthetic lambda$animateInGroupItems$6([I)V
    .locals 10
    .param p1, "itemIds"    # [I

    .line 988
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 989
    .local v0, "menu":Landroid/view/Menu;
    invoke-direct {p0, v0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->titlesForIds(Landroid/view/Menu;[I)Ljava/util/Set;

    move-result-object v1

    .line 990
    .local v1, "titles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->findVisibleRowsForTitles(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 992
    .local v2, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/winlator/cmod/XServerDisplayActivity;->dp(F)F

    move-result v4

    .line 993
    .local v4, "startTrans":F
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 994
    .local v6, "row":Landroid/view/View;
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 995
    invoke-virtual {v6, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 996
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 997
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 998
    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 999
    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 1000
    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 1001
    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1002
    .end local v6    # "row":Landroid/view/View;
    goto :goto_0

    .line 1003
    :cond_0
    return-void
.end method

.method static synthetic lambda$animateOutGroupItems$7([ILjava/lang/Runnable;)V
    .locals 2
    .param p0, "remaining"    # [I
    .param p1, "after"    # Ljava/lang/Runnable;

    .line 1026
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p0, v0

    if-nez v1, :cond_0

    .line 1027
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1029
    :cond_0
    return-void
.end method

.method private synthetic lambda$changeFrameRatingVisibility$21()V
    .locals 2

    .line 2303
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/FrameRating;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$changeFrameRatingVisibility$22(Lcom/winlator/cmod/xserver/Property;)V
    .locals 2
    .param p1, "property"    # Lcom/winlator/cmod/xserver/Property;

    .line 2308
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Property;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/FrameRating;->setRenderer(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$changeFrameRatingVisibility$23(Lcom/winlator/cmod/xserver/Property;)V
    .locals 2
    .param p1, "property"    # Lcom/winlator/cmod/xserver/Property;

    .line 2311
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Property;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/FrameRating;->setGpuName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$changeFrameRatingVisibility$24()V
    .locals 2

    .line 2317
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/FrameRating;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$changeFrameRatingVisibility$25()V
    .locals 1

    .line 2318
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/FrameRating;->reset()V

    return-void
.end method

.method static synthetic lambda$collapseGroup$8(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p0, "r"    # Landroid/view/View;
    .param p1, "a"    # Landroid/animation/ValueAnimator;

    .line 1108
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1109
    .local v0, "h":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1110
    .local v1, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 1111
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    return-void
.end method

.method private synthetic lambda$new$14(Landroidx/activity/result/ActivityResult;)V
    .locals 1
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 1604
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    .line 1608
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Z)V
    .locals 2
    .param p1, "isTimeoutEnabled"    # Z

    .line 319
    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->setVisibility(I)V

    .line 321
    const-string v0, "XServerDisplayActivity"

    const-string v1, "Touchscreen controls hidden after timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "windowInsets"    # Landroid/view/WindowInsets;

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 360
    iput-boolean p2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->navigationFocused:Z

    return-void
.end method

.method static synthetic lambda$onCreate$3(Ljava/io/File;J)Ljava/io/File;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "size"    # J

    .line 524
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "path":Ljava/lang/String;
    const-string v1, "system32/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 526
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "syswow64/"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private synthetic lambda$onCreate$4()V
    .locals 2

    .line 624
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->setupWineSystemFiles()V

    .line 625
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->extractGraphicsDriverFiles()V

    .line 626
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->changeWineAudioDriver()V

    .line 628
    :try_start_0
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->setupXEnvironment()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    nop

    .line 632
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic lambda$onCreate$5(Ljava/lang/String;)V
    .locals 2
    .param p1, "controlsProfile"    # Ljava/lang/String;

    .line 618
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->setupUI()V

    .line 619
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->simulateConfirmInputControlsDialog()V

    .line 623
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 633
    return-void
.end method

.method private synthetic lambda$onNavigationItemSelected$10(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "container"    # Landroid/widget/FrameLayout;

    .line 1213
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

    .line 1215
    return-void
.end method

.method private synthetic lambda$onNavigationItemSelected$11(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V
    .locals 14
    .param p1, "screenEffectDialog"    # Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;

    .line 1228
    const-string v0, "Confirm callback triggered. About to apply effects."

    const-string v1, "ScreenEffectDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v0

    .line 1230
    .local v0, "currentRenderer":Lcom/winlator/cmod/renderer/GLRenderer;
    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v2

    const-class v3, Lcom/winlator/cmod/renderer/effects/ColorEffect;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/winlator/cmod/renderer/effects/ColorEffect;

    .line 1231
    .local v9, "colorEffect":Lcom/winlator/cmod/renderer/effects/ColorEffect;
    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v2

    const-class v3, Lcom/winlator/cmod/renderer/effects/FXAAEffect;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/winlator/cmod/renderer/effects/FXAAEffect;

    .line 1232
    .local v10, "fxaaEffect":Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v2

    const-class v3, Lcom/winlator/cmod/renderer/effects/CRTEffect;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/winlator/cmod/renderer/effects/CRTEffect;

    .line 1233
    .local v11, "crtEffect":Lcom/winlator/cmod/renderer/effects/CRTEffect;
    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v2

    const-class v3, Lcom/winlator/cmod/renderer/effects/ToonEffect;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/winlator/cmod/renderer/effects/ToonEffect;

    .line 1234
    .local v12, "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v2

    const-class v3, Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;

    .line 1237
    .local v13, "ntscEffect":Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v9, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FXAAEffect: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v10, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CRTEffect: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v11, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ToonEffect: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v12, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NTSCCombinedEffect: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v13, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const-string v2, "Calling applyEffects()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    move-object v2, p1

    move-object v3, v9

    move-object v4, v0

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    invoke-virtual/range {v2 .. v8}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->applyEffects(Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V

    .line 1245
    const-string v2, "applyEffects() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return-void
.end method

.method private synthetic lambda$onNavigationItemSelected$9(Lcom/winlator/cmod/renderer/GLRenderer;Ljava/lang/Float;)V
    .locals 3
    .param p1, "renderer"    # Lcom/winlator/cmod/renderer/GLRenderer;
    .param p2, "value"    # Ljava/lang/Float;

    .line 1208
    invoke-virtual {p1}, Lcom/winlator/cmod/renderer/GLRenderer;->getMagnifierZoom()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/renderer/GLRenderer;->setMagnifierZoom(F)V

    .line 1209
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

    invoke-virtual {p1}, Lcom/winlator/cmod/renderer/GLRenderer;->getMagnifierZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/MagnifierView;->setZoomValue(F)V

    .line 1210
    return-void
.end method

.method private synthetic lambda$setupUI$13()V
    .locals 2

    .line 1535
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 1536
    :cond_0
    return-void
.end method

.method private synthetic lambda$setupXEnvironment$12(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Integer;

    .line 1486
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->exit()V

    return-void
.end method

.method private synthetic lambda$showActiveWindowsDialog$26()V
    .locals 3

    .line 2347
    :try_start_0
    new-instance v0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    .line 2348
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    .end local v0    # "dialog":Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;
    goto :goto_0

    .line 2349
    :catch_0
    move-exception v0

    .line 2350
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XServerDisplayActivity"

    const-string v2, "Failed to show ActiveWindowsDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog failed to load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 2354
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$showInputControlsDialog$15(Landroid/widget/Spinner;)V
    .locals 7
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 1658
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1659
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ControlsProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    .local v1, "profileItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1661
    .local v2, "selectedPosition":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f10008e

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/XServerDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1663
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 1664
    .local v4, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v5}, Lcom/winlator/cmod/widget/InputControlsView;->getProfile()Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v6}, Lcom/winlator/cmod/widget/InputControlsView;->getProfile()Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v6

    iget v6, v6, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    if-ne v5, v6, :cond_0

    .line 1665
    add-int/lit8 v2, v3, 0x1

    .line 1666
    :cond_0
    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    .end local v4    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1669
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1670
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1671
    return-void
.end method

.method private synthetic lambda$showInputControlsDialog$16(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 1684
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1685
    .local v0, "position":I
    if-lez v0, :cond_0

    .line 1686
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-direct {p0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->showInputControls(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    goto :goto_0

    .line 1688
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->hideInputControls()V

    .line 1689
    :goto_0
    return-void
.end method

.method private synthetic lambda$showInputControlsDialog$17(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "loadProfileSpinner"    # Ljava/lang/Runnable;
    .param p2, "updateProfile"    # Ljava/lang/Runnable;

    .line 1697
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->hideInputControls()V

    .line 1698
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfiles(Z)V

    .line 1699
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1700
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1701
    return-void
.end method

.method private synthetic lambda$showInputControlsDialog$18(Landroid/widget/Spinner;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 4
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "loadProfileSpinner"    # Ljava/lang/Runnable;
    .param p3, "updateProfile"    # Ljava/lang/Runnable;
    .param p4, "v"    # Landroid/view/View;

    .line 1692
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1693
    .local v0, "position":I
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/winlator/cmod/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1694
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "edit_input_controls"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1695
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    iget v2, v2, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "selected_profile_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1696
    new-instance v2, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p2, p3}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda15;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    .line 1702
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->controlsEditorActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v2, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 1703
    return-void
.end method

.method private synthetic lambda$showInputControlsDialog$19(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "cbShowTouchscreenControls"    # Landroid/widget/CheckBox;
    .param p2, "cbEnableTimeout"    # Landroid/widget/CheckBox;
    .param p3, "cbEnableHaptics"    # Landroid/widget/CheckBox;
    .param p4, "sProfile"    # Landroid/widget/Spinner;
    .param p5, "updateProfile"    # Ljava/lang/Runnable;

    .line 1706
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->setShowTouchscreenControls(Z)V

    .line 1707
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 1708
    .local v0, "isTimeoutEnabled":Z
    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 1709
    .local v1, "isHapticsEnabled":Z
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1710
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "touchscreen_timeout_enabled"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1711
    const-string v3, "touchscreen_haptics_enabled"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1712
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1714
    if-eqz v0, :cond_0

    .line 1715
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->startTouchscreenTimeout()V

    goto :goto_0

    .line 1717
    :cond_0
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/widget/TouchpadView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1719
    :goto_0
    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 1720
    .local v3, "position":I
    if-lez v3, :cond_1

    .line 1721
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-direct {p0, v4}, Lcom/winlator/cmod/XServerDisplayActivity;->showInputControls(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    goto :goto_1

    .line 1723
    :cond_1
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->hideInputControls()V

    .line 1724
    :goto_1
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 1725
    return-void
.end method

.method private synthetic lambda$startTouchscreenTimeout$20(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1780
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1781
    .local v0, "action":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1786
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/widget/InputControlsView;->setVisibility(I)V

    .line 1789
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->hideControlsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1790
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->hideControlsRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1793
    :cond_1
    return v1
.end method

.method private navRecycler()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->findNavRecycler(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method private openXServerDrawer()V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    if-eqz v0, :cond_1

    .line 905
    const-string v0, "open-drawer/shortcut"

    invoke-direct {p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->releasePointerCaptureIfNeeded(Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 912
    :cond_1
    :goto_0
    return-void
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 663
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 664
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private parseContainerIdFromDesktopFile(Ljava/io/File;)I
    .locals 5
    .param p1, "desktopFile"    # Ljava/io/File;

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "containerId":I
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .local v1, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 649
    const-string v2, "container_id:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 651
    nop

    .line 654
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 656
    .end local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 646
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "containerId":I
    .end local p1    # "desktopFile":Ljava/io/File;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 654
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "containerId":I
    .restart local p1    # "desktopFile":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "XServerDisplayActivity"

    const-string v3, "Error parsing container_id from .desktop file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return v0
.end method

.method private static parseSemverLoose(Ljava/lang/String;)[I
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 2082
    const/4 v0, 0x0

    if-nez p0, :cond_0

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    return-object v0

    .line 2084
    :cond_0
    sget-object v1, Lcom/winlator/cmod/XServerDisplayActivity;->SEMVER_LOOSE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2086
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .local v2, "g1":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "g2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2087
    .local v4, "g3":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2088
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 2089
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 2090
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2093
    :cond_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 2097
    :cond_2
    invoke-static {v2}, Lcom/winlator/cmod/XServerDisplayActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v0

    .line 2098
    .local v0, "major":I
    invoke-static {v3}, Lcom/winlator/cmod/XServerDisplayActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v5

    .line 2099
    .local v5, "minor":I
    invoke-static {v4}, Lcom/winlator/cmod/XServerDisplayActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v6

    .line 2100
    .local v6, "patch":I
    filled-new-array {v0, v5, v6}, [I

    move-result-object v7

    return-object v7

    .line 2094
    .end local v0    # "major":I
    .end local v5    # "minor":I
    .end local v6    # "patch":I
    :cond_3
    :goto_1
    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private parseShortcutNameFromDesktopFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "desktopFile"    # Ljava/io/File;

    .line 1612
    const-string v0, ""

    .line 1613
    .local v0, "shortcutName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1614
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    .local v1, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1617
    const-string v2, "Name="

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1618
    const-string v2, "="

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 1619
    nop

    .line 1622
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1624
    .end local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 1614
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "shortcutName":Ljava/lang/String;
    .end local p1    # "desktopFile":Ljava/io/File;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1622
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "shortcutName":Ljava/lang/String;
    .restart local p1    # "desktopFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1623
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "XServerDisplayActivity"

    const-string v3, "Error reading shortcut name from .desktop file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-object v0
.end method

.method private persistSection(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 1077
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1078
    return-void
.end method

.method private pickHighestRefreshRate()F
    .locals 7

    .line 248
    invoke-virtual {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 249
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v1

    .line 251
    .local v1, "modes":[Landroid/view/Display$Mode;
    const/4 v2, 0x0

    .line 253
    .local v2, "maxRefresh":F
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 254
    .local v5, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_0

    .line 255
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 253
    .end local v5    # "mode":Landroid/view/Display$Mode;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 258
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Picking refresh rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XServerDisplayActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v2
.end method

.method private releasePointerCaptureIfNeeded(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 885
    iget-boolean v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->pointerCaptureRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/TouchpadView;->releasePointerCapture()V

    .line 887
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->pointerCaptureRequested:Z

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PointerCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    return-void
.end method

.method private varargs restoreOriginalDllFiles([Ljava/lang/String;)V
    .locals 12
    .param p1, "dlls"    # [Ljava/lang/String;

    .line 2151
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v0

    .line 2152
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/home/xuser/.wine/drive_c/windows"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2153
    .local v1, "windowsDir":Ljava/io/File;
    const/4 v2, 0x0

    .line 2154
    .local v2, "system32dlls":Ljava/io/File;
    const/4 v3, 0x0

    .line 2156
    .local v3, "syswow64dlls":Ljava/io/File;
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v4}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2157
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v6}, Lcom/winlator/cmod/xenvironment/ImageFs;->getWinePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/lib/wine/aarch64-windows"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 2159
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v6}, Lcom/winlator/cmod/xenvironment/ImageFs;->getWinePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/lib/wine/x86_64-windows"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 2161
    :goto_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v6}, Lcom/winlator/cmod/xenvironment/ImageFs;->getWinePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/lib/wine/i386-windows"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 2164
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 2165
    .local v6, "dll":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2166
    .local v7, "srcFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "system32/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2167
    .local v8, "dstFile":Ljava/io/File;
    invoke-static {v7, v8}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 2168
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v9

    .line 2169
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syswow64/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v9

    .line 2170
    invoke-static {v7, v8}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 2164
    .end local v6    # "dll":Ljava/lang/String;
    .end local v7    # "srcFile":Ljava/io/File;
    .end local v8    # "dstFile":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2172
    :cond_1
    return-void
.end method

.method private rowTitle(Landroid/view/View;)Landroid/widget/TextView;
    .locals 7
    .param p1, "row"    # Landroid/view/View;

    .line 953
    invoke-virtual {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "design_menu_item_text"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 954
    .local v0, "textId":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 955
    .local v2, "v":Landroid/view/View;
    :goto_0
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    return-object v1

    .line 957
    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 958
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 959
    .local v3, "vg":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 960
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 961
    .local v5, "c":Landroid/view/View;
    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    move-object v1, v5

    check-cast v1, Landroid/widget/TextView;

    return-object v1

    .line 959
    .end local v5    # "c":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 964
    .end local v3    # "vg":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    :cond_3
    return-object v1
.end method

.method private static safeParseInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 2104
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2106
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2107
    :catch_0
    move-exception v1

    .line 2108
    .local v1, "ignored":Ljava/lang/NumberFormatException;
    return v0

    .line 2104
    .end local v1    # "ignored":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return v0
.end method

.method private savePlaytimeData()V
    .locals 10

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 814
    .local v0, "endTime":J
    iget-wide v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->startTime:J

    sub-long v2, v0, v2

    .line 817
    .local v2, "playtime":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 818
    const-wide/16 v2, 0x0

    .line 821
    :cond_0
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->playtimePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 822
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcutName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_playtime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 825
    .local v7, "playtimeKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/winlator/cmod/XServerDisplayActivity;->playtimePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 826
    .local v4, "totalPlaytime":J
    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 827
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 830
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/winlator/cmod/XServerDisplayActivity;->startTime:J

    .line 831
    return-void
.end method

.method private setTextColorForDialog(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "color"    # I

    .line 1630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1631
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1632
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1634
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/winlator/cmod/XServerDisplayActivity;->setTextColorForDialog(Landroid/view/ViewGroup;I)V

    goto :goto_1

    .line 1635
    :cond_0
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1637
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1630
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1640
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private setupUI()V
    .locals 9

    .line 1518
    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1519
    .local v0, "rootView":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/winlator/cmod/widget/XServerView;

    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-direct {v1, p0, v2}, Lcom/winlator/cmod/widget/XServerView;-><init>(Landroid/content/Context;Lcom/winlator/cmod/xserver/XServer;)V

    iput-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    .line 1520
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v1}, Lcom/winlator/cmod/widget/XServerView;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v1

    .line 1521
    .local v1, "renderer":Lcom/winlator/cmod/renderer/GLRenderer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/renderer/GLRenderer;->setCursorVisible(Z)V

    .line 1523
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1524
    new-array v3, v4, [Ljava/lang/String;

    const-string v5, "explorer.exe"

    aput-object v5, v3, v2

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/renderer/GLRenderer;->setUnviewableWMClasses([Ljava/lang/String;)V

    .line 1527
    :cond_0
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3, v1}, Lcom/winlator/cmod/xserver/XServer;->setRenderer(Lcom/winlator/cmod/renderer/GLRenderer;)V

    .line 1528
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1530
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "cursor_speed"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->globalCursorSpeed:F

    .line 1531
    new-instance v3, Lcom/winlator/cmod/widget/TouchpadView;

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/winlator/cmod/XServerDisplayActivity;->hideControlsRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/winlator/cmod/widget/TouchpadView;-><init>(Landroid/content/Context;Lcom/winlator/cmod/xserver/XServer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    .line 1532
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    iget v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->globalCursorSpeed:F

    invoke-virtual {v3, v5}, Lcom/winlator/cmod/widget/TouchpadView;->setSensitivity(F)V

    .line 1533
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    iget-boolean v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isMouseDisabled:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/widget/TouchpadView;->setMouseEnabled(Z)V

    .line 1534
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    new-instance v4, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda25;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/widget/TouchpadView;->setFourFingersTapCallback(Ljava/lang/Runnable;)V

    .line 1537
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1539
    new-instance v3, Lcom/winlator/cmod/widget/InputControlsView;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->hideControlsRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, p0, v4, v5}, Lcom/winlator/cmod/widget/InputControlsView;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    .line 1540
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "overlay_opacity"

    const v6, 0x3ecccccd    # 0.4f

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/widget/InputControlsView;->setOverlayOpacity(F)V

    .line 1541
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/widget/InputControlsView;->setTouchpadView(Lcom/winlator/cmod/widget/TouchpadView;)V

    .line 1542
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/widget/InputControlsView;->setXServer(Lcom/winlator/cmod/xserver/XServer;)V

    .line 1543
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/widget/InputControlsView;->setVisibility(I)V

    .line 1544
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1547
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->startTouchscreenTimeout()V

    .line 1550
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "touchscreen_timeout_enabled"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1551
    .local v2, "isTimeoutEnabled":Z
    if-eqz v2, :cond_1

    .line 1552
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->startTouchscreenTimeout()V

    .line 1555
    :cond_1
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->isShowFPS()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1556
    new-instance v3, Lcom/winlator/cmod/widget/FrameRating;

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    invoke-direct {v3, p0, v5}, Lcom/winlator/cmod/widget/FrameRating;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    .line 1559
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getFPSCounterConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/winlator/cmod/widget/FrameRating;->applyConfig(Ljava/lang/String;)V

    .line 1561
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/widget/FrameRating;->setVisibility(I)V

    .line 1562
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->frameRating:Lcom/winlator/cmod/widget/FrameRating;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1566
    :cond_2
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v4, "fullscreenStretched"

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1569
    .local v3, "shortcutFullscreenStretched":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 1571
    .local v4, "shouldStretch":Z
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v6, "1"

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 1573
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 1574
    :cond_4
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->isFullscreenStretched()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1576
    const/4 v4, 0x1

    .line 1579
    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 1581
    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/GLRenderer;->toggleFullscreen()V

    .line 1582
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v5}, Lcom/winlator/cmod/widget/TouchpadView;->toggleFullscreen()V

    .line 1585
    :cond_6
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v5, :cond_8

    .line 1586
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v7, "controlsProfile"

    invoke-virtual {v5, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1587
    .local v5, "controlsProfile":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1588
    iget-object v7, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfile(I)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v7

    .line 1589
    .local v7, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    if-eqz v7, :cond_7

    invoke-direct {p0, v7}, Lcom/winlator/cmod/XServerDisplayActivity;->showInputControls(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    .line 1592
    .end local v7    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :cond_7
    iget-object v7, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v8, "simTouchScreen"

    invoke-virtual {v7, v8}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1593
    .local v7, "simTouchScreen":Ljava/lang/String;
    iget-object v8, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v8, v6}, Lcom/winlator/cmod/widget/TouchpadView;->setSimTouchScreen(Z)V

    .line 1596
    .end local v5    # "controlsProfile":Ljava/lang/String;
    .end local v7    # "simTouchScreen":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda26;

    invoke-direct {v6, v1}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda26;-><init>(Lcom/winlator/cmod/renderer/GLRenderer;)V

    invoke-static {v5, v6}, Lcom/winlator/cmod/core/AppUtils;->observeSoftKeyboardVisibility(Landroid/view/View;Lcom/winlator/cmod/core/Callback;)V

    .line 1597
    return-void
.end method

.method private setupWineSystemFiles()V
    .locals 12

    .line 1307
    invoke-static {p0}, Lcom/winlator/cmod/core/AppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, "appVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/ImageFs;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1309
    .local v1, "imgVersion":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1311
    .local v2, "containerDataChanged":Z
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    const-string v4, "appVersion"

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "imgVersion"

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3, v5}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1312
    :cond_0
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-direct {p0, v3}, Lcom/winlator/cmod/XServerDisplayActivity;->applyGeneralPatches(Lcom/winlator/cmod/container/Container;)V

    .line 1313
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3, v4, v0}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1314
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3, v5, v1}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1315
    const/4 v2, 0x1

    .line 1318
    :cond_1
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    .line 1320
    .local v3, "dxwrapper":Ljava/lang/String;
    const-string v4, "dxvk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dxvk-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

    const-string v6, "version"

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1322
    .local v4, "dxvkWrapper":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vkd3d-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

    const-string v7, "vkd3dVersion"

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1323
    .local v5, "vkd3dWrapper":Ljava/lang/String;
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

    const-string v7, "ddrawrapper"

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1324
    .local v6, "ddrawrapper":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1327
    .end local v4    # "dxvkWrapper":Ljava/lang/String;
    .end local v5    # "vkd3dWrapper":Ljava/lang/String;
    .end local v6    # "ddrawrapper":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    const-string v5, "dxwrapper"

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1328
    invoke-direct {p0, v3}, Lcom/winlator/cmod/XServerDisplayActivity;->extractDXWrapperFiles(Ljava/lang/String;)V

    .line 1329
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v4, v5, v3}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1330
    const/4 v2, 0x1

    .line 1333
    :cond_3
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v5, "wincomponents"

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v4

    .line 1334
    .local v4, "wincomponents":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6, v5}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1335
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->extractWinComponentFiles()V

    .line 1336
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6, v5, v4}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1337
    const/4 v2, 0x1

    .line 1340
    :cond_5
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getDesktopTheme()Ljava/lang/String;

    move-result-object v5

    .line 1341
    .local v5, "desktopTheme":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    const-string v9, "desktopTheme"

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1342
    new-instance v6, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;

    invoke-direct {v6, v5}, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    invoke-static {p0, v6, v8}, Lcom/winlator/cmod/core/WineThemeManager;->apply(Landroid/content/Context;Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;Lcom/winlator/cmod/xserver/ScreenInfo;)V

    .line 1343
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1344
    const/4 v2, 0x1

    .line 1347
    :cond_6
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-static {p0, v6}, Lcom/winlator/cmod/core/WineStartMenuCreator;->create(Landroid/content/Context;Lcom/winlator/cmod/container/Container;)V

    .line 1348
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-static {v6}, Lcom/winlator/cmod/core/WineUtils;->createDosdevicesSymlinks(Lcom/winlator/cmod/container/Container;)V

    .line 1351
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->getInputType()I

    move-result v6

    .line 1352
    .local v6, "inputType":I
    iget-object v7, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v7, :cond_7

    .line 1353
    iget-object v7, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v8, "inputType"

    invoke-virtual {v7, v8}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1354
    .local v7, "shortcutInputType":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1355
    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    .line 1358
    .end local v7    # "shortcutInputType":Ljava/lang/String;
    :cond_7
    and-int/lit8 v7, v6, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_8

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    .line 1360
    .local v7, "dinputEnabled":Z
    :goto_1
    iget-object v8, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v8}, Lcom/winlator/cmod/container/Container;->isExclusiveXInput()Z

    move-result v8

    .line 1361
    .local v8, "exclusiveXInput":Z
    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v9, :cond_9

    .line 1362
    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v10, "exclusiveXInput"

    invoke-virtual {v9, v10}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1363
    .local v9, "extra":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1366
    .end local v9    # "extra":Ljava/lang/String;
    :cond_9
    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-static {v9, v7, v8}, Lcom/winlator/cmod/core/WineUtils;->setJoystickRegistryKeys(Lcom/winlator/cmod/container/Container;ZZ)V

    .line 1368
    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v10, "startupSelection"

    if-eqz v9, :cond_a

    .line 1369
    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v11, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v11}, Lcom/winlator/cmod/container/Container;->getStartupSelection()B

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->startupSelection:Ljava/lang/String;

    goto :goto_2

    .line 1371
    :cond_a
    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v9}, Lcom/winlator/cmod/container/Container;->getStartupSelection()B

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->startupSelection:Ljava/lang/String;

    .line 1373
    :goto_2
    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->startupSelection:Ljava/lang/String;

    iget-object v11, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v11, v10}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1374
    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    iget-object v11, p0, Lcom/winlator/cmod/XServerDisplayActivity;->startupSelection:Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/winlator/cmod/core/WineUtils;->changeServicesStatus(Lcom/winlator/cmod/container/Container;Ljava/lang/String;)V

    .line 1375
    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    iget-object v11, p0, Lcom/winlator/cmod/XServerDisplayActivity;->startupSelection:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1376
    const/4 v2, 0x1

    .line 1378
    :cond_b
    if-eqz v2, :cond_c

    iget-object v9, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v9}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 1379
    :cond_c
    return-void
.end method

.method private setupXEnvironment()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1384
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v1, "LC_ALL"

    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->lc_all:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1385
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    iget-object v1, v1, Lcom/winlator/cmod/xenvironment/ImageFs;->wineprefix:Ljava/lang/String;

    const-string v2, "WINEPREFIX"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1387
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "enable_wine_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1388
    .local v0, "enableWineDebug":Z
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "wine_debug_channels"

    const-string v4, "warn,err,fixme"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "wineDebugChannels":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    const-string v6, ",+"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1391
    :cond_0
    const-string v4, "-all"

    .line 1389
    :goto_0
    const-string v5, "WINEDEBUG"

    invoke-virtual {v3, v5, v4}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1395
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v3}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1396
    .local v3, "rootPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v4}, Lcom/winlator/cmod/xenvironment/ImageFs;->getTmpDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/winlator/cmod/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 1399
    new-instance v4, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    iget-object v7, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    .line 1401
    invoke-virtual {v7}, Lcom/winlator/cmod/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/contents/ContentsManager;->getProfileByEntryName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile;

    move-result-object v6

    iget-object v7, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-direct {v4, v5, v6, v7}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;-><init>(Lcom/winlator/cmod/contents/ContentsManager;Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/container/Shortcut;)V

    iput-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    .line 1406
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    if-eqz v4, :cond_6

    .line 1407
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->startupSelection:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 1410
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->setContainer(Lcom/winlator/cmod/container/Container;)V

    .line 1411
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->setWineInfo(Lcom/winlator/cmod/core/WineInfo;)V

    .line 1413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wine explorer /desktop=shell,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getWineStartCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1415
    .local v4, "guestExecutable":Ljava/lang/String;
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    invoke-virtual {v5, v4}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->setGuestExecutable(Ljava/lang/String;)V

    .line 1417
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->getEnvVars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/core/EnvVars;->putAll(Ljava/lang/String;)V

    .line 1419
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v7, "envVars"

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/core/EnvVars;->putAll(Ljava/lang/String;)V

    .line 1421
    :cond_1
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v6, "WINEESYNC"

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1422
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1425
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    .local v5, "bindingPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->drivesIterator()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 1427
    .local v7, "drive":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    .end local v7    # "drive":[Ljava/lang/String;
    goto :goto_1

    .line 1430
    :cond_3
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->setBindingPaths([Ljava/lang/String;)V

    .line 1432
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    .line 1433
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v6, :cond_4

    .line 1434
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v7, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v7}, Lcom/winlator/cmod/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v7

    const-string v8, "box64Preset"

    invoke-virtual {v6, v8, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1435
    :cond_4
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v6

    .line 1432
    :goto_2
    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->setBox64Preset(Ljava/lang/String;)V

    .line 1438
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    .line 1439
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v6, :cond_5

    .line 1440
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v7, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v7}, Lcom/winlator/cmod/container/Container;->getFEXCorePreset()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fexcorePreset"

    invoke-virtual {v6, v8, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1441
    :cond_5
    iget-object v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->getFEXCorePreset()Ljava/lang/String;

    move-result-object v6

    .line 1438
    :goto_3
    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->setFEXCorePreset(Ljava/lang/String;)V

    .line 1446
    .end local v4    # "guestExecutable":Ljava/lang/String;
    .end local v5    # "bindingPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/cmod/core/EnvVars;

    if-eqz v2, :cond_7

    .line 1447
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/core/EnvVars;->putAll(Lcom/winlator/cmod/core/EnvVars;)V

    .line 1448
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v2}, Lcom/winlator/cmod/core/EnvVars;->clear()V

    .line 1452
    :cond_7
    new-instance v2, Lcom/winlator/cmod/xenvironment/XEnvironment;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-direct {v2, p0, v4}, Lcom/winlator/cmod/xenvironment/XEnvironment;-><init>(Landroid/content/Context;Lcom/winlator/cmod/xenvironment/ImageFs;)V

    iput-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    .line 1453
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    new-instance v4, Lcom/winlator/cmod/xenvironment/components/SysVSharedMemoryComponent;

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 1456
    const-string v6, "/usr/tmp/.sysvshm/SM0"

    invoke-static {v3, v6}, Lcom/winlator/cmod/xconnector/UnixSocketConfig;->createSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/winlator/cmod/xenvironment/components/SysVSharedMemoryComponent;-><init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xconnector/UnixSocketConfig;)V

    .line 1453
    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xenvironment/XEnvironment;->addComponent(Lcom/winlator/cmod/xenvironment/EnvironmentComponent;)V

    .line 1459
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    new-instance v4, Lcom/winlator/cmod/xenvironment/components/XServerComponent;

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 1462
    const-string v6, "/usr/tmp/.X11-unix/X0"

    invoke-static {v3, v6}, Lcom/winlator/cmod/xconnector/UnixSocketConfig;->createSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/winlator/cmod/xenvironment/components/XServerComponent;-><init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xconnector/UnixSocketConfig;)V

    .line 1459
    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xenvironment/XEnvironment;->addComponent(Lcom/winlator/cmod/xenvironment/EnvironmentComponent;)V

    .line 1467
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    const-string v4, "alsa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1468
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/usr/tmp/.sound/AS0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ANDROID_ALSA_SERVER"

    invoke-virtual {v2, v6, v4}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1469
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    const-string v4, "ANDROID_ASERVER_USE_SHM"

    const-string v6, "true"

    invoke-virtual {v2, v4, v6}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1470
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    new-instance v4, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;

    .line 1472
    invoke-static {v3, v5}, Lcom/winlator/cmod/xconnector/UnixSocketConfig;->createSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;-><init>(Lcom/winlator/cmod/xconnector/UnixSocketConfig;)V

    .line 1470
    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xenvironment/XEnvironment;->addComponent(Lcom/winlator/cmod/xenvironment/EnvironmentComponent;)V

    goto :goto_4

    .line 1475
    :cond_8
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    const-string v4, "pulseaudio"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1476
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/usr/tmp/.sound/PS0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PULSE_SERVER"

    invoke-virtual {v2, v6, v4}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1477
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    new-instance v4, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;

    .line 1479
    invoke-static {v3, v5}, Lcom/winlator/cmod/xconnector/UnixSocketConfig;->createSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/winlator/cmod/xenvironment/components/PulseAudioComponent;-><init>(Lcom/winlator/cmod/xconnector/UnixSocketConfig;)V

    .line 1477
    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xenvironment/XEnvironment;->addComponent(Lcom/winlator/cmod/xenvironment/EnvironmentComponent;)V

    .line 1485
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->envVars:Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->setEnvVars(Lcom/winlator/cmod/core/EnvVars;)V

    .line 1486
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    new-instance v4, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;->setTerminationCallback(Lcom/winlator/cmod/core/Callback;)V

    .line 1489
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->guestProgramLauncherComponent:Lcom/winlator/cmod/xenvironment/components/GuestProgramLauncherComponent;

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xenvironment/XEnvironment;->addComponent(Lcom/winlator/cmod/xenvironment/EnvironmentComponent;)V

    .line 1493
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v4}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "dev/input"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1494
    .local v2, "devInputDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1499
    :cond_a
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v4}, Lcom/winlator/cmod/xenvironment/XEnvironment;->startEnvironmentComponents()V

    .line 1502
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v4}, Lcom/winlator/cmod/winhandler/WinHandler;->start()V

    .line 1504
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->wineRequestHandler:Lcom/winlator/cmod/core/WineRequestHandler;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->wineRequestHandler:Lcom/winlator/cmod/core/WineRequestHandler;

    invoke-virtual {v4}, Lcom/winlator/cmod/core/WineRequestHandler;->start()V

    .line 1507
    :cond_b
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

    .line 1509
    return-void
.end method

.method private showActiveWindowsDialog()V
    .locals 1

    .line 2345
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda17;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2355
    return-void
.end method

.method private showInputControls(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 1810
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->setVisibility(I)V

    .line 1811
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->requestFocus()Z

    .line 1812
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/widget/InputControlsView;->setProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    .line 1814
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getCursorSpeed()F

    move-result v2

    iget v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->globalCursorSpeed:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/widget/TouchpadView;->setSensitivity(F)V

    .line 1815
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setPointerButtonRightEnabled(Z)V

    .line 1817
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 1818
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v0}, Lcom/winlator/cmod/winhandler/WinHandler;->sendGamepadState()V

    .line 1819
    return-void
.end method

.method private showInputControlsDialog()V
    .locals 18

    .line 1643
    move-object/from16 v7, p0

    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentDialog;

    const v1, 0x7f0c005c

    invoke-direct {v0, v7, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    move-object v8, v0

    .line 1644
    .local v8, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    const v0, 0x7f10011e

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setTitle(I)V

    .line 1645
    const v0, 0x7f08012b

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setIcon(I)V

    .line 1647
    const v0, 0x7f090105

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Spinner;

    .line 1649
    .local v9, "sProfile":Landroid/widget/Spinner;
    invoke-virtual {v8}, Lcom/winlator/cmod/contentdialog/ContentDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, v7, Lcom/winlator/cmod/XServerDisplayActivity;->isDarkMode:Z

    const v2, 0x7f0800f3

    const v3, 0x7f0800f2

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1650
    iget-boolean v0, v7, Lcom/winlator/cmod/XServerDisplayActivity;->isDarkMode:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v9, v2}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 1653
    iget-boolean v0, v7, Lcom/winlator/cmod/XServerDisplayActivity;->isDarkMode:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0600db

    goto :goto_2

    :cond_2
    const v0, 0x7f060021

    :goto_2
    invoke-static {v7, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 1654
    .local v10, "textColor":I
    invoke-virtual {v8}, Lcom/winlator/cmod/contentdialog/ContentDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    .line 1655
    .local v11, "dialogViewGroup":Landroid/view/ViewGroup;
    invoke-direct {v7, v11, v10}, Lcom/winlator/cmod/XServerDisplayActivity;->setTextColorForDialog(Landroid/view/ViewGroup;I)V

    .line 1657
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, v7, v9}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/Spinner;)V

    move-object v12, v0

    .line 1672
    .local v12, "loadProfileSpinner":Ljava/lang/Runnable;
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    .line 1674
    const v0, 0x7f090067

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/CheckBox;

    .line 1675
    .local v13, "cbShowTouchscreenControls":Landroid/widget/CheckBox;
    iget-object v0, v7, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->isShowTouchscreenControls()Z

    move-result v0

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1677
    const v0, 0x7f090053

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/CheckBox;

    .line 1678
    .local v14, "cbEnableTimeout":Landroid/widget/CheckBox;
    iget-object v0, v7, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "touchscreen_timeout_enabled"

    const/4 v15, 0x0

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1680
    const v0, 0x7f090051

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/CheckBox;

    .line 1681
    .local v6, "cbEnableHaptics":Landroid/widget/CheckBox;
    iget-object v0, v7, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "touchscreen_haptics_enabled"

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1683
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, v7, v9}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda9;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/Spinner;)V

    move-object v5, v0

    .line 1691
    .local v5, "updateProfile":Ljava/lang/Runnable;
    const v0, 0x7f090041

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, v7, v9, v12, v5}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda10;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/Spinner;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1705
    new-instance v4, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda12;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object v15, v4

    move-object v4, v6

    move-object/from16 v16, v5

    .end local v5    # "updateProfile":Ljava/lang/Runnable;
    .local v16, "updateProfile":Ljava/lang/Runnable;
    move-object v5, v9

    move-object/from16 v17, v6

    .end local v6    # "cbEnableHaptics":Landroid/widget/CheckBox;
    .local v17, "cbEnableHaptics":Landroid/widget/CheckBox;
    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v15}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 1727
    invoke-static/range {v16 .. v16}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda13;

    move-object/from16 v1, v16

    .end local v16    # "updateProfile":Ljava/lang/Runnable;
    .local v1, "updateProfile":Ljava/lang/Runnable;
    invoke-direct {v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnCancelCallback(Ljava/lang/Runnable;)V

    .line 1729
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setCanceledOnTouchOutside(Z)V

    .line 1730
    invoke-virtual {v8}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 1731
    return-void
.end method

.method private simulateConfirmInputControlsDialog()V
    .locals 7

    .line 1736
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "show_touchscreen_controls_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1737
    .local v0, "isShowTouchscreenControls":Z
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setShowTouchscreenControls(Z)V

    .line 1739
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "touchscreen_timeout_enabled"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1740
    .local v1, "isTimeoutEnabled":Z
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "touchscreen_haptics_enabled"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1743
    .local v2, "isHapticsEnabled":Z
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1744
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1745
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1746
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1749
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "selected_profile_index"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1751
    .local v3, "selectedProfileIndex":I
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-virtual {v5}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 1753
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-virtual {v5}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 1754
    .local v5, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    invoke-direct {p0, v5}, Lcom/winlator/cmod/XServerDisplayActivity;->showInputControls(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    .line 1755
    .end local v5    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    goto :goto_0

    .line 1757
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->hideInputControls()V

    .line 1761
    :goto_0
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v5}, Lcom/winlator/cmod/widget/InputControlsView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 1762
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->startTouchscreenTimeout()V

    goto :goto_1

    .line 1764
    :cond_1
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/widget/TouchpadView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1767
    :goto_1
    const-string v5, "XServerDisplayActivity"

    const-string v6, "Input controls simulated confirmation executed."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    return-void
.end method

.method private startTouchscreenTimeout()V
    .locals 5

    .line 1771
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "touchscreen_timeout_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1773
    .local v0, "isTimeoutEnabled":Z
    const-string v1, "XServerDisplayActivity"

    if-eqz v0, :cond_0

    .line 1775
    iget-object v3, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v3, v2}, Lcom/winlator/cmod/widget/InputControlsView;->setVisibility(I)V

    .line 1776
    const-string v2, "Timeout is enabled, setting up timeout logic."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    new-instance v2, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda14;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/TouchpadView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1797
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->hideControlsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1798
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->hideControlsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1801
    :cond_0
    const-string v3, "Timeout is disabled, controls will stay visible."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/InputControlsView;->setVisibility(I)V

    .line 1804
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->hideControlsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1805
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/TouchpadView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1807
    :goto_0
    return-void
.end method

.method private titlesForIds(Landroid/view/Menu;[I)Ljava/util/Set;
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "itemIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "[I)",
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 942
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 943
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p2, v2

    .line 944
    .local v3, "id":I
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 945
    .local v4, "mi":Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 943
    .end local v3    # "id":I
    .end local v4    # "mi":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 947
    :cond_1
    return-object v0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1942
    const/4 v0, 0x0

    .line 1943
    .local v0, "handledByWinHandler":Z
    const/4 v1, 0x0

    .line 1946
    .local v1, "handledByTouchpadView":Z
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    if-eqz v2, :cond_0

    .line 1947
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v2, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1948
    nop

    .line 1954
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    if-eqz v2, :cond_1

    .line 1955
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v2, p1}, Lcom/winlator/cmod/widget/TouchpadView;->onExternalMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1956
    nop

    .line 1962
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1963
    .local v2, "handledBySuper":Z
    nop

    .line 1968
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1978
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1979
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x6d

    if-ne v0, v3, :cond_3

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/widget/InputControlsView;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/Keyboard;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    move v0, v1

    .line 1981
    .local v0, "handled":Z
    return v2

    .line 1986
    .end local v0    # "handled":Z
    :cond_3
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/widget/InputControlsView;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/Keyboard;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1987
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v2

    .line 1986
    :cond_6
    return v1
.end method

.method public getContainer()Lcom/winlator/cmod/container/Container;
    .locals 1

    .line 2240
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    return-object v0
.end method

.method public getInputControlsView()Lcom/winlator/cmod/widget/InputControlsView;
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    return-object v0
.end method

.method public getOverrideEnvVars()Lcom/winlator/cmod/core/EnvVars;
    .locals 1

    .line 2248
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/cmod/core/EnvVars;

    if-nez v0, :cond_0

    .line 2249
    new-instance v0, Lcom/winlator/cmod/core/EnvVars;

    invoke-direct {v0}, Lcom/winlator/cmod/core/EnvVars;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/cmod/core/EnvVars;

    .line 2251
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->overrideEnvVars:Lcom/winlator/cmod/core/EnvVars;

    return-object v0
.end method

.method public getScreenEffectProfile()Ljava/lang/String;
    .locals 1

    .line 2324
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->screenEffectProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;
    .locals 1

    .line 2232
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    return-object v0
.end method

.method public getXServer()Lcom/winlator/cmod/xserver/XServer;
    .locals 1

    .line 2228
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    return-object v0
.end method

.method public getXServerView()Lcom/winlator/cmod/widget/XServerView;
    .locals 1

    .line 2236
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 770
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 771
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->editInputControlsCallback:Ljava/lang/Runnable;

    .line 777
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 901
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 240
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 241
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->configChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->configChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->configChangedCallback:Ljava/lang/Runnable;

    .line 245
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 266
    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/core/AppUtils;->hideSystemUI(Landroid/app/Activity;)V

    .line 268
    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/core/AppUtils;->keepScreenOn(Landroid/app/Activity;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 271
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->pickHighestRefreshRate()F

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 274
    const v0, 0x7f0c00c9

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->setContentView(I)V

    .line 276
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    .line 277
    invoke-static/range {p0 .. p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    .line 279
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "cursor_lock"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->cursorLock:Z

    .line 282
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "dark_mode"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->isDarkMode:Z

    .line 284
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "open_with_android_browser"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 285
    .local v3, "isOpenWithAndroidBrowser":Z
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "share_android_clipboard"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 290
    .local v5, "isShareAndroidClipboard":Z
    const/4 v6, 0x0

    .line 300
    .local v6, "xinputDisabledFromShortcut":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/winlator/cmod/XServerDisplayActivity;->startTime:J

    .line 303
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->handler:Landroid/os/Handler;

    .line 304
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$1;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity$1;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->savePlaytimeRunnable:Ljava/lang/Runnable;

    .line 311
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->handler:Landroid/os/Handler;

    iget-object v7, v1, Lcom/winlator/cmod/XServerDisplayActivity;->savePlaytimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "touchscreen_timeout_enabled"

    const/4 v8, 0x1

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 318
    .local v7, "isTimeoutEnabled":Z
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v7}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Z)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->hideControlsRunnable:Ljava/lang/Runnable;

    .line 326
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/contents/ContentsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    .line 327
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/contents/ContentsManager;->syncContents()V

    .line 329
    const v0, 0x7f090075

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 330
    const v0, 0x7f0900b6

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/navigation/NavigationView;

    iput-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 332
    iget-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v10, Lcom/winlator/cmod/XServerDisplayActivity$2;

    invoke-direct {v10, v1}, Lcom/winlator/cmod/XServerDisplayActivity$2;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 344
    iget-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v10, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda11;

    invoke-direct {v10}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 345
    iget-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v9, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 347
    invoke-virtual {v1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/navigation/NavigationView;

    iput-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 349
    iget-boolean v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->isDarkMode:Z

    if-eqz v9, :cond_0

    .line 350
    iget-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    const v10, 0x7f0600db

    invoke-static {v1, v10}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 351
    iget-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    const v10, 0x7f060038

    invoke-virtual {v9, v10}, Lcom/google/android/material/navigation/NavigationView;->setBackgroundResource(I)V

    .line 354
    :cond_0
    iget-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "enable_wine_debug"

    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "enable_box64_logs"

    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    move v9, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v9, v8

    .line 355
    .local v9, "enableLogs":Z
    :goto_1
    iget-object v10, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v10}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v10

    .line 356
    .local v10, "menu":Landroid/view/Menu;
    const v11, 0x7f090273

    invoke-interface {v10, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 357
    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/XrActivity;->isEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    const v11, 0x7f090274

    invoke-interface {v10, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 358
    :cond_3
    iget-object v11, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v11, v1}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 359
    iget-object v11, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    const/16 v12, 0x3e8

    invoke-static {v1, v12}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/material/navigation/NavigationView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 360
    iget-object v11, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    new-instance v12, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda21;

    invoke-direct {v12, v1}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda21;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {v11, v12}, Lcom/google/android/material/navigation/NavigationView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 363
    iget-object v11, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v12, "drawer_exp_cursor"

    invoke-interface {v11, v12, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/winlator/cmod/XServerDisplayActivity;->expCursor:Z

    .line 365
    const v11, 0x7f090241

    iget-boolean v12, v1, Lcom/winlator/cmod/XServerDisplayActivity;->expCursor:Z

    const v13, 0x7f09023d

    invoke-direct {v1, v10, v13, v11, v12}, Lcom/winlator/cmod/XServerDisplayActivity;->applyGroup(Landroid/view/Menu;IIZ)V

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->navRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v11

    .line 369
    .local v11, "rv":Landroidx/recyclerview/widget/RecyclerView;
    const/4 v12, 0x0

    if-eqz v11, :cond_4

    .line 370
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 371
    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 372
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 373
    invoke-virtual {v1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 374
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 375
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/RecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    .line 381
    new-instance v0, Ljava/io/File;

    iget-object v13, v1, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    invoke-virtual {v13}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v13

    const-string v14, "dev/input"

    invoke-direct {v0, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 382
    .local v13, "devInputDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 383
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v14, 0x4

    if-ge v0, v14, :cond_7

    .line 384
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "event"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v13, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v14

    .line 385
    .local v12, "eventFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 383
    .end local v12    # "eventFile":Ljava/io/File;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x0

    goto :goto_2

    .line 387
    .end local v0    # "i":I
    :cond_7
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v12, "event0"

    invoke-direct {v0, v13, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 391
    :cond_8
    :goto_3
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    .line 392
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/winlator/cmod/winhandler/WinHandler;->setFakeInputPath(Ljava/lang/String;)V

    .line 394
    const-string v0, "1280x720"

    .line 395
    .local v0, "screenSize":Ljava/lang/String;
    new-instance v12, Lcom/winlator/cmod/container/ContainerManager;

    invoke-direct {v12, v1}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lcom/winlator/cmod/XServerDisplayActivity;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    .line 396
    iget-object v12, v1, Lcom/winlator/cmod/XServerDisplayActivity;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "container_id"

    invoke-virtual {v14, v15, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/winlator/cmod/container/ContainerManager;->getContainerById(I)Lcom/winlator/cmod/container/Container;

    move-result-object v12

    iput-object v12, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v14, "shortcut_path"

    invoke-virtual {v12, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 400
    .local v12, "shortcutPath":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut Path: "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v14, "XServerDisplayActivity"

    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8, v15, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 405
    .local v8, "containerId":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container ID from Intent: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-nez v8, :cond_9

    .line 407
    const-string v4, "Container ID is 0, attempting to parse from .desktop file"

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_9
    if-nez v8, :cond_a

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 414
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v4, "shortcutFile":Ljava/io/File;
    invoke-direct {v1, v4}, Lcom/winlator/cmod/XServerDisplayActivity;->parseContainerIdFromDesktopFile(Ljava/io/File;)I

    move-result v8

    .line 416
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "screenSize":Ljava/lang/String;
    .local v17, "screenSize":Ljava/lang/String;
    const-string v0, "Parsed Container ID from .desktop file: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 413
    .end local v4    # "shortcutFile":Ljava/io/File;
    .end local v17    # "screenSize":Ljava/lang/String;
    .restart local v0    # "screenSize":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v0

    .line 420
    .end local v0    # "screenSize":Ljava/lang/String;
    .restart local v17    # "screenSize":Ljava/lang/String;
    :goto_4
    const-string v0, "playtime_stats"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/winlator/cmod/XServerDisplayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->playtimePrefs:Landroid/content/SharedPreferences;

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "shortcut_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcutName:Ljava/lang/String;

    .line 424
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 425
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcutName:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcutName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 426
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->parseShortcutNameFromDesktopFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcutName:Ljava/lang/String;

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsed Shortcut Name from .desktop file: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcutName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 430
    :cond_c
    const-string v0, "No shortcut path provided, skipping shortcut parsing."

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_d
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->incrementPlayCount()V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final Container ID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v0, v8}, Lcom/winlator/cmod/container/ContainerManager;->getContainerById(I)Lcom/winlator/cmod/container/Container;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    .line 442
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    if-nez v0, :cond_e

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve container with ID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->finish()V

    .line 445
    return-void

    .line 448
    :cond_e
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    iget-object v4, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0, v4}, Lcom/winlator/cmod/container/ContainerManager;->activateContainer(Lcom/winlator/cmod/container/Container;)V

    .line 450
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 451
    new-instance v0, Lcom/winlator/cmod/container/Shortcut;

    iget-object v4, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v15}, Lcom/winlator/cmod/container/Shortcut;-><init>(Lcom/winlator/cmod/container/Container;Ljava/io/File;)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    .line 454
    :cond_f
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/winlator/cmod/container/Container;->getCPUList(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/ProcessHelper;->getAffinityMask(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMask:S

    .line 455
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0, v4}, Lcom/winlator/cmod/container/Container;->getCPUListWoW64(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/ProcessHelper;->getAffinityMask(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMaskWoW64:S

    .line 457
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v0, :cond_10

    .line 458
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v15, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v15, v4}, Lcom/winlator/cmod/container/Container;->getCPUList(Z)Ljava/lang/String;

    move-result-object v15

    const-string v4, "cpuList"

    invoke-virtual {v0, v4, v15}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/ProcessHelper;->getAffinityMask(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMask:S

    .line 459
    iget-short v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMask:S

    iput-short v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->taskAffinityMaskWoW64:S

    .line 463
    :cond_10
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v4, ""

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v15, "wmClass"

    invoke-virtual {v0, v15, v4}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_11
    move-object v0, v4

    :goto_6
    move-object v15, v0

    .line 464
    .local v15, "wmClass":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v18, "params":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "Startup wmClass: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    const-string v2, "appVersion"

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    iput-boolean v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->firstTimeBoot:Z

    .line 468
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "wineVersion":Ljava/lang/String;
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-static {v1, v0, v2}, Lcom/winlator/cmod/core/WineInfo;->fromIdentifier(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Ljava/lang/String;)Lcom/winlator/cmod/core/WineInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    .line 471
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    move-object/from16 v19, v2

    .end local v2    # "wineVersion":Ljava/lang/String;
    .local v19, "wineVersion":Ljava/lang/String;
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    iget-object v2, v2, Lcom/winlator/cmod/core/WineInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xenvironment/ImageFs;->setWinePath(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->removeAllDebugCallbacks()V

    .line 474
    if-eqz v9, :cond_12

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getExecutable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/widget/LogView;->setFilename(Ljava/lang/String;)V

    .line 476
    new-instance v0, Lcom/winlator/cmod/contentdialog/DebugDialog;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/contentdialog/DebugDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->debugDialog:Lcom/winlator/cmod/contentdialog/DebugDialog;

    invoke-static {v0}, Lcom/winlator/cmod/core/ProcessHelper;->addDebugCallback(Lcom/winlator/cmod/core/Callback;)V

    .line 479
    :cond_12
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriver:Ljava/lang/String;

    .line 480
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "graphicsDriverConfig":Ljava/lang/String;
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    .line 482
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getEmulator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->emulator:Ljava/lang/String;

    .line 483
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getMIDISoundFont()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->midiSoundFont:Ljava/lang/String;

    .line 484
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    .line 485
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getFPSCounterConfig()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "fpsCounterConfig":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "graphicsDriverConfig":Ljava/lang/String;
    .local v20, "graphicsDriverConfig":Ljava/lang/String;
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "dxwrapperConfig":Ljava/lang/String;
    move-object/from16 v21, v0

    .end local v0    # "dxwrapperConfig":Ljava/lang/String;
    .local v21, "dxwrapperConfig":Ljava/lang/String;
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    .line 488
    .end local v17    # "screenSize":Ljava/lang/String;
    .local v0, "screenSize":Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "screenSize":Ljava/lang/String;
    .restart local v17    # "screenSize":Ljava/lang/String;
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    move-object/from16 v22, v2

    .end local v2    # "fpsCounterConfig":Ljava/lang/String;
    .local v22, "fpsCounterConfig":Ljava/lang/String;
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getInputType()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->setInputType(B)V

    .line 489
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getLC_ALL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->lc_all:Ljava/lang/String;

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 493
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    .end local v3    # "isOpenWithAndroidBrowser":Z
    .local v23, "isOpenWithAndroidBrowser":Z
    const-string v3, "Intent Extras: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v0, :cond_15

    .line 496
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v24, "intent":Landroid/content/Intent;
    const-string v2, "graphicsDriver"

    invoke-virtual {v0, v2, v3}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriver:Ljava/lang/String;

    .line 497
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v2

    const-string v3, "graphicsDriverConfig"

    invoke-virtual {v0, v3, v2}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .end local v20    # "graphicsDriverConfig":Ljava/lang/String;
    .local v0, "graphicsDriverConfig":Ljava/lang/String;
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v0

    .end local v0    # "graphicsDriverConfig":Ljava/lang/String;
    .restart local v20    # "graphicsDriverConfig":Ljava/lang/String;
    const-string v0, "audioDriver"

    invoke-virtual {v2, v0, v3}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->audioDriver:Ljava/lang/String;

    .line 499
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getEmulator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "emulator"

    invoke-virtual {v0, v3, v2}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->emulator:Ljava/lang/String;

    .line 500
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dxwrapper"

    invoke-virtual {v0, v3, v2}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    .line 501
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dxwrapperConfig"

    invoke-virtual {v0, v3, v2}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .end local v21    # "dxwrapperConfig":Ljava/lang/String;
    .local v0, "dxwrapperConfig":Ljava/lang/String;
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v0

    .end local v0    # "dxwrapperConfig":Ljava/lang/String;
    .restart local v21    # "dxwrapperConfig":Ljava/lang/String;
    const-string v0, "screenSize"

    invoke-virtual {v2, v0, v3}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .end local v17    # "screenSize":Ljava/lang/String;
    .local v0, "screenSize":Ljava/lang/String;
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getLC_ALL()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v0

    .end local v0    # "screenSize":Ljava/lang/String;
    .restart local v17    # "screenSize":Ljava/lang/String;
    const-string v0, "lc_all"

    invoke-virtual {v2, v0, v3}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->lc_all:Ljava/lang/String;

    .line 504
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v2, "inputType"

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "inputType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->setInputType(B)V

    .line 506
    :cond_13
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "disableXinput"

    move-object/from16 v25, v0

    .end local v0    # "inputType":Ljava/lang/String;
    .local v25, "inputType":Ljava/lang/String;
    const-string v0, "false"

    invoke-virtual {v2, v3, v0}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "xinputDisabledString":Ljava/lang/String;
    invoke-direct {v1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 509
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/winhandler/WinHandler;->setXInputDisabled(Z)V

    .line 510
    iget-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "sharpnessEffect"

    move-object/from16 v26, v0

    .end local v0    # "xinputDisabledString":Ljava/lang/String;
    .local v26, "xinputDisabledString":Ljava/lang/String;
    const-string v0, "None"

    invoke-virtual {v2, v3, v0}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "sharpnessEffect":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 512
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "sharpnessLevel"

    move/from16 v27, v5

    .end local v5    # "isShareAndroidClipboard":Z
    .local v27, "isShareAndroidClipboard":Z
    const-string v5, "100"

    invoke-virtual {v0, v3, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v28

    .line 513
    .local v28, "sharpnessLevel":D
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "sharpnessDenoise"

    invoke-virtual {v0, v3, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    .line 514
    .local v30, "sharpnessDenoise":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effects="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";casSharpness="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    move-object v5, v2

    .end local v2    # "sharpnessEffect":Ljava/lang/String;
    .local v5, "sharpnessEffect":Ljava/lang/String;
    div-double v2, v28, v32

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";dlsSharpness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-double v2, v28, v32

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";dlsDenoise="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-double v2, v30, v32

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";enableOnLaunch=True"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->vkbasaltConfig:Ljava/lang/String;

    goto :goto_7

    .line 511
    .end local v27    # "isShareAndroidClipboard":Z
    .end local v28    # "sharpnessLevel":D
    .end local v30    # "sharpnessDenoise":D
    .restart local v2    # "sharpnessEffect":Ljava/lang/String;
    .local v5, "isShareAndroidClipboard":Z
    :cond_14
    move/from16 v27, v5

    move-object v5, v2

    .line 516
    .end local v2    # "sharpnessEffect":Ljava/lang/String;
    .local v5, "sharpnessEffect":Ljava/lang/String;
    .restart local v27    # "isShareAndroidClipboard":Z
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XInput Disabled from Shortcut: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v17

    goto :goto_8

    .line 495
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v25    # "inputType":Ljava/lang/String;
    .end local v26    # "xinputDisabledString":Ljava/lang/String;
    .end local v27    # "isShareAndroidClipboard":Z
    .local v2, "intent":Landroid/content/Intent;
    .local v5, "isShareAndroidClipboard":Z
    :cond_15
    move-object/from16 v24, v2

    move/from16 v27, v5

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "isShareAndroidClipboard":Z
    .restart local v24    # "intent":Landroid/content/Intent;
    .restart local v27    # "isShareAndroidClipboard":Z
    move-object/from16 v2, v17

    .line 519
    .end local v17    # "screenSize":Ljava/lang/String;
    .local v2, "screenSize":Ljava/lang/String;
    :goto_8
    invoke-static/range {v20 .. v20}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->parseGraphicsDriverConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->graphicsDriverConfig:Ljava/util/HashMap;

    .line 520
    invoke-static/range {v21 .. v21}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->parseConfig(Ljava/lang/Object;)Lcom/winlator/cmod/core/KeyValueSet;

    move-result-object v0

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapperConfig:Lcom/winlator/cmod/core/KeyValueSet;

    .line 522
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->wineInfo:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/WineInfo;->isWin64()Z

    move-result v0

    if-nez v0, :cond_16

    .line 523
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda22;-><init>()V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->onExtractFileListener:Lcom/winlator/cmod/core/OnExtractFileListener;

    .line 530
    :cond_16
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-nez v0, :cond_17

    .line 531
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    iget-object v3, v1, Lcom/winlator/cmod/XServerDisplayActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/winlator/cmod/core/PreloaderDialog;->show(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_9

    .line 533
    :cond_17
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    iget-object v3, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v3, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v5, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v5}, Lcom/winlator/cmod/core/PreloaderDialog;->show(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 536
    :goto_9
    new-instance v0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    .line 537
    new-instance v0, Lcom/winlator/cmod/xserver/XServer;

    new-instance v3, Lcom/winlator/cmod/xserver/ScreenInfo;

    invoke-direct {v3, v2}, Lcom/winlator/cmod/xserver/ScreenInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/winlator/cmod/xserver/XServer;-><init>(Lcom/winlator/cmod/xserver/ScreenInfo;)V

    iput-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 538
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v1, Lcom/winlator/cmod/XServerDisplayActivity;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/xserver/XServer;->setWinHandler(Lcom/winlator/cmod/winhandler/WinHandler;)V

    .line 540
    const/4 v3, 0x1

    new-array v0, v3, [Z

    const/4 v3, 0x0

    aput-boolean v3, v0, v3

    move-object v3, v0

    .line 543
    .local v3, "winStarted":[Z
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    new-instance v5, Lcom/winlator/cmod/XServerDisplayActivity$3;

    invoke-direct {v5, v1, v3}, Lcom/winlator/cmod/XServerDisplayActivity$3;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;[Z)V

    invoke-virtual {v0, v5}, Lcom/winlator/cmod/xserver/WindowManager;->addOnWindowModificationListener(Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;)V

    .line 573
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->midiSoundFont:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 574
    const/4 v5, 0x0

    .line 575
    .local v5, "in":Ljava/io/InputStream;
    move-object v14, v5

    .line 576
    .local v14, "finalIn":Ljava/io/InputStream;
    new-instance v0, Lcom/winlator/cmod/XServerDisplayActivity$4;

    invoke-direct {v0, v1, v14}, Lcom/winlator/cmod/XServerDisplayActivity$4;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/io/InputStream;)V

    move-object/from16 v16, v0

    .line 592
    .local v16, "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    :try_start_1
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->midiSoundFont:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-object/from16 v17, v2

    .end local v2    # "screenSize":Ljava/lang/String;
    .restart local v17    # "screenSize":Ljava/lang/String;
    :try_start_2
    const-string v2, "wt_210k_G.sf2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v0, :cond_18

    .line 593
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v25, v3

    .end local v3    # "winStarted":[Z
    .local v25, "winStarted":[Z
    :try_start_4
    const-string v3, "soundfonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/winlator/cmod/XServerDisplayActivity;->midiSoundFont:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v0

    .line 594
    move-object/from16 v2, v16

    .end local v16    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .local v2, "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    :try_start_5
    invoke-static {v5, v2}, Lcom/winlator/cmod/midi/MidiManager;->load(Ljava/io/InputStream;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_a

    .line 597
    :catch_1
    move-exception v0

    goto :goto_a

    .end local v2    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .restart local v16    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    :catch_2
    move-exception v0

    move-object/from16 v2, v16

    .end local v16    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .restart local v2    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    goto :goto_a

    .end local v2    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .end local v25    # "winStarted":[Z
    .restart local v3    # "winStarted":[Z
    .restart local v16    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    :catch_3
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v2, v16

    .end local v3    # "winStarted":[Z
    .end local v16    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .restart local v2    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .restart local v25    # "winStarted":[Z
    goto :goto_a

    .line 596
    .end local v2    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .end local v25    # "winStarted":[Z
    .restart local v3    # "winStarted":[Z
    .restart local v16    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    :cond_18
    move-object/from16 v25, v3

    move-object/from16 v2, v16

    .end local v3    # "winStarted":[Z
    .end local v16    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .restart local v2    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .restart local v25    # "winStarted":[Z
    :try_start_6
    new-instance v0, Ljava/io/File;

    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/midi/MidiManager;->getSoundFontDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v16, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .local v16, "in":Ljava/io/InputStream;
    :try_start_7
    iget-object v5, v1, Lcom/winlator/cmod/XServerDisplayActivity;->midiSoundFont:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/winlator/cmod/midi/MidiManager;->load(Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-object/from16 v5, v16

    goto :goto_a

    .line 597
    :catch_4
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_a

    .end local v16    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    move-object/from16 v16, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v16    # "in":Ljava/io/InputStream;
    goto :goto_a

    .end local v2    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .end local v25    # "winStarted":[Z
    .restart local v3    # "winStarted":[Z
    .restart local v5    # "in":Ljava/io/InputStream;
    .local v16, "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    :catch_6
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v2, v16

    move-object/from16 v16, v5

    .end local v3    # "winStarted":[Z
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v2    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .local v16, "in":Ljava/io/InputStream;
    .restart local v25    # "winStarted":[Z
    goto :goto_a

    .end local v17    # "screenSize":Ljava/lang/String;
    .end local v25    # "winStarted":[Z
    .local v2, "screenSize":Ljava/lang/String;
    .restart local v3    # "winStarted":[Z
    .restart local v5    # "in":Ljava/io/InputStream;
    .local v16, "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    :catch_7
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v25, v3

    move-object/from16 v2, v16

    move-object/from16 v16, v5

    .end local v3    # "winStarted":[Z
    .end local v16    # "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .local v2, "callback":Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .restart local v17    # "screenSize":Ljava/lang/String;
    .restart local v25    # "winStarted":[Z
    :goto_a
    goto :goto_b

    .line 573
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v14    # "finalIn":Ljava/io/InputStream;
    .end local v17    # "screenSize":Ljava/lang/String;
    .end local v25    # "winStarted":[Z
    .local v2, "screenSize":Ljava/lang/String;
    .restart local v3    # "winStarted":[Z
    :cond_19
    move-object/from16 v17, v2

    move-object/from16 v25, v3

    .line 601
    .end local v2    # "screenSize":Ljava/lang/String;
    .end local v3    # "winStarted":[Z
    .restart local v17    # "screenSize":Ljava/lang/String;
    .restart local v25    # "winStarted":[Z
    :goto_b
    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/winlator/cmod/XServerDisplayActivity;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v2, "controlsProfile"

    invoke-virtual {v0, v2, v4}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1a
    move-object v0, v4

    .line 603
    .local v0, "controlsProfile":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/XServerDisplayActivity;->createNotifcationChannel()V

    .line 605
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    .local v2, "notificationIntent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 607
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v5, Lcom/winlator/cmod/XServerDisplayActivity;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 608
    const v5, 0x7f080112

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 609
    const-string v5, "Winlator"

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 610
    const-string v5, "Winlator is running, do not kill or swipe this notification"

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 611
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 612
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 613
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 615
    .local v4, "builder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-static/range {p0 .. p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v5

    sget v14, Lcom/winlator/cmod/XServerDisplayActivity;->NOTIFICATION_ID:I

    move-object/from16 v16, v2

    .end local v2    # "notificationIntent":Landroid/content/Intent;
    .local v16, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v5, v14, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 617
    new-instance v2, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, v1, v0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda23;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/lang/String;)V

    .line 635
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v5, v1, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v5, v5, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    iget-object v14, v1, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v14, v14, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v14, v14, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    if-le v5, v14, :cond_1b

    .line 636
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/winlator/cmod/XServerDisplayActivity;->setRequestedOrientation(I)V

    .line 637
    iput-object v2, v1, Lcom/winlator/cmod/XServerDisplayActivity;->configChangedCallback:Ljava/lang/Runnable;

    goto :goto_c

    .line 639
    :cond_1b
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 640
    :goto_c
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 874
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 875
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1148
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v0

    .line 1149
    .local v0, "renderer":Lcom/winlator/cmod/renderer/GLRenderer;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1150
    .local v1, "id":I
    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1152
    .local v2, "menu":Landroid/view/Menu;
    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 1275
    return v3

    .line 1175
    :sswitch_0
    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GLRenderer;->toggleFullscreen()V

    .line 1176
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1177
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v4}, Lcom/winlator/cmod/widget/TouchpadView;->toggleFullscreen()V

    .line 1178
    return v3

    .line 1200
    :sswitch_1
    new-instance v4, Lcom/winlator/cmod/winhandler/TaskManagerDialog;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {v4}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->show()V

    .line 1201
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1202
    return v3

    .line 1225
    :sswitch_2
    const-string v4, "Initializing ScreenEffectDialog"

    const-string v5, "ScreenEffectDialog"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    new-instance v4, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    .line 1227
    .local v4, "screenEffectDialog":Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;
    new-instance v6, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0, v4}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda20;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V

    invoke-virtual {v4, v6}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 1247
    const-string v6, "Showing ScreenEffectDialog"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-virtual {v4}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->show()V

    .line 1249
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1250
    return v3

    .line 1261
    .end local v4    # "screenEffectDialog":Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;
    :sswitch_3
    iget-boolean v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isRelativeMouseMovement:Z

    xor-int/2addr v4, v3

    iput-boolean v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isRelativeMouseMovement:Z

    .line 1262
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1263
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-boolean v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isRelativeMouseMovement:Z

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/xserver/XServer;->setRelativeMouseMovement(Z)V

    .line 1264
    return v3

    .line 1192
    :sswitch_4
    invoke-virtual {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->enterPictureInPictureMode()V

    .line 1193
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1194
    return v3

    .line 1180
    :sswitch_5
    iget-boolean v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isPaused:Z

    if-eqz v4, :cond_0

    .line 1181
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->resumeAllWineProcesses()V

    .line 1182
    const v4, 0x7f080135

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1185
    :cond_0
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->pauseAllWineProcesses()V

    .line 1186
    const v4, 0x7f080136

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1188
    :goto_0
    iget-boolean v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isPaused:Z

    xor-int/2addr v4, v3

    iput-boolean v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isPaused:Z

    .line 1189
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1190
    return v3

    .line 1271
    :sswitch_6
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->MoveCursorToTouchpoint()V

    .line 1272
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1273
    return v3

    .line 1204
    :sswitch_7
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

    if-nez v4, :cond_1

    .line 1205
    const v4, 0x7f090085

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/XServerDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1206
    .local v4, "container":Landroid/widget/FrameLayout;
    new-instance v5, Lcom/winlator/cmod/widget/MagnifierView;

    invoke-direct {v5, p0}, Lcom/winlator/cmod/widget/MagnifierView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

    .line 1207
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

    new-instance v6, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0, v0}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda18;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/renderer/GLRenderer;)V

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/widget/MagnifierView;->setZoomButtonCallback(Lcom/winlator/cmod/core/Callback;)V

    .line 1211
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GLRenderer;->getMagnifierZoom()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/widget/MagnifierView;->setZoomValue(F)V

    .line 1212
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

    new-instance v6, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0, v4}, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda19;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/widget/MagnifierView;->setHideButtonCallback(Ljava/lang/Runnable;)V

    .line 1216
    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->magnifierView:Lcom/winlator/cmod/widget/MagnifierView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1218
    .end local v4    # "container":Landroid/widget/FrameLayout;
    :cond_1
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1219
    return v3

    .line 1252
    :sswitch_8
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->debugDialog:Lcom/winlator/cmod/contentdialog/DebugDialog;

    invoke-virtual {v4}, Lcom/winlator/cmod/contentdialog/DebugDialog;->show()V

    .line 1253
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1254
    return v3

    .line 1167
    :sswitch_9
    invoke-static {p0}, Lcom/winlator/cmod/core/AppUtils;->showKeyboard(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 1168
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1169
    return v3

    .line 1171
    :sswitch_a
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->showInputControlsDialog()V

    .line 1172
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1173
    return v3

    .line 1221
    :sswitch_b
    new-instance v4, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {v4}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->show()V

    .line 1222
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1223
    return v3

    .line 1256
    :sswitch_c
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1257
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->exit()V

    .line 1258
    return v3

    .line 1266
    :sswitch_d
    iget-boolean v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isMouseDisabled:Z

    xor-int/2addr v4, v3

    iput-boolean v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isMouseDisabled:Z

    .line 1267
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    iget-boolean v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->isMouseDisabled:Z

    xor-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/widget/TouchpadView;->setMouseEnabled(Z)V

    .line 1268
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1269
    return v3

    .line 1196
    :sswitch_e
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->showActiveWindowsDialog()V

    .line 1197
    iget-object v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1198
    return v3

    .line 1155
    :sswitch_f
    iget-boolean v4, p0, Lcom/winlator/cmod/XServerDisplayActivity;->expCursor:Z

    .line 1156
    .local v4, "wasExpanded":Z
    iget-boolean v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->expCursor:Z

    xor-int/2addr v5, v3

    iput-boolean v5, p0, Lcom/winlator/cmod/XServerDisplayActivity;->expCursor:Z

    .line 1157
    const-string v5, "drawer_exp_cursor"

    iget-boolean v6, p0, Lcom/winlator/cmod/XServerDisplayActivity;->expCursor:Z

    invoke-direct {p0, v5, v6}, Lcom/winlator/cmod/XServerDisplayActivity;->persistSection(Ljava/lang/String;Z)V

    .line 1158
    const v5, 0x7f090241

    const v6, 0x7f09023d

    if-eqz v4, :cond_2

    .line 1159
    sget-object v7, Lcom/winlator/cmod/XServerDisplayActivity;->CURSOR_IDS:[I

    invoke-direct {p0, v2, v6, v5, v7}, Lcom/winlator/cmod/XServerDisplayActivity;->collapseGroup(Landroid/view/Menu;II[I)V

    goto :goto_1

    .line 1161
    :cond_2
    sget-object v7, Lcom/winlator/cmod/XServerDisplayActivity;->CURSOR_IDS:[I

    invoke-direct {p0, v2, v6, v5, v7}, Lcom/winlator/cmod/XServerDisplayActivity;->expandGroup(Landroid/view/Menu;II[I)V

    .line 1163
    :goto_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090241 -> :sswitch_f
        0x7f09026a -> :sswitch_e
        0x7f09026e -> :sswitch_d
        0x7f09026f -> :sswitch_c
        0x7f090270 -> :sswitch_b
        0x7f090271 -> :sswitch_a
        0x7f090272 -> :sswitch_9
        0x7f090273 -> :sswitch_8
        0x7f090274 -> :sswitch_7
        0x7f090275 -> :sswitch_6
        0x7f090276 -> :sswitch_5
        0x7f090277 -> :sswitch_4
        0x7f090278 -> :sswitch_3
        0x7f09027a -> :sswitch_2
        0x7f09027d -> :sswitch_1
        0x7f09027e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .line 795
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 798
    invoke-virtual {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->onPause()V

    .line 802
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->onPause()V

    .line 806
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->savePlaytimeData()V

    .line 807
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->savePlaytimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 808
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->pauseAllWineProcesses()V

    .line 809
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 782
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 784
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->onResume()V

    .line 786
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->environment:Lcom/winlator/cmod/xenvironment/XEnvironment;

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/XEnvironment;->onResume()V

    .line 788
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->startTime:J

    .line 789
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->savePlaytimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 790
    invoke-static {}, Lcom/winlator/cmod/core/ProcessHelper;->resumeAllWineProcesses()V

    .line 791
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 879
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 880
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->savePlaytimeData()V

    .line 881
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->savePlaytimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 1280
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 1282
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->cursorLock:Z

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/TouchpadView;->requestPointerCapture()V

    .line 1284
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    new-instance v1, Lcom/winlator/cmod/XServerDisplayActivity$8;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/XServerDisplayActivity$8;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    goto :goto_0

    .line 1292
    :cond_0
    if-nez p1, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/TouchpadView;->releasePointerCapture()V

    .line 1294
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 1296
    :cond_1
    :goto_0
    return-void
.end method

.method public setDXWrapper(Ljava/lang/String;)V
    .locals 0
    .param p1, "dxwrapper"    # Ljava/lang/String;

    .line 2244
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->dxwrapper:Ljava/lang/String;

    .line 2245
    return-void
.end method

.method public setScreenEffectProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenEffectProfile"    # Ljava/lang/String;

    .line 2328
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity;->screenEffectProfile:Ljava/lang/String;

    .line 2329
    return-void
.end method
