.class final Lorg/newsclub/net/unix/SentinelSocketAddress;
.super Lorg/newsclub/net/unix/AFSocketAddress;
.source "SentinelSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .line 28
    const-class v0, Lorg/newsclub/net/unix/SentinelSocketAddress;

    invoke-direct {p0, v0, p1}, Lorg/newsclub/net/unix/AFSocketAddress;-><init>(Ljava/lang/Class;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public hasFilename()Z
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method
