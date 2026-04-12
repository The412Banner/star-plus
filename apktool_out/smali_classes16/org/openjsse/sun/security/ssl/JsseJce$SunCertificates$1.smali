.class Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates$1;
.super Ljava/lang/Object;
.source "JsseJce.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;-><init>(Ljava/security/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;

.field final synthetic val$p:Ljava/security/Provider;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;Ljava/security/Provider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;

    .line 82
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates$1;->this$0:Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;

    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates$1;->val$p:Ljava/security/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    .line 86
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates$1;->val$p:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/security/Provider;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, "key":Ljava/lang/String;
    const-string v3, "CertPathValidator."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    const-string v3, "CertPathBuilder."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    const-string v3, "CertStore."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    const-string v3, "CertificateFactory."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :cond_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates$1;->this$0:Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/openjsse/sun/security/ssl/JsseJce$SunCertificates;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
