.class Lorg/newsclub/net/unix/FileDescriptorCast$3;
.super Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;
.source "FileDescriptorCast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/newsclub/net/unix/FileDescriptorCast;->registerCastingProviders(Lorg/newsclub/net/unix/AFAddressFamilyConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

.field final synthetic val$socketClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFAddressFamilyConfig;Ljava/lang/Class;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3;->val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    iput-object p2, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3;->val$socketClass:Ljava/lang/Class;

    invoke-direct {p0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;-><init>()V

    return-void
.end method

.method static synthetic lambda$addProviders$0(Lorg/newsclub/net/unix/AFAddressFamilyConfig;Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Lorg/newsclub/net/unix/AFSocket;
    .locals 5
    .param p0, "config"    # Lorg/newsclub/net/unix/AFAddressFamilyConfig;
    .param p1, "fdc"    # Lorg/newsclub/net/unix/FileDescriptorCast;
    .param p2, "desiredType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    nop

    .line 188
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->socketConstructor()Lorg/newsclub/net/unix/AFSocket$Constructor;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/newsclub/net/unix/AFSocketFactory;

    invoke-virtual {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 189
    invoke-static {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->access$200(Lorg/newsclub/net/unix/FileDescriptorCast;)I

    move-result v3

    invoke-static {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->access$300(Lorg/newsclub/net/unix/FileDescriptorCast;)I

    move-result v4

    .line 187
    invoke-static {v0, v1, v2, v3, v4}, Lorg/newsclub/net/unix/AFSocket;->newInstance(Lorg/newsclub/net/unix/AFSocket$Constructor;Lorg/newsclub/net/unix/AFSocketFactory;Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addProviders$1(Lorg/newsclub/net/unix/AFAddressFamilyConfig;Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Lorg/newsclub/net/unix/AFServerSocket;
    .locals 4
    .param p0, "config"    # Lorg/newsclub/net/unix/AFAddressFamilyConfig;
    .param p1, "fdc"    # Lorg/newsclub/net/unix/FileDescriptorCast;
    .param p2, "desiredType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->serverSocketConstructor()Lorg/newsclub/net/unix/AFServerSocket$Constructor;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->access$200(Lorg/newsclub/net/unix/FileDescriptorCast;)I

    move-result v2

    invoke-static {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->access$300(Lorg/newsclub/net/unix/FileDescriptorCast;)I

    move-result v3

    .line 191
    invoke-static {v0, v1, v2, v3}, Lorg/newsclub/net/unix/AFServerSocket;->newInstance(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addProviders$2(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "cpSocket"    # Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;
    .param p1, "fdc"    # Lorg/newsclub/net/unix/FileDescriptorCast;
    .param p2, "desiredType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const-class v0, Lorg/newsclub/net/unix/AFSocket;

    invoke-interface {p0, p1, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;->provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFSocket;

    .line 198
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method static synthetic lambda$addProviders$3(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "cpServerSocket"    # Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;
    .param p1, "fdc"    # Lorg/newsclub/net/unix/FileDescriptorCast;
    .param p2, "desiredType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const-class v0, Lorg/newsclub/net/unix/AFServerSocket;

    invoke-interface {p0, p1, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;->provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFServerSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFServerSocket;->getChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addProviders()V
    .locals 4

    .line 185
    invoke-static {}, Lorg/newsclub/net/unix/FileDescriptorCast;->access$100()Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$3;->addProviders(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)V

    .line 187
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3;->val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    new-instance v1, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda0;-><init>(Lorg/newsclub/net/unix/AFAddressFamilyConfig;)V

    move-object v0, v1

    .line 190
    .local v0, "cpSocket":Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;, "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<Lorg/newsclub/net/unix/AFSocket<TA;>;>;"
    iget-object v1, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3;->val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    new-instance v2, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda1;-><init>(Lorg/newsclub/net/unix/AFAddressFamilyConfig;)V

    move-object v1, v2

    .line 194
    .local v1, "cpServerSocket":Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;, "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<Lorg/newsclub/net/unix/AFServerSocket<TA;>;>;"
    iget-object v2, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3;->val$socketClass:Ljava/lang/Class;

    invoke-virtual {p0, v2, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$3;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 195
    iget-object v2, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3;->val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->serverSocketClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$3;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 197
    iget-object v2, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3;->val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->socketChannelClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda2;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    invoke-virtual {p0, v2, v3}, Lorg/newsclub/net/unix/FileDescriptorCast$3;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 199
    iget-object v2, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3;->val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->serverSocketChannelClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda3;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    invoke-virtual {p0, v2, v3}, Lorg/newsclub/net/unix/FileDescriptorCast$3;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 201
    return-void
.end method
