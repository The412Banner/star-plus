.class public abstract Lcom/winlator/cmod/core/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static globalToastReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/winlator/cmod/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findViewsWithClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "viewClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 319
    .local p2, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 320
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 321
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 322
    .local v3, "_class":Ljava/lang/Class;
    if-eq v3, p1, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 326
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, p1, p2}, Lcom/winlator/cmod/core/AppUtils;->findViewsWithClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 323
    :cond_1
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "_class":Ljava/lang/Class;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    .end local v1    # "childCount":I
    :cond_3
    return-void
.end method

.method public static getArchName()Ljava/lang/String;
    .locals 9

    .line 49
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "armhf"

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 50
    .local v5, "arch":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "x86"

    const-string v8, "x86_64"

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "arm64-v8a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v2

    goto :goto_2

    :sswitch_1
    const-string v6, "armeabi-v7a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_3
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 49
    .end local v5    # "arch":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .restart local v5    # "arch":Ljava/lang/String;
    :pswitch_0
    return-object v7

    .line 53
    :pswitch_1
    return-object v8

    .line 52
    :pswitch_2
    return-object v4

    .line 51
    :pswitch_3
    const-string v0, "arm64"

    return-object v0

    .line 57
    .end local v5    # "arch":Ljava/lang/String;
    :cond_1
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x300b59d9 -> :sswitch_3
        0x1c976 -> :sswitch_2
        0x8ab4d72 -> :sswitch_1
        0x5553f3ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNativeLibDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreferredDialogWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 128
    .local v0, "orientation":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 129
    .local v1, "scale":F
    :goto_0
    invoke-static {}, Lcom/winlator/cmod/core/AppUtils;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/winlator/cmod/core/UnitUtils;->pxToDp(F)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method public static getScreenHeight()I
    .locals 1

    .line 123
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .line 119
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 222
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 224
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static hideSystemUI(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 89
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "decorView":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v2

    .line 94
    .local v2, "insetsController":Landroid/view/WindowInsetsController;
    if-eqz v2, :cond_0

    .line 95
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 96
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 98
    .end local v2    # "insetsController":Landroid/view/WindowInsetsController;
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    const/16 v2, 0x1706

    .line 107
    .local v2, "flags":I
    const/16 v3, 0x1706

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 108
    new-instance v3, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 112
    .end local v2    # "flags":I
    :goto_0
    return-void
.end method

.method public static isUiThread()Z
    .locals 2

    .line 115
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static keepScreenOn(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    return-void
.end method

.method static synthetic lambda$hideSystemUI$1(Landroid/view/View;I)V
    .locals 1
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .line 109
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic lambda$observeSoftKeyboardVisibility$3(Landroid/view/View;[ZLcom/winlator/cmod/core/Callback;)V
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "visible"    # [Z
    .param p2, "callback"    # Lcom/winlator/cmod/core/Callback;

    .line 232
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 233
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 235
    .local v1, "screenHeight":I
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v2

    .line 237
    .local v2, "keypadHeight":I
    int-to-float v3, v2

    int-to-float v4, v1

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 238
    aget-boolean v3, p1, v4

    if-nez v3, :cond_1

    .line 239
    const/4 v3, 0x1

    aput-boolean v3, p1, v4

    .line 240
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_0
    aget-boolean v3, p1, v4

    if-eqz v3, :cond_1

    .line 245
    aput-boolean v4, p1, v4

    .line 246
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 249
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setupTabLayout$4([ILandroid/view/View;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "tabResIds"    # [I
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # Ljava/lang/Integer;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 288
    aget v1, p0, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 289
    .local v1, "tabView":Landroid/view/View;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .end local v1    # "tabView":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic lambda$showKeyboard$0(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .line 82
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method static synthetic lambda$showToast$2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 139
    invoke-static {p0, p1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    return-void
.end method

.method public static observeSoftKeyboardVisibility(Landroid/view/View;Lcom/winlator/cmod/core/Callback;)V
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p1, "callback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 231
    .local v0, "visible":[Z
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;[ZLcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 250
    return-void
.end method

.method public static restartActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 61
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    .line 65
    return-void
.end method

.method public static restartApplication(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->restartApplication(Landroid/content/Context;I)V

    .line 69
    return-void
.end method

.method public static restartApplication(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selectedMenuItemId"    # I

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, "mainIntent":Landroid/content/Intent;
    if-lez p1, :cond_0

    const-string v2, "selected_menu_item_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exit(I)V

    .line 77
    return-void
.end method

.method public static runDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .line 336
    if-nez p0, :cond_0

    .line 337
    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 344
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/winlator/cmod/core/AppUtils$2;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/core/AppUtils$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 350
    return-void
.end method

.method public static setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "identifier"    # Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 266
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {p0, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 268
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static setSpinnerSelectionFromNumber(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "number"    # Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 277
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/cmod/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {p0, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 279
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "value"    # Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 255
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {p0, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 257
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static varargs setupTabLayout(Landroid/view/View;I[I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tabLayoutResId"    # I
    .param p2, "tabResIds"    # [I

    .line 286
    new-instance v0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p0}, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda3;-><init>([ILandroid/view/View;)V

    .line 293
    .local v0, "tabSelectedCallback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 294
    .local v1, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 295
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    .line 296
    .local v3, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10028e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 297
    iget-object v5, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {}, Lcom/winlator/cmod/XrActivity;->isSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setVisibility(I)V

    .line 294
    .end local v3    # "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lcom/winlator/cmod/core/AppUtils$1;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/core/AppUtils$1;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 315
    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 316
    return-void
.end method

.method public static showHelpBox(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "textResId"    # I

    .line 203
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static showHelpBox(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .line 207
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 208
    .local v0, "padding":I
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v3, 0x438e0000    # 284.0f

    invoke-static {v3}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 211
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 214
    .local v3, "widthMeasureSpec":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 215
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 216
    const/16 v4, 0x12c

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-static {p1, v1, v4, v5}, Lcom/winlator/cmod/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    .line 217
    return-void
.end method

.method public static showKeyboard(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 5
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 80
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 81
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_0

    .line 82
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 84
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 85
    :goto_0
    return-void
.end method

.method public static showPopupWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "anchor"    # Landroid/view/View;
    .param p1, "contentView"    # Landroid/view/View;

    .line 163
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/winlator/cmod/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public static showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;
    .locals 6
    .param p0, "anchor"    # Landroid/view/View;
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 171
    const/4 v2, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 172
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 173
    .local v3, "widthMeasureSpec":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 174
    .local v4, "heightMeasureSpec":I
    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 177
    .end local v3    # "widthMeasureSpec":I
    .end local v4    # "heightMeasureSpec":I
    goto :goto_1

    .line 179
    :cond_0
    const/4 v3, -0x2

    if-lez p2, :cond_1

    .line 180
    int-to-float v4, p2

    invoke-static {v4}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 184
    :goto_0
    if-lez p3, :cond_2

    .line 185
    int-to-float v3, p3

    invoke-static {v3}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 190
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 194
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 195
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 198
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 199
    return-object v1
.end method

.method public static showToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textResId"    # I

    .line 133
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/winlator/cmod/core/AppUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 138
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 141
    :cond_0
    return-object v1

    .line 144
    :cond_1
    sget-object v0, Lcom/winlator/cmod/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 145
    sget-object v0, Lcom/winlator/cmod/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 146
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 147
    :cond_2
    sput-object v1, Lcom/winlator/cmod/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    .line 150
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c003b

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x51

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-lt v2, v3, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 158
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/winlator/cmod/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    .line 159
    return-object v1
.end method
