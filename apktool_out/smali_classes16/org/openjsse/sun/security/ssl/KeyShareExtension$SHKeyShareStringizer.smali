.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareStringizer;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLStringizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SHKeyShareStringizer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;

    .line 497
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareStringizer;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 501
    :try_start_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 502
    :catch_0
    move-exception v0

    .line 504
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
