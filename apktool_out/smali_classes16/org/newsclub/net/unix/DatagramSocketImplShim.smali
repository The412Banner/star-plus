.class abstract Lorg/newsclub/net/unix/DatagramSocketImplShim;
.super Ljava/net/DatagramSocketImpl;
.source "DatagramSocketImplShim.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 1

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/DatagramSocketImplShim;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 23
    :goto_0
    return-void
.end method
