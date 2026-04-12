.class Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask$DelegatedAction;
.super Ljava/lang/Object;
.source "SSLEngineImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelegatedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final context:Lorg/openjsse/sun/security/ssl/HandshakeContext;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 0
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask$DelegatedAction;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 1102
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1097
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask$DelegatedAction;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1106
    nop

    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask$DelegatedAction;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask$DelegatedAction;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    .line 1108
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1109
    .local v0, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Ljava/nio/ByteBuffer;>;"
    if-eqz v0, :cond_0

    .line 1110
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask$DelegatedAction;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->dispatch(BLjava/nio/ByteBuffer;)V

    .line 1112
    .end local v0    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Ljava/nio/ByteBuffer;>;"
    :cond_0
    goto :goto_0

    .line 1113
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
