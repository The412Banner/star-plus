.class final enum Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HashAlg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

.field public static final enum H_NONE:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

.field public static final enum H_SHA256:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

.field public static final enum H_SHA384:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;


# instance fields
.field final blockSize:I

.field final hashLength:I

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1202
    new-instance v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "H_NONE"

    const/4 v2, 0x0

    const-string v3, "NONE"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_NONE:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 1203
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    const/16 v11, 0x20

    const/16 v12, 0x40

    const-string v8, "H_SHA256"

    const/4 v9, 0x1

    const-string v10, "SHA-256"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_SHA256:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 1204
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    const/16 v5, 0x30

    const/16 v6, 0x80

    const-string v2, "H_SHA384"

    const/4 v3, 0x2

    const-string v4, "SHA-384"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_SHA384:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 1201
    sget-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_NONE:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_SHA256:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_SHA384:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->$VALUES:[Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p3, "hashAlg"    # Ljava/lang/String;
    .param p4, "hashLength"    # I
    .param p5, "blockSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 1210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1211
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    .line 1212
    iput p4, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    .line 1213
    iput p5, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->blockSize:I

    .line 1214
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1201
    const-class v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .locals 1

    .line 1201
    sget-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->$VALUES:[Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1218
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    return-object v0
.end method
