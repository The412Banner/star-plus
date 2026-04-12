.class final Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;
.super Ljava/lang/Object;
.source "PskKeyExchangeModesExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PskKeyExchangeModesSpec"
.end annotation


# static fields
.field private static final DEFAULT:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;


# instance fields
.field final modes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;

    sget-object v1, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->PSK_DHE_KE:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->id:B

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    invoke-direct {v0, v2}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;-><init>([B)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->DEFAULT:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 105
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->modes:[B

    .line 106
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid psk_key_exchange_modes extension: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "modes"    # [B

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->modes:[B

    .line 96
    return-void
.end method

.method static synthetic access$500()Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;
    .locals 1

    .line 87
    sget-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->DEFAULT:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;

    return-object v0
.end method


# virtual methods
.method contains(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;)Z
    .locals 6
    .param p1, "mode"    # Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    .line 109
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->modes:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->modes:[B

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v0, v3

    .line 111
    .local v4, "m":B
    iget-byte v5, p1, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->id:B

    if-ne v5, v4, :cond_0

    .line 112
    const/4 v0, 0x1

    return v0

    .line 110
    .end local v4    # "m":B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 122
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"ke_modes\": \'[\'{0}\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 124
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->modes:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->modes:[B

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 130
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 132
    .local v2, "isFirst":Z
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->modes:[B

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-byte v6, v3, v5

    .line 133
    .local v6, "mode":B
    if-eqz v2, :cond_1

    .line 134
    const/4 v2, 0x0

    goto :goto_1

    .line 136
    :cond_1
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_1
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->nameOf(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .end local v6    # "mode":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    :cond_2
    nop

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 146
    .local v3, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 125
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "isFirst":Z
    .end local v3    # "messageFields":[Ljava/lang/Object;
    :cond_3
    :goto_2
    const-string v1, "<no PSK key exchange modes specified>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
