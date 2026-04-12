.class public final synthetic Lorg/newsclub/net/unix/AFUNIXDatagramSocket$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newSocket(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFDatagramSocket;
    .locals 1

    .line 0
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;

    invoke-direct {v0, p1}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v0, Lorg/newsclub/net/unix/AFDatagramSocket;

    return-object v0
.end method
