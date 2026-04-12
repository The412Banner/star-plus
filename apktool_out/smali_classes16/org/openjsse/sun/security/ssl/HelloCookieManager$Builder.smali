.class Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;
.super Ljava/lang/Object;
.source "HelloCookieManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HelloCookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private volatile d10HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;

.field private volatile d13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;

.field final secureRandom:Ljava/security/SecureRandom;

.field private volatile t13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->secureRandom:Ljava/security/SecureRandom;

    .line 49
    return-void
.end method


# virtual methods
.method valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/HelloCookieManager;
    .locals 2
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 52
    iget-boolean v0, p1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;

    return-object v0

    .line 58
    :cond_0
    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;

    .line 63
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D13HelloCookieManager;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 67
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d10HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d10HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;

    return-object v0

    .line 71
    :cond_3
    monitor-enter p0

    .line 72
    :try_start_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d10HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;

    if-nez v0, :cond_4

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d10HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;

    .line 76
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->d10HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$D10HelloCookieManager;

    return-object v0

    .line 76
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 81
    :cond_5
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->t13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;

    if-eqz v0, :cond_6

    .line 83
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->t13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;

    return-object v0

    .line 86
    :cond_6
    monitor-enter p0

    .line 87
    :try_start_4
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->t13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;

    if-nez v0, :cond_7

    .line 88
    new-instance v0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->t13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;

    .line 91
    :cond_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 93
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$Builder;->t13HelloCookieManager:Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;

    return-object v0

    .line 91
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 97
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method
