.class public abstract Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
.super Ljava/lang/Object;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8S;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16SB;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24SB;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32SB;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xSB;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16SL;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24SL;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32SL;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xSL;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8U;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16UB;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24UB;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32UB;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUB;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16UL;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24UL;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32UL;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUL;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32B;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64L;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;
    }
.end annotation


# static fields
.field public static final PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;


# instance fields
.field private format:Lcn/sherlock/javax/sound/sampled/AudioFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const-string v1, "PCM_FLOAT"

    invoke-direct {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
    .locals 8
    .param p0, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 910
    const/4 v0, 0x0

    .line 911
    .local v0, "conv":Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 912
    return-object v2

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v1

    .line 914
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    const/16 v4, 0x8

    div-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v5

    mul-int/2addr v3, v5

    if-eq v1, v3, :cond_1

    .line 915
    return-object v2

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v1

    sget-object v3, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v1, v3}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x18

    const/16 v5, 0x10

    const/16 v6, 0x20

    if-eqz v1, :cond_b

    .line 918
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 919
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v4, :cond_2

    .line 920
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8S;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8S;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 921
    :cond_2
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 922
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v5, :cond_3

    .line 923
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16SB;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16SB;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 924
    :cond_3
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 925
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v3, :cond_4

    .line 926
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24SB;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24SB;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 927
    :cond_4
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 928
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v6, :cond_5

    .line 929
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32SB;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32SB;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 930
    :cond_5
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v6, :cond_19

    .line 931
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xSB;

    .line 932
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x4

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xSB;-><init>(I)V

    move-object v0, v1

    goto/16 :goto_0

    .line 935
    :cond_6
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v4, :cond_7

    .line 936
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8S;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8S;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 937
    :cond_7
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v4, :cond_8

    .line 938
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v5, :cond_8

    .line 939
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16SL;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16SL;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 940
    :cond_8
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v5, :cond_9

    .line 941
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v3, :cond_9

    .line 942
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24SL;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24SL;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 943
    :cond_9
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v3, :cond_a

    .line 944
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v6, :cond_a

    .line 945
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32SL;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32SL;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 946
    :cond_a
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v6, :cond_19

    .line 947
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xSL;

    .line 948
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x4

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xSL;-><init>(I)V

    move-object v0, v1

    goto/16 :goto_0

    .line 951
    :cond_b
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v1

    sget-object v7, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v1, v7}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 952
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 953
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v4, :cond_c

    .line 954
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8U;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8U;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 955
    :cond_c
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v4, :cond_d

    .line 956
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v5, :cond_d

    .line 957
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16UB;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16UB;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 958
    :cond_d
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v5, :cond_e

    .line 959
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v3, :cond_e

    .line 960
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24UB;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24UB;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 961
    :cond_e
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v3, :cond_f

    .line 962
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v6, :cond_f

    .line 963
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32UB;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32UB;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 964
    :cond_f
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v6, :cond_19

    .line 965
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUB;

    .line 966
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x4

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUB;-><init>(I)V

    move-object v0, v1

    goto/16 :goto_0

    .line 969
    :cond_10
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v4, :cond_11

    .line 970
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8U;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion8U;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 971
    :cond_11
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v4, :cond_12

    .line 972
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v5, :cond_12

    .line 973
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16UL;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion16UL;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 974
    :cond_12
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v5, :cond_13

    .line 975
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v3, :cond_13

    .line 976
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24UL;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion24UL;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 977
    :cond_13
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v3, :cond_14

    .line 978
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-gt v1, v6, :cond_14

    .line 979
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32UL;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32UL;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto :goto_0

    .line 980
    :cond_14
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-le v1, v6, :cond_19

    .line 981
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUL;

    .line 982
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x4

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32xUL;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    .line 985
    :cond_15
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v1

    sget-object v3, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v1, v3}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 986
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    if-ne v1, v6, :cond_17

    .line 987
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 988
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32B;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32B;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto :goto_0

    .line 990
    :cond_16
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion32L;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto :goto_0

    .line 991
    :cond_17
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_19

    .line 992
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 993
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64B;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    goto :goto_0

    .line 995
    :cond_18
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64L;

    invoke-direct {v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatConversion64L;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter-IA;)V

    move-object v0, v1

    .line 1000
    :cond_19
    :goto_0
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v1

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1001
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v1

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1002
    :cond_1a
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    rem-int/2addr v1, v4

    if-eqz v1, :cond_1b

    .line 1003
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;

    invoke-direct {v1, v0, p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter$AudioFloatLSBFilter;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;Lcn/sherlock/javax/sound/sampled/AudioFormat;)V

    move-object v0, v1

    .line 1006
    :cond_1b
    if-eqz v0, :cond_1c

    .line 1007
    iput-object p0, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 1008
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 1

    .line 1014
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public toByteArray([FII[B)[B
    .locals 6
    .param p1, "in_buff"    # [F
    .param p2, "in_offset"    # I
    .param p3, "in_len"    # I
    .param p4, "out_buff"    # [B

    .line 1048
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toByteArray([FII[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract toByteArray([FII[BI)[B
.end method

.method public toByteArray([FI[B)[B
    .locals 6
    .param p1, "in_buff"    # [F
    .param p2, "in_len"    # I
    .param p3, "out_buff"    # [B

    .line 1052
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toByteArray([FII[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray([FI[BI)[B
    .locals 6
    .param p1, "in_buff"    # [F
    .param p2, "in_len"    # I
    .param p3, "out_buff"    # [B
    .param p4, "out_offset"    # I

    .line 1043
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toByteArray([FII[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray([F[B)[B
    .locals 6
    .param p1, "in_buff"    # [F
    .param p2, "out_buff"    # [B

    .line 1056
    array-length v3, p1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toByteArray([FII[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public toFloatArray([BI[FI)[F
    .locals 6
    .param p1, "in_buff"    # [B
    .param p2, "in_offset"    # I
    .param p3, "out_buff"    # [F
    .param p4, "out_len"    # I

    .line 1027
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toFloatArray([BI[FII)[F

    move-result-object v0

    return-object v0
.end method

.method public abstract toFloatArray([BI[FII)[F
.end method

.method public toFloatArray([B[F)[F
    .locals 6
    .param p1, "in_buff"    # [B
    .param p2, "out_buff"    # [F

    .line 1035
    const/4 v4, 0x0

    array-length v5, p2

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toFloatArray([BI[FII)[F

    move-result-object v0

    return-object v0
.end method

.method public toFloatArray([B[FI)[F
    .locals 6
    .param p1, "in_buff"    # [B
    .param p2, "out_buff"    # [F
    .param p3, "out_len"    # I

    .line 1031
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toFloatArray([BI[FII)[F

    move-result-object v0

    return-object v0
.end method

.method public toFloatArray([B[FII)[F
    .locals 6
    .param p1, "in_buff"    # [B
    .param p2, "out_buff"    # [F
    .param p3, "out_offset"    # I
    .param p4, "out_len"    # I

    .line 1022
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toFloatArray([BI[FII)[F

    move-result-object v0

    return-object v0
.end method
