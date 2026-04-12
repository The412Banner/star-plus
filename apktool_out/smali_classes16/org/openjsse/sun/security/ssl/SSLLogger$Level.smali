.class public final enum Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
.super Ljava/lang/Enum;
.source "SSLLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SSLLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

.field public static final enum ALL:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

.field public static final enum DEBUG:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

.field public static final enum ERROR:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

.field public static final enum INFO:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

.field public static final enum OFF:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

.field public static final enum TRACE:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

.field public static final enum WARNING:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;


# instance fields
.field private final severity:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 99
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->ALL:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    .line 105
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    const/4 v1, 0x1

    const/16 v2, 0x190

    const-string v3, "TRACE"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->TRACE:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    .line 111
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    const/4 v1, 0x2

    const/16 v2, 0x1f4

    const-string v3, "DEBUG"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->DEBUG:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    .line 117
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    const/4 v1, 0x3

    const/16 v2, 0x320

    const-string v3, "INFO"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->INFO:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    .line 123
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    const/4 v1, 0x4

    const/16 v2, 0x384

    const-string v3, "WARNING"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->WARNING:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    .line 129
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    const/4 v1, 0x5

    const/16 v2, 0x3e8

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->ERROR:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    .line 135
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    const/4 v1, 0x6

    const v2, 0x7fffffff

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->OFF:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    .line 89
    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->ALL:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->TRACE:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->DEBUG:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->INFO:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->WARNING:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->ERROR:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    sget-object v10, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->OFF:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    filled-new-array/range {v4 .. v10}, [Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "severity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->severity:I

    .line 141
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 89
    const-class v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
    .locals 1

    .line 89
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSeverity()I
    .locals 1

    .line 157
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->severity:I

    return v0
.end method
