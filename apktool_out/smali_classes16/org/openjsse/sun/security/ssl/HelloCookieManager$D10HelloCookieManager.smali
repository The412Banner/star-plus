.class final Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;
.super Lorg/openjsse/sun/security/ssl/HelloCookieManager;
.source "HelloCookieManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HelloCookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "D10HelloCookieManager"
.end annotation


# instance fields
.field private cookieSecret:[B

.field private cookieVersion:I

.field private legacySecret:[B

.field final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .line 116
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HelloCookieManager;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->secureRandom:Ljava/security/SecureRandom;

    .line 119
    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieVersion:I

    .line 120
    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieSecret:[B

    .line 121
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->legacySecret:[B

    .line 123
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieSecret:[B

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 124
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieSecret:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->legacySecret:[B

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    return-void
.end method


# virtual methods
.method createCookie(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)[B
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieVersion:I

    .line 135
    .local v0, "version":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieSecret:[B

    .line 138
    .local v1, "secret":[B
    iget v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieVersion:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieSecret:[B

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->legacySecret:[B

    const/16 v5, 0x20

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->secureRandom:Ljava/security/SecureRandom;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieSecret:[B

    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 143
    :cond_0
    iget v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieVersion:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieVersion:I

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const-string v2, "SHA-256"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 147
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getHelloCookieBytes()[B

    move-result-object v4

    .line 148
    .local v4, "helloBytes":[B
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 149
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 150
    .local v5, "cookie":[B
    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 152
    return-object v5

    .line 144
    .end local v0    # "version":I
    .end local v1    # "secret":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v4    # "helloBytes":[B
    .end local v5    # "cookie":[B
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isCookieValid(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;[B)Z
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .param p3, "cookie"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    array-length v1, p3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    monitor-enter p0

    .line 165
    :try_start_0
    iget v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieVersion:I

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p3, v0

    if-ne v1, v2, :cond_1

    .line 166
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->cookieSecret:[B

    .local v1, "secret":[B
    goto :goto_0

    .line 168
    .end local v1    # "secret":[B
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;->legacySecret:[B

    .line 170
    .restart local v1    # "secret":[B
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    const-string v2, "SHA-256"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 173
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getHelloCookieBytes()[B

    move-result-object v3

    .line 174
    .local v3, "helloBytes":[B
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 175
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 176
    .local v4, "target":[B
    aget-byte v5, p3, v0

    aput-byte v5, v4, v0

    .line 178
    invoke-static {v4, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 170
    .end local v1    # "secret":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "helloBytes":[B
    .end local v4    # "target":[B
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 160
    :cond_2
    :goto_1
    return v0
.end method
