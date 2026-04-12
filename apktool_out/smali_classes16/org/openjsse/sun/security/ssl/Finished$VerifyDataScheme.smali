.class final enum Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;
.super Ljava/lang/Enum;
.source "Finished.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Finished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VerifyDataScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

.field public static final enum SSL30:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

.field public static final enum TLS10:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

.field public static final enum TLS12:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

.field public static final enum TLS13:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;


# instance fields
.field final generator:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 163
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    new-instance v1, Lorg/openjsse/sun/security/ssl/Finished$S30VerifyDataGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/Finished$S30VerifyDataGenerator;-><init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V

    const-string v3, "SSL30"

    const/4 v4, 0x0

    const-string v5, "kdf_ssl30"

    invoke-direct {v0, v3, v4, v5, v1}, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->SSL30:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    .line 164
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    new-instance v1, Lorg/openjsse/sun/security/ssl/Finished$T10VerifyDataGenerator;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/Finished$T10VerifyDataGenerator;-><init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V

    const-string v3, "TLS10"

    const/4 v4, 0x1

    const-string v5, "kdf_tls10"

    invoke-direct {v0, v3, v4, v5, v1}, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->TLS10:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    .line 165
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    new-instance v1, Lorg/openjsse/sun/security/ssl/Finished$T12VerifyDataGenerator;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/Finished$T12VerifyDataGenerator;-><init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V

    const-string v3, "TLS12"

    const/4 v4, 0x2

    const-string v5, "kdf_tls12"

    invoke-direct {v0, v3, v4, v5, v1}, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->TLS12:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    .line 166
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    new-instance v1, Lorg/openjsse/sun/security/ssl/Finished$T13VerifyDataGenerator;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/Finished$T13VerifyDataGenerator;-><init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V

    const-string v2, "TLS13"

    const/4 v3, 0x3

    const-string v4, "kdf_tls13"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->TLS13:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    .line 162
    sget-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->SSL30:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->TLS10:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->TLS12:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->TLS13:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->$VALUES:[Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "verifyDataGenerator"    # Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->name:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->generator:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;

    .line 174
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 162
    const-class v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    return-object v0
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;
    .locals 2
    .param p0, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 177
    sget-object v0, Lorg/openjsse/sun/security/ssl/Finished$1;->$SwitchMap$org$openjsse$sun$security$ssl$ProtocolVersion:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 188
    :pswitch_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->TLS13:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    return-object v0

    .line 186
    :pswitch_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->TLS12:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    return-object v0

    .line 183
    :pswitch_2
    sget-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->TLS10:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    return-object v0

    .line 179
    :pswitch_3
    sget-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->SSL30:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;
    .locals 1

    .line 162
    sget-object v0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->$VALUES:[Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    return-object v0
.end method


# virtual methods
.method public createVerifyData(Lorg/openjsse/sun/security/ssl/HandshakeContext;Z)[B
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "isValidation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->generator:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->generator:Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;->createVerifyData(Lorg/openjsse/sun/security/ssl/HandshakeContext;Z)[B

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
