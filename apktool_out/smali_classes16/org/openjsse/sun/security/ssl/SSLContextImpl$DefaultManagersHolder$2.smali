.class final Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$2;
.super Ljava/lang/Object;
.source "SSLContextImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/io/FileInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defaultKeyStore:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1149
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$2;->val$defaultKeyStore:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1152
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$2;->val$defaultKeyStore:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1149
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$2;->run()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method
