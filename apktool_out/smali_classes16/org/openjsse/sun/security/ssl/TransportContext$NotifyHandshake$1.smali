.class Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake$1;
.super Ljava/lang/Object;
.source "TransportContext.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;

.field final synthetic val$listener:Ljavax/net/ssl/HandshakeCompletedListener;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;

    .line 705
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake$1;->this$0:Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;

    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake$1;->val$listener:Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 705
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    .line 708
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake$1;->val$listener:Ljavax/net/ssl/HandshakeCompletedListener;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake$1;->this$0:Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;->access$000(Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;)Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V

    .line 709
    const/4 v0, 0x0

    return-object v0
.end method
