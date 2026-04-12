.class public final synthetic Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/renderer/GLRenderer;

.field public final synthetic f$1:Lcom/winlator/cmod/xserver/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/renderer/GLRenderer;

    iput-object p2, p0, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/cmod/xserver/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/renderer/GLRenderer;

    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda2;->f$1:Lcom/winlator/cmod/xserver/Window;

    invoke-static {v0, v1}, Lcom/winlator/cmod/renderer/GLRenderer;->$r8$lambda$fNICTU6HGKeWAPEFGOoXRIWv2fQ(Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;)V

    return-void
.end method
