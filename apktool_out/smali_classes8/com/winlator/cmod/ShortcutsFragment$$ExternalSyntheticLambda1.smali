.class public final synthetic Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/winlator/cmod/container/Shortcut;

    invoke-static {p1}, Lcom/winlator/cmod/ShortcutsFragment;->lambda$loadShortcutsList$9(Lcom/winlator/cmod/container/Shortcut;)Z

    move-result p1

    return p1
.end method
