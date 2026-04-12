.class Lorg/conscrypt/ConscryptFileDescriptorSocket$2;
.super Ljava/lang/Object;
.source "ConscryptFileDescriptorSocket.java"

# interfaces
.implements Lorg/conscrypt/ExternalSession$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/conscrypt/ConscryptFileDescriptorSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;


# direct methods
.method constructor <init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V
    .locals 0
    .param p1, "this$0"    # Lorg/conscrypt/ConscryptFileDescriptorSocket;

    .line 720
    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$2;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideSession()Lorg/conscrypt/ConscryptSession;
    .locals 1

    .line 723
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$2;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$400(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method
