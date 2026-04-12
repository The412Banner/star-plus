.class final Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;
.super Ljava/lang/Object;
.source "SSLSessionContextImpl.java"

# interfaces
.implements Lorg/openjsse/sun/security/util/Cache$CacheVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionCacheVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjsse/sun/security/util/Cache$CacheVisitor<",
        "Lorg/openjsse/sun/security/ssl/SessionId;",
        "Lorg/openjsse/sun/security/ssl/SSLSessionImpl;",
        ">;"
    }
.end annotation


# instance fields
.field ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;


# direct methods
.method private constructor <init>(Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->this$0:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$1;

    .line 253
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;-><init>(Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;)V

    return-void
.end method


# virtual methods
.method getSessionIds()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0
.end method

.method public visit(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/openjsse/sun/security/ssl/SessionId;",
            "Lorg/openjsse/sun/security/ssl/SSLSessionImpl;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/openjsse/sun/security/ssl/SessionId;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/ArrayList;

    .line 262
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SessionId;

    .line 263
    .local v1, "key":Lorg/openjsse/sun/security/ssl/SessionId;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 264
    .local v2, "value":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->this$0:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->access$100(Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v1    # "key":Lorg/openjsse/sun/security/ssl/SessionId;
    .end local v2    # "value":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method
