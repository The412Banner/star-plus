.class Lorg/openjsse/sun/security/ssl/OpenJSSE$1;
.super Ljava/lang/Object;
.source "OpenJSSE.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/ssl/OpenJSSE;->registerAlgorithms(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/OpenJSSE;

.field final synthetic val$isfips:Z


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/OpenJSSE;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/OpenJSSE;

    .line 164
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/OpenJSSE$1;->this$0:Lorg/openjsse/sun/security/ssl/OpenJSSE;

    iput-boolean p2, p0, Lorg/openjsse/sun/security/ssl/OpenJSSE$1;->val$isfips:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/OpenJSSE$1;->this$0:Lorg/openjsse/sun/security/ssl/OpenJSSE;

    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/OpenJSSE$1;->val$isfips:Z

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->access$000(Lorg/openjsse/sun/security/ssl/OpenJSSE;Z)V

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method
