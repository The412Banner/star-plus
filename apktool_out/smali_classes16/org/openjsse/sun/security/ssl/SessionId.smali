.class final Lorg/openjsse/sun/security/ssl/SessionId;
.super Ljava/lang/Object;
.source "SessionId.java"


# static fields
.field private static final MAX_LENGTH:I = 0x20


# instance fields
.field private final sessionId:[B


# direct methods
.method constructor <init>(ZLjava/security/SecureRandom;)V
    .locals 1
    .param p1, "isRejoinable"    # Z
    .param p2, "generator"    # Ljava/security/SecureRandom;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-direct {v0, p2}, Lorg/openjsse/sun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    .line 49
    :goto_0
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .param p1, "sessionId"    # [B

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    .line 54
    return-void
.end method


# virtual methods
.method checkLength(I)V
    .locals 3
    .param p1, "protocolVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLProtocolException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 110
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session ID length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    if-ne p1, p0, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    instance-of v0, p1, Lorg/openjsse/sun/security/ssl/SessionId;

    if-eqz v0, :cond_1

    .line 91
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/SessionId;

    .line 92
    .local v0, "that":Lorg/openjsse/sun/security/ssl/SessionId;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 95
    .end local v0    # "that":Lorg/openjsse/sun/security/ssl/SessionId;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getId()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method length()I
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, ""

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SessionId;->sessionId:[B

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
