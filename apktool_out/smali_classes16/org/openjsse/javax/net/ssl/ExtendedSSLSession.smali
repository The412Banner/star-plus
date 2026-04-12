.class public abstract Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "ExtendedSSLSession.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
