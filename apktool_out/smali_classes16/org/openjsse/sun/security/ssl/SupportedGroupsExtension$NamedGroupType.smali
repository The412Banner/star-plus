.class final enum Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;
.super Ljava/lang/Enum;
.source "SupportedGroupsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NamedGroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

.field public static final enum NAMED_GROUP_ARBITRARY:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

.field public static final enum NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

.field public static final enum NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

.field public static final enum NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

.field public static final enum NAMED_GROUP_XDH:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;


# instance fields
.field private final algorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 167
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v1, "NAMED_GROUP_ECDHE"

    const/4 v2, 0x0

    const-string v3, "EC"

    invoke-direct {v0, v1, v2, v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 168
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const/4 v1, 0x1

    const-string v2, "DiffieHellman"

    const-string v4, "NAMED_GROUP_FFDHE"

    invoke-direct {v0, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 169
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const/4 v1, 0x2

    const-string v2, "XDH"

    const-string v4, "NAMED_GROUP_XDH"

    invoke-direct {v0, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_XDH:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 170
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v1, "NAMED_GROUP_ARBITRARY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ARBITRARY:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 171
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const/4 v1, 0x4

    const-string v2, ""

    const-string v3, "NAMED_GROUP_NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 166
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_XDH:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ARBITRARY:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->$VALUES:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->algorithm:Ljava/lang/String;

    .line 177
    return-void
.end method

.method static synthetic access$700(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 166
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 166
    const-class v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;
    .locals 1

    .line 166
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->$VALUES:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    return-object v0
.end method


# virtual methods
.method isSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;)Z"
        }
    .end annotation

    .line 180
    .local p1, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 181
    .local v1, "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->groupType:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v2, p0, :cond_0

    goto :goto_1

    .line 184
    .end local v1    # "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_0
    goto :goto_0

    .line 182
    .restart local v1    # "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 186
    .end local v1    # "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
