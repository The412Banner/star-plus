.class public Lorg/bouncycastle/i18n/filter/HTMLFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/i18n/filter/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 p1, p1, -0x3

    goto :goto_2

    :sswitch_0
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#62"

    goto :goto_1

    :sswitch_1
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#60"

    goto :goto_1

    :sswitch_2
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#59"

    goto :goto_1

    :sswitch_3
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#45"

    goto :goto_1

    :sswitch_4
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#43"

    goto :goto_1

    :sswitch_5
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#41"

    goto :goto_1

    :sswitch_6
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#40"

    goto :goto_1

    :sswitch_7
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#39"

    goto :goto_1

    :sswitch_8
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#38"

    goto :goto_1

    :sswitch_9
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#37"

    goto :goto_1

    :sswitch_a
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#35"

    goto :goto_1

    :sswitch_b
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#34"

    :goto_1
    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_b
        0x23 -> :sswitch_a
        0x25 -> :sswitch_9
        0x26 -> :sswitch_8
        0x27 -> :sswitch_7
        0x28 -> :sswitch_6
        0x29 -> :sswitch_5
        0x2b -> :sswitch_4
        0x2d -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/HTMLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
