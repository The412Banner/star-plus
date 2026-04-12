.class public final enum Lorg/newsclub/net/unix/AFSocketProtocol;
.super Ljava/lang/Enum;
.source "AFSocketProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/newsclub/net/unix/AFSocketProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/newsclub/net/unix/AFSocketProtocol;

.field public static final enum DEFAULT:Lorg/newsclub/net/unix/AFSocketProtocol;


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lorg/newsclub/net/unix/AFSocketProtocol;
    .locals 1

    .line 25
    sget-object v0, Lorg/newsclub/net/unix/AFSocketProtocol;->DEFAULT:Lorg/newsclub/net/unix/AFSocketProtocol;

    filled-new-array {v0}, [Lorg/newsclub/net/unix/AFSocketProtocol;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lorg/newsclub/net/unix/AFSocketProtocol;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketProtocol;->DEFAULT:Lorg/newsclub/net/unix/AFSocketProtocol;

    .line 25
    invoke-static {}, Lorg/newsclub/net/unix/AFSocketProtocol;->$values()[Lorg/newsclub/net/unix/AFSocketProtocol;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFSocketProtocol;->$VALUES:[Lorg/newsclub/net/unix/AFSocketProtocol;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lorg/newsclub/net/unix/AFSocketProtocol;->id:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/newsclub/net/unix/AFSocketProtocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/newsclub/net/unix/AFSocketProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFSocketProtocol;

    return-object v0
.end method

.method public static values()[Lorg/newsclub/net/unix/AFSocketProtocol;
    .locals 1

    .line 25
    sget-object v0, Lorg/newsclub/net/unix/AFSocketProtocol;->$VALUES:[Lorg/newsclub/net/unix/AFSocketProtocol;

    invoke-virtual {v0}, [Lorg/newsclub/net/unix/AFSocketProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/newsclub/net/unix/AFSocketProtocol;

    return-object v0
.end method


# virtual methods
.method getId()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/newsclub/net/unix/AFSocketProtocol;->id:I

    return v0
.end method
