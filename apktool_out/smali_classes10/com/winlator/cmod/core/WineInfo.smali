.class public Lcom/winlator/cmod/core/WineInfo;
.super Ljava/lang/Object;
.source "WineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/winlator/cmod/core/WineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

.field private static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private arch:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public subversion:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/winlator/cmod/core/WineInfo;

    const-string v1, "9.0"

    const-string v2, "x86_64"

    const-string v3, "proton"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/core/WineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    .line 21
    const-string v0, "^(wine|proton)\\-([0-9\\.]+)\\-?([0-9\\.]+)?\\-(x86|x86_64|arm64ec)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/core/WineInfo;->pattern:Ljava/util/regex/Pattern;

    .line 98
    new-instance v0, Lcom/winlator/cmod/core/WineInfo$1;

    invoke-direct {v0}, Lcom/winlator/cmod/core/WineInfo$1;-><init>()V

    sput-object v0, Lcom/winlator/cmod/core/WineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->type:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->version:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->subversion:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->path:Ljava/lang/String;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/winlator/cmod/core/WineInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/core/WineInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "arch"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/winlator/cmod/core/WineInfo;->type:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/winlator/cmod/core/WineInfo;->version:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->subversion:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->path:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "arch"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/winlator/cmod/core/WineInfo;->type:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/winlator/cmod/core/WineInfo;->version:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/winlator/cmod/core/WineInfo;->path:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "subversion"    # Ljava/lang/String;
    .param p4, "arch"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/winlator/cmod/core/WineInfo;->type:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/winlator/cmod/core/WineInfo;->version:Ljava/lang/String;

    .line 39
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->subversion:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/winlator/cmod/core/WineInfo;->path:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static fromIdentifier(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Ljava/lang/String;)Lcom/winlator/cmod/core/WineInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentsManager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p2, "identifier"    # Ljava/lang/String;

    .line 119
    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v0

    .line 120
    .local v0, "imageFs":Lcom/winlator/cmod/xenvironment/ImageFs;
    const-string v1, ""

    .line 122
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating WineInfo from identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WineInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v2, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v2}, Lcom/winlator/cmod/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "/opt/"

    if-eqz v2, :cond_0

    new-instance v2, Lcom/winlator/cmod/core/WineInfo;

    sget-object v4, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    iget-object v4, v4, Lcom/winlator/cmod/core/WineInfo;->type:Ljava/lang/String;

    sget-object v5, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    iget-object v5, v5, Lcom/winlator/cmod/core/WineInfo;->version:Ljava/lang/String;

    sget-object v6, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    iget-object v6, v6, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v7}, Lcom/winlator/cmod/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/winlator/cmod/core/WineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 126
    :cond_0
    invoke-virtual {p1, p2}, Lcom/winlator/cmod/contents/ContentsManager;->getProfileByEntryName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile;

    move-result-object v2

    .line 128
    .local v2, "wineProfile":Lcom/winlator/cmod/contents/ContentProfile;
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget-object v6, v2, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v7, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-eq v6, v7, :cond_1

    iget-object v6, v2, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v7, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-ne v6, v7, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 132
    :cond_2
    sget-object v6, Lcom/winlator/cmod/core/WineInfo;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 134
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "wineVersions":[Ljava/lang/String;
    array-length v8, v7

    :goto_0
    if-ge v5, v8, :cond_4

    aget-object v9, v7, v5

    .line 137
    .local v9, "wineVersion":Ljava/lang/String;
    invoke-virtual {v9, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    goto :goto_1

    .line 136
    .end local v9    # "wineVersion":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v5, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-eq v3, v5, :cond_5

    iget-object v3, v2, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v5, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-ne v3, v5, :cond_6

    .line 144
    :cond_5
    invoke-static {p0, v2}, Lcom/winlator/cmod/contents/ContentsManager;->getInstallDir(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 146
    :cond_6
    new-instance v3, Lcom/winlator/cmod/core/WineInfo;

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v5, v4, v8, v1}, Lcom/winlator/cmod/core/WineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 148
    .end local v7    # "wineVersions":[Ljava/lang/String;
    :cond_7
    new-instance v4, Lcom/winlator/cmod/core/WineInfo;

    sget-object v5, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    iget-object v5, v5, Lcom/winlator/cmod/core/WineInfo;->type:Ljava/lang/String;

    sget-object v7, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    iget-object v7, v7, Lcom/winlator/cmod/core/WineInfo;->version:Ljava/lang/String;

    sget-object v8, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    iget-object v8, v8, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v9, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v9}, Lcom/winlator/cmod/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v7, v8, v3}, Lcom/winlator/cmod/core/WineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static isMainWineVersion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "wineVersion"    # Ljava/lang/String;

    .line 152
    if-eqz p0, :cond_1

    sget-object v0, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public fullVersion()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/winlator/cmod/core/WineInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/core/WineInfo;->subversion:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/core/WineInfo;->subversion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArch()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    return-object v0
.end method

.method public identifier()Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->type:Ljava/lang/String;

    const-string v1, "proton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proton-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wine-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isArm64EC()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    const-string v1, "arm64ec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWin64()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    const-string v1, "arm64ec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setArch(Ljava/lang/String;)V
    .locals 0
    .param p1, "arch"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->type:Ljava/lang/String;

    const-string v1, "proton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " (Custom)"

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proton "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wine "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/core/WineInfo;->fullVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    if-ne p0, v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->subversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->arch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/winlator/cmod/core/WineInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method
