.class Lorg/openjsse/sun/security/ssl/Authenticator$SSLNullAuthenticator;
.super Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SSLNullAuthenticator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 202
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;-><init>([BLorg/openjsse/sun/security/ssl/Authenticator$1;)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Authenticator$1;

    .line 200
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$SSLNullAuthenticator;-><init>()V

    return-void
.end method
