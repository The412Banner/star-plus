.class public Lcom/winlator/cmod/ShortcutBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutBroadcastReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShortcutBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addShortcutToHomeScreen(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "originalIntent"    # Landroid/content/Intent;

    .line 39
    const-string v0, "shortcut_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "shortcutName":Ljava/lang/String;
    const-string v1, "shortcut_icon"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 41
    .local v1, "shortcutIcon":Landroid/graphics/Bitmap;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 43
    .local v2, "shortcutIntent":Landroid/content/Intent;
    const-string v3, "ShortcutBroadcastReceiver"

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 44
    nop

    .line 45
    const-class v4, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutManager;

    .line 47
    .local v4, "shortcutManager":Landroid/content/pm/ShortcutManager;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    new-instance v5, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v5, p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v5

    .line 50
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v5

    .line 51
    invoke-virtual {v5, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    .line 54
    .local v5, "pinShortcutInfo":Landroid/content/pm/ShortcutInfo;
    const-string v6, "Requesting pin shortcut from the BroadcastReceiver..."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    move-result v6

    .line 56
    .local v6, "result":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pin shortcut requested with result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v6, :cond_0

    .line 59
    const-string v3, "Shortcut added successfully from BroadcastReceiver!"

    const/4 v7, 0x0

    invoke-static {p1, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 61
    :cond_0
    const-string v7, "Failed to add shortcut from BroadcastReceiver."

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v4    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    .end local v5    # "pinShortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "result":Z
    :cond_1
    :goto_0
    goto :goto_1

    .line 82
    :cond_2
    const-string v4, "Missing shortcut data, cannot add to home screen."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ShortcutBroadcastReceiver"

    if-eqz v0, :cond_1

    const-string v2, "com.winlator.SHORTCUT_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    const-string v2, "shortcut_added"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 23
    .local v2, "isShortcutAdded":Z
    if-eqz v2, :cond_0

    .line 24
    const-string v4, "Shortcut added successfully!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v1, "Sorry, your device may not be supported"

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 27
    :cond_0
    const-string v4, "Shortcut addition failed."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v1, "Failed to add shortcut."

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ShortcutBroadcastReceiver;->addShortcutToHomeScreen(Landroid/content/Context;Landroid/content/Intent;)V

    .line 33
    .end local v2    # "isShortcutAdded":Z
    :goto_0
    goto :goto_1

    .line 34
    :cond_1
    const-string v2, "Unexpected broadcast action received."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_1
    return-void
.end method
