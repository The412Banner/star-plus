.class Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    .line 127
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;, "Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;"
    iput-object p1, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;->this$0:Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;, "Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;"
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 153
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;, "Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;"
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;->close(Ljava/io/InputStream;)V

    return-void
.end method

.method public decode(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 130
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;, "Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;"
    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 135
    .local v0, "commaIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 139
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "beforeComma":Ljava/lang/String;
    const-string v3, ";base64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "afterComma":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 147
    .local v1, "bytes":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v4

    .line 141
    .end local v1    # "bytes":[B
    .end local v3    # "afterComma":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not a base64 image data URL."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    .end local v2    # "beforeComma":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing comma in data URL."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    .end local v0    # "commaIndex":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid image data URL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic decode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;, "Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;->decode(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;, "Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory$1;"
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
