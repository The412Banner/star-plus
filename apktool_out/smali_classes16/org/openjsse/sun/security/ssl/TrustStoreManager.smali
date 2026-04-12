.class final Lorg/openjsse/sun/security/ssl/TrustStoreManager;
.super Ljava/lang/Object;
.source "TrustStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;,
        Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    }
.end annotation


# static fields
.field private static final tam:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;-><init>(Lorg/openjsse/sun/security/ssl/TrustStoreManager$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager;->tam:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getTrustedCerts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    sget-object v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager;->tam:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;

    invoke-static {}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->createInstance()Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->getTrustedCerts(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getTrustedKeyStore()Ljava/security/KeyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    sget-object v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager;->tam:Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;

    invoke-static {}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->createInstance()Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustAnchorManager;->getKeyStore(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method
