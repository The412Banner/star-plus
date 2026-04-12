.class public final enum Lorg/newsclub/net/unix/AFSocketType;
.super Ljava/lang/Enum;
.source "AFSocketType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/newsclub/net/unix/AFSocketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/newsclub/net/unix/AFSocketType;

.field public static final enum SOCK_DGRAM:Lorg/newsclub/net/unix/AFSocketType;

.field public static final enum SOCK_RDM:Lorg/newsclub/net/unix/AFSocketType;

.field public static final enum SOCK_SEQPACKET:Lorg/newsclub/net/unix/AFSocketType;

.field public static final enum SOCK_STREAM:Lorg/newsclub/net/unix/AFSocketType;


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lorg/newsclub/net/unix/AFSocketType;
    .locals 4

    .line 25
    sget-object v0, Lorg/newsclub/net/unix/AFSocketType;->SOCK_STREAM:Lorg/newsclub/net/unix/AFSocketType;

    sget-object v1, Lorg/newsclub/net/unix/AFSocketType;->SOCK_DGRAM:Lorg/newsclub/net/unix/AFSocketType;

    sget-object v2, Lorg/newsclub/net/unix/AFSocketType;->SOCK_SEQPACKET:Lorg/newsclub/net/unix/AFSocketType;

    sget-object v3, Lorg/newsclub/net/unix/AFSocketType;->SOCK_RDM:Lorg/newsclub/net/unix/AFSocketType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/newsclub/net/unix/AFSocketType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lorg/newsclub/net/unix/AFSocketType;

    const-string v1, "SOCK_STREAM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/newsclub/net/unix/AFSocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketType;->SOCK_STREAM:Lorg/newsclub/net/unix/AFSocketType;

    .line 34
    new-instance v0, Lorg/newsclub/net/unix/AFSocketType;

    const-string v1, "SOCK_DGRAM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/newsclub/net/unix/AFSocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketType;->SOCK_DGRAM:Lorg/newsclub/net/unix/AFSocketType;

    .line 39
    new-instance v0, Lorg/newsclub/net/unix/AFSocketType;

    const-string v1, "SOCK_SEQPACKET"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/newsclub/net/unix/AFSocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketType;->SOCK_SEQPACKET:Lorg/newsclub/net/unix/AFSocketType;

    .line 47
    new-instance v0, Lorg/newsclub/net/unix/AFSocketType;

    const/4 v1, 0x3

    const/4 v2, 0x4

    const-string v3, "SOCK_RDM"

    invoke-direct {v0, v3, v1, v2}, Lorg/newsclub/net/unix/AFSocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketType;->SOCK_RDM:Lorg/newsclub/net/unix/AFSocketType;

    .line 25
    invoke-static {}, Lorg/newsclub/net/unix/AFSocketType;->$values()[Lorg/newsclub/net/unix/AFSocketType;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFSocketType;->$VALUES:[Lorg/newsclub/net/unix/AFSocketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lorg/newsclub/net/unix/AFSocketType;->id:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/newsclub/net/unix/AFSocketType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/newsclub/net/unix/AFSocketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFSocketType;

    return-object v0
.end method

.method public static values()[Lorg/newsclub/net/unix/AFSocketType;
    .locals 1

    .line 25
    sget-object v0, Lorg/newsclub/net/unix/AFSocketType;->$VALUES:[Lorg/newsclub/net/unix/AFSocketType;

    invoke-virtual {v0}, [Lorg/newsclub/net/unix/AFSocketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/newsclub/net/unix/AFSocketType;

    return-object v0
.end method


# virtual methods
.method getId()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/newsclub/net/unix/AFSocketType;->id:I

    return v0
.end method
