.class public Lorg/conscrypt/OpenSSLEvpCipherAES$AES$CBC;
.super Lorg/conscrypt/OpenSSLEvpCipherAES$AES;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLEvpCipherAES$AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLEvpCipherAES$AES$CBC$PKCS5Padding;,
        Lorg/conscrypt/OpenSSLEvpCipherAES$AES$CBC$NoPadding;
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1
    .param p1, "padding"    # Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 78
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->CBC:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0, p1}, Lorg/conscrypt/OpenSSLEvpCipherAES$AES;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    .line 79
    return-void
.end method
