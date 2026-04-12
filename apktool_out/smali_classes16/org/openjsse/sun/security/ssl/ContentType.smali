.class final enum Lorg/openjsse/sun/security/ssl/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/ContentType;

.field public static final enum ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

.field public static final enum APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

.field public static final enum CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

.field public static final enum HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

.field public static final enum INVALID:Lorg/openjsse/sun/security/ssl/ContentType;


# instance fields
.field final id:B

.field final name:Ljava/lang/String;

.field final supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 32
    new-instance v6, Lorg/openjsse/sun/security/ssl/ContentType;

    const-string v4, "invalid"

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/ContentType;-><init>(Ljava/lang/String;IBLjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v6, Lorg/openjsse/sun/security/ssl/ContentType;->INVALID:Lorg/openjsse/sun/security/ssl/ContentType;

    .line 34
    new-instance v0, Lorg/openjsse/sun/security/ssl/ContentType;

    const-string v11, "change_cipher_spec"

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_12:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v8, "CHANGE_CIPHER_SPEC"

    const/4 v9, 0x1

    const/16 v10, 0x14

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/ContentType;-><init>(Ljava/lang/String;IBLjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    .line 36
    new-instance v0, Lorg/openjsse/sun/security/ssl/ContentType;

    const-string v5, "alert"

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "ALERT"

    const/4 v3, 0x2

    const/16 v4, 0x15

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/ContentType;-><init>(Ljava/lang/String;IBLjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    .line 38
    new-instance v0, Lorg/openjsse/sun/security/ssl/ContentType;

    const-string v11, "handshake"

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v8, "HANDSHAKE"

    const/4 v9, 0x3

    const/16 v10, 0x16

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/ContentType;-><init>(Ljava/lang/String;IBLjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    .line 40
    new-instance v0, Lorg/openjsse/sun/security/ssl/ContentType;

    const-string v5, "application_data"

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_TO_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v2, "APPLICATION_DATA"

    const/4 v3, 0x4

    const/16 v4, 0x17

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/ContentType;-><init>(Ljava/lang/String;IBLjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    .line 31
    sget-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->INVALID:Lorg/openjsse/sun/security/ssl/ContentType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjsse/sun/security/ssl/ContentType;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->$VALUES:[Lorg/openjsse/sun/security/ssl/ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;[Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 0
    .param p3, "id"    # B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "supportedProtocols"    # [Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "[",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    .line 50
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/ContentType;->name:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/ContentType;->supportedProtocols:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 52
    return-void
.end method

.method static nameOf(B)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # B

    .line 65
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ContentType;->values()[Lorg/openjsse/sun/security/ssl/ContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 66
    .local v3, "ct":Lorg/openjsse/sun/security/ssl/ContentType;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v4, p0, :cond_0

    .line 67
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ContentType;->name:Ljava/lang/String;

    return-object v0

    .line 65
    .end local v3    # "ct":Lorg/openjsse/sun/security/ssl/ContentType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN CONTENT TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static valueOf(B)Lorg/openjsse/sun/security/ssl/ContentType;
    .locals 5
    .param p0, "id"    # B

    .line 55
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ContentType;->values()[Lorg/openjsse/sun/security/ssl/ContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 56
    .local v3, "ct":Lorg/openjsse/sun/security/ssl/ContentType;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v4, p0, :cond_0

    .line 57
    return-object v3

    .line 55
    .end local v3    # "ct":Lorg/openjsse/sun/security/ssl/ContentType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/ContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/openjsse/sun/security/ssl/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/ContentType;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/ContentType;
    .locals 1

    .line 31
    sget-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->$VALUES:[Lorg/openjsse/sun/security/ssl/ContentType;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/ContentType;

    return-object v0
.end method
