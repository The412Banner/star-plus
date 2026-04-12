.class public Lorg/openjsse/javax/net/ssl/SSLParameters;
.super Ljavax/net/ssl/SSLParameters;
.source "SSLParameters.java"


# instance fields
.field private applicationProtocols:[Ljava/lang/String;

.field private enableRetransmissions:Z

.field private maximumPacketSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->enableRetransmissions:Z

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->maximumPacketSize:I

    .line 101
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->applicationProtocols:[Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLParameters;-><init>([Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->enableRetransmissions:Z

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->maximumPacketSize:I

    .line 101
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->applicationProtocols:[Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .param p2, "protocols"    # [Ljava/lang/String;

    .line 153
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLParameters;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->enableRetransmissions:Z

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->maximumPacketSize:I

    .line 101
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->applicationProtocols:[Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public getEnableRetransmissions()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->enableRetransmissions:Z

    return v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    .line 253
    iget v0, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->maximumPacketSize:I

    return v0
.end method

.method public setEnableRetransmissions(Z)V
    .locals 0
    .param p1, "enableRetransmissions"    # Z

    .line 170
    iput-boolean p1, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->enableRetransmissions:Z

    .line 171
    return-void
.end method

.method public setMaximumPacketSize(I)V
    .locals 2
    .param p1, "maximumPacketSize"    # I

    .line 213
    if-ltz p1, :cond_0

    .line 218
    iput p1, p0, Lorg/openjsse/javax/net/ssl/SSLParameters;->maximumPacketSize:I

    .line 219
    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum packet size cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
