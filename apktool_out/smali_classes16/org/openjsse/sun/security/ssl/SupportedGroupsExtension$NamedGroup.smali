.class final enum Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
.super Ljava/lang/Enum;
.source "SupportedGroupsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NamedGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum ARBITRARY_CHAR2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum ARBITRARY_PRIME:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum FFDHE_2048:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum FFDHE_3072:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum FFDHE_4096:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum FFDHE_6144:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum FFDHE_8192:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP160_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP160_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP160_R2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP192_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP192_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP224_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP224_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP256_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP256_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP384_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECP521_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT163_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT163_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT163_R2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT193_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT193_R2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT233_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT233_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT239_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT283_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT283_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT409_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT409_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT571_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum SECT571_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum X25519:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field public static final enum X448:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;


# instance fields
.field final algorithm:Ljava/lang/String;

.field final id:I

.field isAvailable:Z

.field final isFips:Z

.field final keAlgParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field keAlgParams:Ljava/security/AlgorithmParameters;

.field final name:Ljava/lang/String;

.field final oid:Ljava/lang/String;

.field final supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field final type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 195
    new-instance v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v6, 0x1

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v1, "SECT163_K1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "sect163k1"

    const-string v5, "1.3.132.0.1"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT163_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 197
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v15, 0x0

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECT163_R1"

    const/4 v11, 0x1

    const/4 v12, 0x2

    const-string v13, "sect163r1"

    const-string v14, "1.3.132.0.2"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT163_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 201
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v7, 0x1

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECT163_R2"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "sect163r2"

    const-string v6, "1.3.132.0.15"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT163_R2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 203
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECT193_R1"

    const/4 v11, 0x3

    const/4 v12, 0x4

    const-string v13, "sect193r1"

    const-string v14, "1.3.132.0.24"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT193_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 205
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v7, 0x0

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECT193_R2"

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v5, "sect193r2"

    const-string v6, "1.3.132.0.25"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT193_R2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 209
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v15, 0x1

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECT233_K1"

    const/4 v11, 0x5

    const/4 v12, 0x6

    const-string v13, "sect233k1"

    const-string v14, "1.3.132.0.26"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT233_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 213
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v7, 0x1

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECT233_R1"

    const/4 v3, 0x6

    const/4 v4, 0x7

    const-string v5, "sect233r1"

    const-string v6, "1.3.132.0.27"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT233_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 215
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v15, 0x0

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECT239_K1"

    const/4 v11, 0x7

    const/16 v12, 0x8

    const-string v13, "sect239k1"

    const-string v14, "1.3.132.0.3"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT239_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 219
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECT283_K1"

    const/16 v3, 0x8

    const/16 v4, 0x9

    const-string v5, "sect283k1"

    const-string v6, "1.3.132.0.16"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT283_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 223
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v15, 0x1

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECT283_R1"

    const/16 v11, 0x9

    const/16 v12, 0xa

    const-string v13, "sect283r1"

    const-string v14, "1.3.132.0.17"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT283_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 227
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECT409_K1"

    const/16 v3, 0xa

    const/16 v4, 0xb

    const-string v5, "sect409k1"

    const-string v6, "1.3.132.0.36"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT409_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 231
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECT409_R1"

    const/16 v11, 0xb

    const/16 v12, 0xc

    const-string v13, "sect409r1"

    const-string v14, "1.3.132.0.37"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT409_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 235
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECT571_K1"

    const/16 v3, 0xc

    const/16 v4, 0xd

    const-string v5, "sect571k1"

    const-string v6, "1.3.132.0.38"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT571_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 239
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECT571_R1"

    const/16 v11, 0xd

    const/16 v12, 0xe

    const-string v13, "sect571r1"

    const-string v14, "1.3.132.0.39"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT571_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 241
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v7, 0x0

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECP160_K1"

    const/16 v3, 0xe

    const/16 v4, 0xf

    const-string v5, "secp160k1"

    const-string v6, "1.3.132.0.9"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP160_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 243
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v15, 0x0

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECP160_R1"

    const/16 v11, 0xf

    const/16 v12, 0x10

    const-string v13, "secp160r1"

    const-string v14, "1.3.132.0.8"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP160_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 245
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECP160_R2"

    const/16 v3, 0x10

    const/16 v4, 0x11

    const-string v5, "secp160r2"

    const-string v6, "1.3.132.0.30"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP160_R2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 247
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECP192_K1"

    const/16 v11, 0x11

    const/16 v12, 0x12

    const-string v13, "secp192k1"

    const-string v14, "1.3.132.0.31"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP192_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 251
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v7, 0x1

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECP192_R1"

    const/16 v3, 0x12

    const/16 v4, 0x13

    const-string v5, "secp192r1"

    const-string v6, "1.2.840.10045.3.1.1"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP192_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 253
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECP224_K1"

    const/16 v11, 0x13

    const/16 v12, 0x14

    const-string v13, "secp224k1"

    const-string v14, "1.3.132.0.32"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP224_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 256
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECP224_R1"

    const/16 v3, 0x14

    const/16 v4, 0x15

    const-string v5, "secp224r1"

    const-string v6, "1.3.132.0.33"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP224_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 258
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECP256_K1"

    const/16 v11, 0x15

    const/16 v12, 0x16

    const-string v13, "secp256k1"

    const-string v14, "1.3.132.0.10"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP256_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 262
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECP256_R1"

    const/16 v3, 0x16

    const/16 v4, 0x17

    const-string v5, "secp256r1"

    const-string v6, "1.2.840.10045.3.1.7"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP256_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 266
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const/4 v15, 0x1

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "SECP384_R1"

    const/16 v11, 0x17

    const/16 v12, 0x18

    const-string v13, "secp384r1"

    const-string v14, "1.3.132.0.34"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP384_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 270
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "SECP521_R1"

    const/16 v3, 0x18

    const/16 v4, 0x19

    const-string v5, "secp521r1"

    const-string v6, "1.3.132.0.35"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP521_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 274
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v17, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;->X25519:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;

    const-string v10, "X25519"

    const/16 v11, 0x19

    const/16 v12, 0x1d

    const-string v13, "x25519"

    const/4 v14, 0x1

    const-string v15, "x25519"

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->X25519:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 277
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v9, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;->X448:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;

    const-string v2, "X448"

    const/16 v3, 0x1a

    const/16 v4, 0x1e

    const-string v5, "x448"

    const/4 v6, 0x1

    const-string v7, "x448"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->X448:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 282
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    .line 284
    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/security/spec/AlgorithmParameterSpec;

    const-string v11, "FFDHE_2048"

    const/16 v12, 0x1b

    const/16 v13, 0x100

    const-string v14, "ffdhe2048"

    const/4 v15, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_2048:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 285
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    .line 287
    const/16 v2, 0xc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/security/spec/AlgorithmParameterSpec;

    const-string v2, "FFDHE_3072"

    const/16 v3, 0x1c

    const/16 v4, 0x101

    const-string v5, "ffdhe3072"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_3072:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 288
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v15, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    .line 290
    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/security/spec/AlgorithmParameterSpec;

    const-string v10, "FFDHE_4096"

    const/16 v11, 0x1d

    const/16 v12, 0x102

    const-string v13, "ffdhe4096"

    const/4 v14, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_4096:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 291
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    .line 293
    const/16 v2, 0x1800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/security/spec/AlgorithmParameterSpec;

    const-string v2, "FFDHE_6144"

    const/16 v3, 0x1e

    const/16 v4, 0x103

    const-string v5, "ffdhe6144"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_6144:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 294
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v15, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    .line 296
    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/security/spec/AlgorithmParameterSpec;

    const-string v10, "FFDHE_8192"

    const/16 v11, 0x1f

    const/16 v12, 0x104

    const-string v13, "ffdhe8192"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_8192:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 301
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const-string v5, "arbitrary_explicit_prime_curves"

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "ARBITRARY_PRIME"

    const/16 v3, 0x20

    const v4, 0xff01

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->ARBITRARY_PRIME:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 303
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    const-string v11, "arbitrary_explicit_char2_curves"

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v8, "ARBITRARY_CHAR2"

    const/16 v9, 0x21

    const v10, 0xff02

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->ARBITRARY_CHAR2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 190
    sget-object v13, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT163_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v14, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT163_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v15, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT163_R2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v16, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT193_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v17, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT193_R2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v18, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT233_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT233_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v20, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT239_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v21, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT283_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v22, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT283_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v23, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT409_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v24, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT409_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v25, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT571_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v26, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECT571_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v27, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP160_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v28, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP160_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v29, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP160_R2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v30, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP192_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v31, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP192_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v32, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP224_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v33, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP224_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v34, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP256_K1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v35, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP256_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v36, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP384_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v37, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP521_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v38, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->X25519:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v39, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->X448:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v40, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_2048:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v41, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_3072:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v42, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_4096:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v43, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_6144:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v44, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_8192:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v45, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->ARBITRARY_PRIME:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v46, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->ARBITRARY_CHAR2:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    filled-new-array/range {v13 .. v46}, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->$VALUES:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 11
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "oid"    # Ljava/lang/String;
    .param p6, "isFips"    # Z
    .param p7, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .line 380
    sget-object v4, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 381
    invoke-static {p4}, Lorg/openjsse/sun/security/util/CurveDB;->lookup(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v10

    .line 380
    const-string v7, "EC"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 382
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 11
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "isFips"    # Z
    .param p6, "algorithm"    # Ljava/lang/String;
    .param p7, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p8, "keAlgParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ")V"
        }
    .end annotation

    .line 389
    sget-object v4, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_XDH:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 391
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 11
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "isFips"    # Z
    .param p6, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p7, "keAlgParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ")V"
        }
    .end annotation

    .line 397
    sget-object v4, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const/4 v6, 0x0

    const-string v7, "DiffieHellman"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 399
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 11
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .line 404
    sget-object v4, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ARBITRARY:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v7, "EC"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;-><init>(Ljava/lang/String;IILorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 406
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p3, "id"    # I
    .param p4, "type"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "oid"    # Ljava/lang/String;
    .param p7, "algorithm"    # Ljava/lang/String;
    .param p8, "isFips"    # Z
    .param p9, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p10, "keAlgParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ")V"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 322
    iput p3, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    .line 323
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 324
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    .line 325
    iput-object p6, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->oid:Ljava/lang/String;

    .line 326
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->algorithm:Ljava/lang/String;

    .line 327
    iput-boolean p8, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isFips:Z

    .line 328
    iput-object p9, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 329
    iput-object p10, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->keAlgParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 331
    if-eqz p10, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 335
    .local p1, "mediator":Z
    :goto_0
    if-eqz p1, :cond_1

    sget-object p2, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne p4, p2, :cond_1

    .line 336
    invoke-static {}, Lorg/openjsse/sun/security/ssl/JsseJce;->isEcAvailable()Z

    move-result p1

    .line 339
    :cond_1
    if-eqz p1, :cond_3

    .line 341
    nop

    .line 342
    :try_start_0
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->access$700(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p2

    .line 343
    .local p2, "algParams":Ljava/security/AlgorithmParameters;
    invoke-virtual {p2, p10}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local p2    # "algParams":Ljava/security/AlgorithmParameters;
    goto :goto_2

    .line 344
    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 346
    .local p2, "exp":Ljava/security/GeneralSecurityException;
    :goto_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_XDH:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const-string v1, "No AlgorithmParameters for "

    const-string v2, "ssl,handshake"

    if-eq p4, v0, :cond_2

    .line 347
    const/4 p1, 0x0

    .line 348
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_3

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 356
    :cond_2
    :try_start_1
    invoke-static {p5}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 370
    goto :goto_2

    .line 364
    :catch_2
    move-exception v0

    .line 365
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    const/4 p1, 0x0

    .line 366
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_3

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .end local p2    # "exp":Ljava/security/GeneralSecurityException;
    :cond_3
    :goto_2
    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isAvailable:Z

    .line 375
    return-void
.end method

.method static nameOf(I)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # I

    .line 458
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->values()[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 459
    .local v3, "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget v4, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    if-ne v4, p0, :cond_0

    .line 460
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    return-object v0

    .line 458
    .end local v3    # "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNDEFINED-NAMED-GROUP("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 448
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->values()[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 449
    .local v3, "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    return-object v3

    .line 448
    .end local v3    # "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static valueOf(I)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .locals 5
    .param p0, "id"    # I

    .line 409
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->values()[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 410
    .local v3, "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget v4, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    if-ne v4, p0, :cond_0

    .line 411
    return-object v3

    .line 409
    .end local v3    # "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 190
    const-class v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    return-object v0
.end method

.method static valueOf(Ljava/security/spec/ECParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .locals 6
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 419
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->values()[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 420
    .local v3, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v4, v5, :cond_1

    .line 421
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->keAlgParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p0, v4, :cond_0

    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->keAlgParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 422
    invoke-static {p0}, Lorg/openjsse/sun/security/util/CurveDB;->lookup(Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 423
    :cond_0
    return-object v3

    .line 419
    .end local v3    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static valueOf(Ljavax/crypto/spec/DHParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .locals 7
    .param p0, "params"    # Ljavax/crypto/spec/DHParameterSpec;

    .line 432
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->values()[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 433
    .local v3, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-eq v4, v5, :cond_0

    .line 434
    goto :goto_1

    .line 437
    :cond_0
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->keAlgParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

    check-cast v4, Ljavax/crypto/spec/DHParameterSpec;

    .line 438
    .local v4, "ngParams":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    return-object v3

    .line 432
    .end local v3    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .end local v4    # "ngParams":Ljavax/crypto/spec/DHParameterSpec;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .locals 1

    .line 190
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->$VALUES:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    return-object v0
.end method


# virtual methods
.method getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 506
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_0

    .line 507
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->getECGenParamSpec(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Ljava/security/spec/ECGenParameterSpec;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_1

    .line 509
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->getDHParameterSpec(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    return-object v0

    .line 512
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .line 502
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->namedGroupParams:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method isAvailable(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)Z"
        }
    .end annotation

    .line 468
    .local p1, "protocolVersions":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 470
    .local v4, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 471
    const/4 v0, 0x1

    return v0

    .line 469
    .end local v4    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    :cond_1
    return v1
.end method

.method isAvailable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z
    .locals 5
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 479
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 481
    .local v4, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-ne p1, v4, :cond_0

    .line 482
    const/4 v0, 0x1

    return v0

    .line 480
    .end local v4    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 486
    :cond_1
    return v1
.end method

.method isSupported(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;)Z"
        }
    .end annotation

    .line 490
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

    .line 491
    .local v1, "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->supportedProtocols:Ljava/util/List;

    invoke-virtual {p0, v2}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isAvailable(Ljava/util/List;)Z

    move-result v2

    .line 492
    .local v2, "isMatch":Z
    if-eqz v2, :cond_1

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->groupType:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v3, v4, :cond_1

    .line 494
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 496
    .end local v1    # "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .end local v2    # "isMatch":Z
    :cond_1
    goto :goto_0

    .line 497
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
