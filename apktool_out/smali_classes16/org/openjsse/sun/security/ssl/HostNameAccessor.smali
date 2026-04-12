.class public Lorg/openjsse/sun/security/ssl/HostNameAccessor;
.super Ljava/lang/Object;
.source "HostNameAccessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOriginalHostName(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "inetAddress"    # Ljava/net/InetAddress;

    .line 36
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaNetAccess()Lsun/misc/JavaNetAccess;

    move-result-object v0

    .line 37
    .local v0, "jna":Lsun/misc/JavaNetAccess;
    invoke-interface {v0, p0}, Lsun/misc/JavaNetAccess;->getOriginalHostName(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
