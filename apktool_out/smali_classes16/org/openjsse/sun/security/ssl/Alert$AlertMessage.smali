.class final Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;
.super Ljava/lang/Object;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlertMessage"
.end annotation


# instance fields
.field private final id:B

.field private final level:B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/TransportContext;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/TransportContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;->level:B

    .line 201
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;->id:B

    .line 202
    return-void

    .line 196
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v1, "Invalid Alert message: no sufficient data"

    invoke-virtual {p1, v0, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;)B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;

    .line 185
    iget-byte v0, p0, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;->level:B

    return v0
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;)B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;

    .line 185
    iget-byte v0, p0, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;->id:B

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 206
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"Alert\": \'{\'\n  \"level\"      : \"{0}\",\n  \"description\": \"{1}\"\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 213
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-byte v1, p0, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;->level:B

    .line 214
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Alert$Level;->nameOf(B)Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;->id:B

    .line 215
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Alert;->nameOf(B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
