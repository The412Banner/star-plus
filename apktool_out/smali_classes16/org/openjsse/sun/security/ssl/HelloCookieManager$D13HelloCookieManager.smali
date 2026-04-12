.class final Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;
.super Lorg/openjsse/sun/security/ssl/HelloCookieManager;
.source "HelloCookieManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HelloCookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "D13HelloCookieManager"
.end annotation


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .line 184
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HelloCookieManager;-><init>()V

    .line 185
    return-void
.end method


# virtual methods
.method createCookie(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)[B
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isCookieValid(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;[B)Z
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .param p3, "cookie"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
