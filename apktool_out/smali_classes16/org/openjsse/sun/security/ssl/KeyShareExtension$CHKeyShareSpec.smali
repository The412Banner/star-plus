.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CHKeyShareSpec"
.end annotation


# instance fields
.field final clientShares:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, ")"

    if-lt v0, v1, :cond_3

    .line 160
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 161
    .local v0, "listLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 167
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 168
    .local v1, "keyShares":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 170
    .local v2, "namedGroupId":I
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 171
    .local v3, "keyExchange":[B
    array-length v4, v3

    if-eqz v4, :cond_0

    .line 176
    new-instance v4, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;-><init>(I[BLorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "namedGroupId":I
    .end local v3    # "keyExchange":[B
    goto :goto_0

    .line 172
    .restart local v2    # "namedGroupId":I
    .restart local v3    # "keyExchange":[B
    :cond_0
    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    const-string v5, "Invalid key_share extension: empty key_exchange"

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    .end local v2    # "namedGroupId":I
    .end local v3    # "keyExchange":[B
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;->clientShares:Ljava/util/List;

    .line 180
    return-void

    .line 162
    .end local v1    # "keyShares":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;>;"
    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key_share extension: incorrect list length (length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    .end local v0    # "listLen":I
    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key_share extension: insufficient data (length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "clientShares":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;->clientShares:Ljava/util/List;

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;

    .line 143
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 184
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"client_shares\": \'[\'{0}\n\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 187
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 188
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;->clientShares:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 189
    .local v3, "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .end local v3    # "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    goto :goto_0

    .line 192
    :cond_0
    nop

    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 196
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
