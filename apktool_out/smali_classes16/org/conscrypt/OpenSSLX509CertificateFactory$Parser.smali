.class abstract Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;
.super Ljava/lang/Object;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    .local p0, "this":Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/conscrypt/OpenSSLX509CertificateFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/conscrypt/OpenSSLX509CertificateFactory$1;

    .line 68
    .local p0, "this":Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method generateItem(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    if-eqz p1, :cond_8

    .line 74
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 75
    .local v0, "markable":Z
    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 79
    :cond_0
    new-instance v1, Ljava/io/PushbackInputStream;

    const/16 v2, 0x40

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 81
    .local v1, "pbis":Ljava/io/PushbackInputStream;
    :try_start_0
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [B

    .line 83
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    .line 84
    .local v3, "len":I
    if-ltz v3, :cond_6

    .line 88
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 90
    aget-byte v5, v2, v4

    const/16 v6, 0x2d

    const/4 v7, 0x0

    if-ne v5, v6, :cond_3

    .line 91
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    array-length v5, v5

    if-ne v3, v5, :cond_2

    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    .line 93
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 94
    return-object v7

    .line 96
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    nop

    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 103
    :cond_3
    :goto_0
    const/4 v5, 0x4

    aget-byte v5, v2, v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    .line 104
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    .line 105
    .local v5, "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 106
    return-object v7

    .line 108
    :cond_4
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 110
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_5
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 86
    :cond_6
    new-instance v4, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v5, "inStream is empty"

    invoke-direct {v4, v5}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "markable":Z
    .end local v1    # "pbis":Ljava/io/PushbackInputStream;
    .end local p1    # "inStream":Ljava/io/InputStream;
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2    # "buffer":[B
    .end local v3    # "len":I
    .restart local v0    # "markable":Z
    .restart local v1    # "pbis":Ljava/io/PushbackInputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_7

    .line 115
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    goto :goto_1

    .line 116
    :catch_1
    move-exception v3

    .line 120
    :cond_7
    :goto_1
    new-instance v3, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v3, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 71
    .end local v0    # "markable":Z
    .end local v1    # "pbis":Ljava/io/PushbackInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    new-instance v0, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 7
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    if-eqz p1, :cond_9

    .line 130
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v0

    .line 137
    :cond_0
    nop

    .line 139
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 140
    .local v0, "markable":Z
    const/16 v1, 0x40

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 145
    :cond_1
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 147
    .local v2, "pbis":Ljava/io/PushbackInputStream;
    :try_start_1
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    .line 149
    .local v3, "buffer":[B
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 150
    .local v4, "len":I
    if-ltz v4, :cond_7

    .line 154
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 156
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_2

    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    invoke-virtual {p0, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 161
    :cond_2
    const/4 v5, 0x4

    aget-byte v5, v3, v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 162
    invoke-virtual {p0, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    .line 173
    .end local v3    # "buffer":[B
    .end local v4    # "len":I
    :cond_3
    nop

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    if-eqz v0, :cond_5

    .line 187
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 191
    :cond_5
    :try_start_2
    invoke-virtual {p0, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    .line 192
    .local v4, "c":Ljava/lang/Object;, "TT;"
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    goto :goto_1

    .line 193
    .end local v4    # "c":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 198
    .local v4, "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    if-eqz v0, :cond_6

    .line 200
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 203
    goto :goto_0

    .line 201
    :catch_1
    move-exception v5

    .line 206
    :cond_6
    :goto_0
    const/4 v5, 0x0

    move-object v4, v5

    .line 208
    .local v4, "c":Ljava/lang/Object;, "TT;"
    :goto_1
    if-nez v4, :cond_4

    .line 210
    return-object v3

    .line 152
    .local v3, "buffer":[B
    .local v4, "len":I
    :cond_7
    :try_start_4
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v5, "inStream is empty"

    invoke-direct {v1, v5}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "markable":Z
    .end local v2    # "pbis":Ljava/io/PushbackInputStream;
    .end local p1    # "inStream":Ljava/io/InputStream;
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 164
    .end local v3    # "buffer":[B
    .end local v4    # "len":I
    .restart local v0    # "markable":Z
    .restart local v2    # "pbis":Ljava/io/PushbackInputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_8

    .line 167
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 170
    goto :goto_2

    .line 168
    :catch_3
    move-exception v3

    .line 172
    :cond_8
    :goto_2
    new-instance v3, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v3, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 135
    .end local v0    # "markable":Z
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "pbis":Ljava/io/PushbackInputStream;
    :catch_4
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v2, "Problem reading input stream"

    invoke-direct {v1, v2, v0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    new-instance v0, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
