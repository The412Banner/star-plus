.class Lorg/openjsse/sun/security/util/DomainName$CommonMatch;
.super Ljava/lang/Object;
.source "DomainName.java"

# interfaces
.implements Lorg/openjsse/sun/security/util/DomainName$Match;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/DomainName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommonMatch"
.end annotation


# instance fields
.field private domain:Ljava/lang/String;

.field private publicSuffix:I

.field private registeredDomain:I

.field private final rule:Lorg/openjsse/sun/security/util/DomainName$Rule;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;I)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "rule"    # Lorg/openjsse/sun/security/util/DomainName$Rule;
    .param p3, "publicSuffix"    # I

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->domain:Ljava/lang/String;

    .line 563
    iput p3, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->publicSuffix:I

    .line 564
    iput-object p2, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->rule:Lorg/openjsse/sun/security/util/DomainName$Rule;

    .line 566
    add-int/lit8 v0, p3, -0x2

    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->registeredDomain:I

    .line 567
    iget v0, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->registeredDomain:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->registeredDomain:I

    goto :goto_0

    .line 570
    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->registeredDomain:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->registeredDomain:I

    .line 572
    :goto_0
    return-void
.end method


# virtual methods
.method public registeredDomain()Lorg/openjsse/sun/security/util/RegisteredDomain;
    .locals 5

    .line 576
    iget v0, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->publicSuffix:I

    if-nez v0, :cond_0

    .line 577
    const/4 v0, 0x0

    return-object v0

    .line 579
    :cond_0
    new-instance v0, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->domain:Ljava/lang/String;

    iget v2, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->registeredDomain:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->rule:Lorg/openjsse/sun/security/util/DomainName$Rule;

    iget-object v2, v2, Lorg/openjsse/sun/security/util/DomainName$Rule;->auth:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    iget-object v3, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->domain:Ljava/lang/String;

    iget v4, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->publicSuffix:I

    .line 581
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;Ljava/lang/String;)V

    .line 579
    return-object v0
.end method

.method public type()Lorg/openjsse/sun/security/util/DomainName$Rule$Type;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;->rule:Lorg/openjsse/sun/security/util/DomainName$Rule;

    iget-object v0, v0, Lorg/openjsse/sun/security/util/DomainName$Rule;->type:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    return-object v0
.end method
