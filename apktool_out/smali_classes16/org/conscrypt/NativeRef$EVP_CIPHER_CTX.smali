.class final Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;
.super Lorg/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EVP_CIPHER_CTX"
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 0
    .param p1, "nativePointer"    # J

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/NativeRef;-><init>(J)V

    .line 86
    return-void
.end method


# virtual methods
.method doFree(J)V
    .locals 0
    .param p1, "context"    # J

    .line 90
    invoke-static {p1, p2}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_free(J)V

    .line 91
    return-void
.end method
