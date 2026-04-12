.class final Lorg/openjsse/sun/security/ssl/Plaintext;
.super Ljava/lang/Object;
.source "Plaintext.java"


# static fields
.field static final PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;


# instance fields
.field final contentType:B

.field final fragment:Ljava/nio/ByteBuffer;

.field handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field final majorVersion:B

.field final minorVersion:B

.field final recordEpoch:I

.field final recordSN:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/openjsse/sun/security/ssl/Plaintext;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Plaintext;->PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    .line 48
    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->majorVersion:B

    .line 49
    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->minorVersion:B

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->recordEpoch:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->recordSN:J

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    .line 53
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 54
    return-void
.end method

.method constructor <init>(BBBIJLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "contentType"    # B
    .param p2, "majorVersion"    # B
    .param p3, "minorVersion"    # B
    .param p4, "recordEpoch"    # I
    .param p5, "recordSN"    # J
    .param p7, "fragment"    # Ljava/nio/ByteBuffer;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-byte p1, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    .line 61
    iput-byte p2, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->majorVersion:B

    .line 62
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->minorVersion:B

    .line 63
    iput p4, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->recordEpoch:I

    .line 64
    iput-wide p5, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->recordSN:J

    .line 65
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 68
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/majorVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->majorVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/minorVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->minorVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recordEpoch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->recordEpoch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recordSN: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->recordSN:J

    .line 76
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method
