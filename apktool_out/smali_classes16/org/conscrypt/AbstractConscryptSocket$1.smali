.class Lorg/conscrypt/AbstractConscryptSocket$1;
.super Lorg/conscrypt/PeerInfoProvider;
.source "AbstractConscryptSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/AbstractConscryptSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/conscrypt/AbstractConscryptSocket;


# direct methods
.method constructor <init>(Lorg/conscrypt/AbstractConscryptSocket;)V
    .locals 0
    .param p1, "this$0"    # Lorg/conscrypt/AbstractConscryptSocket;

    .line 61
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket$1;->this$0:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-direct {p0}, Lorg/conscrypt/PeerInfoProvider;-><init>()V

    return-void
.end method


# virtual methods
.method getHostname()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket$1;->this$0:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHostnameOrIP()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket$1;->this$0:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPort()I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket$1;->this$0:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getPort()I

    move-result v0

    return v0
.end method
