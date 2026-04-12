.class final Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;
.super Ljava/security/Provider;
.source "JsseJce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/JsseJce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SunCertificates"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2d939a6061d692f8L


# direct methods
.method constructor <init>(Ljava/security/Provider;)V
    .locals 4
    .param p1, "p"    # Ljava/security/Provider;

    .line 81
    sget-wide v0, Lorg/openjsse/sun/security/ssl/JsseJce;->PROVIDER_VER:D

    const-string v2, "OpenJSSE internal"

    const-string v3, "SunCertificates"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 82
    new-instance v0, Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates$1;

    invoke-direct {v0, p0, p1}, Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates$1;-><init>(Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;Ljava/security/Provider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 98
    return-void
.end method
