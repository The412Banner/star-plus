.class Lorg/newsclub/net/unix/FileDescriptorCast$1;
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

    .line 84
    invoke-direct {p0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected addProviders()V
    .locals 2

    .line 89
    const-class v0, Ljava/io/FileDescriptor;

    new-instance v1, Lorg/newsclub/net/unix/FileDescriptorCast$1$1;

    invoke-direct {v1, p0}, Lorg/newsclub/net/unix/FileDescriptorCast$1$1;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$1;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 96
    return-void
.end method
