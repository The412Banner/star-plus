.class Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap;
.super Ljava/util/LinkedHashMap;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71f41f8328ebf54eL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    .local p0, "this":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap;, "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$1;

    .line 100
    .local p0, "this":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap;, "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap;, "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$SizedMap;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
