.class public abstract Lorg/openjsse/javax/net/ssl/SSLEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "SSLEngine.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 418
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I

    .line 440
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 441
    return-void
.end method


# virtual methods
.method public abstract needUnwrapAgain()Z
.end method
