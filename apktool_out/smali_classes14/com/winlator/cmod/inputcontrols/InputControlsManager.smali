.class public Lcom/winlator/cmod/inputcontrols/InputControlsManager;
.super Ljava/lang/Object;
.source "InputControlsManager.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private maxProfileId:I

.field private profiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/inputcontrols/ControlsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private profilesLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profilesLoaded:Z

    .line 37
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private copyAssetProfilesIfNeeded()V
    .locals 20

    .line 56
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 57
    .local v2, "profilesDir":Ljava/io/File;
    invoke-static {v2}, Lcom/winlator/cmod/core/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    const-string v3, "inputcontrols/profiles"

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, v1, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0, v3, v2}, Lcom/winlator/cmod/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 59
    return-void

    .line 62
    :cond_0
    iget-object v0, v1, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 64
    .local v4, "preferences":Landroid/content/SharedPreferences;
    iget-object v0, v1, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/winlator/cmod/core/AppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    .line 65
    .local v5, "newVersion":I
    const-string v0, "inputcontrols_app_version"

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 66
    .local v7, "oldVersion":I
    if-ne v7, v5, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 70
    .local v8, "files":[Ljava/io/File;
    if-nez v8, :cond_2

    return-void

    .line 73
    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 74
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "assetFiles":[Ljava/lang/String;
    array-length v9, v3

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_6

    aget-object v11, v3, v10

    .line 76
    .local v11, "assetFile":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "inputcontrols/profiles/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "assetPath":Ljava/lang/String;
    iget-object v13, v1, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/InputStream;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v13

    .line 79
    .local v13, "originProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    const/4 v14, 0x0

    .line 80
    .local v14, "targetFile":Ljava/io/File;
    array-length v15, v8

    :goto_1
    if-ge v6, v15, :cond_4

    aget-object v16, v8, v6

    move-object/from16 v17, v16

    .line 81
    .local v17, "file":Ljava/io/File;
    move-object/from16 v16, v0

    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .local v16, "assetManager":Landroid/content/res/AssetManager;
    iget-object v0, v1, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .end local v17    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    .local v18, "profilesDir":Ljava/io/File;
    :try_start_1
    invoke-static {v0, v2}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 82
    .local v0, "targetProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    move-object/from16 v17, v3

    .end local v3    # "assetFiles":[Ljava/lang/String;
    .local v17, "assetFiles":[Ljava/lang/String;
    iget v3, v13, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v19, v4

    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .local v19, "preferences":Landroid/content/SharedPreferences;
    :try_start_2
    iget v4, v0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    if-ne v3, v4, :cond_3

    invoke-virtual {v13}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    move-object v14, v2

    .line 84
    goto :goto_2

    .line 80
    .end local v0    # "targetProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    goto :goto_1

    .line 93
    .end local v11    # "assetFile":Ljava/lang/String;
    .end local v12    # "assetPath":Ljava/lang/String;
    .end local v13    # "originProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .end local v14    # "targetFile":Ljava/io/File;
    .end local v16    # "assetManager":Landroid/content/res/AssetManager;
    .end local v17    # "assetFiles":[Ljava/lang/String;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    goto :goto_4

    .line 80
    .end local v18    # "profilesDir":Ljava/io/File;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    .local v2, "profilesDir":Ljava/io/File;
    .restart local v3    # "assetFiles":[Ljava/lang/String;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v11    # "assetFile":Ljava/lang/String;
    .restart local v12    # "assetPath":Ljava/lang/String;
    .restart local v13    # "originProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .restart local v14    # "targetFile":Ljava/io/File;
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 88
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "profilesDir":Ljava/io/File;
    .end local v3    # "assetFiles":[Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v16    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v17    # "assetFiles":[Ljava/lang/String;
    .restart local v18    # "profilesDir":Ljava/io/File;
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    :goto_2
    if-eqz v14, :cond_5

    .line 89
    iget-object v0, v1, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0, v12, v14}, Lcom/winlator/cmod/core/FileUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 93
    .end local v11    # "assetFile":Ljava/lang/String;
    .end local v12    # "assetPath":Ljava/lang/String;
    .end local v13    # "originProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .end local v14    # "targetFile":Ljava/io/File;
    .end local v16    # "assetManager":Landroid/content/res/AssetManager;
    .end local v17    # "assetFiles":[Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 75
    .restart local v16    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v17    # "assetFiles":[Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    const/4 v6, 0x0

    goto :goto_0

    .end local v16    # "assetManager":Landroid/content/res/AssetManager;
    .end local v17    # "assetFiles":[Ljava/lang/String;
    .end local v18    # "profilesDir":Ljava/io/File;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "profilesDir":Ljava/io/File;
    .restart local v3    # "assetFiles":[Ljava/lang/String;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "profilesDir":Ljava/io/File;
    .end local v3    # "assetFiles":[Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v18    # "profilesDir":Ljava/io/File;
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    goto :goto_4

    .line 93
    .end local v18    # "profilesDir":Ljava/io/File;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .restart local v2    # "profilesDir":Ljava/io/File;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    .end local v2    # "profilesDir":Ljava/io/File;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v18    # "profilesDir":Ljava/io/File;
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    :goto_4
    nop

    .line 94
    return-void
.end method

.method public static getProfilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "profiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v0, "profilesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 43
    :cond_0
    return-object v0
.end method

.method public static loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 206
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/InputStream;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static loadProfile(Landroid/content/Context;Ljava/io/InputStream;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inStream"    # Ljava/io/InputStream;

    .line 214
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .local v0, "reader":Landroid/util/JsonReader;
    const/4 v1, 0x0

    .line 216
    .local v1, "profileId":I
    const/4 v2, 0x0

    .line 217
    .local v2, "profileName":Ljava/lang/String;
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 218
    .local v3, "cursorSpeed":F
    const/4 v4, 0x0

    .line 220
    .local v4, "fieldsRead":I
    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 221
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 222
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "name":Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    move v1, v6

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 228
    :cond_0
    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 229
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 232
    :cond_1
    const-string v6, "cursorSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 233
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v3, v6

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 237
    :cond_2
    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    goto :goto_2

    .line 238
    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 240
    .end local v5    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 242
    :cond_4
    :goto_2
    new-instance v5, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-direct {v5, p0, v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;-><init>(Landroid/content/Context;I)V

    .line 243
    .local v5, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    invoke-virtual {v5, v2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->setName(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5, v3}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->setCursorSpeed(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    nop

    .line 246
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 245
    return-object v5

    .line 214
    .end local v1    # "profileId":I
    .end local v2    # "profileName":Ljava/lang/String;
    .end local v3    # "cursorSpeed":F
    .end local v4    # "fieldsRead":I
    .end local v5    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "inStream":Ljava/io/InputStream;
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 247
    .end local v0    # "reader":Landroid/util/JsonReader;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public createProfile(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    iget v2, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->maxProfileId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->maxProfileId:I

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;-><init>(Landroid/content/Context;I)V

    .line 117
    .local v0, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->setName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 119
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method public duplicateProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .locals 7
    .param p1, "source"    # Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 125
    const-string v0, "template"

    const/4 v1, 0x1

    .line 126
    .local v1, "i":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "newName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 128
    .local v3, "found":Z
    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 129
    .local v5, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    invoke-virtual {v5}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    const/4 v3, 0x1

    .line 131
    goto :goto_2

    .line 133
    .end local v5    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :cond_0
    goto :goto_1

    .line 134
    :cond_1
    :goto_2
    if-nez v3, :cond_3

    .line 137
    .end local v1    # "i":I
    .end local v3    # "found":Z
    iget v1, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->maxProfileId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->maxProfileId:I

    .line 138
    .local v1, "newId":I
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v3

    .line 141
    .local v3, "newFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    iget v6, p1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    invoke-static {v5, v6}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 142
    .local v4, "data":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const-string v5, "name"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .end local v4    # "data":Lorg/json/JSONObject;
    goto :goto_3

    :catch_0
    move-exception v0

    .line 149
    :goto_3
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 150
    .local v0, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-object v0

    .line 125
    .end local v0    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .end local v3    # "newFile":Ljava/io/File;
    .local v1, "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public exportProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)Ljava/io/File;
    .locals 9
    .param p1, "profile"    # Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 190
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "winlator_path_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "winlatorPath":Ljava/lang/String;
    const-string v3, ".icp"

    const-string v4, "profiles/"

    if-eqz v1, :cond_0

    .line 193
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 194
    .local v5, "winlatorUri":Landroid/net/Uri;
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 195
    .end local v5    # "winlatorUri":Landroid/net/Uri;
    .local v3, "destination":Ljava/io/File;
    goto :goto_0

    .line 197
    .end local v3    # "destination":Ljava/io/File;
    :cond_0
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_WINLATOR_PATH:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    .line 199
    .restart local v3    # "destination":Ljava/io/File;
    :goto_0
    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    iget v5, p1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    invoke-static {v4, v5}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/winlator/cmod/core/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 200
    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    :cond_1
    return-object v2
.end method

.method public getProfile(I)Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .locals 3
    .param p1, "id"    # I

    .line 253
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .local v1, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    iget v2, v1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    .end local v1    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :cond_0
    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/inputcontrols/ControlsProfile;",
            ">;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getProfiles(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "ignoreTemplates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/inputcontrols/ControlsProfile;",
            ">;"
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profilesLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfiles(Z)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public importProfile(Lorg/json/JSONObject;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .locals 9
    .param p1, "data"    # Lorg/json/JSONObject;

    .line 161
    const-string v0, "id"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 162
    :cond_0
    iget v2, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->maxProfileId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->maxProfileId:I

    .line 163
    .local v2, "newId":I
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v3

    .line 164
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 166
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 168
    .local v0, "newProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    const/4 v4, -0x1

    .line 169
    .local v4, "foundIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 170
    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 171
    .local v6, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    invoke-virtual {v6}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 172
    move v4, v5

    .line 173
    goto :goto_1

    .line 169
    .end local v6    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 177
    .end local v5    # "i":I
    :cond_2
    :goto_1
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 178
    iget-object v5, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 180
    :cond_3
    iget-object v5, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_2
    return-object v0

    .line 161
    .end local v0    # "newProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .end local v2    # "newId":I
    .end local v3    # "newFile":Ljava/io/File;
    .end local v4    # "foundIndex":I
    :cond_4
    :goto_3
    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lorg/json/JSONException;
    return-object v1
.end method

.method public loadProfiles(Z)V
    .locals 9
    .param p1, "ignoreTemplates"    # Z

    .line 97
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "profilesDir":Ljava/io/File;
    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->copyAssetProfilesIfNeeded()V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ControlsProfile;>;"
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 102
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 103
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 104
    .local v5, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v6

    .line 105
    .local v6, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    if-eqz p1, :cond_0

    invoke-virtual {v6}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->isTemplate()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    iget v7, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->maxProfileId:I

    iget v8, v6, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->maxProfileId:I

    .line 103
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 111
    iput-object v1, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    .line 112
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profilesLoaded:Z

    .line 113
    return-void
.end method

.method public removeProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 155
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->context:Landroid/content/Context;

    iget v1, p1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    invoke-static {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 156
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method
