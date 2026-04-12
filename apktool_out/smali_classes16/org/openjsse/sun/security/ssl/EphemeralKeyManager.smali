.class final Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;
.super Ljava/lang/Object;
.source "EphemeralKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;
    }
.end annotation


# static fields
.field private static final INDEX_RSA1024:I = 0x1

.field private static final INDEX_RSA512:I


# instance fields
.field private final keys:[Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    new-instance v1, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    invoke-direct {v1, v2, v2}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$1;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;->keys:[Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    .line 53
    return-void
.end method


# virtual methods
.method getRSAKeyPair(ZLjava/security/SecureRandom;)Ljava/security/KeyPair;
    .locals 9
    .param p1, "export"    # Z
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const/16 v0, 0x200

    .line 62
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "index":I
    goto :goto_0

    .line 64
    .end local v0    # "length":I
    .end local v1    # "index":I
    :cond_0
    const/16 v0, 0x400

    .line 65
    .restart local v0    # "length":I
    const/4 v1, 0x1

    .line 68
    .restart local v1    # "index":I
    :goto_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;->keys:[Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    monitor-enter v2

    .line 69
    :try_start_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;->keys:[Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->access$100(Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .local v3, "kp":Ljava/security/KeyPair;
    if-nez v3, :cond_1

    .line 72
    :try_start_1
    const-string v4, "RSA"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    .line 73
    .local v4, "kgen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v4, v0, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 74
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;->keys:[Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    new-instance v6, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$1;)V

    aput-object v6, v5, v1

    .line 75
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;->keys:[Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->access$100(Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 78
    .end local v4    # "kgen":Ljava/security/KeyPairGenerator;
    goto :goto_1

    .line 76
    :catch_0
    move-exception v4

    .line 80
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    return-object v3

    .line 81
    .end local v3    # "kp":Ljava/security/KeyPair;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
