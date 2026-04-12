.class public final enum Lorg/newsclub/net/unix/AFUNIXSocketCapability;
.super Ljava/lang/Enum;
.source "AFUNIXSocketCapability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/newsclub/net/unix/AFUNIXSocketCapability;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/newsclub/net/unix/AFUNIXSocketCapability;

.field public static final enum CAPABILITY_ABSTRACT_NAMESPACE:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

.field public static final enum CAPABILITY_ANCILLARY_MESSAGES:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

.field public static final enum CAPABILITY_DATAGRAMS:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

.field public static final enum CAPABILITY_FILE_DESCRIPTORS:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

.field public static final enum CAPABILITY_NATIVE_SOCKETPAIR:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

.field public static final enum CAPABILITY_PEER_CREDENTIALS:Lorg/newsclub/net/unix/AFUNIXSocketCapability;


# instance fields
.field private final bitmask:I


# direct methods
.method private static synthetic $values()[Lorg/newsclub/net/unix/AFUNIXSocketCapability;
    .locals 6

    .line 31
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_PEER_CREDENTIALS:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    sget-object v1, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_ANCILLARY_MESSAGES:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    sget-object v2, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_FILE_DESCRIPTORS:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    sget-object v3, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_ABSTRACT_NAMESPACE:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    sget-object v4, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_DATAGRAMS:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    sget-object v5, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_NATIVE_SOCKETPAIR:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    filled-new-array/range {v0 .. v5}, [Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    const-string v1, "CAPABILITY_PEER_CREDENTIALS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFUNIXSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_PEER_CREDENTIALS:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    .line 39
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    const-string v1, "CAPABILITY_ANCILLARY_MESSAGES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFUNIXSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_ANCILLARY_MESSAGES:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    .line 42
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    const-string v1, "CAPABILITY_FILE_DESCRIPTORS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFUNIXSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_FILE_DESCRIPTORS:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    .line 45
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    const-string v1, "CAPABILITY_ABSTRACT_NAMESPACE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFUNIXSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_ABSTRACT_NAMESPACE:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    .line 48
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    const-string v1, "CAPABILITY_DATAGRAMS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFUNIXSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_DATAGRAMS:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    .line 56
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    const-string v1, "CAPABILITY_NATIVE_SOCKETPAIR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFUNIXSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->CAPABILITY_NATIVE_SOCKETPAIR:Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    .line 31
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->$values()[Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->$VALUES:[Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "bit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    const/4 p1, 0x1

    shl-int/2addr p1, p3

    iput p1, p0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->bitmask:I

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/newsclub/net/unix/AFUNIXSocketCapability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    return-object v0
.end method

.method public static values()[Lorg/newsclub/net/unix/AFUNIXSocketCapability;
    .locals 1

    .line 31
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->$VALUES:[Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    invoke-virtual {v0}, [Lorg/newsclub/net/unix/AFUNIXSocketCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/newsclub/net/unix/AFUNIXSocketCapability;

    return-object v0
.end method


# virtual methods
.method getBitmask()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->bitmask:I

    return v0
.end method
