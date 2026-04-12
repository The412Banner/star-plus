.class public final Lorg/conscrypt/OpenSSLCipherRSA$Raw;
.super Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Raw"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 421
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;-><init>(I)V

    .line 422
    return-void
.end method
