.class Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$CS;
.super Ljava/security/cert/CertStore;
.source "SSLServerCertStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CS"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    .locals 0
    .param p1, "spi"    # Ljava/security/cert/CertStoreSpi;
    .param p2, "p"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/security/cert/CertStoreParameters;

    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    .line 238
    return-void
.end method
