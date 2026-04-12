.class Lorg/newsclub/net/unix/AFInetAddress;
.super Ljava/lang/Object;
.source "AFInetAddress.java"


# static fields
.field static final INETADDR_SUFFIX:Ljava/lang/String; = ".junixsocket"

.field private static final MARKER_HEX_ENCODING:Ljava/lang/String; = "%%"

.field private static final PREFIX:C = '['

.field private static final SERIALIZED_INET_ADDRESS_START:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/16 v0, 0x66

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/newsclub/net/unix/AFInetAddress;->SERIALIZED_INET_ADDRESS_START:[B

    return-void

    :array_0
    .array-data 1
        -0x54t
        -0x13t
        0x0t
        0x5t
        0x73t
        0x72t
        0x0t
        0x14t
        0x6at
        0x61t
        0x76t
        0x61t
        0x2et
        0x6et
        0x65t
        0x74t
        0x2et
        0x49t
        0x6et
        0x65t
        0x74t
        0x41t
        0x64t
        0x64t
        0x72t
        0x65t
        0x73t
        0x73t
        0x2dt
        -0x65t
        0x57t
        -0x51t
        -0x61t
        -0x1dt
        -0x15t
        -0x25t
        0x3t
        0x0t
        0x3t
        0x49t
        0x0t
        0x7t
        0x61t
        0x64t
        0x64t
        0x72t
        0x65t
        0x73t
        0x73t
        0x49t
        0x0t
        0x6t
        0x66t
        0x61t
        0x6dt
        0x69t
        0x6ct
        0x79t
        0x4ct
        0x0t
        0x8t
        0x68t
        0x6ft
        0x73t
        0x74t
        0x4et
        0x61t
        0x6dt
        0x65t
        0x74t
        0x0t
        0x12t
        0x4ct
        0x6at
        0x61t
        0x76t
        0x61t
        0x2ft
        0x6ct
        0x61t
        0x6et
        0x67t
        0x2ft
        0x4ft
        0x62t
        0x6at
        0x65t
        0x63t
        0x74t
        0x3bt
        0x78t
        0x70t
        0x7ft
        0x0t
        0x0t
        -0x51t
        0x0t
        0x0t
        0x0t
        0x1t
        0x74t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final createUnresolvedHostname([BLorg/newsclub/net/unix/AFAddressFamily;)Ljava/lang/String;
    .locals 9
    .param p0, "socketAddress"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 108
    .local p1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    const-string v2, ".junixsocket"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :try_start_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 112
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    nop

    .line 116
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFAddressFamily;->getJuxString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x40

    if-lt v5, v6, :cond_2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0xff

    if-gt v5, v6, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "%%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v5, p0

    .local v5, "n":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 130
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aget-byte v7, p0, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%02x"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    .end local v5    # "n":I
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFAddressFamily;->getJuxString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    :cond_2
    :goto_1
    return-object v4

    .line 113
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static isSupportedAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)Z
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)Z"
        }
    .end annotation

    .line 231
    .local p1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "hostname":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFAddressFamily;->getJuxInetAddressSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 235
    .end local v0    # "hostname":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static final unwrapAddress(Ljava/lang/String;Lorg/newsclub/net/unix/AFAddressFamily;)[B
    .locals 11
    .param p0, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 186
    .local p1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    const-string v0, ".junixsocket"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    .line 192
    .local v1, "end":I
    const/4 v0, -0x1

    .line 193
    .local v0, "domDot":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 194
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 195
    .local v3, "c":C
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 196
    move v0, v2

    .line 197
    goto :goto_1

    .line 193
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 201
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "juxString":Ljava/lang/String;
    invoke-static {v2}, Lorg/newsclub/net/unix/AFAddressFamily;->getAddressFamily(Ljava/lang/String;)Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v3

    if-ne v3, p1, :cond_5

    .line 206
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "encodedHostname":Ljava/lang/String;
    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 209
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 210
    .local v5, "len":I
    and-int/lit8 v6, v5, 0x1

    if-eq v6, v3, :cond_3

    .line 213
    add-int/lit8 v3, v5, -0x2

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    .line 214
    .local v3, "unwrapped":[B
    const/4 v6, 0x2

    .local v6, "i":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "n":I
    const/4 v8, 0x0

    .local v8, "o":I
    :goto_2
    if-ge v6, v7, :cond_2

    .line 215
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 216
    .local v9, "v":I
    int-to-byte v10, v9

    aput-byte v10, v3, v8

    .line 214
    .end local v9    # "v":I
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 218
    .end local v6    # "i":I
    .end local v7    # "n":I
    .end local v8    # "o":I
    :cond_2
    return-object v3

    .line 211
    .end local v3    # "unwrapped":[B
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "Length of hex-encoded wrapping must be even"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 222
    .end local v5    # "len":I
    :cond_4
    :try_start_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 224
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 203
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "encodedHostname":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Incompatible address"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    .end local v0    # "domDot":I
    .end local v1    # "end":I
    .end local v2    # "juxString":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final unwrapAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)[B
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 177
    .local p1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    invoke-static {p0, p1}, Lorg/newsclub/net/unix/AFInetAddress;->isSupportedAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "hostname":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/newsclub/net/unix/AFInetAddress;->unwrapAddress(Ljava/lang/String;Lorg/newsclub/net/unix/AFAddressFamily;)[B

    move-result-object v1

    return-object v1

    .line 178
    .end local v0    # "hostname":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final wrapAddress([BLorg/newsclub/net/unix/AFAddressFamily;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "socketAddress"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    .line 149
    .local p1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 154
    :cond_0
    invoke-static {p0, p1}, Lorg/newsclub/net/unix/AFInetAddress;->createUnresolvedHostname([BLorg/newsclub/net/unix/AFAddressFamily;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 155
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    .line 158
    sget-object v1, Lorg/newsclub/net/unix/AFInetAddress;->SERIALIZED_INET_ADDRESS_START:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 159
    .local v1, "serializedData":[B
    sget-object v2, Lorg/newsclub/net/unix/AFInetAddress;->SERIALIZED_INET_ADDRESS_START:[B

    sget-object v3, Lorg/newsclub/net/unix/AFInetAddress;->SERIALIZED_INET_ADDRESS_START:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    sget-object v2, Lorg/newsclub/net/unix/AFInetAddress;->SERIALIZED_INET_ADDRESS_START:[B

    array-length v2, v2

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 162
    sget-object v2, Lorg/newsclub/net/unix/AFInetAddress;->SERIALIZED_INET_ADDRESS_START:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x78

    aput-byte v3, v1, v2

    .line 166
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    return-object v3

    .line 166
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bytes":[B
    .end local v1    # "serializedData":[B
    .end local p0    # "socketAddress":[B
    .end local p1    # "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 168
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "bytes":[B
    .restart local v1    # "serializedData":[B
    .restart local p0    # "socketAddress":[B
    .restart local p1    # "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 156
    .end local v1    # "serializedData":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "junixsocket address is too long to wrap as InetAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v0    # "bytes":[B
    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
