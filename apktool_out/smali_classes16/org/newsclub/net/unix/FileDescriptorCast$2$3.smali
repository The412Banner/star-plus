.class Lorg/newsclub/net/unix/FileDescriptorCast$2$3;
.super Ljava/lang/Object;
.source "FileDescriptorCast.java"

# interfaces
.implements Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/newsclub/net/unix/FileDescriptorCast$2;->addProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<",
        "Ljava/nio/channels/FileChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/newsclub/net/unix/FileDescriptorCast$2;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/FileDescriptorCast$2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/newsclub/net/unix/FileDescriptorCast$2;

    .line 119
    iput-object p1, p0, Lorg/newsclub/net/unix/FileDescriptorCast$2$3;->this$0:Lorg/newsclub/net/unix/FileDescriptorCast$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/FileDescriptorCast$2$3;->provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p1, "fdc"    # Lorg/newsclub/net/unix/FileDescriptorCast;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/FileDescriptorCast;",
            "Ljava/lang/Class<",
            "-",
            "Ljava/nio/channels/FileChannel;",
            ">;)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    .local p2, "desiredType":Ljava/lang/Class;, "Ljava/lang/Class<-Ljava/nio/channels/FileChannel;>;"
    invoke-virtual {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/RAFChannelProvider;->getFileChannel(Ljava/io/FileDescriptor;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method
