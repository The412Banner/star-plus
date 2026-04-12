.class final enum Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
.super Ljava/lang/Enum;
.source "CertStatusExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CertStatusRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

.field public static final enum OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

.field public static final enum OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;


# instance fields
.field final id:B

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 239
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    const-string v1, "ocsp"

    const-string v2, "OCSP"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    .line 240
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    const/4 v1, 0x2

    const-string v2, "ocsp_multi"

    const-string v3, "OCSP_MULTI"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    .line 238
    sget-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    filled-new-array {v0, v1}, [Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->$VALUES:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0
    .param p3, "id"    # B
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    .line 247
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->name:Ljava/lang/String;

    .line 248
    return-void
.end method

.method static nameOf(B)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # B

    .line 264
    invoke-static {}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->values()[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 265
    .local v3, "srt":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    if-ne v4, p0, :cond_0

    .line 266
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->name:Ljava/lang/String;

    return-object v0

    .line 264
    .end local v3    # "srt":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNDEFINED-CERT-STATUS-TYPE("

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

.method static valueOf(B)Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    .locals 5
    .param p0, "id"    # B

    .line 254
    invoke-static {}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->values()[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 255
    .local v3, "srt":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    if-ne v4, p0, :cond_0

    .line 256
    return-object v3

    .line 254
    .end local v3    # "srt":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 238
    const-class v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;
    .locals 1

    .line 238
    sget-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->$VALUES:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    return-object v0
.end method
