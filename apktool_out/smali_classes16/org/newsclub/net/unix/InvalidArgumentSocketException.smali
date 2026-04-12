.class public Lorg/newsclub/net/unix/InvalidArgumentSocketException;
.super Lorg/newsclub/net/unix/InvalidSocketException;
.source "InvalidArgumentSocketException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/newsclub/net/unix/InvalidSocketException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/InvalidSocketException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
