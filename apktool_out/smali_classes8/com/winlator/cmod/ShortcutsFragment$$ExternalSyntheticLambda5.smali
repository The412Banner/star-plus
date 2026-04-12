.class public final synthetic Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/ShortcutsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/ShortcutsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda5;->f$0:Lcom/winlator/cmod/ShortcutsFragment;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$$ExternalSyntheticLambda5;->f$0:Lcom/winlator/cmod/ShortcutsFragment;

    check-cast p1, Lcom/winlator/cmod/container/Shortcut;

    invoke-static {v0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->$r8$lambda$VMaUpX3bH6lMniHOyuy1dGQOJJI(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)Z

    move-result p1

    return p1
.end method
