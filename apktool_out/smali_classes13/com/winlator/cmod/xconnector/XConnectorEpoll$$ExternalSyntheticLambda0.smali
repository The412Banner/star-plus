.class public final synthetic Lcom/winlator/cmod/xconnector/XConnectorEpoll$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

.field public final synthetic f$1:Lcom/winlator/cmod/xconnector/Client;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/xconnector/XConnectorEpoll;Lcom/winlator/cmod/xconnector/Client;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    iput-object p2, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/xconnector/Client;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/xconnector/Client;

    invoke-static {v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->$r8$lambda$jvMsehrlIjOcK8XKxa2UR4bdjnY(Lcom/winlator/cmod/xconnector/XConnectorEpoll;Lcom/winlator/cmod/xconnector/Client;)V

    return-void
.end method
