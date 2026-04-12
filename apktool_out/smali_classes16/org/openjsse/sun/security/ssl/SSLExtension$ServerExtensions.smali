.class final Lorg/openjsse/sun/security/ssl/SSLExtension$ServerExtensions;
.super Ljava/lang/Object;
.source "SSLExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerExtensions"
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
    .locals 7

    .line 715
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 716
    .local v0, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SSLExtension;>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 717
    .local v4, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v5, v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-eq v5, v6, :cond_0

    .line 718
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 716
    .end local v4    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 722
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLExtension$ServerExtensions;->defaults:Ljava/util/Collection;

    .line 723
    .end local v0    # "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SSLExtension;>;"
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
