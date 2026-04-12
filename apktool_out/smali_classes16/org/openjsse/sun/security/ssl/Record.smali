.class interface abstract Lorg/openjsse/sun/security/ssl/Record;
.super Ljava/lang/Object;
.source "Record.java"


# static fields
.field public static final OVERFLOW_OF_INT08:I = 0x100

.field public static final OVERFLOW_OF_INT16:I = 0x10000

.field public static final OVERFLOW_OF_INT24:I = 0x1000000

.field public static final enableCBCProtection:Z

.field public static final maxDataSize:I = 0x4000

.field public static final maxFragmentSize:I = 0x4800

.field public static final maxIVLength:I = 0x10

.field public static final maxMacSize:I = 0x30

.field public static final maxPadding:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    nop

    .line 54
    const-string v0, "jsse.enableCBCProtection"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/Record;->enableCBCProtection:Z

    .line 53
    return-void
.end method

.method public static getBytes16(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 107
    .local v0, "len":I
    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 108
    new-array v1, v0, [B

    .line 110
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 111
    return-object v1
.end method

.method public static getBytes24(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/Record;->getInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 116
    .local v0, "len":I
    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 117
    new-array v1, v0, [B

    .line 119
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 120
    return-object v1
.end method

.method public static getBytes8(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/Record;->getInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 98
    .local v0, "len":I
    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 99
    new-array v1, v0, [B

    .line 101
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 102
    return-object v1
.end method

.method public static getInt16(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 75
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 74
    return v0
.end method

.method public static getInt24(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 80
    return v0
.end method

.method public static getInt32(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 87
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public static getInt8(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static putBytes16(Ljava/nio/ByteBuffer;[B)V
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .param p1, "s"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    array-length v1, p1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 172
    array-length v0, p1

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 173
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 168
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 169
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 175
    :goto_1
    return-void
.end method

.method public static putBytes24(Ljava/nio/ByteBuffer;[B)V
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .param p1, "s"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x3

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    array-length v1, p1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 183
    array-length v0, p1

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->putInt24(Ljava/nio/ByteBuffer;I)V

    .line 184
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 180
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->putInt24(Ljava/nio/ByteBuffer;I)V

    .line 186
    :goto_1
    return-void
.end method

.method public static putBytes8(Ljava/nio/ByteBuffer;[B)V
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .param p1, "s"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    array-length v1, p1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 161
    array-length v0, p1

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->putInt8(Ljava/nio/ByteBuffer;I)V

    .line 162
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 157
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->putInt8(Ljava/nio/ByteBuffer;I)V

    .line 164
    :goto_1
    return-void
.end method

.method public static putInt16(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 134
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 135
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 136
    return-void
.end method

.method public static putInt24(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 140
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 141
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 142
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    return-void
.end method

.method public static putInt32(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 150
    return-void
.end method

.method public static putInt8(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/openjsse/sun/security/ssl/Record;->verifyLength(Ljava/nio/ByteBuffer;I)V

    .line 129
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    return-void
.end method

.method public static verifyLength(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "m"    # Ljava/nio/ByteBuffer;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 195
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Insufficient space in the buffer, may be cause by an unexpected end of handshake data."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
