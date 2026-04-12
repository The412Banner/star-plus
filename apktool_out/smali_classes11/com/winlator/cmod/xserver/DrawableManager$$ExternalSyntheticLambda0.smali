.class public final synthetic Lcom/winlator/cmod/xserver/DrawableManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/renderer/Texture;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/renderer/Texture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/xserver/DrawableManager$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/renderer/Texture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/DrawableManager$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/renderer/Texture;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/Texture;->destroy()V

    return-void
.end method
