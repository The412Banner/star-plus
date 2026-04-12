.class final Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;
.super Ljava/lang/Object;
.source "SupportedGroupsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SupportedGroupsSpec"
.end annotation


# instance fields
.field final namedGroupsIds:[I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 102
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 103
    .local v0, "ngs":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    if-eqz v0, :cond_1

    array-length v2, v0

    if-eqz v2, :cond_1

    array-length v2, v0

    rem-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 113
    array-length v2, v0

    div-int/2addr v2, v1

    new-array v1, v2, [I

    .line 114
    .local v1, "ids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 115
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    aput v2, v1, v3

    move v3, v4

    move v2, v6

    goto :goto_0

    .line 118
    .end local v4    # "j":I
    .end local v6    # "i":I
    :cond_0
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;->namedGroupsIds:[I

    .line 119
    return-void

    .line 109
    .end local v1    # "ids":[I
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v2, "Invalid supported_groups extension: incomplete data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v2, "Invalid supported_groups extension: unknown extra data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    .end local v0    # "ngs":[B
    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid supported_groups extension: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "namedGroups":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;->namedGroupsIds:[I

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 92
    .local v2, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;->namedGroupsIds:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    iget v5, v2, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    aput v5, v3, v0

    .line 93
    .end local v2    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    move v0, v4

    goto :goto_0

    .line 94
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;

    .line 81
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>([I)V
    .locals 0
    .param p1, "namedGroupsIds"    # [I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;->namedGroupsIds:[I

    .line 86
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 123
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"versions\": \'[\'{0}\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 126
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;->namedGroupsIds:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;->namedGroupsIds:[I

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 134
    .local v2, "isFirst":Z
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;->namedGroupsIds:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 135
    .local v6, "ngid":I
    if-eqz v2, :cond_1

    .line 136
    const/4 v2, 0x0

    goto :goto_1

    .line 138
    :cond_1
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_1
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .end local v6    # "ngid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 144
    :cond_2
    nop

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 148
    .local v3, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 127
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "isFirst":Z
    .end local v3    # "messageFields":[Ljava/lang/Object;
    :cond_3
    :goto_2
    const-string v1, "<no supported named group specified>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
