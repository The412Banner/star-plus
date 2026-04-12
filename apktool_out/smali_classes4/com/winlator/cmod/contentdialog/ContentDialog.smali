.class public Lcom/winlator/cmod/contentdialog/ContentDialog;
.super Landroid/app/Dialog;
.source "ContentDialog.java"


# instance fields
.field private final contentView:Landroid/view/View;

.field private inflatedLayout:Landroid/view/View;

.field private isDarkMode:Z

.field private onCancelCallback:Ljava/lang/Runnable;

.field public onConfirmCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$PGU5kujRqG96c_5KKXi0qtwAfts(Lcom/winlator/cmod/contentdialog/ContentDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a9h71cJh3t_Gx79xdeHU6U4Ja3M(Lcom/winlator/cmod/contentdialog/ContentDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I

    .line 41
    const v0, 0x7f1100f7

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    .line 45
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "dark_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->isDarkMode:Z

    .line 50
    iget-boolean v1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->isDarkMode:Z

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1100f8

    invoke-virtual {v1, v3}, Landroid/content/Context;->setTheme(I)V

    .line 55
    :cond_0
    if-lez p2, :cond_1

    .line 56
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    const v3, 0x7f090087

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 57
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 62
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "confirmButton":Landroid/view/View;
    new-instance v2, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/contentdialog/ContentDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "cancelButton":Landroid/view/View;
    new-instance v3, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/contentdialog/ContentDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setContentView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public static alert(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgResId"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setMessage(I)V

    .line 151
    invoke-virtual {v0, p2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 152
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 154
    return-void
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setMessage(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 160
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 162
    return-void
.end method

.method private static applyDarkThemeToEditText(Landroid/widget/EditText;Z)V
    .locals 2
    .param p0, "editText"    # Landroid/widget/EditText;
    .param p1, "isDarkMode"    # Z

    .line 201
    const v0, -0x777778

    if-eqz p1, :cond_0

    .line 202
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 203
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 204
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0

    .line 206
    :cond_0
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 207
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 208
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 210
    :goto_0
    return-void
.end method

.method public static confirm(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgResId"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setMessage(I)V

    .line 167
    invoke-virtual {v0, p2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 168
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 169
    return-void
.end method

.method public static confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setMessage(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 175
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 176
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->onConfirmCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->onConfirmCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->dismiss()V

    .line 66
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->onCancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->onCancelCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->dismiss()V

    .line 72
    return-void
.end method

.method static synthetic lambda$prompt$2(Landroid/widget/EditText;Lcom/winlator/cmod/core/Callback;)V
    .locals 2
    .param p0, "editText"    # Landroid/widget/EditText;
    .param p1, "callback"    # Lcom/winlator/cmod/core/Callback;

    .line 193
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method static synthetic lambda$showMultipleChoiceList$3(Landroid/widget/ListView;Lcom/winlator/cmod/core/Callback;)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "callback"    # Lcom/winlator/cmod/core/Callback;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 225
    .local v1, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 226
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p1, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method static synthetic lambda$showSingleChoiceList$4(Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/contentdialog/ContentDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p0, "callback"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "dialog"    # Lcom/winlator/cmod/contentdialog/ContentDialog;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 244
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->dismiss()V

    .line 246
    return-void
.end method

.method public static prompt(Landroid/content/Context;ILjava/lang/String;Lcom/winlator/cmod/core/Callback;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "defaultText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p3, "callback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 183
    .local v1, "editText":Landroid/widget/EditText;
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 184
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "dark_mode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 185
    .local v3, "isDarkMode":Z
    invoke-static {v1, v3}, Lcom/winlator/cmod/contentdialog/ContentDialog;->applyDarkThemeToEditText(Landroid/widget/EditText;Z)V

    .line 187
    const v5, 0x7f10026c

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 188
    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 191
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setTitle(I)V

    .line 192
    new-instance v4, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, p3}, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v0, v4}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 197
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 198
    return-void
.end method

.method public static showMultipleChoiceList(Landroid/content/Context;I[Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 213
    .local p3, "callback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 216
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {p0}, Lcom/winlator/cmod/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 218
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090010

    invoke-direct {v2, p0, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 221
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setTitle(I)V

    .line 222
    new-instance v2, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p3}, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda3;-><init>(Landroid/widget/ListView;Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 232
    return-void
.end method

.method public static showSingleChoiceList(Landroid/content/Context;I[Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p3, "callback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->getContentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 239
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {p0}, Lcom/winlator/cmod/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 241
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x109000f

    invoke-direct {v3, p0, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 243
    new-instance v2, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda4;

    invoke-direct {v2, p3, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/contentdialog/ContentDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 248
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setTitle(I)V

    .line 249
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 250
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getInflatedLayout()Landroid/view/View;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->inflatedLayout:Landroid/view/View;

    return-object v0
.end method

.method public setBottomBarText(Ljava/lang/String;)V
    .locals 2
    .param p1, "bottomBarText"    # Ljava/lang/String;

    .line 119
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, "tvBottomBarText":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "iconResId"    # I

    .line 99
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "msgResId"    # I

    .line 132
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setMessage(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 136
    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    .local v0, "tvMessage":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :goto_0
    return-void
.end method

.method public setOnCancelCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onCancelCallback"    # Ljava/lang/Runnable;

    .line 90
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->onCancelCallback:Ljava/lang/Runnable;

    .line 91
    return-void
.end method

.method public setOnConfirmCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onConfirmCallback"    # Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog;->onConfirmCallback:Ljava/lang/Runnable;

    .line 87
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .line 95
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .line 105
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 106
    .local v0, "titleBar":Landroid/widget/LinearLayout;
    const v1, 0x7f09016f

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, "tvTitle":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    :goto_0
    return-void
.end method
