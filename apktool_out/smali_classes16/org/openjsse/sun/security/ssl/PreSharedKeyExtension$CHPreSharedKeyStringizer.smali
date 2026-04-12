.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyStringizer;
.super Ljava/lang/Object;
.source "PreSharedKeyExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLStringizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHPreSharedKeyStringizer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;

    .line 273
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyStringizer;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 283
    :try_start_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
