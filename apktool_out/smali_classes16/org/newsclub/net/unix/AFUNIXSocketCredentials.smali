.class public final Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
.super Ljava/lang/Object;
.source "AFUNIXSocketCredentials.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SAME_PROCESS:Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gids:[J

.field private pid:J

.field private uid:J

.field private uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;-><init>()V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->SAME_PROCESS:Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->pid:J

    .line 49
    iput-wide v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uid:J

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    .line 59
    iput-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    .line 62
    return-void
.end method

.method public static remotePeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    .locals 4

    .line 215
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/rmi/server/RemoteServer;->getClientHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    nop

    .line 220
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->currentRMISocket()Ljava/net/Socket;

    move-result-object v1

    .line 221
    .local v1, "sock":Ljava/net/Socket;
    instance-of v2, v1, Lorg/newsclub/net/unix/AFUNIXSocket;

    if-nez v2, :cond_0

    .line 222
    return-object v0

    .line 224
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/newsclub/net/unix/AFUNIXSocket;

    .line 227
    .local v2, "socket":Lorg/newsclub/net/unix/AFUNIXSocket;
    :try_start_1
    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFUNIXSocket;->getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 228
    :catch_0
    move-exception v3

    .line 229
    .local v3, "e":Ljava/io/IOException;
    return-object v0

    .line 216
    .end local v1    # "sock":Ljava/net/Socket;
    .end local v2    # "socket":Lorg/newsclub/net/unix/AFUNIXSocket;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 180
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 181
    return v0

    .line 182
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 183
    return v1

    .line 184
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 185
    return v1

    .line 186
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    .line 187
    .local v2, "other":Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    iget-object v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    iget-object v4, v2, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 188
    return v1

    .line 189
    :cond_3
    iget-wide v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->pid:J

    iget-wide v5, v2, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->pid:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 190
    return v1

    .line 191
    :cond_4
    iget-wide v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uid:J

    iget-wide v5, v2, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uid:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 192
    return v1

    .line 193
    :cond_5
    iget-object v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    if-nez v3, :cond_6

    .line 194
    iget-object v3, v2, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    if-eqz v3, :cond_7

    .line 195
    return v1

    .line 196
    :cond_6
    iget-object v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    iget-object v4, v2, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 197
    return v1

    .line 198
    :cond_7
    return v0
.end method

.method public getGid()J
    .locals 3

    .line 88
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    :goto_1
    return-wide v1
.end method

.method public getGids()[J
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_0
    return-object v0
.end method

.method public getPid()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->pid:J

    return-wide v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .line 168
    const/16 v0, 0x1f

    .line 169
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 170
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([J)I

    move-result v3

    add-int/2addr v2, v3

    .line 171
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->pid:J

    iget-wide v5, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->pid:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 172
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uid:J

    iget-wide v5, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uid:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 173
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 174
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isEmpty()Z
    .locals 4

    .line 127
    iget-wide v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->pid:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setGids([J)V
    .locals 1
    .param p1, "gids"    # [J

    .line 118
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    .line 119
    return-void
.end method

.method setUUID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuidStr"    # Ljava/lang/String;

    .line 114
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    sget-object v1, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->SAME_PROCESS:Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    if-ne p0, v1, :cond_0

    .line 136
    const-string v1, "(same process)]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 139
    :cond_0
    iget-wide v1, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->pid:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/16 v2, 0x3b

    if-eqz v1, :cond_1

    .line 140
    const-string v1, "pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-wide v5, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->pid:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    iget-wide v5, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uid:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    .line 145
    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-wide v3, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uid:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :cond_2
    iget-object v1, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    if-eqz v1, :cond_3

    .line 150
    const-string v1, "gids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->gids:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_3
    iget-object v1, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    if-eqz v1, :cond_4

    .line 155
    const-string v1, "uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_5

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    :cond_5
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
