.class Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$1;
.super Ljava/lang/Object;
.source "SoftSynthesizer.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getStoredProperties()Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/Properties;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V
    .locals 0
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 705
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$1;->run()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/Properties;
    .locals 9

    .line 707
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 708
    .local v0, "p":Ljava/util/Properties;
    const-string v1, "/com/sun/media/sound/softsynthesizer"

    .line 710
    .local v1, "notePath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v2

    .line 711
    .local v2, "prefroot":Ljava/util/prefs/Preferences;
    invoke-virtual {v2, v1}, Ljava/util/prefs/Preferences;->nodeExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    invoke-virtual {v2, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v3

    .line 713
    .local v3, "prefs":Ljava/util/prefs/Preferences;
    invoke-virtual {v3}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "prefs_keys":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 715
    .local v7, "prefs_key":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 716
    .local v8, "val":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 717
    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v7    # "prefs_key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 721
    .end local v2    # "prefroot":Ljava/util/prefs/Preferences;
    .end local v3    # "prefs":Ljava/util/prefs/Preferences;
    .end local v4    # "prefs_keys":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 720
    :catch_1
    move-exception v2

    .line 722
    :cond_1
    nop

    .line 723
    :goto_1
    return-object v0
.end method
