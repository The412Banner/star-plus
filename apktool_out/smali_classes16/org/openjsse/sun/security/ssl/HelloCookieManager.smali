.class abstract Lorg/openjsse/sun/security/ssl/HelloCookieManager;
.super Ljava/lang/Object;
.source "HelloCookieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;,
        Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;,
        Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;,
        Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract createCookie(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract isCookieValid(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
