.class public final Lorg/newsclub/net/unix/AFTIPCSocketImplExtensions;
.super Ljava/lang/Object;
.source "AFTIPCSocketImplExtensions.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFSocketImplExtensions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/newsclub/net/unix/AFSocketImplExtensions<",
        "Lorg/newsclub/net/unix/AFTIPCSocketAddress;",
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
    iput-object p1, p0, Lorg/newsclub/net/unix/AFTIPCSocketImplExtensions;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    .line 35
    return-void
.end method


# virtual methods
.method public getTIPCDestName()[I
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/newsclub/net/unix/AFTIPCSocketImplExtensions;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->getTIPCDestName()[I

    move-result-object v0

    return-object v0
.end method

.method public getTIPCErrInfo()[I
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/newsclub/net/unix/AFTIPCSocketImplExtensions;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->getTIPCErrorInfo()[I

    move-result-object v0

    return-object v0
.end method

.method public getTIPCLinkName(II)Ljava/lang/String;
    .locals 3
    .param p1, "peer"    # I
    .param p2, "bearerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {p1, p2}, Lorg/newsclub/net/unix/NativeUnixSocket;->tipcGetLinkName(II)[B

    move-result-object v0

    .line 80
    .local v0, "name":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    return-object v1
.end method

.method public getTIPCNodeId(I)[B
    .locals 1
    .param p1, "peer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-static {p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->tipcGetNodeId(I)[B

    move-result-object v0

    return-object v0
.end method
