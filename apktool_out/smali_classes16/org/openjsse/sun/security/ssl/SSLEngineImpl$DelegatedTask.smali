.class Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;
.super Ljava/lang/Object;
.source "SSLEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelegatedTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask$DelegatedAction;
    }
.end annotation


# instance fields
.field private final engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLEngineImpl;)V
    .locals 0
    .param p1, "engineInstance"    # Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    .line 1033
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1037
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    monitor-enter v0

    .line 1038
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 1039
    .local v1, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    if-eqz v1, :cond_8

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1044
    :cond_0
    :try_start_1
    new-instance v2, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask$DelegatedAction;

    invoke-direct {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask$DelegatedAction;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->acc:Ljava/security/AccessControlContext;

    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    :cond_1
    :goto_0
    goto :goto_1

    .line 1067
    :catch_0
    move-exception v2

    .line 1072
    .local v2, "rte":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;

    if-nez v3, :cond_2

    .line 1073
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v2, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;

    .line 1079
    :cond_2
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    move-object v1, v3

    .line 1080
    if-eqz v1, :cond_3

    .line 1081
    iput-object v2, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedThrown:Ljava/lang/Exception;

    goto :goto_1

    .line 1082
    :cond_3
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    if-eqz v3, :cond_6

    .line 1084
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v2, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    goto :goto_1

    .line 1046
    .end local v2    # "rte":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 1049
    .local v2, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 1052
    .local v3, "reportedException":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;

    if-nez v4, :cond_4

    .line 1053
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v3, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;

    .line 1059
    :cond_4
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    move-object v1, v4

    .line 1060
    if-eqz v1, :cond_5

    .line 1061
    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedThrown:Ljava/lang/Exception;

    goto :goto_0

    .line 1062
    :cond_5
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    if-eqz v4, :cond_1

    .line 1064
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 1065
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->access$000(Ljava/lang/Exception;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    iput-object v5, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    goto :goto_0

    .line 1090
    .end local v2    # "pae":Ljava/security/PrivilegedActionException;
    .end local v3    # "reportedException":Ljava/lang/Exception;
    :cond_6
    :goto_1
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;->engine:Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    move-object v1, v2

    .line 1091
    if-eqz v1, :cond_7

    .line 1092
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->taskDelegated:Z

    .line 1094
    .end local v1    # "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    :cond_7
    monitor-exit v0

    .line 1095
    return-void

    .line 1040
    .restart local v1    # "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    :cond_8
    :goto_2
    monitor-exit v0

    return-void

    .line 1094
    .end local v1    # "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
