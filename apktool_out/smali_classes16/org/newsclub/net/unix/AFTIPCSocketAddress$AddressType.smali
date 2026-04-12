.class public final Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
.super Lorg/newsclub/net/unix/NamedInteger;
.source "AFTIPCSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFTIPCSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;
    }
.end annotation


# static fields
.field public static final SERVICE_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

.field public static final SERVICE_RANGE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

.field public static final SOCKET_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

.field private static final VALUES:[Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final ds:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;


# direct methods
.method public static synthetic $r8$lambda$xV7GeMIxcRpLD7LQlxEyJCAHX2M(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    .locals 1

    new-instance v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    invoke-direct {v0, p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;-><init>(I)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 156
    new-instance v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    new-instance v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "SERVICE_RANGE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;-><init>(Ljava/lang/String;ILorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;)V

    sput-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_RANGE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    new-instance v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    new-instance v2, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "SERVICE_ADDR"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;-><init>(Ljava/lang/String;ILorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;)V

    sput-object v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    new-instance v2, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    new-instance v3, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda2;-><init>()V

    const-string v4, "SOCKET_ADDR"

    const/4 v5, 0x3

    invoke-direct {v2, v4, v5, v3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;-><init>(Ljava/lang/String;ILorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;)V

    sput-object v2, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SOCKET_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    filled-new-array {v0, v1, v2}, [Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->init([Lorg/newsclub/net/unix/NamedInteger;)[Lorg/newsclub/net/unix/NamedInteger;

    move-result-object v0

    check-cast v0, [Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    sput-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->VALUES:[Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 173
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/NamedInteger;-><init>(I)V

    .line 174
    new-instance v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->ds:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;

    .line 176
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "ds"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;

    .line 179
    invoke-direct {p0, p1, p2}, Lorg/newsclub/net/unix/NamedInteger;-><init>(Ljava/lang/String;I)V

    .line 180
    iput-object p3, p0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->ds:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;

    .line 181
    return-void
.end method

.method static synthetic access$000(Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    .param p1, "x1"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->toDebugString(Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTIPCInt(I)Ljava/lang/String;
    .locals 5
    .param p0, "i"    # I

    .line 200
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%08x"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$5c9c2537$1(III)Ljava/lang/String;
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    return-object v0
.end method

.method static synthetic lambda$static$faadebcb$1(III)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->formatTIPCInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->formatTIPCInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->formatTIPCInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$faadebcb$2(III)Ljava/lang/String;
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->formatTIPCInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->formatTIPCInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->formatTIPCInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    return-object v0
.end method

.method static synthetic lambda$static$faadebcb$3(III)Ljava/lang/String;
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->formatTIPCInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->formatTIPCInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->formatTIPCInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method static ofValue(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    .locals 2
    .param p0, "v"    # I

    .line 184
    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->VALUES:[Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    new-instance v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1, p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->ofValue([Lorg/newsclub/net/unix/NamedInteger;Lorg/newsclub/net/unix/NamedInteger$UndefinedValueConstructor;I)Lorg/newsclub/net/unix/NamedInteger;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    return-object v0
.end method

.method private toDebugString(Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Ljava/lang/String;
    .locals 4
    .param p1, "scope"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .line 204
    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SOCKET_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    const-string v1, ");"

    const-string v2, "("

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NOT_SPECIFIED:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    invoke-virtual {p1, v0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->value()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->ds:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;

    invoke-interface {v1, p2, p3, p4}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;->toDebugString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->value()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->ds:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;

    invoke-interface {v1, p2, p3, p4}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType$DebugStringProvider;->toDebugString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
