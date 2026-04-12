.class public final Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS11Context;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLS11Context"
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
    .locals 5

    .line 731
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 732
    new-array v0, v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v2

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS11Context;->clientDefaultProtocols:Ljava/util/List;

    goto :goto_0

    .line 738
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v4, v0, v2

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v2, v0, v3

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$000([Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS11Context;->clientDefaultProtocols:Ljava/util/List;

    .line 746
    :goto_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS11Context;->clientDefaultProtocols:Ljava/util/List;

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->access$200(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS11Context;->clientDefaultCipherSuites:Ljava/util/List;

    .line 749
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 726
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$AbstractTLSContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl$1;)V

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

    .line 758
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS11Context;->clientDefaultCipherSuites:Ljava/util/List;

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

    .line 753
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLS11Context;->clientDefaultProtocols:Ljava/util/List;

    return-object v0
.end method
