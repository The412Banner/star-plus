.class public Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128$ECB;
.super Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128$ECB$PKCS5Padding;,
        Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128$ECB$NoPadding;
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1
    .param p1, "padding"    # Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 163
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->ECB:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0, p1}, Lorg/conscrypt/OpenSSLEvpCipherAES$AES_128;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    .line 164
    return-void
.end method
