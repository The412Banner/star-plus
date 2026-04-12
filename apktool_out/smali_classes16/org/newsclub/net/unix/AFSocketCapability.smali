.class public final enum Lorg/newsclub/net/unix/AFSocketCapability;
.super Ljava/lang/Enum;
.source "AFSocketCapability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/newsclub/net/unix/AFSocketCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_ABSTRACT_NAMESPACE:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_ANCILLARY_MESSAGES:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_FD_AS_REDIRECT:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_FILE_DESCRIPTORS:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_NATIVE_SOCKETPAIR:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_PEER_CREDENTIALS:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_TIPC:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_UNIX_DATAGRAMS:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_UNIX_DOMAIN:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_VSOCK:Lorg/newsclub/net/unix/AFSocketCapability;

.field public static final enum CAPABILITY_VSOCK_DGRAM:Lorg/newsclub/net/unix/AFSocketCapability;


# instance fields
.field private final bitmask:I


# direct methods
.method private static synthetic $values()[Lorg/newsclub/net/unix/AFSocketCapability;
    .locals 11

    .line 29
    sget-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_PEER_CREDENTIALS:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v1, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_ANCILLARY_MESSAGES:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v2, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_FILE_DESCRIPTORS:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v3, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_ABSTRACT_NAMESPACE:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v4, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_UNIX_DATAGRAMS:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v5, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_NATIVE_SOCKETPAIR:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v6, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_FD_AS_REDIRECT:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v7, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_TIPC:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v8, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_UNIX_DOMAIN:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v9, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_VSOCK:Lorg/newsclub/net/unix/AFSocketCapability;

    sget-object v10, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_VSOCK_DGRAM:Lorg/newsclub/net/unix/AFSocketCapability;

    filled-new-array/range {v0 .. v10}, [Lorg/newsclub/net/unix/AFSocketCapability;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_PEER_CREDENTIALS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_PEER_CREDENTIALS:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 36
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_ANCILLARY_MESSAGES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_ANCILLARY_MESSAGES:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 39
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_FILE_DESCRIPTORS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_FILE_DESCRIPTORS:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 42
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_ABSTRACT_NAMESPACE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_ABSTRACT_NAMESPACE:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 45
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_UNIX_DATAGRAMS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_UNIX_DATAGRAMS:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 58
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_NATIVE_SOCKETPAIR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_NATIVE_SOCKETPAIR:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 65
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_FD_AS_REDIRECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_FD_AS_REDIRECT:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 73
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_TIPC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_TIPC:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 86
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_UNIX_DOMAIN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_UNIX_DOMAIN:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 96
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_VSOCK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_VSOCK:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 105
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCapability;

    const-string v1, "CAPABILITY_VSOCK_DGRAM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lorg/newsclub/net/unix/AFSocketCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_VSOCK_DGRAM:Lorg/newsclub/net/unix/AFSocketCapability;

    .line 29
    invoke-static {}, Lorg/newsclub/net/unix/AFSocketCapability;->$values()[Lorg/newsclub/net/unix/AFSocketCapability;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->$VALUES:[Lorg/newsclub/net/unix/AFSocketCapability;

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

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    const/4 p1, 0x1

    shl-int/2addr p1, p3

    iput p1, p0, Lorg/newsclub/net/unix/AFSocketCapability;->bitmask:I

    .line 113
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/newsclub/net/unix/AFSocketCapability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/newsclub/net/unix/AFSocketCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFSocketCapability;

    return-object v0
.end method

.method public static values()[Lorg/newsclub/net/unix/AFSocketCapability;
    .locals 1

    .line 29
    sget-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->$VALUES:[Lorg/newsclub/net/unix/AFSocketCapability;

    invoke-virtual {v0}, [Lorg/newsclub/net/unix/AFSocketCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/newsclub/net/unix/AFSocketCapability;

    return-object v0
.end method


# virtual methods
.method getBitmask()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/newsclub/net/unix/AFSocketCapability;->bitmask:I

    return v0
.end method
