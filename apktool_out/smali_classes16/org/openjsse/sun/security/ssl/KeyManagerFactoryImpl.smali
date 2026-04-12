.class abstract Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "KeyManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$X509;,
        Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$SunX509;
    }
.end annotation


# instance fields
.field isInitialized:Z

.field keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 3

    .line 80
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    aput-object v2, v0, v1

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyManagerFactoryImpl is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
