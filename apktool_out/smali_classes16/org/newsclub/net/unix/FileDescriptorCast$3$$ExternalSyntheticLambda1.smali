.class public final synthetic Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;


# instance fields
.field public final synthetic f$0:Lorg/newsclub/net/unix/AFAddressFamilyConfig;


# direct methods
.method public synthetic constructor <init>(Lorg/newsclub/net/unix/AFAddressFamilyConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda1;->f$0:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    return-void
.end method


# virtual methods
.method public final provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$3$$ExternalSyntheticLambda1;->f$0:Lorg/newsclub/net/unix/AFAddressFamilyConfig;

    invoke-static {v0, p1, p2}, Lorg/newsclub/net/unix/FileDescriptorCast$3;->lambda$addProviders$1(Lorg/newsclub/net/unix/AFAddressFamilyConfig;Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object p1

    return-object p1
.end method
