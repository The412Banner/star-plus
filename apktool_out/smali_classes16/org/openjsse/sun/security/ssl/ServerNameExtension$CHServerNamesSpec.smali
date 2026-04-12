.class final Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;
.super Ljava/lang/Object;
.source "ServerNameExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerNameExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CHServerNamesSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec$UnknownServerName;
    }
.end annotation


# static fields
.field static final NAME_HEADER_LENGTH:I = 0x3


# instance fields
.field final serverNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 97
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 98
    .local v0, "sniLen":I
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 103
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    .local v1, "sniMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavax/net/ssl/SNIServerName;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 116
    .local v2, "nameType":I
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 117
    .local v3, "encoded":[B
    const-string v4, "}"

    if-nez v2, :cond_1

    .line 118
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 124
    :try_start_0
    new-instance v5, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v5, v3}, Ljavax/net/ssl/SNIHostName;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 133
    .local v4, "serverName":Ljavax/net/ssl/SNIServerName;
    goto :goto_1

    .line 125
    .end local v4    # "serverName":Ljavax/net/ssl/SNIServerName;
    :catch_0
    move-exception v5

    .line 126
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal server name, type=host_name("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 131
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 132
    .local v4, "spe":Ljavax/net/ssl/SSLProtocolException;
    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLProtocolException;

    throw v6

    .line 119
    .end local v4    # "spe":Ljavax/net/ssl/SSLProtocolException;
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    const-string v5, "Empty HostName in server_name extension"

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_1
    :try_start_1
    new-instance v5, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec$UnknownServerName;

    invoke-direct {v5, v2, v3}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec$UnknownServerName;-><init>(I[B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 143
    .local v4, "serverName":Ljavax/net/ssl/SNIServerName;
    nop

    .line 147
    :goto_1
    invoke-virtual {v4}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 152
    .end local v2    # "nameType":I
    .end local v3    # "encoded":[B
    .end local v4    # "serverName":Ljavax/net/ssl/SNIServerName;
    goto :goto_0

    .line 148
    .restart local v2    # "nameType":I
    .restart local v3    # "encoded":[B
    .restart local v4    # "serverName":Ljavax/net/ssl/SNIServerName;
    :cond_2
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated server name of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 150
    invoke-virtual {v4}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    .end local v4    # "serverName":Ljavax/net/ssl/SNIServerName;
    :catch_1
    move-exception v5

    .line 138
    .restart local v5    # "iae":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal server name, type=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), value={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 141
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 142
    .local v4, "spe":Ljavax/net/ssl/SSLProtocolException;
    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLProtocolException;

    throw v6

    .line 154
    .end local v2    # "nameType":I
    .end local v3    # "encoded":[B
    .end local v4    # "spe":Ljavax/net/ssl/SSLProtocolException;
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;->serverNames:Ljava/util/List;

    .line 155
    return-void

    .line 99
    .end local v1    # "sniMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavax/net/ssl/SNIServerName;>;"
    :cond_4
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v2, "Invalid server_name extension: incomplete data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v0    # "sniLen":I
    :cond_5
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid server_name extension: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;->serverNames:Ljava/util/List;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;

    .line 78
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 159
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;->serverNames:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;->serverNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;->serverNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SNIServerName;

    .line 164
    .local v2, "sn":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v2}, Ljavax/net/ssl/SNIServerName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .end local v2    # "sn":Ljavax/net/ssl/SNIServerName;
    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 160
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const-string v0, "<no server name indicator specified>"

    return-object v0
.end method
