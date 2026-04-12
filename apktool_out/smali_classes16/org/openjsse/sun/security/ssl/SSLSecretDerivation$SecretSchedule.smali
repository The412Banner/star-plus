.class final enum Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;
.super Ljava/lang/Enum;
.source "SSLSecretDerivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SecretSchedule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsClientAppTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsClientEarlyTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsClientHandshakeTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsEarlyExporterMasterSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsExporterMasterSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsExtBinderKey:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsResBinderKey:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsResumptionMasterSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsSaltSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsServerAppTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

.field public static final enum TlsServerHandshakeTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;


# instance fields
.field private final label:[B


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 134
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/4 v1, 0x0

    const-string v2, "derived"

    const-string v3, "TlsSaltSecret"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsSaltSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 135
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/4 v1, 0x1

    const-string v2, "ext binder"

    const-string v3, "TlsExtBinderKey"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsExtBinderKey:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 136
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/4 v1, 0x2

    const-string v2, "res binder"

    const-string v3, "TlsResBinderKey"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsResBinderKey:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 137
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/4 v1, 0x3

    const-string v2, "c e traffic"

    const-string v3, "TlsClientEarlyTrafficSecret"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsClientEarlyTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 138
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/4 v1, 0x4

    const-string v2, "e exp master"

    const-string v3, "TlsEarlyExporterMasterSecret"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsEarlyExporterMasterSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 139
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/4 v1, 0x5

    const-string v2, "c hs traffic"

    const-string v3, "TlsClientHandshakeTrafficSecret"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsClientHandshakeTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 140
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/4 v1, 0x6

    const-string v2, "s hs traffic"

    const-string v3, "TlsServerHandshakeTrafficSecret"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsServerHandshakeTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 141
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/4 v1, 0x7

    const-string v2, "c ap traffic"

    const-string v3, "TlsClientAppTrafficSecret"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsClientAppTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 142
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/16 v1, 0x8

    const-string v2, "s ap traffic"

    const-string v3, "TlsServerAppTrafficSecret"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsServerAppTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 143
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/16 v1, 0x9

    const-string v2, "exp master"

    const-string v3, "TlsExporterMasterSecret"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsExporterMasterSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 144
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    const/16 v1, 0xa

    const-string v2, "res master"

    const-string v3, "TlsResumptionMasterSecret"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsResumptionMasterSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 132
    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsSaltSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsExtBinderKey:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsResBinderKey:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsClientEarlyTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsEarlyExporterMasterSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsClientHandshakeTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v10, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsServerHandshakeTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsClientAppTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v12, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsServerAppTrafficSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v13, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsExporterMasterSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    sget-object v14, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->TlsResumptionMasterSecret:Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    filled-new-array/range {v4 .. v14}, [Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tls13 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->label:[B

    .line 150
    return-void
.end method

.method static synthetic access$000(Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    .line 132
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->label:[B

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 132
    const-class v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;
    .locals 1

    .line 132
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SSLSecretDerivation$SecretSchedule;

    return-object v0
.end method
