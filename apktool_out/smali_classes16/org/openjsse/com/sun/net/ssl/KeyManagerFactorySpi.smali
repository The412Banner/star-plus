.class public abstract Lorg/openjsse/com/sun/net/ssl/KeyManagerFactorySpi;
.super Ljava/lang/Object;
.source "KeyManagerFactorySpi.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract engineGetKeyManagers()[Lorg/openjsse/com/sun/net/ssl/KeyManager;
.end method

.method protected abstract engineInit(Ljava/security/KeyStore;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method
