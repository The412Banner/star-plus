.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareSpec;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HRRKeyShareSpec"
.end annotation


# instance fields
.field final selectedGroup:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 777
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareSpec;->selectedGroup:I

    .line 778
    return-void

    .line 772
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key_share extension: improper data (length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 774
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V
    .locals 1
    .param p1, "serverGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iget v0, p1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    iput v0, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareSpec;->selectedGroup:I

    .line 765
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 782
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"selected group\": \'[\'{0}\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 785
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget v1, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareSpec;->selectedGroup:I

    .line 786
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 788
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
