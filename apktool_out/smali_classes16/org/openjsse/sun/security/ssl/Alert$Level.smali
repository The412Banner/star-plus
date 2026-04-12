.class final enum Lorg/openjsse/sun/security/ssl/Alert$Level;
.super Ljava/lang/Enum;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/Alert$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/Alert$Level;

.field public static final enum FATAL:Lorg/openjsse/sun/security/ssl/Alert$Level;

.field public static final enum WARNING:Lorg/openjsse/sun/security/ssl/Alert$Level;


# instance fields
.field final description:Ljava/lang/String;

.field final level:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 147
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert$Level;

    const-string v1, "warning"

    const-string v2, "WARNING"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/Alert$Level;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert$Level;->WARNING:Lorg/openjsse/sun/security/ssl/Alert$Level;

    .line 148
    new-instance v0, Lorg/openjsse/sun/security/ssl/Alert$Level;

    const/4 v1, 0x2

    const-string v2, "fatal"

    const-string v3, "FATAL"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/Alert$Level;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert$Level;->FATAL:Lorg/openjsse/sun/security/ssl/Alert$Level;

    .line 146
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert$Level;->WARNING:Lorg/openjsse/sun/security/ssl/Alert$Level;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert$Level;->FATAL:Lorg/openjsse/sun/security/ssl/Alert$Level;

    filled-new-array {v0, v1}, [Lorg/openjsse/sun/security/ssl/Alert$Level;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/Alert$Level;->$VALUES:[Lorg/openjsse/sun/security/ssl/Alert$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0
    .param p3, "level"    # B
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/Alert$Level;->level:B

    .line 158
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/Alert$Level;->description:Ljava/lang/String;

    .line 159
    return-void
.end method

.method static nameOf(B)Ljava/lang/String;
    .locals 5
    .param p0, "level"    # B

    .line 172
    invoke-static {}, Lorg/openjsse/sun/security/ssl/Alert$Level;->values()[Lorg/openjsse/sun/security/ssl/Alert$Level;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 173
    .local v3, "lv":Lorg/openjsse/sun/security/ssl/Alert$Level;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/Alert$Level;->level:B

    if-ne v4, p0, :cond_0

    .line 174
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/Alert$Level;->description:Ljava/lang/String;

    return-object v0

    .line 172
    .end local v3    # "lv":Lorg/openjsse/sun/security/ssl/Alert$Level;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ALERT LEVEL ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static valueOf(B)Lorg/openjsse/sun/security/ssl/Alert$Level;
    .locals 5
    .param p0, "level"    # B

    .line 162
    invoke-static {}, Lorg/openjsse/sun/security/ssl/Alert$Level;->values()[Lorg/openjsse/sun/security/ssl/Alert$Level;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 163
    .local v3, "lv":Lorg/openjsse/sun/security/ssl/Alert$Level;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/Alert$Level;->level:B

    if-ne v4, p0, :cond_0

    .line 164
    return-object v3

    .line 162
    .end local v3    # "lv":Lorg/openjsse/sun/security/ssl/Alert$Level;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/Alert$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 146
    const-class v0, Lorg/openjsse/sun/security/ssl/Alert$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/Alert$Level;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/Alert$Level;
    .locals 1

    .line 146
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert$Level;->$VALUES:[Lorg/openjsse/sun/security/ssl/Alert$Level;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/Alert$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/Alert$Level;

    return-object v0
.end method
