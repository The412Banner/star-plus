.class final Lorg/openjsse/sun/security/ssl/OpenJSSE$2;
.super Ljava/lang/Object;
.source "OpenJSSE.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/ssl/OpenJSSE;->oid([I)Lsun/security/util/ObjectIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lsun/security/util/ObjectIdentifier;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$values:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/OpenJSSE$2;->val$values:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/OpenJSSE$2;->run()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/OpenJSSE$2;->val$values:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method
