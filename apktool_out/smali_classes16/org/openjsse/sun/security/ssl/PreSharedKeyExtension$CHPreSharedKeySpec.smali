.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
.super Ljava/lang/Object;
.source "PreSharedKeyExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHPreSharedKeySpec"
.end annotation


# instance fields
.field final binders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field final identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;",
            ">;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 130
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;>;"
    .local p2, "binders":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identities:Ljava/util/List;

    .line 132
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->binders:Ljava/util/List;

    .line 133
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x2c

    const-string v2, ")"

    if-lt v0, v1, :cond_7

    .line 147
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 148
    .local v0, "idEncodedLength":I
    const/4 v1, 0x7

    if-lt v0, v1, :cond_6

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identities:Ljava/util/List;

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "idReadLength":I
    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 157
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 158
    .local v4, "id":[B
    array-length v5, v4

    if-lt v5, v3, :cond_0

    .line 163
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt32(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 165
    .local v3, "obfuscatedTicketAge":I
    new-instance v5, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;

    invoke-direct {v5, v4, v3}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;-><init>([BI)V

    .line 166
    .local v5, "pskId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identities:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->getEncodedLength()I

    move-result v6

    add-int/2addr v1, v6

    .line 168
    .end local v3    # "obfuscatedTicketAge":I
    .end local v4    # "id":[B
    .end local v5    # "pskId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    goto :goto_0

    .line 159
    .restart local v4    # "id":[B
    :cond_0
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid pre_shared_key extension: insufficient identity (length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 170
    .end local v4    # "id":[B
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x23

    if-lt v4, v5, :cond_5

    .line 177
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 178
    .local v4, "bindersEncodedLen":I
    const/16 v5, 0x21

    if-lt v4, v5, :cond_4

    .line 185
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->binders:Ljava/util/List;

    .line 186
    const/4 v5, 0x0

    .line 187
    .local v5, "bindersReadLength":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 188
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    .line 189
    .local v6, "binder":[B
    array-length v7, v6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_2

    .line 195
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->binders:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    array-length v7, v6

    add-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 197
    .end local v6    # "binder":[B
    goto :goto_1

    .line 190
    .restart local v6    # "binder":[B
    :cond_2
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid pre_shared_key extension: insufficient binder entry (length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 198
    .end local v6    # "binder":[B
    :cond_3
    return-void

    .line 179
    .end local v5    # "bindersReadLength":I
    :cond_4
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid pre_shared_key extension: insufficient binders (length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 171
    .end local v4    # "bindersEncodedLen":I
    :cond_5
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pre_shared_key extension: insufficient binders data (length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 174
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v3, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 149
    .end local v1    # "idReadLength":I
    :cond_6
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pre_shared_key extension: insufficient identities (length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 142
    .end local v0    # "idEncodedLength":I
    :cond_7
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pre_shared_key extension: insufficient data (length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method bindersString()Ljava/lang/String;
    .locals 5

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->binders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 265
    .local v2, "curBinder":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .end local v2    # "curBinder":[B
    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getBindersEncodedLength()I
    .locals 4

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "binderEncodedLength":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->binders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 212
    .local v2, "curBinder":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 213
    .end local v2    # "curBinder":[B
    goto :goto_0

    .line 215
    :cond_0
    return v0
.end method

.method getEncoded()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->getIdsEncodedLength()I

    move-result v0

    .line 220
    .local v0, "idsEncodedLength":I
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->getBindersEncodedLength()I

    move-result v1

    .line 221
    .local v1, "bindersEncodedLength":I
    add-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    .line 222
    .local v2, "encodedLength":I
    new-array v3, v2, [B

    .line 223
    .local v3, "buffer":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 224
    .local v4, "m":Ljava/nio/ByteBuffer;
    invoke-static {v4, v0}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 225
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;

    .line 226
    .local v6, "curId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    invoke-virtual {v6, v4}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->writeEncoded(Ljava/nio/ByteBuffer;)V

    .line 227
    .end local v6    # "curId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    goto :goto_0

    .line 228
    :cond_0
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 229
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->binders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 230
    .local v6, "curBinder":[B
    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/Record;->putBytes8(Ljava/nio/ByteBuffer;[B)V

    .line 231
    .end local v6    # "curBinder":[B
    goto :goto_1

    .line 233
    :cond_1
    return-object v3
.end method

.method getIdsEncodedLength()I
    .locals 4

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "idEncodedLength":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;

    .line 203
    .local v2, "curId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->getEncodedLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 204
    .end local v2    # "curId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    goto :goto_0

    .line 206
    :cond_0
    return v0
.end method

.method identitiesString()Ljava/lang/String;
    .locals 5

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;

    .line 256
    .local v2, "curId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .end local v2    # "curId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 238
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"PreSharedKey\": \'{\'\n  \"identities\"    : \"{0}\",\n  \"binders\"       : \"{1}\",\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 245
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    nop

    .line 246
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identitiesString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->bindersString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 250
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
