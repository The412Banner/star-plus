.class final Lorg/openjsse/sun/security/util/CurveDB$1;
.super Ljava/lang/Object;
.source "CurveDB.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/util/CurveDB;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
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


# instance fields
.field final synthetic val$o:Ljava/lang/reflect/AccessibleObject;


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/openjsse/sun/security/util/CurveDB$1;->val$o:Ljava/lang/reflect/AccessibleObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/openjsse/sun/security/util/CurveDB$1;->val$o:Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
