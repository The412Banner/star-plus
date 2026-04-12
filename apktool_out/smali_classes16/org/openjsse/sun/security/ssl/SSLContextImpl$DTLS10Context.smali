.class public final Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS10Context;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractDTLSContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DTLS10Context"
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
    .locals 4

    .line 1353
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const/4 v2, 0x0

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS10Context;->clientDefaultProtocols:Ljava/util/List;

    .line 1358
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS10Context;->clientDefaultProtocols:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$200(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS10Context;->clientDefaultCipherSuites:Ljava/util/List;

    .line 1360
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1347
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

    .line 1369
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS10Context;->clientDefaultCipherSuites:Ljava/util/List;

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

    .line 1364
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLS10Context;->clientDefaultProtocols:Ljava/util/List;

    return-object v0
.end method
