.class Lorg/newsclub/net/unix/AncillaryDataSupport$1;
.super Ljava/lang/Object;
.source "AncillaryDataSupport.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/newsclub/net/unix/AncillaryDataSupport;->receiveFileDescriptors([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/newsclub/net/unix/AncillaryDataSupport;

.field final synthetic val$fdesc:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AncillaryDataSupport;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/newsclub/net/unix/AncillaryDataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lorg/newsclub/net/unix/AncillaryDataSupport$1;->this$0:Lorg/newsclub/net/unix/AncillaryDataSupport;

    iput-object p2, p0, Lorg/newsclub/net/unix/AncillaryDataSupport$1;->val$fdesc:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport$1;->this$0:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-static {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->access$000(Lorg/newsclub/net/unix/AncillaryDataSupport;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AncillaryDataSupport$1;->val$fdesc:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method
