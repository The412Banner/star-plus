.class Lorg/openjsse/sun/security/util/DomainName$OtherRule;
.super Lorg/openjsse/sun/security/util/DomainName$Rule;
.source "DomainName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/DomainName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OtherRule"
.end annotation


# instance fields
.field labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;Ljava/util/List;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "auth"    # Lorg/openjsse/sun/security/util/RegisteredDomain$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/util/RegisteredDomain$Type;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 514
    .local p3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->OTHER:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    invoke-direct {p0, p1, v0, p2}, Lorg/openjsse/sun/security/util/DomainName$Rule;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule$Type;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;)V

    .line 515
    iput-object p3, p0, Lorg/openjsse/sun/security/util/DomainName$OtherRule;->labels:Ljava/util/List;

    .line 516
    return-void
.end method
