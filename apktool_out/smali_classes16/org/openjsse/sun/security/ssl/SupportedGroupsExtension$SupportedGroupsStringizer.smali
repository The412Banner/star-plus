.class final Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsStringizer;
.super Ljava/lang/Object;
.source "SupportedGroupsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLStringizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SupportedGroupsStringizer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;

    .line 154
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsStringizer;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 158
    :try_start_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
