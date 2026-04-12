.class final Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesSpec;
.super Ljava/lang/Object;
.source "ServerNameExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerNameExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHServerNamesSpec"
.end annotation


# static fields
.field static final DEFAULT:Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 382
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesSpec;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesSpec;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesSpec;->DEFAULT:Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesSpec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    return-void

    .line 390
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid ServerHello server_name extension: not empty"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$SHServerNamesSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 397
    const-string v0, "<empty extension_data field>"

    return-object v0
.end method
