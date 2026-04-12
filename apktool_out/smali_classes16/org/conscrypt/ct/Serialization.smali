.class public Lorg/conscrypt/ct/Serialization;
.super Ljava/lang/Object;
.source "Serialization.java"


# static fields
.field private static final DER_LENGTH_LONG_FORM_FLAG:I = 0x80

.field private static final DER_TAG_MASK:I = 0x3f

.field private static final DER_TAG_OCTET_STRING:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)B
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 168
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 171
    int-to-byte v1, v0

    return v1

    .line 169
    :cond_0
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    const-string v2, "Premature end of input, could not read byte."

    invoke-direct {v1, v2}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Ljava/io/InputStream;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "b":I
    .restart local p0    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readDEROctetString(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    .line 42
    .local v0, "tag":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 46
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 47
    .local v1, "width":I
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 48
    and-int/lit16 v2, v1, -0x81

    invoke-static {p0, v2}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    .local v2, "length":I
    goto :goto_0

    .line 50
    .end local v2    # "length":I
    :cond_0
    move v2, v1

    .line 53
    .restart local v2    # "length":I
    :goto_0
    invoke-static {p0, v2}, Lorg/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    return-object v3

    .line 43
    .end local v1    # "width":I
    .end local v2    # "length":I
    :cond_1
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong DER tag, expected OCTET STRING, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readDEROctetString([B)[B
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/conscrypt/ct/Serialization;->readDEROctetString(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFixedBytes(Ljava/io/InputStream;I)[B
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 105
    if-ltz p1, :cond_1

    .line 109
    :try_start_0
    new-array v0, p1, [B

    .line 110
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 111
    .local v1, "count":I
    if-lt v1, p1, :cond_0

    .line 115
    return-object v0

    .line 112
    :cond_0
    new-instance v2, Lorg/conscrypt/ct/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Premature end of input, expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, only read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "length":I
    throw v2

    .line 116
    .end local v0    # "data":[B
    .end local v1    # "count":I
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "length":I
    :catch_0
    move-exception v0

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Lorg/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "length":I
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "length":I
    :goto_0
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readList(Ljava/io/InputStream;II)[[B
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 73
    .local v1, "data":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p0, v2

    .line 75
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    invoke-static {p0, p2}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :cond_0
    nop

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    return-object v2

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v3, v2}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static readList([BII)[[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lorg/conscrypt/ct/Serialization;->readList(Ljava/io/InputStream;II)[[B

    move-result-object v0

    return-object v0
.end method

.method public static readLong(Ljava/io/InputStream;I)J
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 149
    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 153
    const-wide/16 v1, 0x0

    .line 154
    .local v1, "result":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 155
    shl-long v4, v1, v0

    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v1, v4, v6

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .end local v3    # "i":I
    :cond_0
    return-wide v1

    .line 150
    .end local v1    # "result":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readNumber(Ljava/io/InputStream;I)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 135
    shl-int/lit8 v2, v0, 0x8

    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 130
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Lorg/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readVariableBytes(Ljava/io/InputStream;I)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 93
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    .line 94
    .local v0, "length":I
    invoke-static {p0, v0}, Lorg/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static writeFixedBytes(Ljava/io/OutputStream;[B)V
    .locals 2
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 198
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    nop

    .line 202
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeNumber(Ljava/io/OutputStream;JI)V
    .locals 6
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 214
    if-ltz p3, :cond_4

    .line 217
    const/16 v0, 0x8

    if-ge p3, v0, :cond_1

    mul-int/lit8 v0, p3, 0x8

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Lorg/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number too large, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fit in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 224
    add-int/lit8 v0, p3, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    .line 226
    .local v0, "shift":J
    const-wide/16 v2, 0x40

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 227
    long-to-int v2, v0

    shr-long v2, p1, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 229
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_1
    nop

    .end local v0    # "shift":J
    add-int/lit8 p3, p3, -0x1

    .line 233
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    nop

    .line 237
    return-void

    .line 215
    :cond_4
    new-instance v0, Lorg/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeVariableBytes(Ljava/io/OutputStream;[BI)V
    .locals 2
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 187
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lorg/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 188
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    .line 189
    return-void
.end method
