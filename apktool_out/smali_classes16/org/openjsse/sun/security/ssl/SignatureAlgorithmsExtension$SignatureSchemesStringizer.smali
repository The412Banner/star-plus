.class final Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesStringizer;
.super Ljava/lang/Object;
.source "SignatureAlgorithmsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLStringizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SignatureSchemesStringizer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;

    .line 146
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesStringizer;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 150
    :try_start_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;

    invoke-direct {v0, p1}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
