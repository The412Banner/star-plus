.class Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;
.super Ljava/lang/Object;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedSSLProtocols"
.end annotation


# static fields
.field private static final JDK_TLS_CLIENT_PROTOCOLS:Ljava/lang/String; = "jdk.tls.client.protocols"

.field private static final JDK_TLS_SERVER_PROTOCOLS:Ljava/lang/String; = "jdk.tls.server.protocols"

.field static final customizedClientProtocols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field static final customizedServerProtocols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field static reservedException:Ljava/lang/IllegalArgumentException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 858
    const/4 v0, 0x0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->reservedException:Ljava/lang/IllegalArgumentException;

    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->customizedClientProtocols:Ljava/util/ArrayList;

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->customizedServerProtocols:Ljava/util/ArrayList;

    .line 871
    const-string v0, "jdk.tls.client.protocols"

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->customizedClientProtocols:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->populate(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 872
    const-string v0, "jdk.tls.server.protocols"

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->customizedServerProtocols:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->populate(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 873
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static populate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "propname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)V"
        }
    .end annotation

    .line 877
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-static {p0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 879
    return-void

    .line 882
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_1

    .line 885
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 890
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 891
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "protocols":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 893
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 895
    aget-object v3, v1, v2

    .line 896
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v3

    .line 897
    .local v3, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    const-string v4, ": "

    if-nez v3, :cond_2

    .line 898
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a supported SSL protocol name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->reservedException:Ljava/lang/IllegalArgumentException;

    .line 903
    :cond_2
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v3, v5, :cond_3

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v3, v5, :cond_4

    .line 906
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is not FIPS compliant"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedSSLProtocols;->reservedException:Ljava/lang/IllegalArgumentException;

    .line 910
    goto :goto_1

    .line 914
    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 915
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    .end local v3    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 919
    .end local v1    # "protocols":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_6
    :goto_1
    return-void
.end method
