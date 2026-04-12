.class public Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketAdapterFactory;
.super Lorg/conscrypt/BaseOpenSSLSocketAdapterFactory;
.source "PreKitKatPlatformOpenSSLSocketAdapterFactory.java"


# direct methods
.method public constructor <init>(Lorg/conscrypt/OpenSSLSocketFactoryImpl;)V
    .locals 0
    .param p1, "delegate"    # Lorg/conscrypt/OpenSSLSocketFactoryImpl;

    .line 28
    invoke-direct {p0, p1}, Lorg/conscrypt/BaseOpenSSLSocketAdapterFactory;-><init>(Lorg/conscrypt/OpenSSLSocketFactoryImpl;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected wrap(Lorg/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Lorg/conscrypt/OpenSSLSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;

    invoke-direct {v0, p1}, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    return-object v0
.end method
