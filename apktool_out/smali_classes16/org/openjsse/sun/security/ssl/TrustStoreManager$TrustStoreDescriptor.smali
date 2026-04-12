.class final Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
.super Ljava/lang/Object;
.source "TrustStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/TrustStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrustStoreDescriptor"
.end annotation


# static fields
.field private static final defaultStore:Ljava/lang/String;

.field private static final defaultStorePath:Ljava/lang/String;

.field private static final fileSep:Ljava/lang/String;

.field private static final jsseDefaultStore:Ljava/lang/String;


# instance fields
.field private final lastModified:J

.field private final storeFile:Ljava/io/File;

.field private final storeName:Ljava/lang/String;

.field private final storePassword:Ljava/lang/String;

.field private final storeProvider:Ljava/lang/String;

.field private final storeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->fileSep:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v1, "java.home"

    invoke-static {v1}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->fileSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->fileSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "security"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->defaultStorePath:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->defaultStorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->fileSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cacerts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->defaultStore:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->defaultStorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->fileSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jssecacerts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->jsseDefaultStore:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V
    .locals 2
    .param p1, "storeName"    # Ljava/lang/String;
    .param p2, "storeType"    # Ljava/lang/String;
    .param p3, "storeProvider"    # Ljava/lang/String;
    .param p4, "storePassword"    # Ljava/lang/String;
    .param p5, "storeFile"    # Ljava/io/File;
    .param p6, "lastModified"    # J

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeName:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeType:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeProvider:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storePassword:Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeFile:Ljava/io/File;

    .line 109
    iput-wide p6, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->lastModified:J

    .line 111
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "trustmanager"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trustStore is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntrustStore type is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntrustStore provider is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nthe last modified time is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p6, p7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JLorg/openjsse/sun/security/ssl/TrustStoreManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/io/File;
    .param p6, "x5"    # J
    .param p8, "x6"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$1;

    .line 73
    invoke-direct/range {p0 .. p7}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->jsseDefaultStore:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->defaultStore:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 73
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 73
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 73
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 73
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 73
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storePassword:Ljava/lang/String;

    return-object v0
.end method

.method static createInstance()Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    .locals 1

    .line 126
    new-instance v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor$1;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 180
    return v0

    .line 183
    :cond_0
    instance-of v1, p1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 184
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    .line 185
    .local v1, "that":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    iget-wide v3, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->lastModified:J

    iget-wide v5, v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->lastModified:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeName:Ljava/lang/String;

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeName:Ljava/lang/String;

    .line 186
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeType:Ljava/lang/String;

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeType:Ljava/lang/String;

    .line 187
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeProvider:Ljava/lang/String;

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeProvider:Ljava/lang/String;

    .line 188
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 185
    :goto_0
    return v0

    .line 191
    .end local v1    # "that":Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 199
    const/16 v0, 0x11

    .line 201
    .local v0, "result":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 205
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 209
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeProvider:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeProvider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeProvider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 213
    :cond_2
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeFile:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 214
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->storeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 217
    :cond_3
    iget-wide v1, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->lastModified:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 218
    mul-int/lit8 v1, v0, 0x1f

    int-to-long v1, v1

    iget-wide v3, p0, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->lastModified:J

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 221
    :cond_4
    return v0
.end method
