.class Lorg/openjsse/sun/security/util/DomainName$Rule;
.super Ljava/lang/Object;
.source "DomainName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/DomainName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/util/DomainName$Rule$Type;
    }
.end annotation


# instance fields
.field auth:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

.field domain:Ljava/lang/String;

.field type:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule$Type;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/openjsse/sun/security/util/DomainName$Rule$Type;
    .param p3, "auth"    # Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p1, p0, Lorg/openjsse/sun/security/util/DomainName$Rule;->domain:Ljava/lang/String;

    .line 505
    iput-object p2, p0, Lorg/openjsse/sun/security/util/DomainName$Rule;->type:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    .line 506
    iput-object p3, p0, Lorg/openjsse/sun/security/util/DomainName$Rule;->auth:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    .line 507
    return-void
.end method
