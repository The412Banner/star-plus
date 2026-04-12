.class final enum Lorg/openjsse/sun/security/util/DomainName$Rule$Type;
.super Ljava/lang/Enum;
.source "DomainName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/DomainName$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/util/DomainName$Rule$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

.field public static final enum EXCEPTION:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

.field public static final enum NORMAL:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

.field public static final enum OTHER:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

.field public static final enum WILDCARD:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 498
    new-instance v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->EXCEPTION:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    new-instance v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->NORMAL:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    new-instance v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->OTHER:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    new-instance v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    const-string v1, "WILDCARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->WILDCARD:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    sget-object v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->EXCEPTION:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    sget-object v1, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->NORMAL:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    sget-object v2, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->OTHER:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    sget-object v3, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->WILDCARD:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->$VALUES:[Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 498
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Rule$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 498
    const-class v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/util/DomainName$Rule$Type;
    .locals 1

    .line 498
    sget-object v0, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->$VALUES:[Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    return-object v0
.end method
