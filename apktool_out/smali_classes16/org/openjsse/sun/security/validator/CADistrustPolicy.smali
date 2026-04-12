.class abstract enum Lorg/openjsse/sun/security/validator/CADistrustPolicy;
.super Ljava/lang/Enum;
.source "CADistrustPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/validator/CADistrustPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/validator/CADistrustPolicy;

.field static final POLICIES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjsse/sun/security/validator/CADistrustPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SYMANTEC_TLS:Lorg/openjsse/sun/security/validator/CADistrustPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy$1;

    const-string v1, "SYMANTEC_TLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/validator/CADistrustPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy;->SYMANTEC_TLS:Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    .line 40
    sget-object v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy;->SYMANTEC_TLS:Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    filled-new-array {v0}, [Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy;->$VALUES:[Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    .line 72
    invoke-static {}, Lorg/openjsse/sun/security/validator/CADistrustPolicy;->parseProperty()Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy;->POLICIES:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/openjsse/sun/security/validator/CADistrustPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/openjsse/sun/security/validator/CADistrustPolicy$1;

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/validator/CADistrustPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static parseProperty()Ljava/util/EnumSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/openjsse/sun/security/validator/CADistrustPolicy;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy$2;

    invoke-direct {v0}, Lorg/openjsse/sun/security/validator/CADistrustPolicy$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "property":Ljava/lang/String;
    const-class v1, Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 84
    .local v2, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/openjsse/sun/security/validator/CADistrustPolicy;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "policies":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 89
    .local v6, "policy":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 91
    nop

    .line 92
    :try_start_0
    invoke-static {v1, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    .line 93
    .local v7, "caPolicy":Lorg/openjsse/sun/security/validator/CADistrustPolicy;
    invoke-virtual {v2, v7}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .end local v7    # "caPolicy":Lorg/openjsse/sun/security/validator/CADistrustPolicy;
    goto :goto_1

    .line 94
    :catch_0
    move-exception v7

    .line 96
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    const-string v8, "certpath"

    invoke-static {v8}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v8

    .line 97
    .local v8, "debug":Lsun/security/util/Debug;
    if-eqz v8, :cond_1

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown value for the jdk.security.caDistrustPolicies property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 88
    .end local v6    # "policy":Ljava/lang/String;
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v8    # "debug":Lsun/security/util/Debug;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :cond_2
    return-object v2

    .line 85
    .end local v3    # "policies":[Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/validator/CADistrustPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/validator/CADistrustPolicy;
    .locals 1

    .line 40
    sget-object v0, Lorg/openjsse/sun/security/validator/CADistrustPolicy;->$VALUES:[Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/validator/CADistrustPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/validator/CADistrustPolicy;

    return-object v0
.end method


# virtual methods
.method abstract checkDistrust(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/validator/ValidatorException;
        }
    .end annotation
.end method
