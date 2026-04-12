.class public Lorg/conscrypt/OpenSSLEvpCipherAES$AES$ECB$PKCS5Padding;
.super Lorg/conscrypt/OpenSSLEvpCipherAES$AES$ECB;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLEvpCipherAES$AES$ECB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS5Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLEvpCipherAES$AES$ECB;-><init>(Lorg/conscrypt/OpenSSLCipher$Padding;)V

    .line 114
    return-void
.end method
