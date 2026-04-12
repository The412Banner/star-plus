.class public interface abstract Lorg/openjsse/sun/security/util/RegisteredDomain;
.super Ljava/lang/Object;
.source "RegisteredDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/util/RegisteredDomain$Type;
    }
.end annotation


# direct methods
.method public static from(Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/openjsse/sun/security/util/RegisteredDomain;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lorg/openjsse/sun/security/util/DomainName;->registeredDomain(Ljava/lang/String;)Lorg/openjsse/sun/security/util/RegisteredDomain;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract publicSuffix()Ljava/lang/String;
.end method

.method public abstract type()Lorg/openjsse/sun/security/util/RegisteredDomain$Type;
.end method
