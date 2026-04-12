.class abstract Lcom/github/luben/zstd/SharedDictBase;
.super Lcom/github/luben/zstd/AutoCloseBase;
.source "SharedDictBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/github/luben/zstd/AutoCloseBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/github/luben/zstd/SharedDictBase;->close()V

    .line 8
    return-void
.end method
