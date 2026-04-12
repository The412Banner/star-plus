.class final Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketProducer;
.super Ljava/lang/Object;
.source "NewSessionTicket.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/NewSessionTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewSessionTicketProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/NewSessionTicket$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/NewSessionTicket$1;

    .line 282
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "NewSessionTicket handshake producer not implemented"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
