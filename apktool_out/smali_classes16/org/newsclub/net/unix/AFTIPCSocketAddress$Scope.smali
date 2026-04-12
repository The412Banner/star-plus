.class public final Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
.super Lorg/newsclub/net/unix/NamedInteger;
.source "AFTIPCSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFTIPCSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scope"
.end annotation


# static fields
.field public static final SCOPE_CLUSTER:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

.field public static final SCOPE_NODE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

.field public static final SCOPE_NOT_SPECIFIED:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

.field private static final VALUES:[Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public static synthetic $r8$lambda$BbjXdevvQuIT86Kr_GzwnFAZAmQ(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .locals 1

    new-instance v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    invoke-direct {v0, p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;-><init>(I)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 236
    new-instance v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    const-string v1, "SCOPE_NOT_SPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NOT_SPECIFIED:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    new-instance v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    const-string v2, "SCOPE_CLUSTER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_CLUSTER:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    new-instance v2, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    const-string v3, "SCOPE_NODE"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NODE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    filled-new-array {v0, v1, v2}, [Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->init([Lorg/newsclub/net/unix/NamedInteger;)[Lorg/newsclub/net/unix/NamedInteger;

    move-result-object v0

    check-cast v0, [Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    sput-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->VALUES:[Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 243
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/NamedInteger;-><init>(I)V

    .line 244
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 247
    invoke-direct {p0, p1, p2}, Lorg/newsclub/net/unix/NamedInteger;-><init>(Ljava/lang/String;I)V

    .line 248
    return-void
.end method

.method public static ofValue(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .locals 2
    .param p0, "v"    # I

    .line 257
    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->VALUES:[Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    new-instance v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1, p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->ofValue([Lorg/newsclub/net/unix/NamedInteger;Lorg/newsclub/net/unix/NamedInteger$UndefinedValueConstructor;I)Lorg/newsclub/net/unix/NamedInteger;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    return-object v0
.end method
