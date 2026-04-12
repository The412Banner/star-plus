.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyOnLoadAbsence;
.super Ljava/lang/Object;
.source "PreSharedKeyExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeAbsence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHPreSharedKeyOnLoadAbsence"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;

    .line 828
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyOnLoadAbsence;-><init>()V

    return-void
.end method


# virtual methods
.method public absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 3
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    const-string v0, "Handling pre_shared_key absence."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 841
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 842
    iput-boolean v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    .line 843
    return-void
.end method
