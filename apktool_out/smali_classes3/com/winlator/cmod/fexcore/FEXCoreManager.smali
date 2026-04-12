.class public abstract Lcom/winlator/cmod/fexcore/FEXCoreManager;
.super Ljava/lang/Object;
.source "FEXCoreManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadFEXCoreVersion(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentsManager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "fexcoreVersion"    # Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "originalItems":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_FEXCORE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/contents/ContentProfile;

    .line 24
    .local v3, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    invoke-static {v3}, Lcom/winlator/cmod/contents/ContentsManager;->getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "entryName":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 26
    .local v5, "firstDashIndex":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .end local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v5    # "firstDashIndex":I
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 29
    invoke-static {p2, p3}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 30
    return-void
.end method
