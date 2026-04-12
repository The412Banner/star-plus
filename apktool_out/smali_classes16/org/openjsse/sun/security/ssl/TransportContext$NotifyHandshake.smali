.class Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;
.super Ljava/lang/Object;
.source "TransportContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/TransportContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyHandshake"
.end annotation


# instance fields
.field private final event:Ljavax/net/ssl/HandshakeCompletedEvent;

.field private final targets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            "Ljava/security/AccessControlContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 2
    .param p2, "event"    # Ljavax/net/ssl/HandshakeCompletedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            "Ljava/security/AccessControlContext;",
            ">;",
            "Ljavax/net/ssl/HandshakeCompletedEvent;",
            ")V"
        }
    .end annotation

    .line 693
    .local p1, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljavax/net/ssl/HandshakeCompletedListener;Ljava/security/AccessControlContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;->targets:Ljava/util/Set;

    .line 695
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;->event:Ljavax/net/ssl/HandshakeCompletedEvent;

    .line 696
    return-void
.end method

.method static synthetic access$000(Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;)Ljavax/net/ssl/HandshakeCompletedEvent;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;

    .line 686
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;->event:Ljavax/net/ssl/HandshakeCompletedEvent;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 702
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;->targets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 703
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/net/ssl/HandshakeCompletedListener;Ljava/security/AccessControlContext;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 704
    .local v2, "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/AccessControlContext;

    .line 705
    .local v3, "acc":Ljava/security/AccessControlContext;
    new-instance v4, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake$1;

    invoke-direct {v4, p0, v2}, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake$1;-><init>(Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;Ljavax/net/ssl/HandshakeCompletedListener;)V

    invoke-static {v4, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 712
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/net/ssl/HandshakeCompletedListener;Ljava/security/AccessControlContext;>;"
    .end local v2    # "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v3    # "acc":Ljava/security/AccessControlContext;
    goto :goto_0

    .line 713
    :cond_0
    return-void
.end method
