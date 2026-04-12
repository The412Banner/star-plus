.class public final Lorg/newsclub/net/unix/AFVSOCKSocketImplExtensions;
.super Ljava/lang/Object;
.source "AFVSOCKSocketImplExtensions.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFSocketImplExtensions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/newsclub/net/unix/AFSocketImplExtensions<",
        "Lorg/newsclub/net/unix/AFVSOCKSocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private final ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AncillaryDataSupport;)V
    .locals 0
    .param p1, "ancillaryDataSupport"    # Lorg/newsclub/net/unix/AncillaryDataSupport;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/newsclub/net/unix/AFVSOCKSocketImplExtensions;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    .line 35
    return-void
.end method


# virtual methods
.method public getLocalCID()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->vsockGetLocalCID()I

    move-result v0

    return v0
.end method
