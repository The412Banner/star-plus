.class final enum Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyExchange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DHE_DSS:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DHE_DSS_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DHE_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DHE_RSA_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_ANON:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_ANON_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_DSS:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDHE_ECDSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDHE_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDH_ANON:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDH_ECDSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDH_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_RSA_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_SCSV:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;


# instance fields
.field final allowed:Z

.field private final alwaysAvailable:Z

.field final groupType:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

.field private final isAnonymous:Z

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1097
    new-instance v7, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v5, 0x1

    sget-object v6, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v1, "K_NULL"

    const/4 v2, 0x0

    const-string v3, "NULL"

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v7, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1098
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v13, 0x0

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v9, "K_RSA"

    const/4 v10, 0x1

    const-string v11, "RSA"

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1099
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v6, 0x0

    sget-object v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v2, "K_RSA_EXPORT"

    const/4 v3, 0x2

    const-string v4, "RSA_EXPORT"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1100
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v9, "K_DH_RSA"

    const/4 v10, 0x3

    const-string v11, "DH_RSA"

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1101
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v2, "K_DH_DSS"

    const/4 v3, 0x4

    const-string v4, "DH_DSS"

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1102
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v9, "K_DHE_DSS"

    const/4 v10, 0x5

    const-string v11, "DHE_DSS"

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1103
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v2, "K_DHE_DSS_EXPORT"

    const/4 v3, 0x6

    const-string v4, "DHE_DSS_EXPORT"

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1104
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v9, "K_DHE_RSA"

    const/4 v10, 0x7

    const-string v11, "DHE_RSA"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1105
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v2, "K_DHE_RSA_EXPORT"

    const/16 v3, 0x8

    const-string v4, "DHE_RSA_EXPORT"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1106
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v13, 0x1

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v9, "K_DH_ANON"

    const/16 v10, 0x9

    const-string v11, "DH_anon"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1107
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v6, 0x1

    sget-object v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v2, "K_DH_ANON_EXPORT"

    const/16 v3, 0xa

    const-string v4, "DH_anon_EXPORT"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1109
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v13, 0x0

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v9, "K_ECDH_ECDSA"

    const/16 v10, 0xb

    const-string v11, "ECDH_ECDSA"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1110
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v6, 0x0

    sget-object v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v2, "K_ECDH_RSA"

    const/16 v3, 0xc

    const-string v4, "ECDH_RSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1111
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v9, "K_ECDHE_ECDSA"

    const/16 v10, 0xd

    const-string v11, "ECDHE_ECDSA"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1112
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v2, "K_ECDHE_RSA"

    const/16 v3, 0xe

    const-string v4, "ECDHE_RSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1113
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v13, 0x1

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v9, "K_ECDH_ANON"

    const/16 v10, 0xf

    const-string v11, "ECDH_anon"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1116
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v6, 0x1

    sget-object v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v2, "K_SCSV"

    const/16 v3, 0x10

    const-string v4, "SCSV"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1096
    sget-object v8, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v9, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v10, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v11, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v12, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v13, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v14, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v15, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v16, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v17, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v18, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v19, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v20, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v21, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v22, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v23, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v24, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    filled-new-array/range {v8 .. v24}, [Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->$VALUES:[Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZLorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "allowed"    # Z
    .param p5, "isAnonymous"    # Z
    .param p6, "groupType"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;",
            ")V"
        }
    .end annotation

    .line 1126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1127
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    .line 1128
    sget-object p1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne p6, p1, :cond_0

    .line 1129
    sget-boolean p1, Lorg/openjsse/sun/security/ssl/JsseJce;->ALLOW_ECC:Z

    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    goto :goto_0

    .line 1131
    :cond_0
    iput-boolean p4, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    .line 1133
    :goto_0
    iput-object p6, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->groupType:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 1134
    if-eqz p4, :cond_1

    const-string p1, "EC"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->alwaysAvailable:Z

    .line 1135
    iput-boolean p5, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->isAnonymous:Z

    .line 1136
    return-void
.end method

.method static synthetic access$000(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 1096
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->isAnonymous:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1096
    const-class v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;
    .locals 1

    .line 1096
    sget-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->$VALUES:[Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    return-object v0
.end method


# virtual methods
.method isAvailable()Z
    .locals 3

    .line 1139
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->alwaysAvailable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1140
    return v1

    .line 1143
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->groupType:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v2, :cond_2

    .line 1144
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/openjsse/sun/security/ssl/JsseJce;->isEcAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1146
    :cond_2
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1152
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    return-object v0
.end method
