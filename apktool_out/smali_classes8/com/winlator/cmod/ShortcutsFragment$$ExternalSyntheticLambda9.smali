.class public final synthetic Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda9;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda9;->f$0:Landroid/content/SharedPreferences;

    check-cast p1, Lcom/winlator/cmod/container/Shortcut;

    check-cast p2, Lcom/winlator/cmod/container/Shortcut;

    invoke-static {v0, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment;->lambda$loadShortcutsList$6(Landroid/content/SharedPreferences;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/container/Shortcut;)I

    move-result p1

    return p1
.end method
