.class public Lorg/openjsse/sun/security/util/CurveDB;
.super Ljava/lang/Object;
.source "CurveDB.java"


# static fields
.field private static lookupByName:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static lookupByNameLock:Ljava/lang/Object;

.field private static lookupByParam:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static lookupByParamLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByName:Ljava/util/Optional;

    .line 39
    sput-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByParam:Ljava/util/Optional;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByNameLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByParamLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/reflect/AccessibleObject;

    .line 37
    invoke-static {p0}, Lorg/openjsse/sun/security/util/CurveDB;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    sget-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByNameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lorg/openjsse/sun/security/util/CurveDB;->lookupByName:Ljava/util/Optional;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lorg/openjsse/sun/security/util/CurveDB$2;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/CurveDB$2;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    sput-object v1, Lorg/openjsse/sun/security/util/CurveDB;->lookupByName:Ljava/util/Optional;

    .line 78
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByName:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    :try_start_1
    sget-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByName:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECParameterSpec;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 84
    :cond_1
    :goto_0
    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static lookup(Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;
    .locals 3
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 89
    sget-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByParamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lorg/openjsse/sun/security/util/CurveDB;->lookupByParam:Ljava/util/Optional;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lorg/openjsse/sun/security/util/CurveDB$3;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/CurveDB$3;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    sput-object v1, Lorg/openjsse/sun/security/util/CurveDB;->lookupByParam:Ljava/util/Optional;

    .line 111
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    sget-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByParam:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 114
    :try_start_1
    sget-object v0, Lorg/openjsse/sun/security/util/CurveDB;->lookupByParam:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECParameterSpec;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 116
    :cond_1
    :goto_0
    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/reflect/AccessibleObject;

    .line 44
    new-instance v0, Lorg/openjsse/sun/security/util/CurveDB$1;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/util/CurveDB$1;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 51
    return-void
.end method
