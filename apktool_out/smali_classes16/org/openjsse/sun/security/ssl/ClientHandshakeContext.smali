.class Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
.super Lorg/openjsse/sun/security/ssl/HandshakeContext;
.source "ClientHandshakeContext.java"


# static fields
.field static final allowUnsafeServerCertChange:Z


# instance fields
.field deferredCerts:[Ljava/security/cert/X509Certificate;

.field initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

.field pskIdentity:[B

.field reservedServerCerts:[Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    nop

    .line 78
    const-string v0, "jdk.tls.allowUnsafeServerCertChange"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->allowUnsafeServerCertChange:Z

    .line 77
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/TransportContext;)V
    .locals 1
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "conContext"    # Lorg/openjsse/sun/security/ssl/TransportContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/TransportContext;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->reservedServerCerts:[Ljava/security/cert/X509Certificate;

    .line 91
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 99
    return-void
.end method


# virtual methods
.method kickstart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->kickstartMessageDelivered:Z

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->kickstart(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->kickstartMessageDelivered:Z

    .line 109
    return-void
.end method
