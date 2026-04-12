.class Lorg/conscrypt/Conscrypt$1;
.super Ljava/lang/Object;
.source "Conscrypt.java"

# interfaces
.implements Lorg/conscrypt/ConscryptHostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/conscrypt/Conscrypt;->wrapHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lorg/conscrypt/ConscryptHostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$verifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method constructor <init>(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lorg/conscrypt/Conscrypt$1;->val$verifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;

    .line 795
    iget-object v0, p0, Lorg/conscrypt/Conscrypt$1;->val$verifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v0, p2, p3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
