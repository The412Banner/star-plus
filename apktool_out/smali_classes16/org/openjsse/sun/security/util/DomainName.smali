.class Lorg/openjsse/sun/security/util/DomainName;
.super Ljava/lang/Object;
.source "DomainName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/util/DomainName$OtherMatch;,
        Lorg/openjsse/sun/security/util/DomainName$CommonMatch;,
        Lorg/openjsse/sun/security/util/DomainName$RegisteredDomainImpl;,
        Lorg/openjsse/sun/security/util/DomainName$Match;,
        Lorg/openjsse/sun/security/util/DomainName$OtherRule;,
        Lorg/openjsse/sun/security/util/DomainName$Rule;,
        Lorg/openjsse/sun/security/util/DomainName$Rules;
    }
.end annotation


# static fields
.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/util/DomainName$Rules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/util/DomainName;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 108
    sget-object v0, Lorg/openjsse/sun/security/util/DomainName;->cache:Ljava/util/Map;

    return-object v0
.end method

.method private static getMatch(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Match;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;

    .line 130
    if-eqz p0, :cond_1

    .line 133
    invoke-static {p0}, Lorg/openjsse/sun/security/util/DomainName$Rules;->getRules(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Rules;

    move-result-object v0

    .line 134
    .local v0, "rules":Lorg/openjsse/sun/security/util/DomainName$Rules;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lorg/openjsse/sun/security/util/DomainName$Rules;->match(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Match;

    move-result-object v1

    :goto_0
    return-object v1

    .line 131
    .end local v0    # "rules":Lorg/openjsse/sun/security/util/DomainName$Rules;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static registeredDomain(Ljava/lang/String;)Lorg/openjsse/sun/security/util/RegisteredDomain;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;

    .line 125
    invoke-static {p0}, Lorg/openjsse/sun/security/util/DomainName;->getMatch(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Match;

    move-result-object v0

    .line 126
    .local v0, "match":Lorg/openjsse/sun/security/util/DomainName$Match;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openjsse/sun/security/util/DomainName$Match;->registeredDomain()Lorg/openjsse/sun/security/util/RegisteredDomain;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
