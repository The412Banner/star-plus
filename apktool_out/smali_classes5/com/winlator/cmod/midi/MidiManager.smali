.class public Lcom/winlator/cmod/midi/MidiManager;
.super Ljava/lang/Object;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;,
        Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_SF2_FILE:Ljava/lang/String; = "wt_210k_G.sf2"

.field public static final ERROR_BADFORMAT:I = 0x2

.field public static final ERROR_EXIST:I = 0x1

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final SF2_ASSETS_DIR:Ljava/lang/String; = "soundfonts"

.field public static final SF_DIR:Ljava/lang/String; = "soundfonts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSF2Files(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 63
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "soundfonts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static getSoundFontDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "soundfonts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static installSF2File(Landroid/content/Context;Landroid/net/Uri;Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;

    .line 79
    invoke-static {p0}, Lcom/winlator/cmod/midi/MidiManager;->getSoundFontDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, "sfDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 83
    :cond_0
    invoke-static {p0, p1}, Lcom/winlator/cmod/core/FileUtils;->getUriFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "fileName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 85
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;->onFailed(I)V

    .line 86
    return-void

    .line 89
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .local v2, "dest":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;->onFailed(I)V

    .line 92
    return-void

    .line 95
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v2, p2}, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method static synthetic lambda$installSF2File$2(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dest"    # Ljava/io/File;
    .param p3, "callback"    # Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;

    .line 96
    invoke-static {p0, p1, p2}, Lcom/winlator/cmod/core/FileUtils;->copy(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    invoke-direct {v0, p2}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;-><init>(Ljava/io/File;)V

    .line 99
    invoke-interface {p3}, Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 102
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;->onFailed(I)V

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;->onFailed(I)V

    .line 107
    :goto_1
    return-void
.end method

.method static synthetic lambda$load$0(Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "callback"    # Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;

    .line 42
    :try_start_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;-><init>(Ljava/io/File;)V

    .line 43
    .local v0, "soundBank":Lcn/sherlock/com/sun/media/sound/SF2Soundbank;
    invoke-interface {p1, v0}, Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;->onSuccess(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "soundBank":Lcn/sherlock/com/sun/media/sound/SF2Soundbank;
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;->onFailed(Ljava/lang/Exception;)V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$load$1(Ljava/io/InputStream;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "callback"    # Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;

    .line 53
    :try_start_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/SF2Soundbank;-><init>(Ljava/io/InputStream;)V

    .line 54
    .local v0, "soundBank":Lcn/sherlock/com/sun/media/sound/SF2Soundbank;
    invoke-interface {p1, v0}, Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;->onSuccess(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "soundBank":Lcn/sherlock/com/sun/media/sound/SF2Soundbank;
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;->onFailed(Ljava/lang/Exception;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static load(Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "callback"    # Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public static load(Ljava/io/InputStream;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "callback"    # Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/midi/MidiManager$$ExternalSyntheticLambda2;-><init>(Ljava/io/InputStream;Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public static loadSFSpinner(Landroid/widget/Spinner;)V
    .locals 6
    .param p0, "spinner"    # Landroid/widget/Spinner;

    .line 111
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "filesName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/cmod/midi/MidiManager;->getSF2Files(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "sfFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f10008e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v3, "wt_210k_G.sf2"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 118
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090009

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 121
    return-void
.end method

.method public static loadSFSpinnerWithoutDisabled(Landroid/widget/Spinner;)V
    .locals 6
    .param p0, "spinner"    # Landroid/widget/Spinner;

    .line 124
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, "filesName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/cmod/midi/MidiManager;->getSF2Files(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 128
    .local v2, "sfFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v3, "wt_210k_G.sf2"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 130
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090009

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 133
    return-void
.end method

.method public static removeSF2File(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/winlator/cmod/midi/MidiManager;->getSoundFontDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
