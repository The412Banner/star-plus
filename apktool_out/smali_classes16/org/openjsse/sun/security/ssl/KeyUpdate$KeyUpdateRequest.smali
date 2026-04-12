.class final enum Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;
.super Ljava/lang/Enum;
.source "KeyUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyUpdateRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

.field public static final enum NOTREQUESTED:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

.field public static final enum REQUESTED:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;


# instance fields
.field final id:B

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 128
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    const/4 v1, 0x0

    const-string v2, "update_not_requested"

    const-string v3, "NOTREQUESTED"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->NOTREQUESTED:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    .line 129
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    const/4 v1, 0x1

    const-string v2, "update_requested"

    const-string v3, "REQUESTED"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->REQUESTED:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    .line 127
    sget-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->NOTREQUESTED:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    sget-object v1, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->REQUESTED:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    filled-new-array {v0, v1}, [Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->$VALUES:[Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0
    .param p3, "id"    # B
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->id:B

    .line 136
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->name:Ljava/lang/String;

    .line 137
    return-void
.end method

.method static nameOf(B)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # B

    .line 150
    invoke-static {}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->values()[Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 151
    .local v3, "kur":Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->id:B

    if-ne v4, p0, :cond_0

    .line 152
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->name:Ljava/lang/String;

    return-object v0

    .line 150
    .end local v3    # "kur":Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN KeyUpdateRequest TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static valueOf(B)Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;
    .locals 5
    .param p0, "id"    # B

    .line 140
    invoke-static {}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->values()[Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 141
    .local v3, "kur":Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->id:B

    if-ne v4, p0, :cond_0

    .line 142
    return-object v3

    .line 140
    .end local v3    # "kur":Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    const-class v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;
    .locals 1

    .line 127
    sget-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->$VALUES:[Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    return-object v0
.end method
