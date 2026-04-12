.class final Lorg/openjsse/sun/security/ssl/Ciphertext;
.super Ljava/lang/Object;
.source "Ciphertext.java"


# instance fields
.field final contentType:B

.field handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field final handshakeType:B

.field final recordSN:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/Ciphertext;->contentType:B

    .line 42
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/Ciphertext;->handshakeType:B

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/Ciphertext;->recordSN:J

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/Ciphertext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 45
    return-void
.end method

.method constructor <init>(BBJ)V
    .locals 1
    .param p1, "contentType"    # B
    .param p2, "handshakeType"    # B
    .param p3, "recordSN"    # J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-byte p1, p0, Lorg/openjsse/sun/security/ssl/Ciphertext;->contentType:B

    .line 49
    iput-byte p2, p0, Lorg/openjsse/sun/security/ssl/Ciphertext;->handshakeType:B

    .line 50
    iput-wide p3, p0, Lorg/openjsse/sun/security/ssl/Ciphertext;->recordSN:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/Ciphertext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 52
    return-void
.end method
