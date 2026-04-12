.class Lorg/conscrypt/AbstractSessionContext$1;
.super Ljava/util/LinkedHashMap;
.source "AbstractSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/AbstractSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/conscrypt/ByteArray;",
        "Lorg/conscrypt/NativeSslSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/conscrypt/AbstractSessionContext;


# direct methods
.method constructor <init>(Lorg/conscrypt/AbstractSessionContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/conscrypt/AbstractSessionContext;

    .line 46
    iput-object p1, p0, Lorg/conscrypt/AbstractSessionContext$1;->this$0:Lorg/conscrypt/AbstractSessionContext;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/conscrypt/ByteArray;",
            "Lorg/conscrypt/NativeSslSession;",
            ">;)Z"
        }
    .end annotation

    .line 52
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/conscrypt/ByteArray;Lorg/conscrypt/NativeSslSession;>;"
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext$1;->this$0:Lorg/conscrypt/AbstractSessionContext;

    invoke-static {v0}, Lorg/conscrypt/AbstractSessionContext;->access$000(Lorg/conscrypt/AbstractSessionContext;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractSessionContext$1;->size()I

    move-result v0

    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext$1;->this$0:Lorg/conscrypt/AbstractSessionContext;

    invoke-static {v1}, Lorg/conscrypt/AbstractSessionContext;->access$000(Lorg/conscrypt/AbstractSessionContext;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext$1;->this$0:Lorg/conscrypt/AbstractSessionContext;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {v0, v1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
