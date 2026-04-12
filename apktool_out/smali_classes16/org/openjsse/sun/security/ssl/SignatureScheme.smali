.class final enum Lorg/openjsse/sun/security/ssl/SignatureScheme;
.super Ljava/lang/Enum;
.source "SignatureScheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum DSA_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum DSA_SHA224:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum DSA_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum ECDSA_SECP256R1_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum ECDSA_SECP384R1_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum ECDSA_SECP512R1_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum ECDSA_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum ECDSA_SHA224:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum ED25519:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum ED448:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_MD5:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PKCS1_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PKCS1_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PKCS1_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PKCS1_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PSS_PSS_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PSS_PSS_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PSS_PSS_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PSS_RSAE_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PSS_RSAE_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_PSS_RSAE_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field public static final enum RSA_SHA224:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field private static final SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final hashAlgorithms:[Ljava/lang/String;

.field private static final signatureAlgorithms:[Ljava/lang/String;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field final handshakeSupportedProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field final isAvailable:Z

.field final keyAlgorithm:Ljava/lang/String;

.field final minimalKeySize:I

.field final name:Ljava/lang/String;

.field private final namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field private final signAlgParams:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

.field final supportedProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 52
    new-instance v8, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v6, "ed25519"

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v1, "ED25519"

    const/4 v2, 0x0

    const/16 v3, 0x807

    const-string v4, "ed25519"

    const-string v5, "ed25519"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v8, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ED25519:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 55
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v15, "ed448"

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "ED448"

    const/4 v11, 0x1

    const/16 v12, 0x808

    const-string v13, "ed448"

    const-string v14, "ed448"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ED448:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP256_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v9, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "ECDSA_SECP256R1_SHA256"

    const/4 v3, 0x2

    const/16 v4, 0x403

    const-string v5, "ecdsa_secp256r1_sha256"

    const-string v6, "SHA256withECDSA"

    const-string v7, "EC"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SECP256R1_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 65
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v17, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP384_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v18, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v11, "ECDSA_SECP384R1_SHA384"

    const/4 v12, 0x3

    const/16 v13, 0x503

    const-string v14, "ecdsa_secp384r1_sha384"

    const-string v15, "SHA384withECDSA"

    const-string v16, "EC"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SECP384R1_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 70
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP521_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v9, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "ECDSA_SECP512R1_SHA512"

    const/4 v3, 0x4

    const/16 v4, 0x603

    const-string v5, "ecdsa_secp521r1_sha512"

    const-string v6, "SHA512withECDSA"

    const-string v7, "EC"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SECP512R1_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 80
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v17, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    const/16 v18, 0x210

    sget-object v19, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v11, "RSA_PSS_RSAE_SHA256"

    const/4 v12, 0x5

    const/16 v13, 0x804

    const-string v14, "rsa_pss_rsae_sha256"

    const-string v15, "RSASSA-PSS"

    const-string v16, "RSA"

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_RSAE_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 84
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    const/16 v9, 0x310

    sget-object v10, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "RSA_PSS_RSAE_SHA384"

    const/4 v3, 0x6

    const/16 v4, 0x805

    const-string v5, "rsa_pss_rsae_sha384"

    const-string v6, "RSASSA-PSS"

    const-string v7, "RSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_RSAE_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 88
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v18, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    const/16 v19, 0x410

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v12, "RSA_PSS_RSAE_SHA512"

    const/4 v13, 0x7

    const/16 v14, 0x806

    const-string v15, "rsa_pss_rsae_sha512"

    const-string v16, "RSASSA-PSS"

    const-string v17, "RSA"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_RSAE_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 97
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    const/16 v9, 0x210

    sget-object v10, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "RSA_PSS_PSS_SHA256"

    const/16 v3, 0x8

    const/16 v4, 0x809

    const-string v5, "rsa_pss_pss_sha256"

    const-string v6, "RSASSA-PSS"

    const-string v7, "RSASSA-PSS"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_PSS_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 101
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v18, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    const/16 v19, 0x310

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v12, "RSA_PSS_PSS_SHA384"

    const/16 v13, 0x9

    const/16 v14, 0x80a

    const-string v15, "rsa_pss_pss_sha384"

    const-string v16, "RSASSA-PSS"

    const-string v17, "RSASSA-PSS"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_PSS_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 105
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    const/16 v9, 0x410

    sget-object v10, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "RSA_PSS_PSS_SHA512"

    const/16 v3, 0xa

    const/16 v4, 0x80b

    const-string v5, "rsa_pss_pss_sha512"

    const-string v6, "RSASSA-PSS"

    const-string v7, "RSASSA-PSS"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_PSS_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 111
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v21, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v22, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v12, "RSA_PKCS1_SHA256"

    const/16 v13, 0xb

    const/16 v14, 0x401

    const-string v15, "rsa_pkcs1_sha256"

    const-string v16, "SHA256withRSA"

    const-string v17, "RSA"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1ff

    move-object v11, v0

    invoke-direct/range {v11 .. v22}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PKCS1_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 115
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v33, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v34, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v24, "RSA_PKCS1_SHA384"

    const/16 v25, 0xc

    const/16 v26, 0x501

    const-string v27, "rsa_pkcs1_sha384"

    const-string v28, "SHA384withRSA"

    const-string v29, "RSA"

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x300

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v34}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PKCS1_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 119
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v11, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "RSA_PKCS1_SHA512"

    const/16 v3, 0xd

    const/16 v4, 0x601

    const-string v5, "rsa_pkcs1_sha512"

    const-string v6, "SHA512withRSA"

    const-string v7, "RSA"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x300

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PKCS1_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 125
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v19, "DSA"

    sget-object v20, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v14, "DSA_SHA256"

    const/16 v15, 0xe

    const/16 v16, 0x402

    const-string v17, "dsa_sha256"

    const-string v18, "SHA256withDSA"

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->DSA_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 128
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v7, "EC"

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "ECDSA_SHA224"

    const/16 v3, 0xf

    const/16 v4, 0x303

    const-string v5, "ecdsa_sha224"

    const-string v6, "SHA224withECDSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SHA224:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 131
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const/16 v16, 0x1ff

    sget-object v17, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "RSA_SHA224"

    const/16 v11, 0x10

    const/16 v12, 0x301

    const-string v13, "rsa_sha224"

    const-string v14, "SHA224withRSA"

    const-string v15, "RSA"

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_SHA224:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 134
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v7, "DSA"

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "DSA_SHA224"

    const/16 v3, 0x11

    const/16 v4, 0x302

    const-string v5, "dsa_sha224"

    const-string v6, "SHA224withDSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->DSA_SHA224:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 137
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v15, "EC"

    sget-object v16, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "ECDSA_SHA1"

    const/16 v11, 0x12

    const/16 v12, 0x203

    const-string v13, "ecdsa_sha1"

    const-string v14, "SHA1withECDSA"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 140
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v27, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v28, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v18, "RSA_PKCS1_SHA1"

    const/16 v19, 0x13

    const/16 v20, 0x201

    const-string v21, "rsa_pkcs1_sha1"

    const-string v22, "SHA1withRSA"

    const-string v23, "RSA"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1ff

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v28}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PKCS1_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 144
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v7, "DSA"

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "DSA_SHA1"

    const/16 v3, 0x14

    const/16 v4, 0x202

    const-string v5, "dsa_sha1"

    const-string v6, "SHA1withDSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->DSA_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 147
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const/16 v16, 0x1ff

    sget-object v17, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v10, "RSA_MD5"

    const/16 v11, 0x15

    const/16 v12, 0x101

    const-string v13, "rsa_md5"

    const-string v14, "MD5withRSA"

    const-string v15, "RSA"

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_MD5:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 50
    sget-object v18, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ED25519:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v19, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ED448:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v20, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SECP256R1_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v21, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SECP384R1_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v22, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SECP512R1_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v23, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_RSAE_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v24, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_RSAE_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v25, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_RSAE_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v26, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_PSS_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v27, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_PSS_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v28, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PSS_PSS_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v29, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PKCS1_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v30, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PKCS1_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v31, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PKCS1_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v32, Lorg/openjsse/sun/security/ssl/SignatureScheme;->DSA_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v33, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SHA224:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v34, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_SHA224:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v35, Lorg/openjsse/sun/security/ssl/SignatureScheme;->DSA_SHA224:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v36, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v37, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PKCS1_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v38, Lorg/openjsse/sun/security/ssl/SignatureScheme;->DSA_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    sget-object v39, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_MD5:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    filled-new-array/range {v18 .. v39}, [Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->$VALUES:[Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 176
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "none"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "md5"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "sha1"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "sha224"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "sha256"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v7, "sha384"

    aput-object v7, v0, v1

    const/4 v1, 0x6

    const-string v7, "sha512"

    aput-object v7, v0, v1

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->hashAlgorithms:[Ljava/lang/String;

    .line 181
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "anonymous"

    aput-object v1, v0, v2

    const-string v1, "rsa"

    aput-object v1, v0, v3

    const-string v1, "dsa"

    aput-object v1, v0, v4

    const-string v1, "ecdsa"

    aput-object v1, v0, v5

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->signatureAlgorithms:[Ljava/lang/String;

    .line 224
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    .line 225
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 224
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 10
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "keyAlgorithm"    # Ljava/lang/String;
    .param p7, "minimalKeySize"    # I
    .param p8, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .line 238
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 240
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 12
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "keyAlgorithm"    # Ljava/lang/String;
    .param p7, "signAlgParamSpec"    # Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;
    .param p8, "minimalKeySize"    # I
    .param p9, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;",
            "I[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .line 246
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 249
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 2
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "keyAlgorithm"    # Ljava/lang/String;
    .param p7, "signAlgParamSpec"    # Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;
    .param p8, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .param p9, "minimalKeySize"    # I
    .param p10, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p11, "handshakeSupportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;",
            "I[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput p3, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    .line 267
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    .line 268
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->algorithm:Ljava/lang/String;

    .line 269
    iput-object p6, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    .line 270
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->signAlgParams:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    .line 271
    iput-object p8, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 272
    iput p9, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->minimalKeySize:I

    .line 273
    invoke-static {p10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->supportedProtocols:Ljava/util/List;

    .line 274
    nop

    .line 275
    invoke-static {p11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->handshakeSupportedProtocols:Ljava/util/List;

    .line 277
    const/4 p1, 0x1

    .line 280
    .local p1, "mediator":Z
    const-string p2, "EC"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 281
    invoke-static {}, Lorg/openjsse/sun/security/ssl/JsseJce;->isEcAvailable()Z

    move-result p1

    .line 285
    :cond_0
    if-eqz p1, :cond_2

    .line 286
    if-eqz p7, :cond_1

    .line 287
    invoke-static {p7}, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->access$000(Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;)Z

    move-result p1

    goto :goto_0

    .line 290
    :cond_1
    :try_start_0
    invoke-static {p5}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_0

    .line 291
    :catch_0
    move-exception p2

    .line 292
    .local p2, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 293
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_2

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature algorithm, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is not supported by the underlying providers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .end local p2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 304
    const-string p2, "SunMSCAPI"

    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 305
    const/4 p1, 0x0

    .line 309
    :cond_3
    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->isAvailable:Z

    .line 310
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 12
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "keyAlgorithm"    # Ljava/lang/String;
    .param p7, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .param p8, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .line 255
    const/4 v7, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 258
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 9
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "keyAlgorithm"    # Ljava/lang/String;
    .param p7, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .line 231
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/openjsse/sun/security/ssl/SignatureScheme;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 232
    return-void
.end method

.method static getAlgorithmNames(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 495
    .local p0, "schemes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 496
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    .local v1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 498
    .local v3, "scheme":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v3    # "scheme":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    goto :goto_0

    .line 501
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 504
    .end local v1    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method static getPreferableAlgorithm(Ljava/util/List;Lorg/openjsse/sun/security/ssl/SignatureScheme;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SignatureScheme;
    .locals 4
    .param p1, "certScheme"    # Lorg/openjsse/sun/security/ssl/SignatureScheme;
    .param p2, "version"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;"
        }
    .end annotation

    .line 439
    .local p0, "schemes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 440
    .local v1, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget-boolean v2, v1, Lorg/openjsse/sun/security/ssl/SignatureScheme;->isAvailable:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/SignatureScheme;->handshakeSupportedProtocols:Ljava/util/List;

    .line 441
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    return-object v1

    .line 446
    .end local v1    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    :cond_0
    goto :goto_0

    .line 448
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSigner(Ljava/security/PrivateKey;)Ljava/security/Signature;
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 531
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->isAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 532
    return-object v1

    .line 536
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 537
    .local v0, "signer":Ljava/security/Signature;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->signAlgParams:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->signAlgParams:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    .line 538
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->access$100(Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 537
    :goto_0
    invoke-static {v0, p1, v2, v1}, Lsun/security/util/SignatureUtil;->initSignWithParam(Ljava/security/Signature;Ljava/security/PrivateKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    return-object v0

    .line 541
    .end local v0    # "signer":Ljava/security/Signature;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 543
    .local v0, "nsae":Ljava/security/GeneralSecurityException;
    :goto_1
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_2

    .line 544
    const-string v2, "ssl,handshake,verbose"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore unsupported signature algorithm ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    .end local v0    # "nsae":Ljava/security/GeneralSecurityException;
    :cond_2
    return-object v1
.end method

.method static getSignerOfPreferableAlgorithm(Ljava/util/List;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/Map$Entry;
    .locals 8
    .param p1, "x509Possession"    # Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .param p2, "version"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;",
            "Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation

    .line 456
    .local p0, "schemes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 457
    .local v0, "signingKey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "keyAlgorithm":Ljava/lang/String;
    const-string v2, "RSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 461
    const-string v2, "RSASSA-PSS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    const v2, 0x7fffffff

    .local v2, "keySize":I
    goto :goto_1

    .line 462
    .end local v2    # "keySize":I
    :cond_1
    :goto_0
    invoke-static {v0}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v2

    .line 466
    .restart local v2    # "keySize":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 467
    .local v4, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget-boolean v5, v4, Lorg/openjsse/sun/security/ssl/SignatureScheme;->isAvailable:Z

    if-eqz v5, :cond_4

    iget v5, v4, Lorg/openjsse/sun/security/ssl/SignatureScheme;->minimalKeySize:I

    if-lt v2, v5, :cond_4

    iget-object v5, v4, Lorg/openjsse/sun/security/ssl/SignatureScheme;->handshakeSupportedProtocols:Ljava/util/List;

    .line 468
    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    .line 469
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 470
    iget-object v5, v4, Lorg/openjsse/sun/security/ssl/SignatureScheme;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lorg/openjsse/sun/security/ssl/SignatureScheme;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v5, v6, :cond_3

    .line 472
    nop

    .line 473
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    .line 474
    .local v5, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v5, :cond_2

    iget-object v6, v4, Lorg/openjsse/sun/security/ssl/SignatureScheme;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 475
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljava/security/spec/ECParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 476
    invoke-direct {v4, v0}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSigner(Ljava/security/PrivateKey;)Ljava/security/Signature;

    move-result-object v6

    .line 477
    .local v6, "signer":Ljava/security/Signature;
    if-eqz v6, :cond_2

    .line 478
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v4, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 482
    .end local v5    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v6    # "signer":Ljava/security/Signature;
    :cond_2
    goto :goto_3

    .line 483
    :cond_3
    invoke-direct {v4, v0}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSigner(Ljava/security/PrivateKey;)Ljava/security/Signature;

    move-result-object v5

    .line 484
    .local v5, "signer":Ljava/security/Signature;
    if-eqz v5, :cond_4

    .line 485
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 489
    .end local v4    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    .end local v5    # "signer":Ljava/security/Signature;
    :cond_4
    :goto_3
    goto :goto_2

    .line 491
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method static getSupportedAlgorithms(Lorg/openjsse/sun/security/ssl/SSLConfiguration;Ljava/security/AlgorithmConstraints;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .param p0, "config"    # Lorg/openjsse/sun/security/ssl/SSLConfiguration;
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/SSLConfiguration;",
            "Ljava/security/AlgorithmConstraints;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation

    .line 363
    .local p2, "activeProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 364
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->values()[Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, v1, v4

    .line 365
    .local v5, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget-boolean v6, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->isAvailable:Z

    const-string v7, "ssl,handshake,verbose"

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->signatureSchemes:Ljava/util/List;

    .line 366
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->signatureSchemes:Ljava/util/List;

    .line 367
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 376
    :cond_0
    const/4 v6, 0x0

    .line 377
    .local v6, "isMatch":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 378
    .local v9, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v10, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->supportedProtocols:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 379
    const/4 v6, 0x1

    .line 380
    goto :goto_2

    .line 382
    .end local v9    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_1
    goto :goto_1

    .line 384
    :cond_2
    :goto_2
    if-eqz v6, :cond_4

    .line 385
    sget-object v8, Lorg/openjsse/sun/security/ssl/SignatureScheme;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    iget-object v9, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->algorithm:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {p1, v8, v9, v10}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 387
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 388
    :cond_3
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_6

    .line 389
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 390
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore disabled signature scheme: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 393
    :cond_4
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_6

    .line 394
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 395
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore inactive signature scheme: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 368
    .end local v6    # "isMatch":Z
    :cond_5
    :goto_3
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_6

    .line 369
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 370
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore unsupported signature scheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    .end local v5    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 400
    :cond_7
    return-object v0
.end method

.method static getSupportedAlgorithms(Lorg/openjsse/sun/security/ssl/SSLConfiguration;Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/ProtocolVersion;[I)Ljava/util/List;
    .locals 11
    .param p0, "config"    # Lorg/openjsse/sun/security/ssl/SSLConfiguration;
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p3, "algorithmIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/SSLConfiguration;",
            "Ljava/security/AlgorithmConstraints;",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            "[I)",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 408
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, p3, v3

    .line 409
    .local v4, "ssid":I
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->valueOf(I)Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v5

    .line 410
    .local v5, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    const-string v6, "Unsupported signature scheme: "

    const-string v7, "ssl,handshake"

    if-nez v5, :cond_0

    .line 411
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_3

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 414
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    .line 412
    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 416
    :cond_0
    iget-boolean v8, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->isAvailable:Z

    if-eqz v8, :cond_2

    iget-object v8, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->supportedProtocols:Ljava/util/List;

    .line 417
    invoke-interface {v8, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->signatureSchemes:Ljava/util/List;

    .line 418
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->signatureSchemes:Ljava/util/List;

    .line 419
    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    sget-object v8, Lorg/openjsse/sun/security/ssl/SignatureScheme;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    iget-object v9, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->algorithm:Ljava/lang/String;

    .line 420
    const/4 v10, 0x0

    invoke-interface {p1, v8, v9, v10}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 422
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 424
    :cond_2
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_3

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    .end local v4    # "ssid":I
    .end local v5    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 431
    :cond_4
    return-object v0
.end method

.method static nameOf(I)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # I

    .line 323
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->values()[Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 324
    .local v3, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget v4, v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    if-ne v4, p0, :cond_0

    .line 325
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    return-object v0

    .line 323
    .end local v3    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    :cond_1
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 331
    .local v0, "hashId":I
    and-int/lit16 v1, p0, 0xff

    .line 332
    .local v1, "signId":I
    sget-object v2, Lorg/openjsse/sun/security/ssl/SignatureScheme;->hashAlgorithms:[Ljava/lang/String;

    array-length v2, v2

    const-string v3, ")"

    if-lt v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNDEFINED-HASH("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/openjsse/sun/security/ssl/SignatureScheme;->hashAlgorithms:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 334
    .local v2, "hashName":Ljava/lang/String;
    :goto_1
    sget-object v4, Lorg/openjsse/sun/security/ssl/SignatureScheme;->signatureAlgorithms:[Ljava/lang/String;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNDEFINED-SIGNATURE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    sget-object v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;->signatureAlgorithms:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 338
    .local v3, "signName":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SignatureScheme;
    .locals 5
    .param p0, "signatureSchemeName"    # Ljava/lang/String;

    .line 343
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->values()[Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 344
    .local v3, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    return-object v3

    .line 343
    .end local v3    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static sizeInRecord()I
    .locals 1

    .line 354
    const/4 v0, 0x2

    return v0
.end method

.method static valueOf(I)Lorg/openjsse/sun/security/ssl/SignatureScheme;
    .locals 5
    .param p0, "id"    # I

    .line 313
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->values()[Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 314
    .local v3, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget v4, v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    if-ne v4, p0, :cond_0

    .line 315
    return-object v3

    .line 313
    .end local v3    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SignatureScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SignatureScheme;
    .locals 1

    .line 50
    sget-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->$VALUES:[Lorg/openjsse/sun/security/ssl/SignatureScheme;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SignatureScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SignatureScheme;

    return-object v0
.end method


# virtual methods
.method getVerifier(Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 515
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->isAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 516
    return-object v1

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 520
    .local v0, "verifier":Ljava/security/Signature;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->signAlgParams:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->signAlgParams:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    .line 521
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->access$100(Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    goto :goto_0

    :cond_1
    nop

    .line 520
    :goto_0
    invoke-static {v0, p1, v1}, Lsun/security/util/SignatureUtil;->initVerifyWithParam(Ljava/security/Signature;Ljava/security/PublicKey;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 523
    return-object v0
.end method
