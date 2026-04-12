.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyProducer;
.super Ljava/lang/Object;
.source "PreSharedKeyExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SHPreSharedKeyProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;

    .line 934
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 3
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 944
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 945
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;

    .line 946
    .local v1, "psk":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;
    if-nez v1, :cond_0

    .line 947
    const/4 v2, 0x0

    return-object v2

    .line 950
    :cond_0
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;->getEncoded()[B

    move-result-object v2

    return-object v2
.end method
