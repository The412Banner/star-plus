.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyAbsence;
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
    name = "SHPreSharedKeyAbsence"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;

    .line 916
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyAbsence;-><init>()V

    return-void
.end method


# virtual methods
.method public absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 922
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    const-string v1, "Handling pre_shared_key absence."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 929
    iput-boolean v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    .line 930
    return-void
.end method
