.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareAbsence;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeAbsence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SHKeyShareAbsence"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;

    .line 740
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareAbsence;-><init>()V

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

    .line 745
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 748
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No key_share extension in ServerHello, cleanup the key shares if necessary"

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 754
    return-void
.end method
