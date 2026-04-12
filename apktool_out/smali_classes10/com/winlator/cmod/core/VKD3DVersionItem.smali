.class public Lcom/winlator/cmod/core/VKD3DVersionItem;
.super Ljava/lang/Object;
.source "VKD3DVersionItem.java"


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "verName"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/winlator/cmod/core/VKD3DVersionItem;->identifier:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/winlator/cmod/core/VKD3DVersionItem;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/winlator/cmod/core/VKD3DVersionItem;->displayName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "verName"    # Ljava/lang/String;
    .param p2, "verCode"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/core/VKD3DVersionItem;->identifier:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/winlator/cmod/core/VKD3DVersionItem;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/winlator/cmod/core/VKD3DVersionItem;->displayName:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/winlator/cmod/core/VKD3DVersionItem;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/winlator/cmod/core/VKD3DVersionItem;->displayName:Ljava/lang/String;

    return-object v0
.end method
