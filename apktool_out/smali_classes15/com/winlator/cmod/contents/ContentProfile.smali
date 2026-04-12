.class public Lcom/winlator/cmod/contents/ContentProfile;
.super Ljava/lang/Object;
.source "ContentProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/contents/ContentProfile$ContentFile;,
        Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    }
.end annotation


# static fields
.field public static final MARK_DESC:Ljava/lang/String; = "description"

.field public static final MARK_FILE_LIST:Ljava/lang/String; = "files"

.field public static final MARK_FILE_SOURCE:Ljava/lang/String; = "source"

.field public static final MARK_FILE_TARGET:Ljava/lang/String; = "target"

.field public static final MARK_TYPE:Ljava/lang/String; = "type"

.field public static final MARK_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final MARK_VERSION_NAME:Ljava/lang/String; = "versionName"

.field public static final MARK_WINE:Ljava/lang/String; = "wine"

.field public static final MARK_WINE_BINPATH:Ljava/lang/String; = "binPath"

.field public static final MARK_WINE_LIBPATH:Ljava/lang/String; = "libPath"

.field public static final MARK_WINE_PREFIX_PACK:Ljava/lang/String; = "prefixPack"


# instance fields
.field public desc:Ljava/lang/String;

.field public fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/contents/ContentProfile$ContentFile;",
            ">;"
        }
    .end annotation
.end field

.field public remoteUrl:Ljava/lang/String;

.field public type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

.field public verCode:I

.field public verName:Ljava/lang/String;

.field public wineBinPath:Ljava/lang/String;

.field public wineLibPath:Ljava/lang/String;

.field public winePrefixPack:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
