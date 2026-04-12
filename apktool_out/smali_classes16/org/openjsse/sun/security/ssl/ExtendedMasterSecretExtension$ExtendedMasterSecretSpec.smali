.class final Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;
.super Ljava/lang/Object;
.source "ExtendedMasterSecretExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtendedMasterSecretSpec"
.end annotation


# static fields
.field static final NOMINAL:Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;->NOMINAL:Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid extended_master_secret extension data: not empty"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "<empty>"

    return-object v0
.end method
