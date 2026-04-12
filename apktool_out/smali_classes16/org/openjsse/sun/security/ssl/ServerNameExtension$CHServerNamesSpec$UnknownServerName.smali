.class Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec$UnknownServerName;
.super Ljavax/net/ssl/SNIServerName;
.source "ServerNameExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnknownServerName"
.end annotation


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "encoded"    # [B

    .line 174
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SNIServerName;-><init>(I[B)V

    .line 175
    return-void
.end method
