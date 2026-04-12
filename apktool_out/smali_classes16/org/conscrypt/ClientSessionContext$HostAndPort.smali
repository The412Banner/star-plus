.class final Lorg/conscrypt/ClientSessionContext$HostAndPort;
.super Ljava/lang/Object;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ClientSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HostAndPort"
.end annotation


# instance fields
.field final host:Ljava/lang/String;

.field final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lorg/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    .line 228
    iput p2, p0, Lorg/conscrypt/ClientSessionContext$HostAndPort;->port:I

    .line 229
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 238
    instance-of v0, p1, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 239
    return v1

    .line 241
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    .line 242
    .local v0, "lhs":Lorg/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    iget-object v3, v0, Lorg/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/conscrypt/ClientSessionContext$HostAndPort;->port:I

    iget v3, v0, Lorg/conscrypt/ClientSessionContext$HostAndPort;->port:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/conscrypt/ClientSessionContext$HostAndPort;->port:I

    add-int/2addr v0, v1

    return v0
.end method
