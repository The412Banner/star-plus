.class public Lcom/winlator/cmod/fexcore/FEXCorePreset;
.super Ljava/lang/Object;
.source "FEXCorePreset.java"


# static fields
.field public static final COMPATIBILITY:Ljava/lang/String; = "COMPATIBILITY"

.field public static final CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final INTERMEDIATE:Ljava/lang/String; = "INTERMEDIATE"

.field public static final PERFORMANCE:Ljava/lang/String; = "PERFORMANCE"

.field public static final STABILITY:Ljava/lang/String; = "STABILITY"


# instance fields
.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/winlator/cmod/fexcore/FEXCorePreset;->id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/winlator/cmod/fexcore/FEXCorePreset;->name:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public isCustom()Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/winlator/cmod/fexcore/FEXCorePreset;->id:Ljava/lang/String;

    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/winlator/cmod/fexcore/FEXCorePreset;->name:Ljava/lang/String;

    return-object v0
.end method
