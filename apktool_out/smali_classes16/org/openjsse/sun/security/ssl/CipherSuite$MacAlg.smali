.class final enum Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MacAlg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

.field public static final enum M_MD5:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

.field public static final enum M_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

.field public static final enum M_SHA:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

.field public static final enum M_SHA256:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

.field public static final enum M_SHA384:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;


# instance fields
.field final hashBlockSize:I

.field final minimalPaddingSize:I

.field final name:Ljava/lang/String;

.field final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1163
    new-instance v7, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "M_NULL"

    const/4 v2, 0x0

    const-string v3, "NULL"

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    .line 1164
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    const/16 v13, 0x40

    const/16 v14, 0x9

    const-string v9, "M_MD5"

    const/4 v10, 0x1

    const-string v11, "MD5"

    const/16 v12, 0x10

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_MD5:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    .line 1165
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    const/16 v6, 0x40

    const/16 v7, 0x9

    const-string v2, "M_SHA"

    const/4 v3, 0x2

    const-string v4, "SHA"

    const/16 v5, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_SHA:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    .line 1166
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    const-string v9, "M_SHA256"

    const/4 v10, 0x3

    const-string v11, "SHA256"

    const/16 v12, 0x20

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_SHA256:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    .line 1167
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    const/16 v6, 0x80

    const/16 v7, 0x11

    const-string v2, "M_SHA384"

    const/4 v3, 0x4

    const-string v4, "SHA384"

    const/16 v5, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_SHA384:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    .line 1162
    sget-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_MD5:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_SHA:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_SHA256:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    sget-object v4, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_SHA384:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->$VALUES:[Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "size"    # I
    .param p5, "hashBlockSize"    # I
    .param p6, "minimalPaddingSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 1182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1183
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->name:Ljava/lang/String;

    .line 1184
    iput p4, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1185
    iput p5, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->hashBlockSize:I

    .line 1186
    iput p6, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->minimalPaddingSize:I

    .line 1187
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1162
    const-class v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .locals 1

    .line 1162
    sget-object v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->$VALUES:[Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1191
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->name:Ljava/lang/String;

    return-object v0
.end method
