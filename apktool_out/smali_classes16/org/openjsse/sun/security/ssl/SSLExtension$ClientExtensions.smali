.class final Lorg/openjsse/sun/security/ssl/SSLExtension$ClientExtensions;
.super Ljava/lang/Object;
.source "SSLExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClientExtensions"
.end annotation


# static fields
.field static final defaults:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/openjsse/sun/security/ssl/SSLExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 675
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 676
    .local v0, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SSLExtension;>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 677
    .local v5, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-eq v6, v7, :cond_0

    .line 678
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 676
    .end local v5    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 683
    :cond_1
    nop

    .line 684
    const-string v1, "jsse.enableSNIExtension"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    .line 685
    .local v1, "enableExtension":Z
    if-nez v1, :cond_2

    .line 686
    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v0, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 697
    :cond_2
    nop

    .line 698
    const-string v4, "jsse.enableMFLNExtension"

    invoke-static {v4, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 700
    const-string v4, "jsse.enableMFLExtension"

    invoke-static {v4, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v3, v2

    :cond_4
    move v1, v3

    .line 702
    if-nez v1, :cond_5

    .line 703
    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 706
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    sput-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension$ClientExtensions;->defaults:Ljava/util/Collection;

    .line 707
    .end local v0    # "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SSLExtension;>;"
    .end local v1    # "enableExtension":Z
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
