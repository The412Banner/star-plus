.class public Lcom/winlator/cmod/ControlsEditorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentLLCustomIconList:Landroid/widget/LinearLayout;

.field private customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

.field private iconPickerLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

.field private profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;


# direct methods
.method public static synthetic $r8$lambda$79_u4rcDSJe1POxcIpxCsKbHd48(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ControlsEditorActivity;->lambda$showControlElementSettings$1(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JM_NFRK04Q0SOpOYWoxmgRkHbEY(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ControlsEditorActivity;->lambda$showControlElementSettings$2(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KKQqeT_UDtRn1j4jyt80D13a5mg(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ControlsEditorActivity;->lambda$showControlElementSettings$4(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qcx7whOWkh8DLV05--MYwBFQmno(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/EditText;Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ControlsEditorActivity;->lambda$showControlElementSettings$6(Landroid/widget/EditText;Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VWM1lJmD9KD-Q9RtBZLKSzZqCBI(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ControlsEditorActivity;->lambda$showControlElementSettings$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j5w_QgJ5Y6ffqbs1Zbs6n4MyxDs(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/winlator/cmod/inputcontrols/ControlElement;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/ControlsEditorActivity;->lambda$loadBindingSpinner$8(Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/winlator/cmod/inputcontrols/ControlElement;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mk6qh7jqToWxB2gTY5p2U2T-8fA(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;Lcom/winlator/cmod/widget/NumberPicker;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ControlsEditorActivity;->lambda$showControlElementSettings$3(Lcom/winlator/cmod/inputcontrols/ControlElement;Lcom/winlator/cmod/widget/NumberPicker;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nEYsmpisjqf5fiGOEnIuZgNWSEY(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ControlsEditorActivity;->lambda$onCreate$0(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tHDoi74yZUnv8Si0e6ic937zrpE(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ControlsEditorActivity;->lambda$addIconViewsToParent$7(Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetinputControlsView(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/widget/InputControlsView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprofile(Lcom/winlator/cmod/ControlsEditorActivity;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private addIconViewsToParent(Landroid/widget/LinearLayout;Ljava/util/List;IZ)V
    .locals 11
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p3, "selectedId"    # I
    .param p4, "isCustom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;IZ)V"
        }
    .end annotation

    .line 233
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 234
    .local v0, "size":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 235
    .local v1, "margin":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 236
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 238
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 239
    .local v5, "idObj":Ljava/lang/Number;
    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v6

    .line 240
    .local v6, "id":S
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 241
    .local v7, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    const/4 v8, 0x4

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 243
    const v8, 0x7f08011b

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 244
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 245
    if-ne v6, p3, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v3

    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 247
    if-eqz p4, :cond_1

    iget-object v8, p0, Lcom/winlator/cmod/ControlsEditorActivity;->customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    invoke-virtual {v8, v6}, Lcom/winlator/cmod/inputcontrols/CustomIconManager;->loadIcon(S)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 249
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/ControlsEditorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inputcontrols/icons/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .local v8, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    if-eqz v8, :cond_3

    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 249
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v10

    :try_start_4
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "size":I
    .end local v1    # "margin":I
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "idObj":Ljava/lang/Number;
    .end local v6    # "id":S
    .end local v7    # "imageView":Landroid/widget/ImageView;
    .end local p1    # "parent":Landroid/widget/LinearLayout;
    .end local p2    # "ids":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .end local p3    # "selectedId":I
    .end local p4    # "isCustom":Z
    :cond_2
    :goto_2
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 251
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v0    # "size":I
    .restart local v1    # "margin":I
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "idObj":Ljava/lang/Number;
    .restart local v6    # "id":S
    .restart local v7    # "imageView":Landroid/widget/ImageView;
    .restart local p1    # "parent":Landroid/widget/LinearLayout;
    .restart local p2    # "ids":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .restart local p3    # "selectedId":I
    .restart local p4    # "isCustom":Z
    :catch_0
    move-exception v8

    .line 254
    :cond_3
    :goto_3
    new-instance v8, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0, p1}, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    .end local v5    # "idObj":Ljava/lang/Number;
    .end local v6    # "id":S
    .end local v7    # "imageView":Landroid/widget/ImageView;
    goto/16 :goto_0

    .line 263
    :cond_4
    return-void
.end method

.method private clearSelection(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .line 266
    if-nez p1, :cond_0

    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getSelectedIdFromList(Landroid/widget/LinearLayout;)S
    .locals 3
    .param p1, "parent"    # Landroid/widget/LinearLayout;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    return v2

    .line 208
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$addIconViewsToParent$7(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "v"    # Landroid/view/View;

    .line 256
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 257
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/winlator/cmod/ControlsEditorActivity;->clearSelection(Landroid/widget/LinearLayout;)V

    .line 258
    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/winlator/cmod/ControlsEditorActivity;->clearSelection(Landroid/widget/LinearLayout;)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 260
    return-void
.end method

.method private synthetic lambda$loadBindingSpinner$8(Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/winlator/cmod/inputcontrols/ControlElement;I)V
    .locals 3
    .param p1, "sBindingType"    # Landroid/widget/Spinner;
    .param p2, "sBinding"    # Landroid/widget/Spinner;
    .param p3, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p4, "index"    # I

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "bindingEntries":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 339
    :pswitch_0
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->gamepadBindingLabels()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :pswitch_1
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->mouseBindingLabels()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :pswitch_2
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/Binding;->keyboardBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 342
    invoke-virtual {p3, p4}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/Binding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 343
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onCreate$0(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->currentLLCustomIconList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/inputcontrols/CustomIconManager;->addCustomIcon(Landroid/net/Uri;)V

    .line 82
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->currentLLCustomIconList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/winlator/cmod/widget/InputControlsView;->getSelectedElement()Lcom/winlator/cmod/inputcontrols/ControlElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getIconId()B

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/ControlsEditorActivity;->loadCustomIcons(Landroid/widget/LinearLayout;I)V

    .line 84
    :cond_0
    return-void
.end method

.method private synthetic lambda$showControlElementSettings$1(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/view/View;)V
    .locals 8
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p2, "view"    # Landroid/view/View;

    .line 109
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getType()Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    move-result-object v0

    .line 110
    .local v0, "type":Lcom/winlator/cmod/inputcontrols/ControlElement$Type;
    const v1, 0x7f0900a2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "llShape":Landroid/view/View;
    const v2, 0x7f090069

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, "cbToggle":Landroid/view/View;
    const v3, 0x7f090099

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 113
    .local v3, "llCustom":Landroid/view/View;
    const v4, 0x7f0900a1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 115
    .local v4, "llRange":Landroid/view/View;
    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v1, :cond_1

    sget-object v7, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v0, v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_1
    if-eqz v2, :cond_3

    sget-object v7, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v0, v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_3
    if-eqz v3, :cond_5

    sget-object v7, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v0, v7, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, v6

    :goto_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_5
    if-eqz v4, :cond_7

    sget-object v7, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v0, v7, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ControlsEditorActivity;->loadBindingSpinners(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/view/View;)V

    .line 121
    return-void
.end method

.method private synthetic lambda$showControlElementSettings$2(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p2, "group"    # Landroid/widget/RadioGroup;
    .param p3, "checkedId"    # I

    .line 131
    const v0, 0x7f0900b9

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setOrientation(B)V

    .line 132
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 133
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 134
    return-void
.end method

.method private synthetic lambda$showControlElementSettings$3(Lcom/winlator/cmod/inputcontrols/ControlElement;Lcom/winlator/cmod/widget/NumberPicker;I)V
    .locals 1
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p2, "numberPicker"    # Lcom/winlator/cmod/widget/NumberPicker;
    .param p3, "value"    # I

    .line 141
    invoke-virtual {p1, p3}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setBindingCount(I)V

    .line 142
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 143
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 144
    return-void
.end method

.method private synthetic lambda$showControlElementSettings$4(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 172
    invoke-virtual {p1, p3}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setToggleSwitch(Z)V

    .line 173
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 174
    return-void
.end method

.method private synthetic lambda$showControlElementSettings$5(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->iconPickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showControlElementSettings$6(Landroid/widget/EditText;Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "etCustomText"    # Landroid/widget/EditText;
    .param p2, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p3, "llIconList"    # Landroid/widget/LinearLayout;

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setText(Ljava/lang/String;)V

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 198
    .local v0, "selectedIconId":S
    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lcom/winlator/cmod/ControlsEditorActivity;->getSelectedIdFromList(Landroid/widget/LinearLayout;)S

    move-result v0

    .line 199
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity;->currentLLCustomIconList:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity;->currentLLCustomIconList:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/winlator/cmod/ControlsEditorActivity;->getSelectedIdFromList(Landroid/widget/LinearLayout;)S

    move-result v0

    .line 201
    :cond_2
    int-to-byte v1, v0

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setIconId(I)V

    .line 202
    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 203
    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 204
    return-void
.end method

.method private loadBindingSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V
    .locals 11
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p2, "container"    # Landroid/widget/LinearLayout;
    .param p3, "index"    # I
    .param p4, "titleResId"    # I

    .line 329
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f09016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 331
    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 332
    .local v1, "sBindingType":Landroid/widget/Spinner;
    const v3, 0x7f0900d5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/Spinner;

    .line 334
    .local v9, "sBinding":Landroid/widget/Spinner;
    new-instance v10, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda6;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v1

    move-object v6, v9

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/winlator/cmod/inputcontrols/ControlElement;I)V

    .line 345
    .local v3, "update":Ljava/lang/Runnable;
    new-instance v4, Lcom/winlator/cmod/ControlsEditorActivity$5;

    invoke-direct {v4, p0, v3}, Lcom/winlator/cmod/ControlsEditorActivity$5;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 350
    invoke-virtual {p1, p3}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v4

    .line 351
    .local v4, "selectedBinding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/Binding;->isKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/Binding;->isMouse()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/Binding;->isGamepad()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 355
    :cond_2
    :goto_0
    new-instance v2, Lcom/winlator/cmod/ControlsEditorActivity$6;

    invoke-direct {v2, p0, v1, p1, p3}, Lcom/winlator/cmod/ControlsEditorActivity$6;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/Spinner;Lcom/winlator/cmod/inputcontrols/ControlElement;I)V

    invoke-virtual {v9, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 371
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 372
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    return-void
.end method

.method private loadBindingSpinners(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/view/View;)V
    .locals 4
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p2, "view"    # Landroid/view/View;

    .line 315
    const v0, 0x7f090092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 316
    .local v0, "container":Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 318
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getType()Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    move-result-object v1

    .line 319
    .local v1, "type":Lcom/winlator/cmod/inputcontrols/ControlElement$Type;
    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const v2, 0x7f10002f

    invoke-direct {p0, p1, v0, v3, v2}, Lcom/winlator/cmod/ControlsEditorActivity;->loadBindingSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    goto :goto_0

    .line 320
    :cond_1
    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->D_PAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    if-ne v1, v2, :cond_3

    .line 321
    :cond_2
    const v2, 0x7f100033

    invoke-direct {p0, p1, v0, v3, v2}, Lcom/winlator/cmod/ControlsEditorActivity;->loadBindingSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    .line 322
    const/4 v2, 0x1

    const v3, 0x7f100032

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/winlator/cmod/ControlsEditorActivity;->loadBindingSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    .line 323
    const/4 v2, 0x2

    const v3, 0x7f100030

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/winlator/cmod/ControlsEditorActivity;->loadBindingSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    .line 324
    const/4 v2, 0x3

    const v3, 0x7f100031

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/winlator/cmod/ControlsEditorActivity;->loadBindingSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    .line 326
    :cond_3
    :goto_0
    return-void
.end method

.method private loadCustomIcons(Landroid/widget/LinearLayout;I)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "selectedId"    # I

    .line 227
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 228
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/CustomIconManager;->getCustomIconIds()Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "iconIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/winlator/cmod/ControlsEditorActivity;->addIconViewsToParent(Landroid/widget/LinearLayout;Ljava/util/List;IZ)V

    .line 230
    return-void
.end method

.method private loadIcons(Landroid/widget/LinearLayout;I)V
    .locals 7
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "selectedId"    # I

    .line 216
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, "iconIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/ControlsEditorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "inputcontrols/icons/"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "filenames":[Ljava/lang/String;
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .local v5, "file":Ljava/lang/String;
    invoke-static {v5}, Lcom/winlator/cmod/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "file":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "filenames":[Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 221
    :catch_0
    move-exception v2

    :goto_1
    nop

    .line 222
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 223
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/winlator/cmod/ControlsEditorActivity;->addIconViewsToParent(Landroid/widget/LinearLayout;Ljava/util/List;IZ)V

    .line 224
    return-void
.end method

.method private loadRangeSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p2, "spinner"    # Landroid/widget/Spinner;

    .line 301
    if-nez p2, :cond_0

    return-void

    .line 302
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->names()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 303
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getRange()Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 304
    new-instance v0, Lcom/winlator/cmod/ControlsEditorActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/winlator/cmod/ControlsEditorActivity$4;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 312
    return-void
.end method

.method private loadShapeSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p2, "spinner"    # Landroid/widget/Spinner;

    .line 287
    if-nez p2, :cond_0

    return-void

    .line 288
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->names()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 289
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getShape()Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 290
    new-instance v0, Lcom/winlator/cmod/ControlsEditorActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/winlator/cmod/ControlsEditorActivity$3;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 298
    return-void
.end method

.method private loadTypeSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 272
    if-nez p2, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->names()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 274
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getType()Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 275
    new-instance v0, Lcom/winlator/cmod/ControlsEditorActivity$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/winlator/cmod/ControlsEditorActivity$2;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 284
    return-void
.end method

.method private showControlElementSettings(Landroid/view/View;)V
    .locals 13
    .param p1, "anchorView"    # Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->getSelectedElement()Lcom/winlator/cmod/inputcontrols/ControlElement;

    move-result-object v0

    .line 106
    .local v0, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/view/View;)V

    .line 123
    .local v2, "updateLayout":Ljava/lang/Runnable;
    const v3, 0x7f090111

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-direct {p0, v0, v3, v2}, Lcom/winlator/cmod/ControlsEditorActivity;->loadTypeSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    .line 124
    const v3, 0x7f090109

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-direct {p0, v0, v3}, Lcom/winlator/cmod/ControlsEditorActivity;->loadShapeSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/Spinner;)V

    .line 125
    const v3, 0x7f090106

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-direct {p0, v0, v3}, Lcom/winlator/cmod/ControlsEditorActivity;->loadRangeSpinner(Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/Spinner;)V

    .line 127
    const v3, 0x7f0900ba

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 128
    .local v3, "rgOrientation":Landroid/widget/RadioGroup;
    if-eqz v3, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getOrientation()B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const v4, 0x7f0900b9

    goto :goto_0

    :cond_0
    const v4, 0x7f0900b8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 130
    new-instance v4, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 137
    :cond_1
    const v4, 0x7f0900b5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/winlator/cmod/widget/NumberPicker;

    .line 138
    .local v4, "npColumns":Lcom/winlator/cmod/widget/NumberPicker;
    if-eqz v4, :cond_2

    .line 139
    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/widget/NumberPicker;->setValue(I)V

    .line 140
    new-instance v5, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v0}, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/widget/NumberPicker;->setOnValueChangeListener(Lcom/winlator/cmod/widget/NumberPicker$OnValueChangeListener;)V

    .line 147
    :cond_2
    const v5, 0x7f090165

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 148
    .local v5, "tvScale":Landroid/widget/TextView;
    const v6, 0x7f0900d1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 149
    .local v6, "sbScale":Landroid/widget/SeekBar;
    if-eqz v6, :cond_3

    .line 150
    new-instance v7, Lcom/winlator/cmod/ControlsEditorActivity$1;

    invoke-direct {v7, p0, v5, v0}, Lcom/winlator/cmod/ControlsEditorActivity$1;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/TextView;Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 165
    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getScale()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 168
    :cond_3
    const v7, 0x7f090069

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 169
    .local v7, "cbToggleSwitch":Landroid/widget/CheckBox;
    if-eqz v7, :cond_4

    .line 170
    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->isToggleSwitch()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    new-instance v8, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0, v0}, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    :cond_4
    const v8, 0x7f090077

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 178
    .local v8, "etCustomText":Landroid/widget/EditText;
    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_5
    const v9, 0x7f09009e

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 182
    .local v9, "llIconList":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_6

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getIconId()B

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/winlator/cmod/ControlsEditorActivity;->loadIcons(Landroid/widget/LinearLayout;I)V

    .line 184
    :cond_6
    const v10, 0x7f090097

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/winlator/cmod/ControlsEditorActivity;->currentLLCustomIconList:Landroid/widget/LinearLayout;

    .line 185
    iget-object v10, p0, Lcom/winlator/cmod/ControlsEditorActivity;->currentLLCustomIconList:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/winlator/cmod/ControlsEditorActivity;->currentLLCustomIconList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getIconId()B

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/winlator/cmod/ControlsEditorActivity;->loadCustomIcons(Landroid/widget/LinearLayout;I)V

    .line 187
    :cond_7
    const v10, 0x7f090005

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 188
    .local v10, "btAddIcon":Landroid/view/View;
    if-eqz v10, :cond_8

    new-instance v11, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v11, p0}, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_8
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 192
    const/16 v11, 0x154

    const/4 v12, 0x0

    invoke-static {p1, v1, v11, v12}, Lcom/winlator/cmod/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v11

    .line 193
    .local v11, "popupWindow":Landroid/widget/PopupWindow;
    new-instance v12, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v12, p0, v8, v0, v9}, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;Landroid/widget/EditText;Lcom/winlator/cmod/inputcontrols/ControlElement;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 205
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 377
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 378
    const v0, 0x7f010022

    const v1, 0x7f010029

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/ControlsEditorActivity;->overridePendingTransition(II)V

    .line 379
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100181

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 94
    :sswitch_0
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->removeElement()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 97
    :sswitch_1
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->getSelectedElement()Lcom/winlator/cmod/inputcontrols/ControlElement;

    move-result-object v0

    .line 98
    .local v0, "selectedElement":Lcom/winlator/cmod/inputcontrols/ControlElement;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ControlsEditorActivity;->showControlElementSettings(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 91
    .end local v0    # "selectedElement":Lcom/winlator/cmod/inputcontrols/ControlElement;
    :sswitch_2
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->addElement()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f100185

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 102
    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090007 -> :sswitch_2
        0x7f09001e -> :sswitch_1
        0x7f090039 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {p0}, Lcom/winlator/cmod/core/AppUtils;->hideSystemUI(Landroid/app/Activity;)V

    .line 60
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ControlsEditorActivity;->setContentView(I)V

    .line 62
    new-instance v0, Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/inputcontrols/CustomIconManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    .line 63
    new-instance v0, Lcom/winlator/cmod/widget/InputControlsView;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/widget/InputControlsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    .line 64
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->setEditMode(Z)V

    .line 65
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->setOverlayOpacity(F)V

    .line 67
    invoke-virtual {p0}, Lcom/winlator/cmod/ControlsEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "profile_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 68
    const v0, 0x7f09015f

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ControlsEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->setProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    .line 71
    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ControlsEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 72
    .local v0, "container":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity;->inputControlsView:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 74
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v2, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/ControlsEditorActivity$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/cmod/ControlsEditorActivity;)V

    invoke-virtual {p0, v1, v2}, Lcom/winlator/cmod/ControlsEditorActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/ControlsEditorActivity;->iconPickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 85
    return-void
.end method
