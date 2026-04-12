.class synthetic Lorg/openjsse/sun/security/ssl/CipherSuite$1;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$openjsse$sun$security$ssl$CipherType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1033
    invoke-static {}, Lorg/openjsse/sun/security/ssl/CipherType;->values()[Lorg/openjsse/sun/security/ssl/CipherType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$1;->$SwitchMap$org$openjsse$sun$security$ssl$CipherType:[I

    :try_start_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$1;->$SwitchMap$org$openjsse$sun$security$ssl$CipherType:[I

    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/CipherType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$1;->$SwitchMap$org$openjsse$sun$security$ssl$CipherType:[I

    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/CipherType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
