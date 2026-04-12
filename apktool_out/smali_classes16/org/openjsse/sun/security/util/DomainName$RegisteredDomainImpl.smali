.class Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;
.super Ljava/lang/Object;
.source "DomainName.java"

# interfaces
.implements Lorg/openjsse/sun/security/util/RegisteredDomain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/DomainName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegisteredDomainImpl"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final publicSuffix:Ljava/lang/String;

.field private final type:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/openjsse/sun/security/util/RegisteredDomain$Type;
    .param p3, "publicSuffix"    # Ljava/lang/String;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p1, p0, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;->name:Ljava/lang/String;

    .line 533
    iput-object p2, p0, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;->type:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    .line 534
    iput-object p3, p0, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;->publicSuffix:Ljava/lang/String;

    .line 535
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public publicSuffix()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;->publicSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lorg/openjsse/sun/security/util/RegisteredDomain$Type;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;->type:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    return-object v0
.end method
