.class public final Lorg/openjsse/sun/security/ssl/SSLContextImpl$TLSContext;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLSContext"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1044
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;-><init>()V

    return-void
.end method
