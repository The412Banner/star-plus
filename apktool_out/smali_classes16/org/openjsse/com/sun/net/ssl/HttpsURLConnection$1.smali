.class final Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection$1;
.super Ljava/lang/Object;
.source "HttpsURLConnection.java"

# interfaces
.implements Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "urlHostname"    # Ljava/lang/String;
    .param p2, "certHostname"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    return v0
.end method
