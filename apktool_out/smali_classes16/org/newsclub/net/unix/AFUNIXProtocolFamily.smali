.class public final enum Lorg/newsclub/net/unix/AFUNIXProtocolFamily;
.super Ljava/lang/Enum;
.source "AFUNIXProtocolFamily.java"

# interfaces
.implements Ljava/net/ProtocolFamily;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/newsclub/net/unix/AFUNIXProtocolFamily;",
        ">;",
        "Ljava/net/ProtocolFamily;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

.field public static final enum UNIX:Lorg/newsclub/net/unix/AFUNIXProtocolFamily;


# direct methods
.method private static synthetic $values()[Lorg/newsclub/net/unix/AFUNIXProtocolFamily;
    .locals 1

    .line 27
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;->UNIX:Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    filled-new-array {v0}, [Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    const-string v1, "UNIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;->UNIX:Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    .line 27
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;->$values()[Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;->$VALUES:[Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/newsclub/net/unix/AFUNIXProtocolFamily;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    return-object v0
.end method

.method public static values()[Lorg/newsclub/net/unix/AFUNIXProtocolFamily;
    .locals 1

    .line 27
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;->$VALUES:[Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    invoke-virtual {v0}, [Lorg/newsclub/net/unix/AFUNIXProtocolFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    return-object v0
.end method
