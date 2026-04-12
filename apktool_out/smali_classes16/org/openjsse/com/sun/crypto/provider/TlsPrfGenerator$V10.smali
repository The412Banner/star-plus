.class public Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator$V10;
.super Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;
.source "TlsPrfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V10"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator$V10;->engineGenerateKey0(Z)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
