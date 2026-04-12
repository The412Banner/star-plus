.class Lorg/newsclub/net/unix/FileDescriptorCast$2$6;
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
        "Ljava/lang/ProcessBuilder$Redirect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/newsclub/net/unix/FileDescriptorCast$2;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/FileDescriptorCast$2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/newsclub/net/unix/FileDescriptorCast$2;

    .line 143
    iput-object p1, p0, Lorg/newsclub/net/unix/FileDescriptorCast$2$6;->this$0:Lorg/newsclub/net/unix/FileDescriptorCast$2;

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

    .line 143
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/FileDescriptorCast$2$6;->provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object p1

    return-object p1
.end method

.method public provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 4
    .param p1, "fdc"    # Lorg/newsclub/net/unix/FileDescriptorCast;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/FileDescriptorCast;",
            "Ljava/lang/Class<",
            "-",
            "Ljava/lang/ProcessBuilder$Redirect;",
            ">;)",
            "Ljava/lang/ProcessBuilder$Redirect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    .local p2, "desiredType":Ljava/lang/Class;, "Ljava/lang/Class<-Ljava/lang/ProcessBuilder$Redirect;>;"
    invoke-virtual {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->initRedirect(Ljava/io/FileDescriptor;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    .line 149
    .local v0, "red":Ljava/lang/ProcessBuilder$Redirect;
    if-eqz v0, :cond_0

    .line 152
    return-object v0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access file descriptor as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
