.class public final enum Lcom/winlator/cmod/contents/ContentProfile$ContentType;
.super Ljava/lang/Enum;
.source "ContentProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/contents/ContentProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/contents/ContentProfile$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

.field public static final enum CONTENT_TYPE_BOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

.field public static final enum CONTENT_TYPE_DXVK:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

.field public static final enum CONTENT_TYPE_FEXCORE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

.field public static final enum CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

.field public static final enum CONTENT_TYPE_VKD3D:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

.field public static final enum CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

.field public static final enum CONTENT_TYPE_WOWBOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;


# instance fields
.field final typeName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    .locals 7

    .line 20
    sget-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v1, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v2, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_DXVK:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v3, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_VKD3D:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v4, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_BOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v5, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WOWBOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v6, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_FEXCORE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    filled-new-array/range {v0 .. v6}, [Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    const/4 v1, 0x0

    const-string v2, "Wine"

    const-string v3, "CONTENT_TYPE_WINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 22
    new-instance v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    const/4 v1, 0x1

    const-string v2, "Proton"

    const-string v3, "CONTENT_TYPE_PROTON"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 23
    new-instance v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    const/4 v1, 0x2

    const-string v2, "DXVK"

    const-string v3, "CONTENT_TYPE_DXVK"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_DXVK:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 24
    new-instance v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    const/4 v1, 0x3

    const-string v2, "VKD3D"

    const-string v3, "CONTENT_TYPE_VKD3D"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_VKD3D:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 25
    new-instance v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    const/4 v1, 0x4

    const-string v2, "Box64"

    const-string v3, "CONTENT_TYPE_BOX64"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_BOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 26
    new-instance v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    const/4 v1, 0x5

    const-string v2, "WOWBox64"

    const-string v3, "CONTENT_TYPE_WOWBOX64"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WOWBOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 27
    new-instance v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    const/4 v1, 0x6

    const-string v2, "FEXCore"

    const-string v3, "CONTENT_TYPE_FEXCORE"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_FEXCORE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    .line 20
    invoke-static {}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->$values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->$VALUES:[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->typeName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static getTypeByName(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 43
    .local v3, "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    iget-object v4, v3, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->typeName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    return-object v3

    .line 42
    .end local v3    # "type":Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;
    .locals 1

    .line 20
    sget-object v0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->$VALUES:[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v0}, [Lcom/winlator/cmod/contents/ContentProfile$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->typeName:Ljava/lang/String;

    return-object v0
.end method
