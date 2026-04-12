.class public final Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS12Context;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DTLS12Context"
.end annotation


# static fields
.field private static final clientDefaultCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private static final clientDefaultProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1384
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const/4 v1, 0x0

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v2, v0, v1

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS12Context;->clientDefaultProtocols:Ljava/util/List;

    .line 1390
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS12Context;->clientDefaultProtocols:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$200(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS12Context;->clientDefaultCipherSuites:Ljava/util/List;

    .line 1392
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1378
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl$1;)V

    return-void
.end method


# virtual methods
.method getClientDefaultCipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 1401
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS12Context;->clientDefaultCipherSuites:Ljava/util/List;

    return-object v0
.end method

.method getClientDefaultProtocolVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 1396
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS12Context;->clientDefaultProtocols:Ljava/util/List;

    return-object v0
.end method
