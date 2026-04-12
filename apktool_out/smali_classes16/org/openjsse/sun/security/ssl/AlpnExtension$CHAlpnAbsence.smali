.class final Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnAbsence;
.super Ljava/lang/Object;
.source "AlpnExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeAbsence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/AlpnExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHAlpnAbsence"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/AlpnExtension$1;

    .line 349
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnAbsence;-><init>()V

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

    .line 354
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 357
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    const-string v1, ""

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 358
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v1, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;

    .line 359
    return-void
.end method
