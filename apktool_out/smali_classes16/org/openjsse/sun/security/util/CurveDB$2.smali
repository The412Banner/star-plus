.class final Lorg/openjsse/sun/security/util/CurveDB$2;
.super Ljava/lang/Object;
.source "CurveDB.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/util/CurveDB;->lookup(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/openjsse/sun/security/util/CurveDB$2;->run()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "lookupByName":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/reflect/Method;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string v2, "sun.security.ec.CurveDB"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 67
    goto :goto_0

    .line 71
    .end local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 65
    .restart local v1    # "clazz":Ljava/lang/Class;
    :catch_2
    move-exception v2

    .line 66
    .local v2, "cnfe":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v3, "sun.security.util.CurveDB"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 68
    .end local v2    # "cnfe":Ljava/lang/ClassNotFoundException;
    :goto_0
    const-string v2, "lookup"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    move-object v0, v2

    .line 69
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/AccessibleObject;

    invoke-static {v2}, Lorg/openjsse/sun/security/util/CurveDB;->access$000(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    return-object v0

    .line 71
    .end local v1    # "clazz":Ljava/lang/Class;
    :catch_3
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method
