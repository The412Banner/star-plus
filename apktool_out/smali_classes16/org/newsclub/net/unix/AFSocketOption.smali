.class public final Lorg/newsclub/net/unix/AFSocketOption;
.super Ljava/lang/Object;
.source "AFSocketOption.java"

# interfaces
.implements Ljava/net/SocketOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/net/SocketOption<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final level:I

.field private final name:Ljava/lang/String;

.field private final optionName:I

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "optionName"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketOption;, "Lorg/newsclub/net/unix/AFSocketOption<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSocketOption;->name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lorg/newsclub/net/unix/AFSocketOption;->type:Ljava/lang/Class;

    .line 45
    iput p3, p0, Lorg/newsclub/net/unix/AFSocketOption;->level:I

    .line 46
    iput p4, p0, Lorg/newsclub/net/unix/AFSocketOption;->optionName:I

    .line 47
    return-void
.end method


# virtual methods
.method level()I
    .locals 1

    .line 60
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketOption;, "Lorg/newsclub/net/unix/AFSocketOption<TT;>;"
    iget v0, p0, Lorg/newsclub/net/unix/AFSocketOption;->level:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 51
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketOption;, "Lorg/newsclub/net/unix/AFSocketOption<TT;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method optionName()I
    .locals 1

    .line 64
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketOption;, "Lorg/newsclub/net/unix/AFSocketOption<TT;>;"
    iget v0, p0, Lorg/newsclub/net/unix/AFSocketOption;->optionName:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketOption;, "Lorg/newsclub/net/unix/AFSocketOption<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketOption;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketOption;, "Lorg/newsclub/net/unix/AFSocketOption<TT;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketOption;->type:Ljava/lang/Class;

    return-object v0
.end method
