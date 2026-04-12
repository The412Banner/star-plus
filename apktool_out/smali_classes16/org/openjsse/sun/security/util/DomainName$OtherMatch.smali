.class Lorg/openjsse/sun/security/util/DomainName$OtherMatch;
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
    name = "OtherMatch"
.end annotation


# instance fields
.field private final numLabels:I

.field private final rule:Lorg/openjsse/sun/security/util/DomainName$Rule;

.field private final target:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/util/DomainName$Rule;ILjava/util/LinkedList;)V
    .locals 0
    .param p1, "rule"    # Lorg/openjsse/sun/security/util/DomainName$Rule;
    .param p2, "numLabels"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/util/DomainName$Rule;",
            "I",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p3, "target":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p1, p0, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->rule:Lorg/openjsse/sun/security/util/DomainName$Rule;

    .line 604
    iput p2, p0, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->numLabels:I

    .line 605
    iput-object p3, p0, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->target:Ljava/util/LinkedList;

    .line 606
    return-void
.end method

.method private getSuffixes(I)Ljava/lang/String;
    .locals 5
    .param p1, "n"    # I

    .line 625
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->target:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 626
    .local v0, "targetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    if-lez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 629
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const/4 v4, 0x1

    if-le p1, v4, :cond_0

    .line 631
    const/16 v4, 0x2e

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 633
    :cond_0
    nop

    .end local v2    # "s":Ljava/lang/String;
    add-int/lit8 p1, p1, -0x1

    .line 634
    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public registeredDomain()Lorg/openjsse/sun/security/util/RegisteredDomain;
    .locals 5

    .line 610
    iget v0, p0, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->numLabels:I

    add-int/lit8 v0, v0, 0x1

    .line 611
    .local v0, "nlabels":I
    iget-object v1, p0, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->target:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 613
    const/4 v1, 0x0

    return-object v1

    .line 615
    :cond_0
    new-instance v1, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->getSuffixes(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->rule:Lorg/openjsse/sun/security/util/DomainName$Rule;

    iget-object v3, v3, Lorg/openjsse/sun/security/util/DomainName$Rule;->auth:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    iget v4, p0, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->numLabels:I

    .line 616
    invoke-direct {p0, v4}, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->getSuffixes(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;Ljava/lang/String;)V

    .line 615
    return-object v1
.end method

.method public type()Lorg/openjsse/sun/security/util/DomainName$Rule$Type;
    .locals 1

    .line 621
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;->rule:Lorg/openjsse/sun/security/util/DomainName$Rule;

    iget-object v0, v0, Lorg/openjsse/sun/security/util/DomainName$Rule;->type:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    return-object v0
.end method
