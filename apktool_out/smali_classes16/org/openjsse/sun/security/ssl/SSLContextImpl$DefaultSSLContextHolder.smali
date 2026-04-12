.class final Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;
.super Ljava/lang/Object;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultSSLContextHolder"
.end annotation


# static fields
.field static reservedException:Ljava/lang/Exception;

.field private static final sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1212
    const/4 v0, 0x0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;->reservedException:Ljava/lang/Exception;

    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "mediator":Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->access$400()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1217
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->access$400()Ljava/lang/Exception;

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;->reservedException:Ljava/lang/Exception;

    goto :goto_0

    .line 1220
    :cond_0
    :try_start_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContext;

    invoke-direct {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContext;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1223
    goto :goto_0

    .line 1221
    :catch_0
    move-exception v1

    .line 1222
    .local v1, "e":Ljava/lang/Exception;
    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;->reservedException:Ljava/lang/Exception;

    .line 1226
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 1227
    .end local v0    # "mediator":Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700()Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .locals 1

    .line 1209
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    return-object v0
.end method
