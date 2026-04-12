.class public final Lorg/openjsse/sun/security/ssl/SSLContextImpl$DTLSContext;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DTLSContext"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1508
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedDTLSContext;-><init>()V

    return-void
.end method
