.class public final Lorg/conscrypt/KeyGeneratorImpl$HmacSHA256;
.super Lorg/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacSHA256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 107
    const/16 v0, 0x100

    const/4 v1, 0x0

    const-string v2, "HmacSHA256"

    invoke-direct {p0, v2, v0, v1}, Lorg/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILorg/conscrypt/KeyGeneratorImpl$1;)V

    .line 108
    return-void
.end method
