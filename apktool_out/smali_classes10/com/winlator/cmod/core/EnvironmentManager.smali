.class public Lcom/winlator/cmod/core/EnvironmentManager;
.super Ljava/lang/Object;
.source "EnvironmentManager.java"


# static fields
.field private static final envVars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/winlator/cmod/core/EnvironmentManager;->envVars:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnvVars()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/winlator/cmod/core/EnvironmentManager;->envVars:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static setEnvVars([Ljava/lang/String;)V
    .locals 8
    .param p0, "envp"    # [Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/winlator/cmod/core/EnvironmentManager;->envVars:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    if-eqz p0, :cond_1

    .line 12
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 13
    .local v3, "entry":Ljava/lang/String;
    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 14
    .local v4, "parts":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v5, :cond_0

    .line 15
    sget-object v5, Lcom/winlator/cmod/core/EnvironmentManager;->envVars:Ljava/util/Map;

    aget-object v6, v4, v1

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method
