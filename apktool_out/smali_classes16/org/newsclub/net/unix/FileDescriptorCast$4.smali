.class Lorg/newsclub/net/unix/FileDescriptorCast$4;
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

.field final synthetic val$datagramSocketClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFAddressFamilyConfig;Ljava/lang/Class;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/newsclub/net/unix/FileDescriptorCast$4;->val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    iput-object p2, p0, Lorg/newsclub/net/unix/FileDescriptorCast$4;->val$datagramSocketClass:Ljava/lang/Class;

    invoke-direct {p0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;-><init>()V

    return-void
.end method

.method static synthetic lambda$addProviders$0(Lorg/newsclub/net/unix/AFAddressFamilyConfig;Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Lorg/newsclub/net/unix/AFDatagramSocket;
    .locals 4
    .param p0, "config"    # Lorg/newsclub/net/unix/AFAddressFamilyConfig;
    .param p1, "fdc"    # Lorg/newsclub/net/unix/FileDescriptorCast;
    .param p2, "desiredType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->datagramSocketConstructor()Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->access$200(Lorg/newsclub/net/unix/FileDescriptorCast;)I

    move-result v2

    invoke-static {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->access$300(Lorg/newsclub/net/unix/FileDescriptorCast;)I

    move-result v3

    .line 212
    invoke-static {v0, v1, v2, v3}, Lorg/newsclub/net/unix/AFDatagramSocket;->newInstance(Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addProviders$1(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "cpDatagramSocket"    # Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;
    .param p1, "fdc"    # Lorg/newsclub/net/unix/FileDescriptorCast;
    .param p2, "desiredType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const-class v0, Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-interface {p0, p1, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;->provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFDatagramSocket;

    .line 218
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getChannel()Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v0

    .line 217
    return-object v0
.end method


# virtual methods
.method protected addProviders()V
    .locals 3

    .line 209
    invoke-static {}, Lorg/newsclub/net/unix/FileDescriptorCast;->access$100()Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$4;->addProviders(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)V

    .line 211
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$4;->val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    new-instance v1, Lorg/newsclub/net/unix/FileDescriptorCast$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$4$$ExternalSyntheticLambda0;-><init>(Lorg/newsclub/net/unix/AFAddressFamilyConfig;)V

    move-object v0, v1

    .line 215
    .local v0, "cpDatagramSocket":Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;, "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;>;"
    iget-object v1, p0, Lorg/newsclub/net/unix/FileDescriptorCast$4;->val$datagramSocketClass:Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$4;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 217
    iget-object v1, p0, Lorg/newsclub/net/unix/FileDescriptorCast$4;->val$config:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->datagramChannelClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lorg/newsclub/net/unix/FileDescriptorCast$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$4$$ExternalSyntheticLambda1;-><init>(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    invoke-virtual {p0, v1, v2}, Lorg/newsclub/net/unix/FileDescriptorCast$4;->addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 219
    return-void
.end method
