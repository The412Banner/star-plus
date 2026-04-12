.class final Lorg/openjsse/sun/security/ssl/HandshakeHash;
.super Ljava/lang/Object;
.source "HandshakeHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;,
        Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;,
        Lorg/openjsse/sun/security/ssl/HandshakeHash$T13HandshakeHash;,
        Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;,
        Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;,
        Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;,
        Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;,
        Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;
    }
.end annotation


# instance fields
.field private hasBeenUsed:Z

.field private reserves:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field private transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->hasBeenUsed:Z

    .line 46
    return-void
.end method


# virtual methods
.method archived()[B
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->archived()[B

    move-result-object v0

    return-object v0
.end method

.method consume()V
    .locals 4

    .line 154
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->hasBeenUsed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->hasBeenUsed:Z

    .line 156
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 160
    .local v0, "holder":[B
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 162
    .end local v0    # "holder":[B
    :cond_1
    return-void
.end method

.method copy()Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    instance-of v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 76
    .local v0, "result":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    check-cast v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;->copy()Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 77
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    .line 78
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->hasBeenUsed:Z

    iput-boolean v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->hasBeenUsed:Z

    .line 79
    return-object v0

    .line 81
    .end local v0    # "result":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hash does not support copying"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method deliver(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 129
    invoke-interface {v0, v1, v2, v3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 133
    .local v0, "inPos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 134
    .local v1, "holder":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 138
    .end local v0    # "inPos":I
    .end local v1    # "holder":[B
    :goto_0
    return-void
.end method

.method deliver([B)V
    .locals 3
    .param p1, "input"    # [B

    .line 117
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 118
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 119
    return-void
.end method

.method deliver([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 122
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 123
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 124
    return-void
.end method

.method determine(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)V
    .locals 5
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p2, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 51
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    instance-of v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;

    .line 57
    .local v0, "coh":Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$T13HandshakeHash;

    invoke-direct {v1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$T13HandshakeHash;-><init>(Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;

    invoke-direct {v1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;-><init>(Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS10PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;

    invoke-direct {v1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;-><init>(Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    goto :goto_0

    .line 64
    :cond_2
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;

    invoke-direct {v1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;-><init>(Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 67
    :goto_0
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;->access$000(Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 68
    .local v1, "reserved":[B
    array-length v2, v1

    if-eqz v2, :cond_3

    .line 69
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 71
    :cond_3
    return-void

    .line 52
    .end local v0    # "coh":Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;
    .end local v1    # "reserved":[B
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not expected instance of transcript hash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method digest()[B
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method digest(Ljava/lang/String;)[B
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;

    .line 194
    .local v0, "hh":Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;
    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->digest(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method digest(Ljava/lang/String;Ljavax/crypto/SecretKey;)[B
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "masterSecret"    # Ljavax/crypto/SecretKey;

    .line 199
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;

    .line 200
    .local v0, "hh":Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;
    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->digest(Ljava/lang/String;Ljavax/crypto/SecretKey;)[B

    move-result-object v1

    return-object v1
.end method

.method digest(ZLjavax/crypto/SecretKey;)[B
    .locals 2
    .param p1, "useClientLabel"    # Z
    .param p2, "masterSecret"    # Ljavax/crypto/SecretKey;

    .line 205
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;

    .line 206
    .local v0, "hh":Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;
    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->digest(ZLjavax/crypto/SecretKey;)[B

    move-result-object v1

    return-object v1
.end method

.method finish()V
    .locals 1

    .line 179
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 180
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->hasBeenUsed:Z

    .line 182
    return-void
.end method

.method public isHashable(B)Z
    .locals 1
    .param p1, "handshakeType"    # B

    .line 210
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method push([B)V
    .locals 2
    .param p1, "input"    # [B

    .line 108
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method receive(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive(Ljava/nio/ByteBuffer;I)V

    .line 104
    return-void
.end method

.method receive(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    .local v0, "from":I
    add-int v1, v0, p2

    .line 93
    .local v1, "to":I
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v0    # "from":I
    .end local v1    # "to":I
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 96
    .local v0, "inPos":I
    new-array v1, p2, [B

    .line 97
    .local v1, "holder":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v0    # "inPos":I
    .end local v1    # "holder":[B
    :goto_0
    return-void
.end method

.method receive([B)V
    .locals 2
    .param p1, "input"    # [B

    .line 86
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method removeLastReceived()[B
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method update()V
    .locals 4

    .line 165
    nop

    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 167
    .local v0, "holder":[B
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 168
    .end local v0    # "holder":[B
    goto :goto_0

    .line 169
    :cond_0
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->hasBeenUsed:Z

    .line 170
    return-void
.end method

.method utilize()V
    .locals 4

    .line 142
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->hasBeenUsed:Z

    if-eqz v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->reserves:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 147
    .local v0, "holder":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash;->hasBeenUsed:Z

    .line 150
    .end local v0    # "holder":[B
    :cond_1
    return-void
.end method
