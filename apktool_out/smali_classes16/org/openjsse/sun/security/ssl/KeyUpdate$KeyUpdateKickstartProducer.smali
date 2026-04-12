.class final Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateKickstartProducer;
.super Ljava/lang/Object;
.source "KeyUpdate.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyUpdateKickstartProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyUpdate$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyUpdate$1;

    .line 161
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateKickstartProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;)[B
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;

    .line 171
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/PostHandshakeContext;
    sget-object v1, Lorg/openjsse/sun/security/ssl/KeyUpdate;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    new-instance v2, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;

    sget-object v3, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->REQUESTED:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    invoke-direct {v2, v0, v3}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;-><init>(Lorg/openjsse/sun/security/ssl/PostHandshakeContext;Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;)V

    invoke-interface {v1, p1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v1

    return-object v1
.end method
