.class public final synthetic Lorg/newsclub/net/unix/AFUNIXSocketChannel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance()Lorg/newsclub/net/unix/AFSocket;
    .locals 1

    .line 0
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocket;->newLenientInstance()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFSocket;

    return-object v0
.end method
