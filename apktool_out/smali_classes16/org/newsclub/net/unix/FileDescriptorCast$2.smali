.class Lorg/newsclub/net/unix/FileDescriptorCast$2;
.super Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;
.source "FileDescriptorCast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/FileDescriptorCast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected addProviders()V
    .locals 2

    .line 102
    const-class v0, Ljava/nio/channels/WritableByteChannel;

    new-instance v1, Lorg/newsclub/net/unix/FileDescriptorCast$2$1;

    invoke-direct {v1, p0}, Lorg/newsclub/net/unix/FileDescriptorCast$2$1;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$2;)V

    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$2;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 110
    const-class v0, Ljava/nio/channels/ReadableByteChannel;

    new-instance v1, Lorg/newsclub/net/unix/FileDescriptorCast$2$2;

    invoke-direct {v1, p0}, Lorg/newsclub/net/unix/FileDescriptorCast$2$2;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$2;)V

    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$2;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 119
    const-class v0, Ljava/nio/channels/FileChannel;

    new-instance v1, Lorg/newsclub/net/unix/FileDescriptorCast$2$3;

    invoke-direct {v1, p0}, Lorg/newsclub/net/unix/FileDescriptorCast$2$3;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$2;)V

    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$2;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 127
    const-class v0, Ljava/io/FileOutputStream;

    new-instance v1, Lorg/newsclub/net/unix/FileDescriptorCast$2$4;

    invoke-direct {v1, p0}, Lorg/newsclub/net/unix/FileDescriptorCast$2$4;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$2;)V

    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$2;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 134
    const-class v0, Ljava/io/FileInputStream;

    new-instance v1, Lorg/newsclub/net/unix/FileDescriptorCast$2$5;

    invoke-direct {v1, p0}, Lorg/newsclub/net/unix/FileDescriptorCast$2$5;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$2;)V

    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$2;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 142
    sget-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_FD_AS_REDIRECT:Lorg/newsclub/net/unix/AFSocketCapability;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocket;->supports(Lorg/newsclub/net/unix/AFSocketCapability;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-class v0, Ljava/lang/ProcessBuilder$Redirect;

    new-instance v1, Lorg/newsclub/net/unix/FileDescriptorCast$2$6;

    invoke-direct {v1, p0}, Lorg/newsclub/net/unix/FileDescriptorCast$2$6;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$2;)V

    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$2;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 156
    :cond_0
    return-void
.end method
