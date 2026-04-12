.class public final enum Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
.super Ljava/lang/Enum;
.source "Zip64Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/Zip64Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

.field public static final enum Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

.field public static final enum AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

.field public static final enum Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    const-string v1, "Always"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 41
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    const-string v1, "Never"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 46
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    const-string v1, "AsNeeded"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 28
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    return-object v0
.end method
