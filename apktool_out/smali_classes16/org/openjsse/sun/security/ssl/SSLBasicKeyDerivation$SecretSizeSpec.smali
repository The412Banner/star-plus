.class Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation$SecretSizeSpec;
.super Ljava/lang/Object;
.source "SSLBasicKeyDerivation.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecretSizeSpec"
.end annotation


# instance fields
.field final length:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation$SecretSizeSpec;->length:I

    .line 79
    return-void
.end method
