.class public final enum Lorg/openjsse/sun/security/util/RegisteredDomain$Type;
.super Ljava/lang/Enum;
.source "RegisteredDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/RegisteredDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/util/RegisteredDomain$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

.field public static final enum ICANN:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

.field public static final enum PRIVATE:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    const-string v1, "ICANN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;->ICANN:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    const-string v1, "PRIVATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;->PRIVATE:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    .line 41
    sget-object v0, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;->ICANN:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    sget-object v1, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;->PRIVATE:Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    filled-new-array {v0, v1}, [Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;->$VALUES:[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/util/RegisteredDomain$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;
    .locals 1

    .line 41
    sget-object v0, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;->$VALUES:[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/util/RegisteredDomain$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    return-object v0
.end method
