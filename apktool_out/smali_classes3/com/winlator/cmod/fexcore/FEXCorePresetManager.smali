.class public Lcom/winlator/cmod/fexcore/FEXCorePresetManager;
.super Ljava/lang/Object;
.source "FEXCorePresetManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static customPresetsIterator(Landroid/content/Context;)Ljava/lang/Iterable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "fexcore_custom_presets"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "customPresetsStr":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "customPresets":[Ljava/lang/String;
    const/4 v3, 0x0

    filled-new-array {v3}, [I

    move-result-object v3

    .line 97
    .local v3, "index":[I
    new-instance v4, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2, v1}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$$ExternalSyntheticLambda0;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static duplicatePreset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 142
    invoke-static {p0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getPresets(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    .local v0, "presets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/fexcore/FEXCorePreset;>;"
    const/4 v1, 0x0

    .line 144
    .local v1, "originPreset":Lcom/winlator/cmod/fexcore/FEXCorePreset;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    .line 145
    .local v3, "preset":Lcom/winlator/cmod/fexcore/FEXCorePreset;
    iget-object v4, v3, Lcom/winlator/cmod/fexcore/FEXCorePreset;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    move-object v1, v3

    .line 147
    goto :goto_1

    .line 149
    .end local v3    # "preset":Lcom/winlator/cmod/fexcore/FEXCorePreset;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 153
    :cond_2
    const/4 v2, 0x1

    .line 154
    .local v2, "i":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "newName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 156
    .local v4, "found":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    .line 157
    .local v6, "preset":Lcom/winlator/cmod/fexcore/FEXCorePreset;
    iget-object v7, v6, Lcom/winlator/cmod/fexcore/FEXCorePreset;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 158
    const/4 v4, 0x1

    .line 159
    goto :goto_4

    .line 161
    .end local v6    # "preset":Lcom/winlator/cmod/fexcore/FEXCorePreset;
    :cond_3
    goto :goto_3

    .line 162
    :cond_4
    :goto_4
    if-nez v4, :cond_5

    .line 165
    .end local v2    # "i":I
    .end local v4    # "found":Z
    iget-object v2, v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getEnvVars(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/cmod/core/EnvVars;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v2}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->editPreset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/core/EnvVars;)V

    .line 166
    return-void

    .line 153
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static editPreset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/core/EnvVars;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "envVars"    # Lcom/winlator/cmod/core/EnvVars;

    .line 119
    const-string v0, "fexcore_custom_presets"

    .line 120
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "customPresetsStr":Ljava/lang/String;
    const-string v4, ","

    const-string v5, "|"

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "customPresets":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_1

    .line 126
    aget-object v7, v2, v6

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "preset":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/winlator/cmod/core/EnvVars;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    .line 129
    goto :goto_1

    .line 125
    .end local v7    # "preset":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 132
    .end local v6    # "i":I
    :cond_1
    :goto_1
    invoke-static {v4, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .end local v3    # "customPresetsStr":Ljava/lang/String;
    .local v2, "customPresetsStr":Ljava/lang/String;
    goto :goto_2

    .line 135
    .end local v2    # "customPresetsStr":Ljava/lang/String;
    .restart local v3    # "customPresetsStr":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CUSTOM-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getNextPresetId(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/winlator/cmod/core/EnvVars;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "preset":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v2, v4

    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .end local v3    # "customPresetsStr":Ljava/lang/String;
    .end local v5    # "preset":Ljava/lang/String;
    .restart local v2    # "customPresetsStr":Ljava/lang/String;
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method

.method public static exportPreset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 184
    move-object/from16 v1, p0

    const-string v0, "\n"

    const/4 v2, 0x0

    .line 185
    .local v2, "presetFile":Ljava/io/File;
    const-string v3, "fexcore_custom_presets"

    .line 186
    .local v3, "key":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 187
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v5, ""

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "customPresets":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_3

    .line 190
    aget-object v7, v5, v6

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "preset":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v9, v7, v8

    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 192
    const-string v9, "winlator_path_uri"

    const/4 v11, 0x0

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, "uriPath":Ljava/lang/String;
    const-string v11, ".wbp"

    const-string v12, "Presets/fexcore_"

    if-eqz v9, :cond_0

    .line 194
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 195
    .local v14, "uri":Landroid/net/Uri;
    invoke-static {v1, v14}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 196
    .local v15, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v16, v2

    const/4 v13, 0x1

    .end local v2    # "presetFile":Ljava/io/File;
    .local v16, "presetFile":Ljava/io/File;
    aget-object v2, v7, v13

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v8

    .line 197
    .end local v14    # "uri":Landroid/net/Uri;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "presetFile":Ljava/io/File;
    .restart local v2    # "presetFile":Ljava/io/File;
    goto :goto_1

    .line 199
    :cond_0
    move-object/from16 v16, v2

    .end local v2    # "presetFile":Ljava/io/File;
    .restart local v16    # "presetFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v8, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_WINLATOR_PATH:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v14, v7, v13

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v16    # "presetFile":Ljava/io/File;
    .restart local v2    # "presetFile":Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 202
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 205
    :cond_1
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 206
    .local v8, "fos":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 207
    .local v11, "pw":Ljava/io/PrintWriter;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 208
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EnvVars:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v13, v7, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    .line 211
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "pw":Ljava/io/PrintWriter;
    goto :goto_2

    .line 212
    :catch_0
    move-exception v0

    .line 214
    goto :goto_2

    .line 191
    .end local v9    # "uriPath":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v2

    .line 189
    .end local v2    # "presetFile":Ljava/io/File;
    .end local v7    # "preset":[Ljava/lang/String;
    .restart local v16    # "presetFile":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .end local v16    # "presetFile":Ljava/io/File;
    .restart local v2    # "presetFile":Ljava/io/File;
    :cond_3
    move-object/from16 v10, p1

    move-object/from16 v16, v2

    .line 217
    .end local v6    # "i":I
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preset "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " exported successfully at "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_3

    .line 220
    :cond_4
    const-string v0, "Failed to export preset"

    invoke-static {v1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 221
    :goto_3
    return-void
.end method

.method public static getEnvVars(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/cmod/core/EnvVars;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/winlator/cmod/core/EnvVars;

    invoke-direct {v0}, Lcom/winlator/cmod/core/EnvVars;-><init>()V

    .line 33
    .local v0, "envVars":Lcom/winlator/cmod/core/EnvVars;
    const-string v1, "STABILITY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FEX_MULTIBLOCK"

    const-string v3, "FEX_X87REDUCEDPRECISION"

    const-string v4, "FEX_HALFBARRIERTSOENABLED"

    const-string v5, "FEX_MEMCPYSETTSOENABLED"

    const-string v6, "FEX_VECTORTSOENABLED"

    const-string v7, "FEX_TSOENABLED"

    const-string v8, "0"

    const-string v9, "1"

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0, v7, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v0, v6, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0, v5, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v0, v4, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v0, v3, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0, v2, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 41
    :cond_0
    const-string v1, "COMPATIBILITY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v0, v7, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v0, v6, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0, v5, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v0, v4, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v0, v3, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v0, v2, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 49
    :cond_1
    const-string v1, "INTERMEDIATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v0, v7, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v6, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v0, v5, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v0, v4, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v0, v3, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0, v2, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 57
    :cond_2
    const-string v1, "PERFORMANCE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    invoke-virtual {v0, v7, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v0, v6, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v0, v5, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0, v4, v8}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0, v3, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v0, v2, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_3
    const-string v1, "CUSTOM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    invoke-static {p0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->customPresetsIterator(Landroid/content/Context;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 67
    .local v2, "preset":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/EnvVars;->putAll(Ljava/lang/String;)V

    .line 69
    goto :goto_1

    .line 71
    .end local v2    # "preset":[Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 74
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static getNextPresetId(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "maxId":I
    invoke-static {p0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->customPresetsIterator(Landroid/content/Context;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 113
    .local v2, "preset":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "CUSTOM-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 114
    .end local v2    # "preset":[Ljava/lang/String;
    goto :goto_0

    .line 115
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static getPreset(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/cmod/fexcore/FEXCorePreset;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 88
    invoke-static {p0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getPresets(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    .local v1, "preset":Lcom/winlator/cmod/fexcore/FEXCorePreset;
    iget-object v2, v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "preset":Lcom/winlator/cmod/fexcore/FEXCorePreset;
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPresets(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/fexcore/FEXCorePreset;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "presets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/fexcore/FEXCorePreset;>;"
    new-instance v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    const v2, 0x7f10023d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "STABILITY"

    invoke-direct {v1, v3, v2}, Lcom/winlator/cmod/fexcore/FEXCorePreset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    const v2, 0x7f100063

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "COMPATIBILITY"

    invoke-direct {v1, v3, v2}, Lcom/winlator/cmod/fexcore/FEXCorePreset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    const v2, 0x7f10012a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "INTERMEDIATE"

    invoke-direct {v1, v3, v2}, Lcom/winlator/cmod/fexcore/FEXCorePreset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    const v2, 0x7f1001a3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PERFORMANCE"

    invoke-direct {v1, v3, v2}, Lcom/winlator/cmod/fexcore/FEXCorePreset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {p0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->customPresetsIterator(Landroid/content/Context;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .local v2, "preset":[Ljava/lang/String;
    new-instance v3, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v3, v4, v5}, Lcom/winlator/cmod/fexcore/FEXCorePreset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v2    # "preset":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;

    .line 274
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 275
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 276
    .local v1, "selectedPosition":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 277
    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    iget-object v2, v2, Lcom/winlator/cmod/fexcore/FEXCorePreset;->id:Ljava/lang/String;

    return-object v2

    .line 279
    :cond_0
    const-string v2, "COMPATIBILITY"

    return-object v2
.end method

.method public static importPreset(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 224
    const-string v0, "|"

    const-string v1, "fexcore_custom_presets"

    .line 225
    .local v1, "key":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 226
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "customPresetStr":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v5, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x3

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    .line 231
    .local v6, "preset":[Ljava/lang/String;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v9, p1

    :try_start_1
    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 233
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    .local v10, "line":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 234
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v8, v11, :cond_2

    .line 237
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 238
    .local v11, "contents":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v15, v11, v14

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_1
    goto :goto_2

    :sswitch_0
    const-string v14, "EnvVars"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v14, v12

    goto :goto_3

    :sswitch_1
    const-string v14, "Name"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v14, v13

    goto :goto_3

    :sswitch_2
    const-string v14, "ID"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    goto :goto_3

    :goto_2
    const/4 v14, -0x1

    :goto_3
    packed-switch v14, :pswitch_data_0

    goto :goto_4

    .line 246
    :pswitch_0
    aget-object v13, v11, v13

    aput-object v13, v6, v12

    goto :goto_4

    .line 243
    :pswitch_1
    aget-object v12, v11, v13

    aput-object v12, v6, v13

    .line 244
    goto :goto_4

    .line 240
    :pswitch_2
    aget-object v12, v11, v13

    const/4 v13, 0x0

    aput-object v12, v6, v13

    .line 241
    nop

    .line 236
    .end local v11    # "contents":[Ljava/lang/String;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 250
    .end local v8    # "i":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v3, ","

    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "CUSTOM"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getNextPresetId(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v8, v6, v13

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v6, v12

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v0

    .line 252
    .end local v6    # "preset":[Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "line":Ljava/lang/String;
    goto :goto_5

    .line 251
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    .line 254
    :goto_5
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x91b -> :sswitch_2
        0x24eeab -> :sswitch_1
        0x46a7499 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$customPresetsIterator$0([I[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p0, "index"    # [I
    .param p1, "customPresets"    # [Ljava/lang/String;
    .param p2, "customPresetsStr"    # Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static loadSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 5
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "selectedId"    # Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 259
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getPresets(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 261
    .local v1, "presets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/fexcore/FEXCorePreset;>;"
    const/4 v2, 0x0

    .line 262
    .local v2, "selectedPosition":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 263
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/cmod/fexcore/FEXCorePreset;

    iget-object v4, v4, Lcom/winlator/cmod/fexcore/FEXCorePreset;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    move v2, v3

    .line 265
    goto :goto_1

    .line 262
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v3    # "i":I
    :cond_1
    :goto_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, v0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 270
    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 271
    return-void
.end method

.method public static removePreset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 169
    const-string v0, "fexcore_custom_presets"

    .line 170
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "oldCustomPresetsStr":Ljava/lang/String;
    const-string v4, ""

    .line 174
    .local v4, "newCustomPresetsStr":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "customPresets":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 176
    aget-object v8, v6, v7

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "preset":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v5

    goto :goto_1

    :cond_0
    move-object v10, v2

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .end local v8    # "preset":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 180
    .end local v7    # "i":I
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    return-void
.end method
