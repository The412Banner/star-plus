.class final enum Lorg/openjsse/sun/security/ssl/SSLCipher;
.super Ljava/lang/Enum;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockReadCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;,
        Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SSLCipher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_3DES:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_AES_128:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_AES_128_GCM:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_AES_128_GCM_IV:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_AES_256:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_AES_256_GCM:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_AES_256_GCM_IV:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_CC20_P1305:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_DES:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_DES_40:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_IDEA:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_NULL:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_RC2_40:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_RC4_128:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field public static final enum B_RC4_40:Lorg/openjsse/sun/security/ssl/SSLCipher;

.field private static final cipherLimits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final tag:[Ljava/lang/String;


# instance fields
.field final algorithm:Ljava/lang/String;

.field final allowed:Z

.field final cipherType:Lorg/openjsse/sun/security/ssl/CipherType;

.field final description:Ljava/lang/String;

.field final expandedKeySize:I

.field final exportable:Z

.field final fixedIvSize:I

.field private final isAvailable:Z

.field final ivSize:I

.field final keySize:I

.field private final readCipherGenerators:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field final tagSize:I

.field final transformation:Ljava/lang/String;

.field private final writeCipherGenerators:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 60

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v5, Lorg/openjsse/sun/security/ssl/CipherType;->NULL_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    const/4 v14, 0x2

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator;

    const/4 v15, 0x0

    invoke-direct {v3, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_NONE:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x0

    aput-object v2, v1, v13

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator;

    invoke-direct {v3, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x1

    aput-object v2, v1, v12

    move-object/from16 v16, v1

    check-cast v16, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator;

    invoke-direct {v3, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_NONE:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v13

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator;

    invoke-direct {v3, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v12

    move-object/from16 v17, v1

    check-cast v17, [Ljava/util/Map$Entry;

    const-string v2, "B_NULL"

    const/4 v3, 0x0

    const-string v4, "NULL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v1, v0

    move v14, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_NULL:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 81
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v24, Lorg/openjsse/sun/security/ssl/CipherType;->STREAM_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator;

    invoke-direct {v3, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object/from16 v31, v1

    check-cast v31, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v32, v1

    check-cast v32, [Ljava/util/Map$Entry;

    const-string v21, "B_RC4_40"

    const/16 v22, 0x1

    const-string v23, "RC4"

    const/16 v25, 0x5

    const/16 v26, 0x10

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v32}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_RC4_40:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 98
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v37, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v44, v1

    check-cast v44, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v45, v1

    check-cast v45, [Ljava/util/Map$Entry;

    const-string v34, "B_RC2_40"

    const/16 v35, 0x2

    const-string v36, "RC2"

    const/16 v38, 0x5

    const/16 v39, 0x10

    const/16 v40, 0x8

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x1

    move-object/from16 v33, v0

    invoke-direct/range {v33 .. v45}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_RC2_40:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 115
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v23, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v30, v1

    check-cast v30, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v31, v1

    check-cast v31, [Ljava/util/Map$Entry;

    const-string v20, "B_DES_40"

    const/16 v21, 0x3

    const-string v22, "DES/CBC/NoPadding"

    const/16 v24, 0x5

    const/16 v25, 0x8

    const/16 v26, 0x8

    const/16 v28, 0x1

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_DES_40:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 133
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v36, Lorg/openjsse/sun/security/ssl/CipherType;->STREAM_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v43, v1

    check-cast v43, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v44, v1

    check-cast v44, [Ljava/util/Map$Entry;

    const-string v33, "B_RC4_128"

    const/16 v34, 0x4

    const-string v35, "RC4"

    const/16 v37, 0x10

    const/16 v38, 0x10

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v44}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_RC4_128:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 150
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v23, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v30, v2

    check-cast v30, [Ljava/util/Map$Entry;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v31, v2

    check-cast v31, [Ljava/util/Map$Entry;

    const-string v20, "B_DES"

    const/16 v21, 0x5

    const-string v22, "DES/CBC/NoPadding"

    const/16 v24, 0x8

    const/16 v29, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_DES:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 175
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v36, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_11_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v43, v2

    check-cast v43, [Ljava/util/Map$Entry;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_11_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v44, v2

    check-cast v44, [Ljava/util/Map$Entry;

    const-string v33, "B_3DES"

    const/16 v34, 0x6

    const-string v35, "DESede/CBC/NoPadding"

    const/16 v37, 0x18

    const/16 v38, 0x18

    const/16 v39, 0x8

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v44}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_3DES:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 200
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v23, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v15, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v30, v1

    check-cast v30, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v15, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v31, v1

    check-cast v31, [Ljava/util/Map$Entry;

    const-string v20, "B_IDEA"

    const/16 v21, 0x7

    const-string v22, "IDEA"

    const/16 v24, 0x10

    const/16 v25, 0x10

    const/16 v28, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_IDEA:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 217
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v36, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_11_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v43, v2

    check-cast v43, [Ljava/util/Map$Entry;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_11_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v44, v2

    check-cast v44, [Ljava/util/Map$Entry;

    const-string v33, "B_AES_128"

    const/16 v34, 0x8

    const-string v35, "AES/CBC/NoPadding"

    const/16 v37, 0x10

    const/16 v38, 0x10

    const/16 v39, 0x10

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v44}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_128:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 242
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v23, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_11_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v30, v2

    check-cast v30, [Ljava/util/Map$Entry;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_11_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v31, v2

    check-cast v31, [Ljava/util/Map$Entry;

    const-string v20, "B_AES_256"

    const/16 v21, 0x9

    const-string v22, "AES/CBC/NoPadding"

    const/16 v24, 0x20

    const/16 v25, 0x20

    const/16 v26, 0x10

    const/16 v28, 0x1

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_256:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 267
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v36, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v43, v1

    check-cast v43, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v44, v1

    check-cast v44, [Ljava/util/Map$Entry;

    const-string v33, "B_AES_128_GCM"

    const/16 v34, 0xa

    const-string v35, "AES/GCM/NoPadding"

    const/16 v39, 0xc

    const/16 v40, 0x4

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v44}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_128_GCM:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 284
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v23, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v30, v1

    check-cast v30, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v31, v1

    check-cast v31, [Ljava/util/Map$Entry;

    const-string v20, "B_AES_256_GCM"

    const/16 v21, 0xb

    const-string v22, "AES/GCM/NoPadding"

    const/16 v26, 0xc

    const/16 v27, 0x4

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_256_GCM:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 301
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v36, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v43, v1

    check-cast v43, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v44, v1

    check-cast v44, [Ljava/util/Map$Entry;

    const-string v33, "B_AES_128_GCM_IV"

    const/16 v34, 0xc

    const-string v35, "AES/GCM/NoPadding"

    const/16 v40, 0x0

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v44}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_128_GCM_IV:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 318
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v23, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v30, v1

    check-cast v30, [Ljava/util/Map$Entry;

    new-array v1, v14, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    move-object/from16 v31, v1

    check-cast v31, [Ljava/util/Map$Entry;

    const-string v20, "B_AES_256_GCM_IV"

    const/16 v21, 0xd

    const-string v22, "AES/GCM/NoPadding"

    const/16 v27, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_256_GCM_IV:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 335
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v36, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v43, v2

    check-cast v43, [Ljava/util/Map$Entry;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator;

    invoke-direct {v4, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v14

    move-object/from16 v44, v2

    check-cast v44, [Ljava/util/Map$Entry;

    const-string v33, "B_CC20_P1305"

    const/16 v34, 0xe

    const-string v35, "ChaCha20-Poly1305"

    const/16 v37, 0x20

    const/16 v38, 0x20

    const/16 v40, 0xc

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v44}, Lorg/openjsse/sun/security/ssl/SSLCipher;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_CC20_P1305:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 54
    sget-object v45, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_NULL:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v46, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_RC4_40:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v47, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_RC2_40:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v48, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_DES_40:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v49, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_RC4_128:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v50, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_DES:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v51, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_3DES:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v52, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_IDEA:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v53, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_128:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v54, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_256:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v55, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_128_GCM:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v56, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_256_GCM:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v57, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_128_GCM_IV:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v58, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_AES_256_GCM_IV:Lorg/openjsse/sun/security/ssl/SSLCipher;

    sget-object v59, Lorg/openjsse/sun/security/ssl/SSLCipher;->B_CC20_P1305:Lorg/openjsse/sun/security/ssl/SSLCipher;

    filled-new-array/range {v45 .. v59}, [Lorg/openjsse/sun/security/ssl/SSLCipher;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->cipherLimits:Ljava/util/HashMap;

    .line 413
    new-array v0, v14, [Ljava/lang/String;

    const-string v1, "KEYUPDATE"

    aput-object v1, v0, v3

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->tag:[Ljava/lang/String;

    .line 416
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 417
    .local v1, "max":J
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLCipher$1;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 424
    .local v4, "prop":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 425
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "propvalue":[Ljava/lang/String;
    array-length v6, v5

    move v13, v3

    :goto_0
    if-ge v13, v6, :cond_6

    aget-object v7, v5, v13

    .line 430
    .local v7, "entry":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 432
    .local v8, "values":[Ljava/lang/String;
    aget-object v0, v8, v14

    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLCipher;->tag:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v9, "ssl"

    if-eqz v0, :cond_4

    .line 433
    const/4 v10, 0x0

    .line 443
    .local v10, "index":I
    const/4 v11, 0x2

    aget-object v0, v8, v11

    const-string v12, "^"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 445
    .local v12, "i":I
    if-ltz v12, :cond_0

    .line 446
    :try_start_0
    aget-object v0, v8, v11

    add-int/lit8 v11, v12, 0x1

    .line 447
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v14, v0

    .line 446
    move/from16 v16, v12

    .end local v12    # "i":I
    .local v16, "i":I
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    :try_start_1
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-long v11, v11

    move-wide v14, v11

    const/4 v11, 0x2

    .local v11, "size":J
    goto :goto_1

    .line 455
    .end local v11    # "size":J
    .end local v16    # "i":I
    .restart local v12    # "i":I
    :catch_0
    move-exception v0

    move/from16 v16, v12

    .end local v12    # "i":I
    .restart local v16    # "i":I
    goto/16 :goto_2

    .line 449
    .end local v16    # "i":I
    .restart local v12    # "i":I
    :cond_0
    move/from16 v16, v12

    .end local v12    # "i":I
    .restart local v16    # "i":I
    const/4 v11, 0x2

    aget-object v0, v8, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    .local v14, "size":J
    :goto_1
    const-wide/16 v18, 0x1

    cmp-long v0, v14, v18

    if-ltz v0, :cond_2

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    cmp-long v0, v14, v18

    if-gtz v0, :cond_2

    .line 461
    nop

    .line 462
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v12, ":"

    if-eqz v0, :cond_1

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jdk.tls.keyLimits:  entry = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ". "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, v8, v3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLCipher;->tag:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    :cond_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->cipherLimits:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v8, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLCipher;->tag:[Ljava/lang/String;

    aget-object v11, v11, v10

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 452
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v11, "Length exceeded limits"

    invoke-direct {v0, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "max":J
    .end local v4    # "prop":Ljava/lang/String;
    .end local v5    # "propvalue":[Ljava/lang/String;
    .end local v7    # "entry":Ljava/lang/String;
    .end local v8    # "values":[Ljava/lang/String;
    .end local v10    # "index":I
    .end local v16    # "i":I
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 455
    .end local v14    # "size":J
    .restart local v1    # "max":J
    .restart local v4    # "prop":Ljava/lang/String;
    .restart local v5    # "propvalue":[Ljava/lang/String;
    .restart local v7    # "entry":Ljava/lang/String;
    .restart local v8    # "values":[Ljava/lang/String;
    .restart local v10    # "index":I
    .restart local v16    # "i":I
    :catch_1
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_2
    sget-boolean v11, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v11, :cond_3

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 457
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "jdk.tls.keyLimits:  "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":  "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :cond_3
    goto :goto_3

    .line 435
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "index":I
    .end local v16    # "i":I
    :cond_4
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_5

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jdk.tls.keyLimits:  Unknown action:  "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    .end local v7    # "entry":Ljava/lang/String;
    .end local v8    # "values":[Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 469
    .end local v1    # "max":J
    .end local v4    # "prop":Ljava/lang/String;
    .end local v5    # "propvalue":[Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/CipherType;IIIIZZ[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V
    .locals 3
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "cipherType"    # Lorg/openjsse/sun/security/ssl/CipherType;
    .param p5, "keySize"    # I
    .param p6, "expandedKeySize"    # I
    .param p7, "ivSize"    # I
    .param p8, "fixedIvSize"    # I
    .param p9, "allowed"    # Z
    .param p10, "exportable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/CipherType;",
            "IIIIZZ[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;[",
            "Ljava/util/Map$Entry<",
            "Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)V"
        }
    .end annotation

    .line 478
    .local p11, "readCipherGenerators":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    .local p12, "writeCipherGenerators":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 399
    const/16 p1, 0x10

    iput p1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->tagSize:I

    .line 479
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->transformation:Ljava/lang/String;

    .line 480
    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 481
    .local p2, "splits":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v1, p2, v0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->algorithm:Ljava/lang/String;

    .line 482
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->cipherType:Lorg/openjsse/sun/security/ssl/CipherType;

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    shl-int/lit8 v1, p5, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->description:Ljava/lang/String;

    .line 484
    iput p5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->keySize:I

    .line 485
    iput p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->ivSize:I

    .line 486
    iput p8, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->fixedIvSize:I

    .line 487
    iput-boolean p9, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->allowed:Z

    .line 489
    iput p6, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->expandedKeySize:I

    .line 490
    iput-boolean p10, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->exportable:Z

    .line 496
    if-eqz p9, :cond_0

    invoke-static {p5, p3}, Lorg/openjsse/sun/security/ssl/SSLCipher;->isUnlimited(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 497
    invoke-static {p3}, Lorg/openjsse/sun/security/ssl/SSLCipher;->isTransformationAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->isAvailable:Z

    .line 499
    iput-object p11, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->readCipherGenerators:[Ljava/util/Map$Entry;

    .line 500
    iput-object p12, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->writeCipherGenerators:[Ljava/util/Map$Entry;

    .line 501
    return-void
.end method

.method static synthetic access$1600(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B[B)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # B
    .param p3, "x3"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLCipher;->checkStreamMac(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B[B)V

    return-void
.end method

.method static synthetic access$1700(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # B

    .line 54
    invoke-static {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher;->addMac(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B)V

    return-void
.end method

.method static synthetic access$1800(Ljava/nio/ByteBuffer;IILorg/openjsse/sun/security/ssl/ProtocolVersion;)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLCipher;->removePadding(Ljava/nio/ByteBuffer;IILorg/openjsse/sun/security/ssl/ProtocolVersion;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;BI[B)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # B
    .param p3, "x3"    # I
    .param p4, "x4"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Lorg/openjsse/sun/security/ssl/SSLCipher;->checkCBCMac(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;BI[B)V

    return-void
.end method

.method static synthetic access$2000(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # I

    .line 54
    invoke-static {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLCipher;->addPadding(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100()Ljava/util/HashMap;
    .locals 1

    .line 54
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->cipherLimits:Ljava/util/HashMap;

    return-object v0
.end method

.method private static addMac(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B)V
    .locals 4
    .param p0, "signer"    # Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "contentType"    # B

    .line 2672
    invoke-interface {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    if-eqz v0, :cond_0

    .line 2673
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2674
    .local v0, "dstContent":I
    const/4 v1, 0x0

    invoke-interface {p0, p2, p1, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->compute(BLjava/nio/ByteBuffer;Z)[B

    move-result-object v1

    .line 2683
    .local v1, "hash":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2684
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2687
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2689
    .end local v0    # "dstContent":I
    .end local v1    # "hash":[B
    :cond_0
    return-void
.end method

.method private static addPadding(Ljava/nio/ByteBuffer;I)I
    .locals 7
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "blockSize"    # I

    .line 2847
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2848
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 2850
    .local v1, "offset":I
    add-int/lit8 v2, v0, 0x1

    .line 2854
    .local v2, "newlen":I
    rem-int v3, v2, p1

    if-eqz v3, :cond_0

    .line 2855
    add-int/lit8 v3, p1, -0x1

    add-int/2addr v2, v3

    .line 2856
    rem-int v3, v2, p1

    sub-int/2addr v2, v3

    .line 2858
    :cond_0
    sub-int v3, v2, v0

    int-to-byte v3, v3

    .line 2863
    .local v3, "pad":B
    add-int v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2868
    const/4 v4, 0x0

    .local v4, "i":I
    add-int/2addr v1, v0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 2869
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .local v5, "offset":I
    add-int/lit8 v6, v3, -0x1

    int-to-byte v6, v6

    invoke-virtual {p0, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2868
    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_0

    .line 2872
    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2873
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2875
    return v2
.end method

.method private static calculateRemainingLen(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;II)I
    .locals 10
    .param p0, "signer"    # Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .param p1, "fullLen"    # I
    .param p2, "usedLen"    # I

    .line 2827
    invoke-interface {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->hashBlockSize:I

    .line 2828
    .local v0, "blockLen":I
    invoke-interface {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v1

    iget v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->minimalPaddingSize:I

    .line 2833
    .local v1, "minimalPaddingLen":I
    sub-int v2, v0, v1

    rsub-int/lit8 v2, v2, 0xd

    add-int/2addr p1, v2

    .line 2834
    sub-int v2, v0, v1

    rsub-int/lit8 v2, v2, 0xd

    add-int/2addr p2, v2

    .line 2841
    int-to-double v2, p1

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    int-to-double v4, p2

    int-to-double v8, v0

    mul-double/2addr v8, v6

    div-double/2addr v4, v8

    .line 2842
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    .line 2841
    return v2
.end method

.method private static checkCBCMac(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;BI[B)V
    .locals 7
    .param p0, "signer"    # Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "contentType"    # B
    .param p3, "cipheredLength"    # I
    .param p4, "sequence"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2717
    const/4 v0, 0x0

    .line 2718
    .local v0, "reservedBPE":Ljavax/crypto/BadPaddingException;
    invoke-interface {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v1

    iget v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 2719
    .local v1, "tagLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 2721
    .local v2, "pos":I
    if-eqz v1, :cond_2

    .line 2722
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int/2addr v3, v1

    .line 2723
    .local v3, "contentLen":I
    if-gez v3, :cond_0

    .line 2724
    new-instance v4, Ljavax/crypto/BadPaddingException;

    const-string v5, "bad record"

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2727
    sub-int v3, p3, v1

    .line 2728
    add-int v4, v2, p3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2734
    :cond_0
    const/4 v4, 0x0

    invoke-static {p2, p1, p0, p4, v4}, Lorg/openjsse/sun/security/ssl/SSLCipher;->checkMacTags(BLjava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/Authenticator$MAC;[BZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2735
    if-nez v0, :cond_1

    .line 2736
    new-instance v4, Ljavax/crypto/BadPaddingException;

    const-string v5, "bad record MAC"

    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2742
    :cond_1
    invoke-static {p0, p3, v3}, Lorg/openjsse/sun/security/ssl/SSLCipher;->calculateRemainingLen(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;II)I

    move-result v4

    .line 2750
    .local v4, "remainingLen":I
    invoke-interface {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v5

    iget v5, v5, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    add-int/2addr v4, v5

    .line 2751
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2757
    .local v5, "temporary":Ljava/nio/ByteBuffer;
    const/4 v6, 0x1

    invoke-static {p2, v5, p0, p4, v6}, Lorg/openjsse/sun/security/ssl/SSLCipher;->checkMacTags(BLjava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/Authenticator$MAC;[BZ)Z

    .line 2761
    .end local v3    # "contentLen":I
    .end local v4    # "remainingLen":I
    .end local v5    # "temporary":Ljava/nio/ByteBuffer;
    :cond_2
    if-nez v0, :cond_3

    .line 2764
    return-void

    .line 2762
    :cond_3
    throw v0
.end method

.method private static checkMacTags(BLjava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/Authenticator$MAC;[BZ)Z
    .locals 8
    .param p0, "contentType"    # B
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "signer"    # Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .param p3, "sequence"    # [B
    .param p4, "isSimulated"    # Z

    .line 2771
    invoke-interface {p2}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 2772
    .local v0, "tagLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 2773
    .local v1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 2774
    .local v2, "lim":I
    sub-int v3, v2, v0

    .line 2776
    .local v3, "macOffset":I
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2777
    invoke-interface {p2, p0, p1, p3, p4}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->compute(BLjava/nio/ByteBuffer;[BZ)[B

    move-result-object v4

    .line 2778
    .local v4, "hash":[B
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ne v0, v5, :cond_1

    .line 2783
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2784
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2786
    :try_start_0
    invoke-static {p1, v4}, Lorg/openjsse/sun/security/ssl/SSLCipher;->compareMacTags(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v5

    .line 2787
    .local v5, "results":[I
    const/4 v6, 0x0

    aget v7, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    .line 2790
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2791
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2787
    return v6

    .line 2790
    .end local v5    # "results":[I
    :catchall_0
    move-exception v5

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2791
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2792
    throw v5

    .line 2780
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Internal MAC error"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static checkPadding(Ljava/nio/ByteBuffer;B)[I
    .locals 6
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "pad"    # B

    .line 2935
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2941
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    .line 2942
    .local v1, "results":[I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 2943
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x100

    if-gt v2, v3, :cond_2

    .line 2944
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    if-gt v2, v3, :cond_1

    .line 2945
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x1

    if-eq v4, p1, :cond_0

    .line 2946
    aget v4, v1, v0

    add-int/2addr v4, v5

    aput v4, v1, v0

    goto :goto_2

    .line 2948
    :cond_0
    aget v4, v1, v5

    add-int/2addr v4, v5

    aput v4, v1, v5

    .line 2944
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2943
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    .line 2953
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 2936
    .end local v1    # "results":[I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hasRemaining() must be positive"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkStreamMac(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B[B)V
    .locals 4
    .param p0, "signer"    # Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "contentType"    # B
    .param p3, "sequence"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2694
    invoke-interface {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 2698
    .local v0, "tagLen":I
    if-eqz v0, :cond_2

    .line 2699
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2700
    .local v1, "contentLen":I
    if-ltz v1, :cond_1

    .line 2707
    const/4 v2, 0x0

    invoke-static {p2, p1, p0, p3, v2}, Lorg/openjsse/sun/security/ssl/SSLCipher;->checkMacTags(BLjava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/Authenticator$MAC;[BZ)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2708
    :cond_0
    new-instance v2, Ljavax/crypto/BadPaddingException;

    const-string v3, "bad record MAC"

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2701
    :cond_1
    new-instance v2, Ljavax/crypto/BadPaddingException;

    const-string v3, "bad record"

    invoke-direct {v2, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2711
    .end local v1    # "contentLen":I
    :cond_2
    :goto_0
    return-void
.end method

.method private static compareMacTags(Ljava/nio/ByteBuffer;[B)[I
    .locals 7
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "tag"    # [B

    .line 2803
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    .line 2807
    .local v1, "results":[I
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p1, v3

    .line 2808
    .local v4, "t":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v4, :cond_0

    .line 2809
    aget v5, v1, v0

    add-int/2addr v5, v6

    aput v5, v1, v0

    goto :goto_1

    .line 2811
    :cond_0
    aget v5, v1, v6

    add-int/2addr v5, v6

    aput v5, v1, v6

    .line 2807
    .end local v4    # "t":B
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2815
    :cond_1
    return-object v1
.end method

.method private static isTransformationAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "transformation"    # Ljava/lang/String;

    .line 504
    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 505
    return v1

    .line 508
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    return v1

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "ssl"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transformation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not available."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    return v2
.end method

.method private static isUnlimited(ILjava/lang/String;)Z
    .locals 3
    .param p0, "keySize"    # I
    .param p1, "transformation"    # Ljava/lang/String;

    .line 578
    mul-int/lit8 v0, p0, 0x8

    .line 579
    .local v0, "keySizeInBits":I
    const/16 v1, 0x80

    if-le v0, v1, :cond_1

    .line 582
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v0, :cond_0

    .line 584
    return v1

    .line 588
    :cond_0
    goto :goto_0

    .line 586
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/Exception;
    return v1

    .line 591
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private static removePadding(Ljava/nio/ByteBuffer;IILorg/openjsse/sun/security/ssl/ProtocolVersion;)I
    .locals 9
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "tagLen"    # I
    .param p2, "blockSize"    # I
    .param p3, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2882
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2883
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 2886
    .local v1, "offset":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    .line 2887
    .local v2, "padOffset":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 2889
    .local v3, "padLen":I
    add-int/lit8 v4, v3, 0x1

    sub-int v4, v0, v4

    .line 2890
    .local v4, "newLen":I
    sub-int v5, v4, p1

    if-ltz v5, :cond_3

    .line 2902
    nop

    .line 2903
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    add-int v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    .line 2902
    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLCipher;->checkPadding(Ljava/nio/ByteBuffer;B)[I

    move-result-object v5

    .line 2905
    .local v5, "results":[I
    invoke-virtual {p3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS10PlusSpec()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2906
    const/4 v6, 0x0

    aget v6, v5, v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 2907
    :cond_0
    new-instance v6, Ljavax/crypto/BadPaddingException;

    const-string v7, "Invalid TLS padding data"

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2914
    :cond_1
    if-gt v3, p2, :cond_2

    .line 2922
    :goto_0
    add-int v6, v1, v4

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2924
    return v4

    .line 2915
    :cond_2
    new-instance v6, Ljavax/crypto/BadPaddingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Padding length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") of SSLv3 message should not be bigger than the block size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2896
    .end local v5    # "results":[I
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLCipher;->checkPadding(Ljava/nio/ByteBuffer;B)[I

    .line 2898
    new-instance v5, Ljavax/crypto/BadPaddingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Padding length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLCipher;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLCipher;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SSLCipher;
    .locals 1

    .line 54
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLCipher;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SSLCipher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SSLCipher;

    return-object v0
.end method


# virtual methods
.method createReadCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .locals 14
    .param p1, "authenticator"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p3, "key"    # Ljavax/crypto/SecretKey;
    .param p4, "iv"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 524
    move-object v8, p0

    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLCipher;->writeCipherGenerators:[Ljava/util/Map$Entry;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 525
    return-object v1

    .line 528
    :cond_0
    const/4 v0, 0x0

    .line 530
    .local v0, "wcg":Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;
    iget-object v2, v8, Lorg/openjsse/sun/security/ssl/SSLCipher;->readCipherGenerators:[Ljava/util/Map$Entry;

    array-length v3, v2

    const/4 v4, 0x0

    move-object v9, v0

    move v0, v4

    .end local v0    # "wcg":Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;
    .local v9, "wcg":Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;
    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v5, v2, v0

    .line 531
    .local v5, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    array-length v7, v6

    move v10, v4

    :goto_1
    if-ge v10, v7, :cond_2

    aget-object v11, v6, v10

    .line 532
    .local v11, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    move-object/from16 v12, p2

    if-ne v12, v11, :cond_1

    .line 533
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    move-object v9, v13

    check-cast v9, Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;

    .line 531
    .end local v11    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v12, p2

    .line 530
    .end local v5    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_3
    move-object/from16 v12, p2

    if-eqz v9, :cond_4

    .line 539
    iget-object v4, v8, Lorg/openjsse/sun/security/ssl/SSLCipher;->transformation:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;->createCipher(Lorg/openjsse/sun/security/ssl/SSLCipher;Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v0

    return-object v0

    .line 542
    :cond_4
    return-object v1
.end method

.method createWriteCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .locals 14
    .param p1, "authenticator"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p3, "key"    # Ljavax/crypto/SecretKey;
    .param p4, "iv"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 549
    move-object v8, p0

    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLCipher;->readCipherGenerators:[Ljava/util/Map$Entry;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 550
    return-object v1

    .line 553
    :cond_0
    const/4 v0, 0x0

    .line 555
    .local v0, "rcg":Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;
    iget-object v2, v8, Lorg/openjsse/sun/security/ssl/SSLCipher;->writeCipherGenerators:[Ljava/util/Map$Entry;

    array-length v3, v2

    const/4 v4, 0x0

    move-object v9, v0

    move v0, v4

    .end local v0    # "rcg":Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;
    .local v9, "rcg":Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;
    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v5, v2, v0

    .line 556
    .local v5, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    array-length v7, v6

    move v10, v4

    :goto_1
    if-ge v10, v7, :cond_2

    aget-object v11, v6, v10

    .line 557
    .local v11, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    move-object/from16 v12, p2

    if-ne v12, v11, :cond_1

    .line 558
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    move-object v9, v13

    check-cast v9, Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;

    .line 556
    .end local v11    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v12, p2

    .line 555
    .end local v5    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_3
    move-object/from16 v12, p2

    if-eqz v9, :cond_4

    .line 564
    iget-object v4, v8, Lorg/openjsse/sun/security/ssl/SSLCipher;->transformation:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/openjsse/sun/security/ssl/SSLCipher$WriteCipherGenerator;->createCipher(Lorg/openjsse/sun/security/ssl/SSLCipher;Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v0

    return-object v0

    .line 567
    :cond_4
    return-object v1
.end method

.method isAvailable()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->isAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher;->description:Ljava/lang/String;

    return-object v0
.end method
