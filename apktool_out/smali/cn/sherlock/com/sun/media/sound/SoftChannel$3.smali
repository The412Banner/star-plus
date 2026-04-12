.class Lcn/sherlock/com/sun/media/sound/SoftChannel$3;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field nrpn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;)V
    .locals 1
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 182
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$3;->this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$3;->this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn_nrpn:Ljava/util/Map;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$3;->nrpn:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .locals 4
    .param p1, "instance"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 185
    if-nez p2, :cond_0

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "iname":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$3;->nrpn:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 189
    .local v1, "v":[D
    if-nez v1, :cond_1

    .line 190
    const/4 v2, 0x1

    new-array v1, v2, [D

    .line 191
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$3;->nrpn:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_1
    return-object v1
.end method
