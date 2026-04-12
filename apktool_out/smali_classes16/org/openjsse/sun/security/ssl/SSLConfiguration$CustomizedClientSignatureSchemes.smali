.class final Lorg/openjsse/sun/security/ssl/SSLConfiguration$CustomizedClientSignatureSchemes;
.super Ljava/lang/Object;
.source "SSLConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomizedClientSignatureSchemes"
.end annotation


# static fields
.field private static signatureSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 468
    nop

    .line 469
    const-string v0, "jdk.tls.client.SignatureSchemes"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->access$200(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration$CustomizedClientSignatureSchemes;->signatureSchemes:Ljava/util/List;

    .line 468
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 467
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration$CustomizedClientSignatureSchemes;->signatureSchemes:Ljava/util/List;

    return-object v0
.end method
