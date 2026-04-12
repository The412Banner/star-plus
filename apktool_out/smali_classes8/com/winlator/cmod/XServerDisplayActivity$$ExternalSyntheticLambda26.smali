.class public final synthetic Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/cmod/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/renderer/GLRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/renderer/GLRenderer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda26;->f$0:Lcom/winlator/cmod/renderer/GLRenderer;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$$ExternalSyntheticLambda26;->f$0:Lcom/winlator/cmod/renderer/GLRenderer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/renderer/GLRenderer;->setScreenOffsetYRelativeToCursor(Z)V

    return-void
.end method
