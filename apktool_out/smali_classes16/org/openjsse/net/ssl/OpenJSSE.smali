.class public final Lorg/openjsse/net/ssl/OpenJSSE;
.super Lorg/openjsse/sun/security/ssl/OpenJSSE;
.source "OpenJSSE.java"


# static fields
.field private static final serialVersionUID:J = 0x2cd9c06322ee4a2dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/OpenJSSE;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cryptoProvider"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    .line 46
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;-><init>(Ljava/security/Provider;)V

    .line 47
    return-void
.end method

.method public static declared-synchronized install()V
    .locals 1

    const-class v0, Lorg/openjsse/net/ssl/OpenJSSE;

    monitor-enter v0

    .line 64
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized isFIPS()Z
    .locals 2

    const-class v0, Lorg/openjsse/net/ssl/OpenJSSE;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 56
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
