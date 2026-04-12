.class final enum Lorg/openjsse/sun/security/ssl/ProtocolVersion;
.super Ljava/lang/Enum;
.source "ProtocolVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field public static final enum DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field public static final enum DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final LIMIT_MAX_VALUE:I = 0xffff

.field static final LIMIT_MIN_VALUE:I

.field public static final enum NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_10_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_10_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_11_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_EMPTY:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_OF_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_OF_30:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_OF_NONE:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_TO_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_TO_TLS10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_TO_TLS11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field static final PROTOCOLS_TO_TLS12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field public static final enum SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field public static final enum SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field public static final enum TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field public static final enum TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field public static final enum TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field public static final enum TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;


# instance fields
.field final id:I

.field final isAvailable:Z

.field final isDTLS:Z

.field final major:B

.field final minor:B

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v4, "TLSv1.3"

    const/4 v5, 0x0

    const-string v1, "TLS13"

    const/4 v2, 0x0

    const/16 v3, 0x304

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 42
    new-instance v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v11, "TLSv1.2"

    const/4 v12, 0x0

    const-string v8, "TLS12"

    const/4 v9, 0x1

    const/16 v10, 0x303

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 43
    new-instance v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v5, "TLSv1.1"

    const/4 v6, 0x0

    const-string v2, "TLS11"

    const/4 v3, 0x2

    const/16 v4, 0x302

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 44
    new-instance v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v11, "TLSv1"

    const-string v8, "TLS10"

    const/4 v9, 0x3

    const/16 v10, 0x301

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v5, "SSLv3"

    const-string v2, "SSL30"

    const/4 v3, 0x4

    const/16 v4, 0x300

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 46
    new-instance v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v11, "SSLv2Hello"

    const-string v8, "SSL20Hello"

    const/4 v9, 0x5

    const/4 v10, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 48
    new-instance v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v5, "DTLSv1.2"

    const/4 v6, 0x1

    const-string v2, "DTLS12"

    const/4 v3, 0x6

    const v4, 0xfefd

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 49
    new-instance v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v11, "DTLSv1.0"

    const/4 v12, 0x1

    const-string v8, "DTLS10"

    const/4 v9, 0x7

    const v10, 0xfeff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 52
    new-instance v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v5, "NONE"

    const/4 v6, 0x0

    const-string v2, "NONE"

    const/16 v3, 0x8

    const/4 v4, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 40
    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v9, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v10, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v11, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v14, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v15, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array/range {v7 .. v15}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->$VALUES:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 69
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 74
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 79
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array/range {v1 .. v6}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 84
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array/range {v1 .. v7}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 89
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_NONE:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 94
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_30:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 99
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 104
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 109
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 114
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_10_11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 119
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_11_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 124
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_12_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 129
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_10_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 134
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_TLS12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 139
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_TLS11:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 144
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    filled-new-array {v0, v1}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_TLS10:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 149
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sput-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_EMPTY:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 1
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "isDTLS"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput p3, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    .line 153
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    .line 154
    iput-boolean p5, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    .line 155
    ushr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    .line 156
    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 158
    sget-object p1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->DEFAULT_SSL_ONLY:Ljava/security/AlgorithmConstraints;

    sget-object p2, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 159
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    .line 158
    const/4 v0, 0x0

    invoke-interface {p1, p2, p4, v0}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isAvailable:Z

    .line 161
    return-void
.end method

.method static isNegotiable(BBZZ)Z
    .locals 4
    .param p0, "major"    # B
    .param p1, "minor"    # B
    .param p2, "isDTLS"    # Z
    .param p3, "allowSSL20Hello"    # Z

    .line 232
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    .line 233
    .local v0, "v":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 234
    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-gt v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 236
    :cond_1
    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ge v0, v3, :cond_3

    .line 237
    if-eqz p3, :cond_2

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-eq v0, v3, :cond_3

    .line 238
    :cond_2
    return v1

    .line 241
    :cond_3
    return v2
.end method

.method static nameOf(BB)Ljava/lang/String;
    .locals 5
    .param p0, "major"    # B
    .param p1, "minor"    # B

    .line 195
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->values()[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 196
    .local v3, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    if-ne v4, p0, :cond_0

    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    if-ne v4, p1, :cond_0

    .line 197
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0

    .line 195
    .end local v3    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(D)TLS-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static nameOf(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .line 208
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 215
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->values()[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 216
    .local v3, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    return-object v3

    .line 215
    .end local v3    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static namesOf([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "protocolNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 284
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 288
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v0, "pvs":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 290
    .local v3, "pn":Ljava/lang/String;
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v4

    .line 291
    .local v4, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-eqz v4, :cond_1

    .line 296
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v3    # "pn":Ljava/lang/String;
    .end local v4    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .restart local v3    # "pn":Ljava/lang/String;
    .restart local v4    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported protocol"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    .end local v3    # "pn":Ljava/lang/String;
    .end local v4    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 285
    .end local v0    # "pvs":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static selectedFrom(Ljava/util/List;I)Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 5
    .param p1, "suggestedVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;I)",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;"
        }
    .end annotation

    .line 395
    .local p0, "listedVersions":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 396
    .local v0, "selectedVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 397
    .local v2, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget v3, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ne v3, p1, :cond_0

    .line 398
    return-object v2

    .line 399
    :cond_0
    iget-boolean v3, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v3, :cond_1

    .line 400
    iget v3, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-le v3, p1, :cond_2

    iget v3, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    iget v4, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ge v3, v4, :cond_2

    .line 401
    move-object v0, v2

    goto :goto_1

    .line 404
    :cond_1
    iget v3, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ge v3, p1, :cond_2

    iget v3, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    iget v4, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-le v3, v4, :cond_2

    .line 405
    move-object v0, v2

    .line 408
    .end local v2    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_2
    :goto_1
    goto :goto_0

    .line 410
    :cond_3
    return-object v0
.end method

.method static toStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 249
    .local p0, "protocolVersions":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 251
    .local v0, "protocolNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 252
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 253
    .local v3, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v5, v0, v1

    .line 254
    .end local v3    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    move v1, v4

    goto :goto_0

    .line 256
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0

    .line 259
    .end local v0    # "protocolNames":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method static toStringArray([I)[Ljava/lang/String;
    .locals 7
    .param p0, "protocolVersions"    # [I

    .line 266
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    .line 267
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    .line 268
    .local v1, "protocolNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 269
    .local v2, "i":I
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p0, v0

    .line 270
    .local v4, "pv":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 269
    .end local v4    # "pv":I
    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_0

    .line 273
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return-object v1

    .line 276
    .end local v1    # "protocolNames":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method static useTLS10PlusSpec(IZ)Z
    .locals 2
    .param p0, "id"    # I
    .param p1, "isDTLS"    # Z

    .line 375
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static useTLS12PlusSpec(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 307
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    .line 308
    .local v0, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v0, v2, :cond_2

    .line 309
    iget-boolean v2, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v4, v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-gt v2, v4, :cond_1

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v4, v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt v2, v4, :cond_1

    :goto_0
    move v1, v3

    :cond_1
    return v1

    .line 312
    :cond_2
    return v1
.end method

.method static useTLS13PlusSpec(IZ)Z
    .locals 3
    .param p0, "id"    # I
    .param p1, "isDTLS"    # Z

    .line 383
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ge p0, v2, :cond_1

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt p0, v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method static valueOf(BB)Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 5
    .param p0, "major"    # B
    .param p1, "minor"    # B

    .line 168
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->values()[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 169
    .local v3, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    if-ne v4, p0, :cond_0

    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    if-ne v4, p1, :cond_0

    .line 170
    return-object v3

    .line 168
    .end local v3    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static valueOf(I)Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 5
    .param p0, "id"    # I

    .line 181
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->values()[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 182
    .local v3, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget v4, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ne v4, p0, :cond_0

    .line 183
    return-object v3

    .line 181
    .end local v3    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 1

    .line 40
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->$VALUES:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    return-object v0
.end method


# virtual methods
.method compare(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)I
    .locals 2
    .param p1, "that"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 321
    if-ne p0, p1, :cond_0

    .line 322
    const/4 v0, 0x0

    return v0

    .line 325
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne p0, v0, :cond_1

    .line 326
    const/4 v0, -0x1

    return v0

    .line 327
    :cond_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne p1, v0, :cond_2

    .line 328
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_2
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v0, :cond_3

    .line 332
    iget v0, p1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    iget v1, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sub-int/2addr v0, v1

    return v0

    .line 334
    :cond_3
    iget v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    iget v1, p1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sub-int/2addr v0, v1

    return v0
.end method

.method useTLS10PlusSpec()Z
    .locals 3

    .line 367
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method useTLS11PlusSpec()Z
    .locals 3

    .line 359
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method useTLS12PlusSpec()Z
    .locals 4

    .line 351
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-gt v0, v3, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt v0, v3, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method useTLS13PlusSpec()Z
    .locals 4

    .line 343
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS13:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt v0, v3, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method
