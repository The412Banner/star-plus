.class final Lorg/openjsse/sun/security/ssl/EncryptedExtensions;
.super Ljava/lang/Object;
.source "EncryptedExtensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsConsumer;,
        Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsProducer;,
        Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;
    }
.end annotation


# static fields
.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsProducer;-><init>(Lorg/openjsse/sun/security/ssl/EncryptedExtensions$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 40
    new-instance v0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsConsumer;-><init>(Lorg/openjsse/sun/security/ssl/EncryptedExtensions$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
