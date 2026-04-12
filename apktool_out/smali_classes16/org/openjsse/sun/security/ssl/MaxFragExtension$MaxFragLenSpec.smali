.class final Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;
.super Ljava/lang/Object;
.source "MaxFragExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/MaxFragExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaxFragLenSpec"
.end annotation


# instance fields
.field id:B


# direct methods
.method private constructor <init>(B)V
    .locals 0
    .param p1, "id"    # B

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-byte p1, p0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;->id:B

    .line 72
    return-void
.end method

.method synthetic constructor <init>(BLorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V
    .locals 0
    .param p1, "x0"    # B
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;

    .line 67
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;-><init>(B)V

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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;->id:B

    .line 81
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid max_fragment_length extension data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    iget-byte v0, p0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;->id:B

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->access$900(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
