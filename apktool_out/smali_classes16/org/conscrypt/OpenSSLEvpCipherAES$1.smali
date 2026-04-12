.class synthetic Lorg/conscrypt/OpenSSLEvpCipherAES$1;
.super Ljava/lang/Object;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLEvpCipherAES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$conscrypt$OpenSSLCipher$Mode:[I

.field static final synthetic $SwitchMap$org$conscrypt$OpenSSLCipher$Padding:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    invoke-static {}, Lorg/conscrypt/OpenSSLCipher$Padding;->values()[Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$org$conscrypt$OpenSSLCipher$Padding:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$org$conscrypt$OpenSSLCipher$Padding:[I

    sget-object v2, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v2}, Lorg/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$org$conscrypt$OpenSSLCipher$Padding:[I

    sget-object v3, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v3}, Lorg/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 34
    :goto_1
    invoke-static {}, Lorg/conscrypt/OpenSSLCipher$Mode;->values()[Lorg/conscrypt/OpenSSLCipher$Mode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$org$conscrypt$OpenSSLCipher$Mode:[I

    :try_start_2
    sget-object v2, Lorg/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$org$conscrypt$OpenSSLCipher$Mode:[I

    sget-object v3, Lorg/conscrypt/OpenSSLCipher$Mode;->CBC:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v3}, Lorg/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lorg/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$org$conscrypt$OpenSSLCipher$Mode:[I

    sget-object v2, Lorg/conscrypt/OpenSSLCipher$Mode;->CTR:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v2}, Lorg/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lorg/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$org$conscrypt$OpenSSLCipher$Mode:[I

    sget-object v1, Lorg/conscrypt/OpenSSLCipher$Mode;->ECB:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
