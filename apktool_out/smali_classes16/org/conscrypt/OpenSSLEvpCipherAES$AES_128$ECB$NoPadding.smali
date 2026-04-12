.class public Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128$ECB$NoPadding;
.super Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128$ECB;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128$ECB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128$ECB;-><init>(Lorg/conscrypt/OpenSSLCipher$Padding;)V

    .line 169
    return-void
.end method
