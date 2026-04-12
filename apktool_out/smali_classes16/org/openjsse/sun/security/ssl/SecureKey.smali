.class Lorg/openjsse/sun/security/ssl/SecureKey;
.super Ljava/lang/Object;
.source "SSLSessionImpl.java"


# static fields
.field private static final nullObject:Ljava/lang/Object;


# instance fields
.field private final appKey:Ljava/lang/Object;

.field private final securityCtx:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1075
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SecureKey;->nullObject:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    .line 1092
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SecureKey;->getCurrentSecurityContext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    .line 1093
    return-void
.end method

.method static getCurrentSecurityContext()Ljava/lang/Object;
    .locals 2

    .line 1080
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1081
    .local v0, "sm":Ljava/lang/SecurityManager;
    const/4 v1, 0x0

    .line 1083
    .local v1, "context":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getSecurityContext()Ljava/lang/Object;

    move-result-object v1

    .line 1085
    :cond_0
    if-nez v1, :cond_1

    .line 1086
    sget-object v1, Lorg/openjsse/sun/security/ssl/SecureKey;->nullObject:Ljava/lang/Object;

    .line 1087
    :cond_1
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1110
    instance-of v0, p1, Lorg/openjsse/sun/security/ssl/SecureKey;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/SecureKey;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/SecureKey;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    .line 1111
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1110
    :goto_0
    return v0
.end method

.method getAppKey()Ljava/lang/Object;
    .locals 1

    .line 1096
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    return-object v0
.end method

.method getSecurityContext()Ljava/lang/Object;
    .locals 1

    .line 1100
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1105
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
