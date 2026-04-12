.class public Lcn/sherlock/com/sun/media/sound/SF2Instrument;
.super Lcn/sherlock/com/sun/media/sound/ModelInstrument;
.source "SF2Instrument.java"


# instance fields
.field protected bank:I

.field protected genre:J

.field protected globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

.field protected library:J

.field protected morphology:J

.field protected name:Ljava/lang/String;

.field protected preset:I

.field protected regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljp/kshoji/javax/sound/midi/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->name:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    .line 43
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->library:J

    .line 45
    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->genre:J

    .line 46
    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->morphology:J

    .line 47
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->regions:Ljava/util/List;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V
    .locals 3
    .param p1, "soundbank"    # Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljp/kshoji/javax/sound/midi/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->name:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    .line 43
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->library:J

    .line 45
    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->genre:J

    .line 46
    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->morphology:J

    .line 47
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->regions:Ljava/util/List;

    .line 57
    return-void
.end method

.method private addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V
    .locals 5
    .param p1, "performer"    # Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "dest"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .param p3, "value"    # S

    .line 884
    const/16 v0, -0x2ee0

    if-ne p3, v0, :cond_0

    .line 885
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .local v0, "fvalue":D
    goto :goto_0

    .line 887
    .end local v0    # "fvalue":D
    :cond_0
    int-to-double v0, p3

    .line 888
    .restart local v0    # "fvalue":D
    :goto_0
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v4, p2}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v0, v1, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    return-void
.end method

.method private addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;D)V
    .locals 5
    .param p1, "performer"    # Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "dest"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .param p3, "value"    # D

    .line 901
    move-wide v0, p3

    .line 902
    .local v0, "fvalue":D
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v4, p2}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v0, v1, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    return-void
.end method

.method private addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V
    .locals 5
    .param p1, "performer"    # Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "dest"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .param p3, "value"    # S

    .line 894
    int-to-double v0, p3

    .line 895
    .local v0, "fvalue":D
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v4, p2}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v0, v1, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    return-void
.end method

.method protected static convertDestination(I[D[Lcn/sherlock/com/sun/media/sound/ModelSource;)Lcn/sherlock/com/sun/media/sound/ModelDestination;
    .locals 7
    .param p0, "dst"    # I
    .param p1, "amountcorrection"    # [D
    .param p2, "extrasrc"    # [Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "id":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide v3, -0x4027eae9e0000000L    # -0.3762870132923126

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 816
    :pswitch_1
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 817
    goto/16 :goto_0

    .line 811
    :pswitch_2
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    aput-wide v1, p1, v6

    .line 812
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 813
    goto/16 :goto_0

    .line 820
    :pswitch_3
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_GAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 821
    aput-wide v3, p1, v6

    .line 822
    goto/16 :goto_0

    .line 807
    :pswitch_4
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_VELOCITY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 808
    goto/16 :goto_0

    .line 804
    :pswitch_5
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 805
    goto/16 :goto_0

    .line 801
    :pswitch_6
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_RELEASE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 802
    goto/16 :goto_0

    .line 797
    :pswitch_7
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_SUSTAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 798
    aput-wide v1, p1, v6

    .line 799
    goto/16 :goto_0

    .line 794
    :pswitch_8
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 795
    goto/16 :goto_0

    .line 791
    :pswitch_9
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 792
    goto/16 :goto_0

    .line 788
    :pswitch_a
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_ATTACK:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 789
    goto/16 :goto_0

    .line 785
    :pswitch_b
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 786
    goto/16 :goto_0

    .line 782
    :pswitch_c
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_RELEASE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 783
    goto/16 :goto_0

    .line 778
    :pswitch_d
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_SUSTAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 779
    aput-wide v1, p1, v6

    .line 780
    goto/16 :goto_0

    .line 775
    :pswitch_e
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 776
    goto/16 :goto_0

    .line 772
    :pswitch_f
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 773
    goto/16 :goto_0

    .line 769
    :pswitch_10
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_ATTACK:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 770
    goto/16 :goto_0

    .line 766
    :pswitch_11
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 767
    goto/16 :goto_0

    .line 762
    :pswitch_12
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO2_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 763
    goto :goto_0

    .line 759
    :pswitch_13
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO2_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 760
    goto :goto_0

    .line 756
    :pswitch_14
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO1_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 757
    goto :goto_0

    .line 753
    :pswitch_15
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO1_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 754
    goto :goto_0

    .line 750
    :pswitch_16
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PAN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 751
    goto :goto_0

    .line 747
    :pswitch_17
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_REVERB:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 748
    goto :goto_0

    .line 744
    :pswitch_18
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_CHORUS:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 745
    goto :goto_0

    .line 849
    :pswitch_19
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_GAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 850
    aput-wide v3, p1, v6

    .line 851
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v1, v2, v6, v5}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    aput-object v1, p2, v6

    .line 855
    goto :goto_0

    .line 866
    :pswitch_1a
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 867
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_EG2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v1, v2, v6, v5}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    aput-object v1, p2, v6

    .line 871
    goto :goto_0

    .line 841
    :pswitch_1b
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 842
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v1, v2, v6, v5}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    aput-object v1, p2, v6

    .line 846
    goto :goto_0

    .line 741
    :pswitch_1c
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_Q:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 742
    goto :goto_0

    .line 738
    :pswitch_1d
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 739
    goto :goto_0

    .line 858
    :pswitch_1e
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 859
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_EG2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v1, v2, v6, v5}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    aput-object v1, p2, v6

    .line 863
    goto :goto_0

    .line 825
    :pswitch_1f
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 826
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v1, v2, v6, v5}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    aput-object v1, p2, v6

    .line 830
    goto :goto_0

    .line 833
    :pswitch_20
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 834
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v1, v2, v6, v5}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    aput-object v1, p2, v6

    .line 838
    nop

    .line 876
    :goto_0
    if-eqz v0, :cond_0

    .line 877
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v1, v0}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    return-object v1

    .line 878
    :cond_0
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private convertModulator(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/SF2Modulator;)V
    .locals 15
    .param p1, "performer"    # Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "modulator"    # Lcn/sherlock/com/sun/media/sound/SF2Modulator;

    .line 659
    invoke-virtual/range {p2 .. p2}, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->getSourceOperator()I

    move-result v0

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->convertSource(I)Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v0

    .line 660
    .local v0, "src1":Lcn/sherlock/com/sun/media/sound/ModelSource;
    invoke-virtual/range {p2 .. p2}, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->getAmountSourceOperator()I

    move-result v1

    invoke-static {v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->convertSource(I)Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v7

    .line 661
    .local v7, "src2":Lcn/sherlock/com/sun/media/sound/ModelSource;
    if-nez v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->getSourceOperator()I

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    return-void

    .line 663
    :cond_0
    if-nez v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->getAmountSourceOperator()I

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    return-void

    .line 665
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->getAmount()S

    move-result v1

    int-to-double v1, v1

    .line 666
    .local v1, "amount":D
    const/4 v3, 0x1

    new-array v8, v3, [D

    .line 667
    .local v8, "amountcorrection":[D
    new-array v9, v3, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 668
    .local v9, "extrasrc":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    aput-wide v3, v8, v10

    .line 669
    nop

    .line 670
    invoke-virtual/range {p2 .. p2}, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->getDestinationOperator()I

    move-result v3

    .line 669
    invoke-static {v3, v8, v9}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->convertDestination(I[D[Lcn/sherlock/com/sun/media/sound/ModelSource;)Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v11

    .line 671
    .local v11, "dst":Lcn/sherlock/com/sun/media/sound/ModelDestination;
    aget-wide v3, v8, v10

    mul-double v12, v1, v3

    .line 672
    .end local v1    # "amount":D
    .local v12, "amount":D
    if-nez v11, :cond_2

    .line 673
    return-void

    .line 674
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcn/sherlock/com/sun/media/sound/SF2Modulator;->getTransportOperator()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 675
    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->setTransform(I)V

    .line 678
    :cond_3
    new-instance v14, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    move-object v1, v14

    move-object v2, v0

    move-object v3, v7

    move-wide v4, v12

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 679
    .local v1, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    aget-object v2, v9, v10

    if-eqz v2, :cond_4

    .line 680
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->addSource(Lcn/sherlock/com/sun/media/sound/ModelSource;)V

    .line 681
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method private static convertSource(I)Lcn/sherlock/com/sun/media/sound/ModelSource;
    .locals 9
    .param p0, "src"    # I

    .line 686
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 687
    return-object v0

    .line 688
    :cond_0
    const/4 v1, 0x0

    .line 689
    .local v1, "id":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    and-int/lit8 v2, p0, 0x7f

    .line 690
    .local v2, "idsrc":I
    and-int/lit16 v3, p0, 0x80

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    .line 691
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "midi_cc"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 693
    :cond_1
    if-ne v2, v5, :cond_2

    .line 694
    sget-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_VELOCITY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 695
    :cond_2
    if-ne v2, v4, :cond_3

    .line 696
    sget-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 697
    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 698
    sget-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_MIDI_POLY_PRESSURE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 699
    :cond_4
    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    .line 700
    sget-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_MIDI_CHANNEL_PRESSURE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 701
    :cond_5
    const/16 v3, 0xe

    if-ne v2, v3, :cond_6

    .line 702
    sget-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_MIDI_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 703
    :cond_6
    const/16 v3, 0x10

    if-ne v2, v3, :cond_7

    .line 704
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "midi_rpn"

    const-string v7, "0"

    invoke-direct {v3, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 706
    :cond_7
    :goto_0
    if-nez v1, :cond_8

    .line 707
    return-object v0

    .line 709
    :cond_8
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    .line 710
    .local v0, "msrc":Lcn/sherlock/com/sun/media/sound/ModelSource;
    nop

    .line 711
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v3

    check-cast v3, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    .line 713
    .local v3, "transform":Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;
    and-int/lit16 v6, p0, 0x100

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_9

    .line 714
    invoke-virtual {v3, v8}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->setDirection(Z)V

    goto :goto_1

    .line 716
    :cond_9
    invoke-virtual {v3, v7}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->setDirection(Z)V

    .line 718
    :goto_1
    and-int/lit16 v6, p0, 0x200

    if-eqz v6, :cond_a

    .line 719
    invoke-virtual {v3, v8}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->setPolarity(Z)V

    goto :goto_2

    .line 721
    :cond_a
    invoke-virtual {v3, v7}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->setPolarity(Z)V

    .line 723
    :goto_2
    and-int/lit16 v6, p0, 0x400

    if-eqz v6, :cond_b

    .line 724
    invoke-virtual {v3, v8}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->setTransform(I)V

    .line 725
    :cond_b
    and-int/lit16 v6, p0, 0x800

    if-eqz v6, :cond_c

    .line 726
    invoke-virtual {v3, v5}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->setTransform(I)V

    .line 727
    :cond_c
    and-int/lit16 v5, p0, 0xc00

    if-eqz v5, :cond_d

    .line 728
    invoke-virtual {v3, v4}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->setTransform(I)V

    .line 730
    :cond_d
    return-object v0
.end method

.method private getGeneratorValue(Ljava/util/Map;I)S
    .locals 1
    .param p2, "gen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Short;",
            ">;I)S"
        }
    .end annotation

    .line 907
    .local p1, "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0

    .line 909
    :cond_0
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/SF2Region;->getDefaultValue(I)S

    move-result v0

    return v0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGenre()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->genre:J

    return-wide v0
.end method

.method public getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    return-object v0
.end method

.method public getLibrary()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->library:J

    return-wide v0
.end method

.method public getMorphology()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->morphology:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPatch()Ljp/kshoji/javax/sound/midi/Patch;
    .locals 4

    .line 68
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcn/sherlock/com/sun/media/sound/ModelPatch;-><init>(IIZ)V

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    shl-int/lit8 v1, v1, 0x7

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    invoke-direct {v0, v1, v3, v2}, Lcn/sherlock/com/sun/media/sound/ModelPatch;-><init>(IIZ)V

    return-object v0
.end method

.method public getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .locals 61

    .line 133
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 134
    .local v1, "performercount":I
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->regions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;

    .line 135
    .local v3, "presetzone":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getLayer()Lcn/sherlock/com/sun/media/sound/SF2Layer;

    move-result-object v4

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    .end local v3    # "presetzone":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    goto :goto_0

    .line 136
    :cond_0
    new-array v2, v1, [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 137
    .local v2, "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    const/4 v3, 0x0

    .line 139
    .local v3, "pi":I
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    .line 140
    .local v4, "presetglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->regions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;

    .line 141
    .local v6, "presetzone":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v7, "pgenerators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getGenerators()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 143
    if-eqz v4, :cond_1

    .line 144
    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getGenerators()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 146
    :cond_1
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getLayer()Lcn/sherlock/com/sun/media/sound/SF2Layer;

    move-result-object v8

    .line 147
    .local v8, "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v9

    .line 148
    .local v9, "layerglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;

    .line 149
    .local v11, "layerzone":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    invoke-direct {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;-><init>()V

    .line 150
    .local v12, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getSample()Lcn/sherlock/com/sun/media/sound/SF2Sample;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 151
    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getSample()Lcn/sherlock/com/sun/media/sound/SF2Sample;

    move-result-object v13

    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/SF2Sample;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 153
    :cond_2
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setName(Ljava/lang/String;)V

    .line 155
    :goto_3
    add-int/lit8 v13, v3, 0x1

    .end local v3    # "pi":I
    .local v13, "pi":I
    aput-object v12, v2, v3

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, "keyfrom":I
    const/16 v14, 0x7f

    .line 159
    .local v14, "keyto":I
    const/4 v15, 0x0

    .line 160
    .local v15, "velfrom":I
    move/from16 v16, v1

    .end local v1    # "performercount":I
    .local v16, "performercount":I
    const/16 v1, 0x7f

    .line 162
    .local v1, "velto":I
    move-object/from16 v17, v5

    const/16 v5, 0x39

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->contains(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 163
    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getInteger(I)I

    move-result v5

    invoke-virtual {v12, v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setExclusiveClass(I)V

    .line 166
    :cond_3
    const/16 v5, 0x2b

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->contains(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 167
    const/16 v5, 0x2b

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getBytes(I)[B

    move-result-object v21

    .line 169
    .local v21, "bytes":[B
    const/4 v5, 0x0

    aget-byte v18, v21, v5

    if-ltz v18, :cond_4

    .line 170
    move-object/from16 v22, v10

    aget-byte v10, v21, v5

    if-le v10, v3, :cond_5

    .line 171
    aget-byte v3, v21, v5

    goto :goto_4

    .line 169
    :cond_4
    move-object/from16 v22, v10

    .line 172
    :cond_5
    :goto_4
    const/4 v5, 0x1

    aget-byte v10, v21, v5

    if-ltz v10, :cond_7

    .line 173
    aget-byte v10, v21, v5

    if-ge v10, v14, :cond_7

    .line 174
    aget-byte v14, v21, v5

    goto :goto_5

    .line 166
    .end local v21    # "bytes":[B
    :cond_6
    move-object/from16 v22, v10

    .line 176
    :cond_7
    :goto_5
    const/16 v5, 0x2c

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->contains(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 177
    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getBytes(I)[B

    move-result-object v10

    .line 179
    .local v10, "bytes":[B
    const/16 v18, 0x0

    aget-byte v21, v10, v18

    if-ltz v21, :cond_8

    .line 180
    aget-byte v5, v10, v18

    if-le v5, v15, :cond_8

    .line 181
    aget-byte v15, v10, v18

    .line 182
    :cond_8
    const/4 v5, 0x1

    aget-byte v20, v10, v5

    if-ltz v20, :cond_9

    .line 183
    move/from16 v23, v13

    .end local v13    # "pi":I
    .local v23, "pi":I
    aget-byte v13, v10, v5

    if-ge v13, v1, :cond_b

    .line 184
    aget-byte v1, v10, v5

    goto :goto_6

    .line 182
    .end local v23    # "pi":I
    .restart local v13    # "pi":I
    :cond_9
    move/from16 v23, v13

    .end local v13    # "pi":I
    .restart local v23    # "pi":I
    goto :goto_6

    .line 176
    .end local v10    # "bytes":[B
    .end local v23    # "pi":I
    .restart local v13    # "pi":I
    :cond_a
    move/from16 v23, v13

    .line 186
    .end local v13    # "pi":I
    .restart local v23    # "pi":I
    :cond_b
    :goto_6
    const/16 v5, 0x2b

    invoke-virtual {v6, v5}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->contains(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 187
    invoke-virtual {v6, v5}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getBytes(I)[B

    move-result-object v5

    .line 189
    .local v5, "bytes":[B
    const/4 v10, 0x0

    aget-byte v13, v5, v10

    if-le v13, v3, :cond_c

    .line 190
    aget-byte v3, v5, v10

    .line 191
    :cond_c
    const/4 v10, 0x1

    aget-byte v13, v5, v10

    if-ge v13, v14, :cond_d

    .line 192
    aget-byte v14, v5, v10

    .line 194
    .end local v5    # "bytes":[B
    :cond_d
    const/16 v5, 0x2c

    invoke-virtual {v6, v5}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->contains(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 195
    invoke-virtual {v6, v5}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getBytes(I)[B

    move-result-object v5

    .line 197
    .restart local v5    # "bytes":[B
    const/4 v10, 0x0

    aget-byte v13, v5, v10

    if-le v13, v15, :cond_e

    .line 198
    aget-byte v15, v5, v10

    .line 199
    :cond_e
    const/4 v10, 0x1

    aget-byte v13, v5, v10

    if-ge v13, v1, :cond_f

    .line 200
    aget-byte v1, v5, v10

    .line 202
    .end local v5    # "bytes":[B
    :cond_f
    invoke-virtual {v12, v3}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setKeyFrom(I)V

    .line 203
    invoke-virtual {v12, v14}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setKeyTo(I)V

    .line 204
    invoke-virtual {v12, v15}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setVelFrom(I)V

    .line 205
    invoke-virtual {v12, v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setVelTo(I)V

    .line 207
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v10

    .line 209
    .local v10, "startAddrsOffset":I
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v13

    .line 211
    .local v13, "endAddrsOffset":I
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v19

    .line 213
    .local v19, "startloopAddrsOffset":I
    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v24

    .line 216
    .local v24, "endloopAddrsOffset":I
    const/4 v5, 0x4

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v5

    const v26, 0x8000

    mul-int v5, v5, v26

    add-int/2addr v10, v5

    .line 218
    const/16 v5, 0xc

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v5

    mul-int v5, v5, v26

    add-int/2addr v13, v5

    .line 220
    const/16 v5, 0x2d

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v5

    mul-int v5, v5, v26

    add-int v19, v19, v5

    .line 222
    const/16 v5, 0x32

    invoke-virtual {v11, v5}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v5

    mul-int v5, v5, v26

    add-int v24, v24, v5

    .line 224
    sub-int v5, v19, v10

    .line 225
    .end local v19    # "startloopAddrsOffset":I
    .local v5, "startloopAddrsOffset":I
    move/from16 v19, v1

    .end local v1    # "velto":I
    .local v19, "velto":I
    sub-int v1, v24, v10

    .line 227
    .end local v24    # "endloopAddrsOffset":I
    .local v1, "endloopAddrsOffset":I
    move/from16 v24, v3

    .end local v3    # "keyfrom":I
    .local v24, "keyfrom":I
    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getSample()Lcn/sherlock/com/sun/media/sound/SF2Sample;

    move-result-object v3

    .line 228
    .local v3, "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    move/from16 v26, v14

    .end local v14    # "keyto":I
    .local v26, "keyto":I
    iget v14, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->originalPitch:I

    .line 229
    .local v14, "rootkey":I
    move/from16 v27, v14

    .end local v14    # "rootkey":I
    .local v27, "rootkey":I
    const/16 v14, 0x3a

    move/from16 v28, v15

    .end local v15    # "velfrom":I
    .local v28, "velfrom":I
    invoke-virtual {v11, v14}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v15

    const/4 v14, -0x1

    if-eq v15, v14, :cond_10

    .line 230
    const/16 v15, 0x3a

    invoke-virtual {v11, v15}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v15

    .end local v27    # "rootkey":I
    .local v15, "rootkey":I
    goto :goto_7

    .line 229
    .end local v15    # "rootkey":I
    .restart local v27    # "rootkey":I
    :cond_10
    move/from16 v15, v27

    .line 233
    .end local v27    # "rootkey":I
    .restart local v15    # "rootkey":I
    :goto_7
    neg-int v14, v15

    move-object/from16 v29, v2

    .end local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .local v29, "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    const/16 v2, 0x64

    mul-int/2addr v14, v2

    iget-byte v2, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->pitchCorrection:B

    add-int/2addr v14, v2

    int-to-float v2, v14

    .line 234
    .local v2, "pitchcorrection":F
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SF2Sample;->getDataBuffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v14

    .line 235
    .local v14, "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    move-object/from16 v30, v6

    .end local v6    # "presetzone":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    .local v30, "presetzone":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SF2Sample;->getData24Buffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v6

    .line 237
    .local v6, "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    if-nez v10, :cond_12

    if-eqz v13, :cond_11

    goto :goto_8

    :cond_11
    move/from16 v36, v1

    move-object/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v35, v8

    move v8, v15

    goto :goto_9

    .line 238
    :cond_12
    :goto_8
    move-object/from16 v31, v4

    .end local v4    # "presetglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .local v31, "presetglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    mul-int/lit8 v4, v10, 0x2

    move/from16 v32, v5

    .end local v5    # "startloopAddrsOffset":I
    .local v32, "startloopAddrsOffset":I
    int-to-long v4, v4

    .line 239
    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v33

    move-object/from16 v35, v8

    .end local v8    # "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .local v35, "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    mul-int/lit8 v8, v13, 0x2

    move/from16 v36, v1

    .end local v1    # "endloopAddrsOffset":I
    .local v36, "endloopAddrsOffset":I
    int-to-long v0, v8

    add-long v0, v33, v0

    .line 238
    invoke-virtual {v14, v4, v5, v0, v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->subbuffer(JJ)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v14

    .line 240
    if-eqz v6, :cond_13

    .line 241
    int-to-long v0, v10

    .line 242
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v4

    move-object/from16 v33, v14

    move v8, v15

    .end local v14    # "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .end local v15    # "rootkey":I
    .local v8, "rootkey":I
    .local v33, "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    int-to-long v14, v13

    add-long/2addr v4, v14

    .line 241
    invoke-virtual {v6, v0, v1, v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->subbuffer(JJ)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v6

    move-object/from16 v14, v33

    goto :goto_9

    .line 240
    .end local v8    # "rootkey":I
    .end local v33    # "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .restart local v14    # "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .restart local v15    # "rootkey":I
    :cond_13
    move-object/from16 v33, v14

    move v8, v15

    .line 265
    .end local v15    # "rootkey":I
    .restart local v8    # "rootkey":I
    :goto_9
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    .line 266
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SF2Sample;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-direct {v0, v14, v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;-><init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;Lcn/sherlock/javax/sound/sampled/AudioFormat;F)V

    .line 267
    .local v0, "osc":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    if-eqz v6, :cond_14

    .line 268
    invoke-virtual {v0, v6}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->set8BitExtensionBuffer(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)V

    .line 270
    :cond_14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v1, "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    if-eqz v9, :cond_15

    .line 272
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getGenerators()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 273
    :cond_15
    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getGenerators()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 274
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 276
    .local v5, "gen":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Short;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    .line 277
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v11, v15}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v15

    .local v15, "val":S
    goto :goto_b

    .line 279
    .end local v15    # "val":S
    :cond_16
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Short;

    invoke-virtual {v15}, Ljava/lang/Short;->shortValue()S

    move-result v15

    .line 280
    .restart local v15    # "val":S
    :goto_b
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Short;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Short;->shortValue()S

    move-result v33

    move/from16 v34, v2

    .end local v2    # "pitchcorrection":F
    .local v34, "pitchcorrection":F
    add-int v2, v15, v33

    int-to-short v2, v2

    .line 281
    .end local v15    # "val":S
    .local v2, "val":S
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    move-object/from16 v33, v4

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v1, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v2    # "val":S
    .end local v5    # "gen":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Short;>;"
    move-object/from16 v4, v33

    move/from16 v2, v34

    goto :goto_a

    .line 290
    .end local v34    # "pitchcorrection":F
    .local v2, "pitchcorrection":F
    :cond_17
    move/from16 v34, v2

    .end local v2    # "pitchcorrection":F
    .restart local v34    # "pitchcorrection":F
    const/16 v2, 0x36

    move-object/from16 v4, p0

    invoke-direct {v4, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 292
    .local v2, "sampleMode":I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_19

    const/4 v5, 0x3

    if-ne v2, v5, :cond_18

    goto :goto_c

    :cond_18
    move-object v15, v6

    move-object/from16 v33, v7

    move/from16 v37, v10

    move v10, v13

    move/from16 v7, v32

    move-object/from16 v32, v9

    move/from16 v9, v36

    move-object/from16 v36, v14

    goto :goto_d

    .line 293
    :cond_19
    :goto_c
    move-object v15, v6

    .end local v6    # "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .local v15, "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    iget-wide v5, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    const-wide/16 v37, 0x0

    cmp-long v5, v5, v37

    if-ltz v5, :cond_1b

    iget-wide v5, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    cmp-long v5, v5, v37

    if-lez v5, :cond_1b

    .line 294
    iget-wide v5, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    move-object/from16 v33, v7

    move/from16 v37, v10

    move/from16 v7, v32

    move-object/from16 v32, v9

    .end local v9    # "layerglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .end local v10    # "startAddrsOffset":I
    .local v7, "startloopAddrsOffset":I
    .local v32, "layerglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .local v33, "pgenerators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .local v37, "startAddrsOffset":I
    int-to-long v9, v7

    add-long/2addr v5, v9

    long-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->setLoopStart(F)V

    .line 296
    iget-wide v5, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->endLoop:J

    iget-wide v9, v3, Lcn/sherlock/com/sun/media/sound/SF2Sample;->startLoop:J

    sub-long/2addr v5, v9

    move v10, v13

    move/from16 v9, v36

    move-object/from16 v36, v14

    .end local v13    # "endAddrsOffset":I
    .end local v14    # "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .local v9, "endloopAddrsOffset":I
    .local v10, "endAddrsOffset":I
    .local v36, "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    int-to-long v13, v9

    add-long/2addr v5, v13

    int-to-long v13, v7

    sub-long/2addr v5, v13

    long-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->setLoopLength(F)V

    .line 298
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1a

    .line 299
    invoke-virtual {v0, v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->setLoopType(I)V

    .line 300
    :cond_1a
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1c

    .line 301
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->setLoopType(I)V

    goto :goto_d

    .line 293
    .end local v33    # "pgenerators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .end local v37    # "startAddrsOffset":I
    .local v7, "pgenerators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .local v9, "layerglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .local v10, "startAddrsOffset":I
    .restart local v13    # "endAddrsOffset":I
    .restart local v14    # "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .local v32, "startloopAddrsOffset":I
    .local v36, "endloopAddrsOffset":I
    :cond_1b
    move-object/from16 v33, v7

    move/from16 v37, v10

    move v10, v13

    move/from16 v7, v32

    move-object/from16 v32, v9

    move/from16 v9, v36

    move-object/from16 v36, v14

    .line 304
    .end local v13    # "endAddrsOffset":I
    .end local v14    # "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .local v7, "startloopAddrsOffset":I
    .local v9, "endloopAddrsOffset":I
    .local v10, "endAddrsOffset":I
    .local v32, "layerglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .restart local v33    # "pgenerators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .local v36, "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .restart local v37    # "startAddrsOffset":I
    :cond_1c
    :goto_d
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    const/16 v5, 0x21

    invoke-direct {v4, v1, v5}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v5

    .line 309
    .local v5, "volDelay":S
    const/16 v6, 0x22

    invoke-direct {v4, v1, v6}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v6

    .line 311
    .local v6, "volAttack":S
    const/16 v13, 0x23

    invoke-direct {v4, v1, v13}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v13

    .line 313
    .local v13, "volHold":S
    const/16 v14, 0x24

    invoke-direct {v4, v1, v14}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v14

    .line 315
    .local v14, "volDecay":S
    move-object/from16 v21, v0

    .end local v0    # "osc":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    .local v21, "osc":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    const/16 v0, 0x25

    invoke-direct {v4, v1, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    .line 317
    .local v0, "volSustain":S
    move/from16 v25, v2

    .end local v2    # "sampleMode":I
    .local v25, "sampleMode":I
    const/16 v2, 0x26

    invoke-direct {v4, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 320
    .local v2, "volRelease":S
    move-object/from16 v38, v3

    .end local v3    # "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    .local v38, "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    const/16 v3, -0x2ee0

    if-eq v13, v3, :cond_1d

    .line 321
    const/16 v3, 0x27

    invoke-direct {v4, v1, v3}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    .line 323
    .local v3, "volKeyNumToHold":S
    mul-int/lit8 v40, v3, 0x3c

    move/from16 v41, v7

    .end local v7    # "startloopAddrsOffset":I
    .local v41, "startloopAddrsOffset":I
    add-int v7, v13, v40

    int-to-short v13, v7

    .line 324
    neg-int v7, v3

    mul-int/lit16 v7, v7, 0x80

    int-to-float v7, v7

    .line 325
    .local v7, "fvalue":F
    move/from16 v40, v3

    .end local v3    # "volKeyNumToHold":S
    .local v40, "volKeyNumToHold":S
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 326
    .local v3, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    move/from16 v42, v9

    .end local v9    # "endloopAddrsOffset":I
    .local v42, "endloopAddrsOffset":I
    sget-object v9, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 327
    .local v9, "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    move/from16 v43, v10

    .end local v10    # "endAddrsOffset":I
    .local v43, "endAddrsOffset":I
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v10

    move/from16 v44, v13

    .end local v13    # "volHold":S
    .local v44, "volHold":S
    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    move-object/from16 v45, v15

    .end local v15    # "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .local v45, "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    new-instance v15, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v15, v3}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move/from16 v46, v2

    move-object/from16 v47, v3

    .end local v2    # "volRelease":S
    .end local v3    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .local v46, "volRelease":S
    .local v47, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    float-to-double v2, v7

    move/from16 v48, v7

    .end local v7    # "fvalue":F
    .local v48, "fvalue":F
    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v7, v9}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v13, v15, v2, v3, v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v13, v44

    goto :goto_e

    .line 320
    .end local v40    # "volKeyNumToHold":S
    .end local v41    # "startloopAddrsOffset":I
    .end local v42    # "endloopAddrsOffset":I
    .end local v43    # "endAddrsOffset":I
    .end local v44    # "volHold":S
    .end local v45    # "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .end local v46    # "volRelease":S
    .end local v47    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v48    # "fvalue":F
    .restart local v2    # "volRelease":S
    .local v7, "startloopAddrsOffset":I
    .local v9, "endloopAddrsOffset":I
    .restart local v10    # "endAddrsOffset":I
    .restart local v13    # "volHold":S
    .restart local v15    # "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    :cond_1d
    move/from16 v46, v2

    move/from16 v41, v7

    move/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v45, v15

    .line 331
    .end local v2    # "volRelease":S
    .end local v7    # "startloopAddrsOffset":I
    .end local v9    # "endloopAddrsOffset":I
    .end local v10    # "endAddrsOffset":I
    .end local v15    # "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .restart local v41    # "startloopAddrsOffset":I
    .restart local v42    # "endloopAddrsOffset":I
    .restart local v43    # "endAddrsOffset":I
    .restart local v45    # "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .restart local v46    # "volRelease":S
    :goto_e
    const/16 v2, -0x2ee0

    if-eq v14, v2, :cond_1e

    .line 332
    const/16 v2, 0x28

    invoke-direct {v4, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 334
    .local v2, "volKeyNumToDecay":S
    mul-int/lit8 v3, v2, 0x3c

    add-int/2addr v3, v14

    int-to-short v14, v3

    .line 335
    neg-int v3, v2

    mul-int/lit16 v3, v3, 0x80

    int-to-float v3, v3

    .line 336
    .local v3, "fvalue":F
    sget-object v7, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 337
    .local v7, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    sget-object v9, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 338
    .local v9, "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v10

    new-instance v15, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    move/from16 v40, v2

    .end local v2    # "volKeyNumToDecay":S
    .local v40, "volKeyNumToDecay":S
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v2, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move-object/from16 v47, v7

    move/from16 v44, v8

    .end local v7    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v8    # "rootkey":I
    .local v44, "rootkey":I
    .restart local v47    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    float-to-double v7, v3

    move/from16 v48, v3

    .end local v3    # "fvalue":F
    .restart local v48    # "fvalue":F
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v3, v9}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v15, v2, v7, v8, v3}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 331
    .end local v9    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v40    # "volKeyNumToDecay":S
    .end local v44    # "rootkey":I
    .end local v47    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v48    # "fvalue":F
    .restart local v8    # "rootkey":I
    :cond_1e
    move/from16 v44, v8

    .line 343
    .end local v8    # "rootkey":I
    .restart local v44    # "rootkey":I
    :goto_f
    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v2, v5}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 345
    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_ATTACK:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v2, v6}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 347
    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v2, v13}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 349
    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v2, v14}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 353
    rsub-int v2, v0, 0x3e8

    int-to-short v0, v2

    .line 354
    if-gez v0, :cond_1f

    .line 355
    const/4 v0, 0x0

    .line 356
    :cond_1f
    const/16 v2, 0x3e8

    if-le v0, v2, :cond_20

    .line 357
    const/16 v0, 0x3e8

    .line 359
    :cond_20
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_SUSTAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v3, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 361
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_RELEASE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move/from16 v7, v46

    .end local v46    # "volRelease":S
    .local v7, "volRelease":S
    invoke-direct {v4, v12, v3, v7}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 364
    const/16 v3, 0xb

    invoke-direct {v4, v1, v3}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v8

    const/4 v9, 0x7

    if-nez v8, :cond_22

    .line 366
    invoke-direct {v4, v1, v9}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v8

    if-eqz v8, :cond_21

    goto :goto_10

    :cond_21
    move/from16 v48, v0

    move/from16 v50, v5

    move/from16 v51, v6

    move/from16 v52, v7

    move/from16 v53, v13

    move/from16 v54, v14

    move-object v14, v1

    goto/16 :goto_15

    .line 368
    :cond_22
    :goto_10
    const/16 v8, 0x19

    invoke-direct {v4, v1, v8}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v8

    .line 370
    .local v8, "modDelay":S
    const/16 v10, 0x1a

    invoke-direct {v4, v1, v10}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v10

    .line 372
    .local v10, "modAttack":S
    const/16 v15, 0x1b

    invoke-direct {v4, v1, v15}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v15

    .line 374
    .local v15, "modHold":S
    const/16 v9, 0x1c

    invoke-direct {v4, v1, v9}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v9

    .line 376
    .local v9, "modDecay":S
    const/16 v3, 0x1d

    invoke-direct {v4, v1, v3}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    .line 378
    .local v3, "modSustain":S
    const/16 v2, 0x1e

    invoke-direct {v4, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 382
    .local v2, "modRelease":S
    move/from16 v48, v0

    const/16 v0, -0x2ee0

    .end local v0    # "volSustain":S
    .local v48, "volSustain":S
    if-eq v15, v0, :cond_23

    .line 383
    const/16 v0, 0x1f

    invoke-direct {v4, v1, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    .line 385
    .local v0, "modKeyNumToHold":S
    mul-int/lit8 v49, v0, 0x3c

    move/from16 v50, v5

    .end local v5    # "volDelay":S
    .local v50, "volDelay":S
    add-int v5, v15, v49

    int-to-short v15, v5

    .line 386
    neg-int v5, v0

    mul-int/lit16 v5, v5, 0x80

    int-to-float v5, v5

    .line 387
    .local v5, "fvalue":F
    move/from16 v49, v0

    .end local v0    # "modKeyNumToHold":S
    .local v49, "modKeyNumToHold":S
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 388
    .local v0, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    move/from16 v51, v6

    .end local v6    # "volAttack":S
    .local v51, "volAttack":S
    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 389
    .local v6, "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    move/from16 v52, v7

    .end local v7    # "volRelease":S
    .local v52, "volRelease":S
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    move/from16 v53, v13

    .end local v13    # "volHold":S
    .local v53, "volHold":S
    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    move/from16 v54, v14

    .end local v14    # "volDecay":S
    .local v54, "volDecay":S
    new-instance v14, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v14, v0}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move/from16 v56, v2

    move/from16 v55, v3

    .end local v2    # "modRelease":S
    .end local v3    # "modSustain":S
    .local v55, "modSustain":S
    .local v56, "modRelease":S
    float-to-double v2, v5

    move-object/from16 v57, v0

    .end local v0    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .local v57, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v0, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v13, v14, v2, v3, v0}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 382
    .end local v49    # "modKeyNumToHold":S
    .end local v50    # "volDelay":S
    .end local v51    # "volAttack":S
    .end local v52    # "volRelease":S
    .end local v53    # "volHold":S
    .end local v54    # "volDecay":S
    .end local v55    # "modSustain":S
    .end local v56    # "modRelease":S
    .end local v57    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .restart local v2    # "modRelease":S
    .restart local v3    # "modSustain":S
    .local v5, "volDelay":S
    .local v6, "volAttack":S
    .restart local v7    # "volRelease":S
    .restart local v13    # "volHold":S
    .restart local v14    # "volDecay":S
    :cond_23
    move/from16 v56, v2

    move/from16 v55, v3

    move/from16 v50, v5

    move/from16 v51, v6

    move/from16 v52, v7

    move/from16 v53, v13

    move/from16 v54, v14

    .line 393
    .end local v2    # "modRelease":S
    .end local v3    # "modSustain":S
    .end local v5    # "volDelay":S
    .end local v6    # "volAttack":S
    .end local v7    # "volRelease":S
    .end local v13    # "volHold":S
    .end local v14    # "volDecay":S
    .restart local v50    # "volDelay":S
    .restart local v51    # "volAttack":S
    .restart local v52    # "volRelease":S
    .restart local v53    # "volHold":S
    .restart local v54    # "volDecay":S
    .restart local v55    # "modSustain":S
    .restart local v56    # "modRelease":S
    :goto_11
    const/16 v0, -0x2ee0

    if-eq v9, v0, :cond_24

    .line 394
    const/16 v0, 0x20

    invoke-direct {v4, v1, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    .line 396
    .local v0, "modKeyNumToDecay":S
    mul-int/lit8 v2, v0, 0x3c

    add-int/2addr v2, v9

    int-to-short v9, v2

    .line 397
    neg-int v2, v0

    mul-int/lit16 v2, v2, 0x80

    int-to-float v2, v2

    .line 398
    .local v2, "fvalue":F
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 399
    .local v3, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    sget-object v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 400
    .local v5, "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v13, v3}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move/from16 v39, v0

    move-object v14, v1

    .end local v0    # "modKeyNumToDecay":S
    .end local v1    # "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .local v14, "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .local v39, "modKeyNumToDecay":S
    float-to-double v0, v2

    move/from16 v49, v2

    .end local v2    # "fvalue":F
    .local v49, "fvalue":F
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v2, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v7, v13, v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 393
    .end local v3    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v5    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v14    # "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .end local v39    # "modKeyNumToDecay":S
    .end local v49    # "fvalue":F
    .restart local v1    # "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    :cond_24
    move-object v14, v1

    .line 405
    .end local v1    # "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .restart local v14    # "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    :goto_12
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v0, v8}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 407
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_ATTACK:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v0, v10}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 409
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v0, v15}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 411
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v0, v9}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 413
    if-gez v55, :cond_25

    .line 414
    const/4 v3, 0x0

    .end local v55    # "modSustain":S
    .local v3, "modSustain":S
    goto :goto_13

    .line 413
    .end local v3    # "modSustain":S
    .restart local v55    # "modSustain":S
    :cond_25
    move/from16 v3, v55

    .line 415
    .end local v55    # "modSustain":S
    .restart local v3    # "modSustain":S
    :goto_13
    const/16 v0, 0x3e8

    if-le v3, v0, :cond_26

    .line 416
    const/16 v3, 0x3e8

    .line 417
    :cond_26
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_SUSTAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    rsub-int v1, v3, 0x3e8

    int-to-double v1, v1

    invoke-direct {v4, v12, v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;D)V

    .line 419
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_RELEASE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move/from16 v1, v56

    .end local v56    # "modRelease":S
    .local v1, "modRelease":S
    invoke-direct {v4, v12, v0, v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 422
    const/16 v0, 0xb

    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_27

    .line 424
    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    int-to-double v5, v0

    .line 426
    .local v5, "fvalue":D
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_EG2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 427
    .local v0, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 429
    .local v2, "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    move/from16 v56, v1

    .end local v1    # "modRelease":S
    .restart local v56    # "modRelease":S
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v1, v0}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move-object/from16 v39, v0

    .end local v0    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .local v39, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v0, v2}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v13, v1, v5, v6, v0}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 422
    .end local v2    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v5    # "fvalue":D
    .end local v39    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v56    # "modRelease":S
    .restart local v1    # "modRelease":S
    :cond_27
    move/from16 v56, v1

    .line 434
    .end local v1    # "modRelease":S
    .restart local v56    # "modRelease":S
    :goto_14
    const/4 v0, 0x7

    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v1

    if-eqz v1, :cond_28

    .line 436
    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    int-to-double v0, v0

    .line 438
    .local v0, "fvalue":D
    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_EG2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 439
    .local v2, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    sget-object v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 440
    .local v5, "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v13, v2}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move-object/from16 v39, v2

    .end local v2    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .restart local v39    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v2, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v7, v13, v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v0    # "fvalue":D
    .end local v3    # "modSustain":S
    .end local v5    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v8    # "modDelay":S
    .end local v9    # "modDecay":S
    .end local v10    # "modAttack":S
    .end local v15    # "modHold":S
    .end local v39    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v56    # "modRelease":S
    :cond_28
    :goto_15
    const/16 v0, 0xa

    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x5

    if-nez v1, :cond_29

    .line 449
    invoke-direct {v4, v14, v3}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v1

    if-nez v1, :cond_29

    .line 451
    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v1

    if-eqz v1, :cond_2a

    .line 453
    :cond_29
    const/16 v1, 0x16

    invoke-direct {v4, v14, v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v1

    .line 455
    .local v1, "lfo_freq":S
    const/16 v5, 0x15

    invoke-direct {v4, v14, v5}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v5

    .line 457
    .local v5, "lfo_delay":S
    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO1_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v6, v5}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 459
    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO1_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v6, v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 463
    .end local v1    # "lfo_freq":S
    .end local v5    # "lfo_delay":S
    :cond_2a
    const/16 v1, 0x18

    invoke-direct {v4, v14, v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v1

    .line 465
    .local v1, "vib_freq":S
    const/16 v5, 0x17

    invoke-direct {v4, v14, v5}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v5

    .line 467
    .local v5, "vib_delay":S
    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO2_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v6, v5}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addTimecentValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 469
    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO2_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v6, v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 473
    const/4 v6, 0x6

    invoke-direct {v4, v14, v6}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v7

    if-eqz v7, :cond_2b

    .line 475
    invoke-direct {v4, v14, v6}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v6

    int-to-double v6, v6

    .line 477
    .local v6, "fvalue":D
    sget-object v8, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 478
    .local v8, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    sget-object v9, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 479
    .local v9, "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v10

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v15, Lcn/sherlock/com/sun/media/sound/ModelSource;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v15, v8, v3, v2}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v2, v9}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v13, v15, v6, v7, v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v6    # "fvalue":D
    .end local v8    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v9    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    :cond_2b
    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_2c

    .line 489
    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    int-to-double v2, v0

    .line 491
    .local v2, "fvalue":D
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 492
    .local v0, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 493
    .local v6, "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelSource;

    const/4 v10, 0x1

    const/4 v13, 0x0

    invoke-direct {v9, v0, v13, v10}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v10, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v8, v9, v2, v3, v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v0    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v2    # "fvalue":D
    .end local v6    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    :cond_2c
    const/4 v0, 0x5

    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_2d

    .line 503
    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    int-to-double v2, v0

    .line 505
    .restart local v2    # "fvalue":D
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 506
    .restart local v0    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 507
    .restart local v6    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelSource;

    const/4 v10, 0x1

    const/4 v13, 0x0

    invoke-direct {v9, v0, v13, v10}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v10, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v8, v9, v2, v3, v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v0    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v2    # "fvalue":D
    .end local v6    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    :cond_2d
    const/16 v0, 0xd

    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_2e

    .line 517
    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    int-to-double v2, v0

    .line 519
    .restart local v2    # "fvalue":D
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 520
    .restart local v0    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_GAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 521
    .restart local v6    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelSource;

    const/4 v10, 0x1

    const/4 v13, 0x0

    invoke-direct {v9, v0, v13, v10}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V

    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v10, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v8, v9, v2, v3, v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    .end local v0    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v2    # "fvalue":D
    .end local v6    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    :cond_2e
    const/16 v0, 0x2e

    invoke-virtual {v11, v0}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2f

    .line 530
    const/16 v0, 0x2e

    invoke-virtual {v11, v0}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    div-double/2addr v2, v6

    .line 531
    .local v2, "val":D
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v0, v2, v3}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;D)V

    .line 534
    .end local v2    # "val":D
    :cond_2f
    const/16 v0, 0x2f

    invoke-virtual {v11, v0}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_30

    .line 535
    const/16 v0, 0x2f

    invoke-virtual {v11, v0}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getShort(I)S

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    div-double/2addr v2, v6

    .line 537
    .restart local v2    # "val":D
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_VELOCITY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v0, v2, v3}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;D)V

    .line 540
    .end local v2    # "val":D
    :cond_30
    const/16 v0, 0x8

    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    const/16 v2, 0x34bc

    if-ge v0, v2, :cond_31

    .line 542
    const/16 v0, 0x8

    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    .line 544
    .local v0, "filter_freq":S
    const/16 v2, 0x9

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 546
    .local v2, "filter_q":S
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v3, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 548
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_Q:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v3, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 552
    .end local v0    # "filter_freq":S
    .end local v2    # "filter_q":S
    :cond_31
    const/16 v0, 0x33

    invoke-direct {v4, v14, v0}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v0

    const/16 v2, 0x64

    mul-int/2addr v0, v2

    .line 554
    .local v0, "tune":I
    const/16 v2, 0x34

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    add-int/2addr v0, v2

    .line 556
    if-eqz v0, :cond_32

    .line 557
    sget-object v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    int-to-short v3, v0

    invoke-direct {v4, v12, v2, v3}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 560
    :cond_32
    const/16 v2, 0x11

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_33

    .line 561
    const/16 v2, 0x11

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 563
    .local v2, "val":S
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PAN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v3, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 565
    .end local v2    # "val":S
    :cond_33
    const/16 v2, 0x30

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_34

    .line 566
    const/16 v2, 0x30

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 568
    .restart local v2    # "val":S
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_GAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const v6, -0x413f574f

    int-to-float v7, v2

    mul-float/2addr v7, v6

    float-to-double v6, v7

    invoke-direct {v4, v12, v3, v6, v7}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;D)V

    .line 571
    .end local v2    # "val":S
    :cond_34
    const/16 v2, 0xf

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_35

    .line 573
    const/16 v2, 0xf

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 575
    .restart local v2    # "val":S
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_CHORUS:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v3, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 577
    .end local v2    # "val":S
    :cond_35
    const/16 v2, 0x10

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_36

    .line 579
    const/16 v2, 0x10

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 581
    .restart local v2    # "val":S
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_REVERB:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v4, v12, v3, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->addValue(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelIdentifier;S)V

    .line 583
    .end local v2    # "val":S
    :cond_36
    const/16 v2, 0x38

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_38

    .line 585
    const/16 v2, 0x38

    invoke-direct {v4, v14, v2}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 587
    .local v2, "fvalue":S
    if-nez v2, :cond_37

    .line 588
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 589
    .local v3, "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    mul-int/lit8 v15, v44, 0x64

    int-to-double v8, v15

    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v10, v3}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const/4 v13, 0x0

    invoke-direct {v7, v13, v8, v9, v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v3    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    goto :goto_16

    .line 593
    :cond_37
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 594
    .restart local v3    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    rsub-int/lit8 v8, v2, 0x64

    mul-int v15, v44, v8

    int-to-double v8, v15

    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v10, v3}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const/4 v13, 0x0

    invoke-direct {v7, v13, v8, v9, v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v3    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    :goto_16
    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 600
    .local v3, "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 601
    .restart local v6    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v9, v3}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    mul-int/lit16 v10, v2, 0x80

    move v15, v0

    move v13, v1

    .end local v0    # "tune":I
    .end local v1    # "vib_freq":S
    .local v13, "vib_freq":S
    .local v15, "tune":I
    int-to-double v0, v10

    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    invoke-direct {v10, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v8, v9, v0, v1, v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 583
    .end local v2    # "fvalue":S
    .end local v3    # "src":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v6    # "dest":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .end local v13    # "vib_freq":S
    .end local v15    # "tune":I
    .restart local v0    # "tune":I
    .restart local v1    # "vib_freq":S
    :cond_38
    move v15, v0

    move v13, v1

    .line 607
    .end local v0    # "tune":I
    .end local v1    # "vib_freq":S
    .restart local v13    # "vib_freq":S
    .restart local v15    # "tune":I
    :goto_17
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_VELOCITY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/SF2Instrument$1;

    invoke-direct {v6, v4}, Lcn/sherlock/com/sun/media/sound/SF2Instrument$1;-><init>(Lcn/sherlock/com/sun/media/sound/SF2Instrument;)V

    invoke-direct {v2, v3, v6}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;Lcn/sherlock/com/sun/media/sound/ModelTransform;)V

    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v3, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v6, -0x3f5d400000000000L    # -2400.0

    invoke-direct {v1, v2, v6, v7, v3}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v3, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v2, v3, v7, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v8, "midi_cc"

    const-string v9, "1"

    invoke-direct {v6, v8, v9, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, v6, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v7, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v58, 0x4049000000000000L    # 50.0

    move-object/from16 v55, v1

    move-object/from16 v56, v2

    move-object/from16 v57, v3

    move-object/from16 v60, v6

    invoke-direct/range {v55 .. v60}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual/range {v35 .. v35}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 638
    invoke-virtual/range {v35 .. v35}, Lcn/sherlock/com/sun/media/sound/SF2Layer;->getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getModulators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;

    .line 639
    .local v1, "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    invoke-direct {v4, v12, v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->convertModulator(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/SF2Modulator;)V

    .line 640
    .end local v1    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    goto :goto_18

    .line 642
    :cond_39
    invoke-virtual {v11}, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->getModulators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;

    .line 643
    .restart local v1    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    invoke-direct {v4, v12, v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->convertModulator(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/SF2Modulator;)V

    .end local v1    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    goto :goto_19

    .line 645
    :cond_3a
    if-eqz v31, :cond_3b

    .line 646
    invoke-virtual/range {v31 .. v31}, Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;->getModulators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;

    .line 647
    .restart local v1    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    invoke-direct {v4, v12, v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->convertModulator(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/SF2Modulator;)V

    .end local v1    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    goto :goto_1a

    .line 649
    :cond_3b
    invoke-virtual/range {v30 .. v30}, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->getModulators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SF2Modulator;

    .line 650
    .restart local v1    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    invoke-direct {v4, v12, v1}, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->convertModulator(Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/SF2Modulator;)V

    .end local v1    # "modulator":Lcn/sherlock/com/sun/media/sound/SF2Modulator;
    goto :goto_1b

    .line 652
    .end local v5    # "vib_delay":S
    .end local v11    # "layerzone":Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
    .end local v12    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v13    # "vib_freq":S
    .end local v14    # "generators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .end local v15    # "tune":I
    .end local v19    # "velto":I
    .end local v21    # "osc":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    .end local v24    # "keyfrom":I
    .end local v25    # "sampleMode":I
    .end local v26    # "keyto":I
    .end local v28    # "velfrom":I
    .end local v34    # "pitchcorrection":F
    .end local v36    # "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .end local v37    # "startAddrsOffset":I
    .end local v38    # "sample":Lcn/sherlock/com/sun/media/sound/SF2Sample;
    .end local v41    # "startloopAddrsOffset":I
    .end local v42    # "endloopAddrsOffset":I
    .end local v43    # "endAddrsOffset":I
    .end local v44    # "rootkey":I
    .end local v45    # "buff24":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .end local v48    # "volSustain":S
    .end local v50    # "volDelay":S
    .end local v51    # "volAttack":S
    .end local v52    # "volRelease":S
    .end local v53    # "volHold":S
    .end local v54    # "volDecay":S
    :cond_3c
    move-object v0, v4

    move/from16 v1, v16

    move-object/from16 v5, v17

    move-object/from16 v10, v22

    move/from16 v3, v23

    move-object/from16 v2, v29

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v9, v32

    move-object/from16 v7, v33

    move-object/from16 v8, v35

    goto/16 :goto_2

    .line 148
    .end local v16    # "performercount":I
    .end local v23    # "pi":I
    .end local v29    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v30    # "presetzone":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    .end local v31    # "presetglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .end local v32    # "layerglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .end local v33    # "pgenerators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .end local v35    # "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .local v1, "performercount":I
    .local v2, "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .local v3, "pi":I
    .restart local v4    # "presetglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .local v6, "presetzone":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    .local v7, "pgenerators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .local v8, "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .local v9, "layerglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    :cond_3d
    move/from16 v16, v1

    move-object/from16 v29, v2

    move-object/from16 v31, v4

    move-object/from16 v17, v5

    move-object/from16 v30, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v32, v9

    move-object v4, v0

    .line 653
    .end local v1    # "performercount":I
    .end local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v4    # "presetglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .end local v6    # "presetzone":Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
    .end local v7    # "pgenerators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .end local v8    # "layer":Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .end local v9    # "layerglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .restart local v16    # "performercount":I
    .restart local v29    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v31    # "presetglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    move-object/from16 v4, v31

    goto/16 :goto_1

    .line 654
    .end local v16    # "performercount":I
    .end local v29    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v31    # "presetglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .restart local v1    # "performercount":I
    .restart local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v4    # "presetglobal":Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    :cond_3e
    move-object/from16 v29, v2

    .end local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v29    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    return-object v29
.end method

.method public getRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->regions:Ljava/util/List;

    return-object v0
.end method

.method public setGenre(J)V
    .locals 0
    .param p1, "genre"    # J

    .line 93
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->genre:J

    .line 94
    return-void
.end method

.method public setGlobalZone(Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;)V
    .locals 0
    .param p1, "zone"    # Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    .line 121
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    .line 122
    return-void
.end method

.method public setLibrary(J)V
    .locals 0
    .param p1, "library"    # J

    .line 101
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->library:J

    .line 102
    return-void
.end method

.method public setMorphology(J)V
    .locals 0
    .param p1, "morphology"    # J

    .line 109
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->morphology:J

    .line 110
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setPatch(Ljp/kshoji/javax/sound/midi/Patch;)V
    .locals 1
    .param p1, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;

    .line 75
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/16 v0, 0x80

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    .line 77
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v0

    shr-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    .line 80
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    .line 82
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    const/16 v1, 0x80

    const-string v2, " preset #"

    if-ne v0, v1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drumkit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instrument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bank #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->bank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument;->preset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
