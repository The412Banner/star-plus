.class final Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;
.super Ljava/lang/Object;
.source "DTLSInputRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DTLSInputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DTLSReassembler"
.end annotation


# instance fields
.field bufferedFragments:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;",
            ">;"
        }
    .end annotation
.end field

.field expectCCSFlight:Z

.field flightIsReady:Z

.field final handshakeEpoch:I

.field handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

.field needToCheckFlight:Z

.field nextRecordEpoch:I

.field nextRecordSeq:J

.field precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/DTLSInputRecord;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/DTLSInputRecord;I)V
    .locals 2
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord;
    .param p2, "handshakeEpoch"    # I

    .line 608
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->this$0:Lorg/openjsse/sun/security/ssl/DTLSInputRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    .line 591
    new-instance v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    .line 599
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->nextRecordSeq:J

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->expectCCSFlight:Z

    .line 605
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    .line 606
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needToCheckFlight:Z

    .line 609
    iput p2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeEpoch:I

    .line 610
    iput p2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->nextRecordEpoch:I

    .line 612
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iput p2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    .line 613
    return-void
.end method

.method static synthetic access$000(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    .line 583
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private acquireCachedMessage()Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 15

    .line 1072
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 1073
    .local v0, "rFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->this$0:Lorg/openjsse/sun/security/ssl/DTLSInputRecord;

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->access$100(Lorg/openjsse/sun/security/ssl/DTLSInputRecord;)I

    move-result v1

    iget v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    const/4 v3, 0x0

    const-string v4, "verbose"

    const/4 v5, 0x0

    if-eq v1, v2, :cond_4

    .line 1074
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->this$0:Lorg/openjsse/sun/security/ssl/DTLSInputRecord;

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->access$100(Lorg/openjsse/sun/security/ssl/DTLSInputRecord;)I

    move-result v1

    iget v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    if-le v1, v2, :cond_1

    .line 1076
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    const-string v1, "Discard old buffered ciphertext fragments."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1084
    :cond_1
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    if-eqz v1, :cond_2

    .line 1085
    iput-boolean v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    .line 1088
    :cond_2
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_3

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1089
    const-string v1, "Not yet ready to decrypt the cached fragments."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    :cond_3
    return-object v3

    .line 1095
    :cond_4
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1097
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->fragment:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1098
    .local v1, "fragment":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 1100
    .local v2, "plaintextFragment":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->this$0:Lorg/openjsse/sun/security/ssl/DTLSInputRecord;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    iget-byte v7, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEnS:[B

    invoke-virtual {v6, v7, v1, v8}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v6

    .line 1102
    .local v6, "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    iget-object v14, v6, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1103
    .end local v2    # "plaintextFragment":Ljava/nio/ByteBuffer;
    .local v14, "plaintextFragment":Ljava/nio/ByteBuffer;
    :try_start_1
    iget-byte v2, v6, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    iput-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1111
    .end local v6    # "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    nop

    .line 1117
    iget-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v6, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v2, v6, :cond_9

    .line 1118
    :goto_0
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_8

    .line 1119
    iget-byte v7, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    iget-byte v8, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->majorVersion:B

    iget-byte v9, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->minorVersion:B

    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEnS:[B

    iget v11, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-wide v12, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    invoke-static/range {v7 .. v14}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->access$200(BBB[BIJLjava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    move-result-object v2

    .line 1125
    .local v2, "hsFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    if-nez v2, :cond_6

    .line 1127
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_5

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1128
    const-string v4, "Invalid handshake fragment, discard it"

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    :cond_5
    return-object v3

    .line 1135
    :cond_6
    invoke-virtual {p0, v2}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->queueUpHandshake(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;)V

    .line 1140
    iget-byte v6, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v6, v7, :cond_7

    .line 1141
    iput-boolean v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    .line 1142
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needToCheckFlight:Z

    .line 1144
    .end local v2    # "hsFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    :cond_7
    goto :goto_0

    .line 1146
    :cond_8
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->acquirePlaintext()Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v2

    return-object v2

    .line 1148
    :cond_9
    new-instance v2, Lorg/openjsse/sun/security/ssl/Plaintext;

    iget-byte v4, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    iget-byte v5, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->majorVersion:B

    iget-byte v6, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->minorVersion:B

    iget v7, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEnS:[B

    .line 1151
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v8

    move-object v3, v2

    move-object v10, v14

    invoke-direct/range {v3 .. v10}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 1148
    return-object v2

    .line 1104
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v14    # "plaintextFragment":Ljava/nio/ByteBuffer;
    .local v2, "plaintextFragment":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v5

    move-object v14, v2

    move-object v2, v5

    .line 1105
    .local v2, "gse":Ljava/security/GeneralSecurityException;
    .restart local v14    # "plaintextFragment":Ljava/nio/ByteBuffer;
    :goto_1
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_a

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1106
    const-string v4, "Discard invalid record: "

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    :cond_a
    return-object v3
.end method

.method private acquireHandshakeMessage()Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 20

    .line 1158
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 1159
    .local v1, "rFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    iget-byte v2, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 1160
    iget v2, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->nextRecordEpoch:I

    .line 1166
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->nextRecordSeq:J

    .line 1169
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1170
    new-instance v2, Lorg/openjsse/sun/security/ssl/Plaintext;

    iget-byte v4, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    iget-byte v5, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->majorVersion:B

    iget-byte v6, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->minorVersion:B

    iget v7, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEnS:[B

    .line 1173
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v8

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->fragment:[B

    .line 1174
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 1170
    return-object v2

    .line 1176
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    .line 1177
    .local v2, "hsFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    iget v3, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    iget v5, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentLength:I

    const-wide/16 v6, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x4

    if-ne v3, v5, :cond_1

    iget v3, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    if-nez v3, :cond_1

    .line 1180
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v3, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1183
    iget-wide v12, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordSeq:J

    add-long/2addr v12, v6

    iput-wide v12, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->nextRecordSeq:J

    .line 1186
    iget v3, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    add-int/2addr v3, v11

    new-array v3, v3, [B

    .line 1187
    .local v3, "recordFrag":[B
    new-instance v5, Lorg/openjsse/sun/security/ssl/Plaintext;

    iget-byte v13, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->contentType:B

    iget-byte v14, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->majorVersion:B

    iget-byte v15, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->minorVersion:B

    iget v6, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordEpoch:I

    iget-object v7, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordEnS:[B

    .line 1191
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v17

    .line 1192
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object v12, v5

    move/from16 v16, v6

    invoke-direct/range {v12 .. v19}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 1195
    .local v5, "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    iget-byte v6, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    aput-byte v6, v3, v10

    .line 1196
    iget v6, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1198
    iget v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v9

    .line 1200
    iget v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 1202
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragment:[B

    iget v6, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentLength:I

    invoke-static {v4, v10, v3, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1206
    invoke-direct {v0, v2, v5}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeHashing(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;Lorg/openjsse/sun/security/ssl/Plaintext;)V

    .line 1208
    return-object v5

    .line 1213
    .end local v3    # "recordFrag":[B
    .end local v5    # "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    :cond_1
    iget v3, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    add-int/2addr v3, v11

    new-array v3, v3, [B

    .line 1214
    .restart local v3    # "recordFrag":[B
    new-instance v5, Lorg/openjsse/sun/security/ssl/Plaintext;

    iget-byte v13, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->contentType:B

    iget-byte v14, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->majorVersion:B

    iget-byte v15, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->minorVersion:B

    iget v12, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordEpoch:I

    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordEnS:[B

    .line 1218
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v17

    .line 1219
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v19

    move v6, v12

    move-object v12, v5

    move/from16 v16, v6

    invoke-direct/range {v12 .. v19}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 1222
    .restart local v5    # "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    iget-byte v6, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    aput-byte v6, v3, v10

    .line 1223
    iget v6, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1225
    iget v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v9

    .line 1227
    iget v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 1229
    iget v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    .line 1230
    .local v4, "msgSeq":I
    iget-wide v6, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordSeq:J

    .line 1231
    .local v6, "maxRecodeSN":J
    move-object v8, v2

    .line 1233
    .local v8, "hmFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    :cond_2
    iget-object v9, v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragment:[B

    iget v12, v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    add-int/2addr v12, v11

    iget v13, v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentLength:I

    invoke-static {v9, v10, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v9, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1239
    iget-wide v12, v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordSeq:J

    cmp-long v9, v6, v12

    if-gez v9, :cond_3

    .line 1240
    iget-wide v6, v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordSeq:J

    .line 1247
    :cond_3
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v9}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1248
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v9}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    check-cast v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 1249
    iget-byte v9, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v12, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v12, v12, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v9, v12, :cond_4

    .line 1250
    goto :goto_0

    .line 1252
    :cond_4
    move-object v8, v1

    check-cast v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    .line 1255
    :cond_5
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v9}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    iget v9, v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    if-eq v4, v9, :cond_2

    .line 1259
    :cond_6
    :goto_0
    invoke-direct {v0, v2, v5}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeHashing(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;Lorg/openjsse/sun/security/ssl/Plaintext;)V

    .line 1261
    const-wide/16 v9, 0x1

    add-long/2addr v9, v6

    iput-wide v9, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->nextRecordSeq:J

    .line 1263
    return-object v5
.end method

.method private bufferFragment(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V
    .locals 1
    .param p1, "rf"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 802
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 804
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    .line 808
    :cond_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needToCheckFlight:Z

    if-nez v0, :cond_1

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needToCheckFlight:Z

    .line 811
    :cond_1
    return-void
.end method

.method private cleanUpRetransmit(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V
    .locals 8
    .param p1, "rf"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "isNewFlight":Z
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    if-eqz v1, :cond_3

    .line 817
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    if-ge v1, v2, :cond_0

    .line 818
    const/4 v0, 0x1

    goto :goto_0

    .line 820
    :cond_0
    instance-of v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    if-eqz v1, :cond_2

    .line 821
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    .line 822
    .local v1, "hsf":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    iget v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    if-ge v2, v3, :cond_1

    .line 823
    const/4 v0, 0x1

    .line 825
    .end local v1    # "hsf":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    :cond_1
    goto :goto_0

    :cond_2
    iget-byte v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v1, v2, :cond_1

    .line 829
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    if-ge v1, v2, :cond_3

    .line 830
    const/4 v0, 0x1

    .line 836
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 838
    return-void

    .line 842
    :cond_4
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 843
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 845
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 846
    .local v2, "frag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    const/4 v3, 0x0

    .line 847
    .local v3, "isOld":Z
    iget v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    if-ge v4, v5, :cond_5

    .line 848
    const/4 v3, 0x1

    goto :goto_2

    .line 849
    :cond_5
    iget v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    if-ne v4, v5, :cond_6

    .line 850
    iget-wide v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-wide v6, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    .line 851
    const/4 v3, 0x1

    .line 855
    :cond_6
    :goto_2
    if-nez v3, :cond_8

    instance-of v4, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    if-eqz v4, :cond_8

    .line 856
    move-object v4, v2

    check-cast v4, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    .line 857
    .local v4, "hsf":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    iget v5, v4, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    if-gt v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    move v3, v5

    .line 860
    .end local v4    # "hsf":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    :cond_8
    if-eqz v3, :cond_9

    .line 861
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 866
    .end local v2    # "frag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    .end local v3    # "isOld":Z
    goto :goto_1

    .line 869
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;>;"
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    .line 870
    return-void
.end method

.method private handshakeHashing(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;Lorg/openjsse/sun/security/ssl/Plaintext;)V
    .locals 10
    .param p1, "hsFrag"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    .param p2, "plaintext"    # Lorg/openjsse/sun/security/ssl/Plaintext;

    .line 1535
    iget-byte v0, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    .line 1536
    .local v0, "hsType":B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->this$0:Lorg/openjsse/sun/security/ssl/DTLSInputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->isHashable(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1538
    return-void

    .line 1542
    :cond_0
    iget-object v1, p2, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1543
    iget-object v1, p2, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v3, 0xc

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1547
    .local v1, "temporary":[B
    iget-byte v4, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    .line 1550
    iget v4, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v1, v6

    .line 1551
    iget v4, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    const/16 v7, 0x8

    shr-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v8, 0x2

    aput-byte v4, v1, v8

    .line 1552
    iget v4, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v9, 0x3

    aput-byte v4, v1, v9

    .line 1555
    iget v4, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    shr-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1556
    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    .line 1559
    const/4 v2, 0x6

    aput-byte v5, v1, v2

    .line 1560
    const/4 v2, 0x7

    aput-byte v5, v1, v2

    .line 1561
    aput-byte v5, v1, v7

    .line 1564
    const/16 v2, 0x9

    aget-byte v4, v1, v6

    aput-byte v4, v1, v2

    .line 1565
    const/16 v2, 0xa

    aget-byte v4, v1, v8

    aput-byte v4, v1, v2

    .line 1566
    const/16 v2, 0xb

    aget-byte v4, v1, v9

    aput-byte v4, v1, v2

    .line 1568
    iget-object v2, p2, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    iget-object v4, p2, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    .line 1569
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 1568
    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1570
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->this$0:Lorg/openjsse/sun/security/ssl/DTLSInputRecord;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v2, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive([B)V

    .line 1571
    iget-object v2, p2, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1572
    return-void
.end method

.method private hasCompleted(B)Z
    .locals 2
    .param p1, "handshakeType"    # B

    .line 1491
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->holesMap:Ljava/util/HashMap;

    .line 1492
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1493
    .local v0, "holes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;>;"
    if-nez v0, :cond_0

    .line 1495
    const/4 v1, 0x0

    return v1

    .line 1498
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    return v1
.end method

.method private hasCompleted(Ljava/util/Set;II)Z
    .locals 6
    .param p2, "presentMsgSeq"    # I
    .param p3, "endMsgSeq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;",
            ">;II)Z"
        }
    .end annotation

    .line 1507
    .local p1, "fragments":Ljava/util/Set;, "Ljava/util/Set<Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 1508
    .local v1, "rFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    iget-byte v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v3, v4, :cond_3

    iget-boolean v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->isCiphertext:Z

    if-eqz v3, :cond_0

    .line 1510
    goto :goto_1

    .line 1513
    :cond_0
    move-object v3, v1

    check-cast v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    .line 1514
    .local v3, "hsFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    iget v4, v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    if-ne v4, p2, :cond_1

    .line 1515
    goto :goto_0

    .line 1516
    :cond_1
    iget v4, v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    add-int/lit8 v5, p2, 0x1

    if-ne v4, v5, :cond_3

    .line 1518
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    invoke-direct {p0, v4}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasCompleted(B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1519
    return v2

    .line 1522
    :cond_2
    iget p2, v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    .line 1527
    .end local v1    # "rFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    .end local v3    # "hsFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    goto :goto_0

    .line 1529
    :cond_3
    :goto_1
    if-lt p2, p3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private hasFinishedMessage(Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;",
            ">;)Z"
        }
    .end annotation

    .line 1442
    .local p1, "fragments":Ljava/util/Set;, "Ljava/util/Set<Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;>;"
    const/4 v0, 0x0

    .line 1443
    .local v0, "hasCCS":Z
    const/4 v1, 0x0

    .line 1444
    .local v1, "hasFin":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 1445
    .local v3, "fragment":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    iget-byte v5, v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v6, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v5, v6, :cond_1

    .line 1446
    if-eqz v1, :cond_0

    .line 1447
    return v4

    .line 1449
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1450
    :cond_1
    iget-byte v5, v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v6, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v5, v6, :cond_3

    .line 1452
    iget-boolean v5, v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->isCiphertext:Z

    if-eqz v5, :cond_3

    .line 1453
    if-eqz v0, :cond_2

    .line 1454
    return v4

    .line 1456
    :cond_2
    const/4 v1, 0x1

    .line 1459
    .end local v3    # "fragment":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    :cond_3
    :goto_1
    goto :goto_0

    .line 1461
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method private isDesirable(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)Z
    .locals 9
    .param p1, "rf"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 879
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->nextRecordEpoch:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 880
    .local v0, "previousEpoch":I
    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    const-string v3, "verbose"

    const/4 v4, 0x0

    if-ge v2, v0, :cond_1

    .line 882
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    const-string v1, "Too old epoch to use this record, discard it."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    :cond_0
    return v4

    .line 901
    :cond_1
    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    if-ne v2, v0, :cond_a

    .line 902
    const/4 v2, 0x1

    .line 903
    .local v2, "isDesired":Z
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    if-nez v5, :cond_2

    .line 904
    const/4 v2, 0x0

    goto :goto_0

    .line 906
    :cond_2
    instance-of v5, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    if-eqz v5, :cond_4

    .line 907
    move-object v5, p1

    check-cast v5, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    .line 908
    .local v5, "hsf":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    iget v7, v5, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    if-le v6, v7, :cond_3

    .line 909
    const/4 v2, 0x0

    .line 911
    .end local v5    # "hsf":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    :cond_3
    goto :goto_0

    :cond_4
    iget-byte v5, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v6, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v5, v6, :cond_5

    .line 915
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    iget v6, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    if-eq v5, v6, :cond_7

    .line 916
    const/4 v2, 0x0

    goto :goto_0

    .line 919
    :cond_5
    iget v5, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    if-lt v5, v6, :cond_6

    iget v5, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    if-ne v5, v6, :cond_7

    iget-wide v5, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-wide v7, v7, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_7

    .line 922
    :cond_6
    const/4 v2, 0x0

    .line 927
    :cond_7
    :goto_0
    if-nez v2, :cond_9

    .line 929
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_8

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 930
    const-string v1, "Too old retransmission to use, discard it."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    :cond_8
    return v4

    .line 927
    .end local v2    # "isDesired":Z
    :cond_9
    goto :goto_1

    .line 936
    :cond_a
    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->nextRecordEpoch:I

    if-ne v2, v5, :cond_c

    iget-wide v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->nextRecordSeq:J

    iget-wide v7, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_c

    .line 942
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_b

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 943
    const-string v1, "Lagging behind record (sequence), discard it."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    :cond_b
    return v4

    .line 936
    :cond_c
    :goto_1
    nop

    .line 950
    return v1
.end method

.method private isEmpty()Z
    .locals 1

    .line 954
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needToCheckFlight:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needToCheckFlight:Z

    if-eqz v0, :cond_1

    .line 956
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 954
    :goto_1
    return v0
.end method

.method private needClientVerify(Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;",
            ">;)Z"
        }
    .end annotation

    .line 1472
    .local p1, "fragments":Ljava/util/Set;, "Ljava/util/Set<Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 1473
    .local v1, "rFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    iget-byte v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v3, v4, :cond_3

    iget-boolean v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->isCiphertext:Z

    if-eqz v3, :cond_0

    .line 1475
    goto :goto_1

    .line 1478
    :cond_0
    move-object v3, v1

    check-cast v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    .line 1479
    .local v3, "hsFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v4, v5, :cond_1

    .line 1480
    goto :goto_0

    .line 1483
    :cond_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->fragment:[B

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->fragment:[B

    array-length v0, v0

    const/16 v4, 0x1c

    if-le v0, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 1487
    .end local v1    # "rFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    .end local v3    # "hsFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    :cond_3
    :goto_1
    return v2
.end method

.method private resetHandshakeFlight(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;)V
    .locals 7
    .param p1, "prev"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    .line 1038
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    sget-byte v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->HF_UNKNOWN:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    .line 1039
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    .line 1040
    iget v0, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1042
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iput v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    .line 1057
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iput v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    .line 1058
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    .line 1061
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-wide v3, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    .line 1064
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->holesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1067
    iput-boolean v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    .line 1068
    iput-boolean v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needToCheckFlight:Z

    .line 1069
    return-void
.end method


# virtual methods
.method acquirePlaintext()Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 5

    .line 960
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "verbose"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 961
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const-string v0, "No received handshake messages"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 964
    :cond_0
    return-object v1

    .line 967
    :cond_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needToCheckFlight:Z

    if-eqz v0, :cond_4

    .line 969
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady()Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    .line 972
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    if-eqz v0, :cond_3

    .line 975
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    invoke-virtual {v0, v4}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->isRetransmitOf(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 980
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->resetHandshakeFlight(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;)V

    .line 982
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    const-string v0, "Received a retransmission flight."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    :cond_2
    sget-object v0, Lorg/openjsse/sun/security/ssl/Plaintext;->PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;

    return-object v0

    .line 990
    :cond_3
    iput-boolean v3, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needToCheckFlight:Z

    .line 993
    :cond_4
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->flightIsReady:Z

    if-nez v0, :cond_6

    .line 994
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_5

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The handshake flight is not ready to use: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :cond_5
    return-object v1

    .line 1002
    :cond_6
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 1004
    .local v0, "rFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    iget-boolean v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->isCiphertext:Z

    if-nez v1, :cond_7

    .line 1006
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->acquireHandshakeMessage()Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v1

    .line 1009
    .local v1, "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1011
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->holesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1014
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    .line 1017
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    invoke-direct {p0, v2}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->resetHandshakeFlight(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;)V

    .line 1019
    iget-boolean v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->expectCCSFlight:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    sget-byte v4, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->HF_UNKNOWN:B

    if-ne v2, v4, :cond_8

    .line 1022
    iput-boolean v3, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->expectCCSFlight:Z

    goto :goto_0

    .line 1027
    .end local v1    # "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    :cond_7
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->acquireCachedMessage()Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v1

    .line 1030
    .restart local v1    # "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    :cond_8
    :goto_0
    return-object v1
.end method

.method expectingFinishFlight()V
    .locals 1

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->expectCCSFlight:Z

    .line 617
    return-void
.end method

.method flightIsReady()Z
    .locals 9

    .line 1270
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    .line 1271
    .local v0, "flightType":B
    sget-byte v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->HF_UNKNOWN:B

    const-string v2, "verbose"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 1275
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->expectCCSFlight:Z

    if-eqz v1, :cond_1

    .line 1277
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasFinishedMessage(Ljava/util/Set;)Z

    move-result v1

    .line 1278
    .local v1, "isReady":Z
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Has the final flight been received? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    :cond_0
    return v1

    .line 1286
    .end local v1    # "isReady":Z
    :cond_1
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1287
    const-string v1, "No flight is received yet."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1290
    :cond_2
    return v3

    .line 1293
    :cond_3
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v0, v1, :cond_18

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v0, v1, :cond_18

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v0, v1, :cond_4

    goto/16 :goto_2

    .line 1310
    :cond_4
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    const-string v4, ") completed? "

    const-string v5, "-"

    if-ne v0, v1, :cond_d

    .line 1312
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasCompleted(B)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1313
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_5

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1314
    const-string v1, "The ServerHello message is not completed yet."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1318
    :cond_5
    return v3

    .line 1324
    :cond_6
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasFinishedMessage(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1325
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_7

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1326
    const-string v1, "It\'s an abbreviated handshake."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1329
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 1335
    :cond_8
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->holesMap:Ljava/util/HashMap;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1336
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 1335
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1337
    .local v1, "holes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;>;"
    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    .line 1348
    :cond_9
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v7, v7, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v8, v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    invoke-direct {p0, v6, v7, v8}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasCompleted(Ljava/util/Set;II)Z

    move-result v6

    .line 1351
    .local v6, "isReady":Z
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_a

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Is the ServerHello flight (message "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v7, v7, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1359
    :cond_a
    return v6

    .line 1339
    .end local v6    # "isReady":Z
    :cond_b
    :goto_0
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_c

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1340
    const-string v2, "Not yet got the ServerHelloDone message"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    :cond_c
    return v3

    .line 1369
    .end local v1    # "holes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;>;"
    :cond_d
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v0, v1, :cond_10

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v0, v1, :cond_e

    goto :goto_1

    .line 1426
    :cond_e
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_f

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1427
    const-string v1, "Need to receive more handshake messages"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1430
    :cond_f
    return v3

    .line 1373
    :cond_10
    :goto_1
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasCompleted(B)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1374
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_11

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1375
    const-string v1, "The ClientKeyExchange or client Certificate message is not completed yet."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    :cond_11
    return v3

    .line 1384
    :cond_12
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v0, v1, :cond_14

    .line 1385
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->needClientVerify(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1386
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasCompleted(B)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1388
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_13

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1389
    const-string v1, "Not yet have the CertificateVerify message"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1393
    :cond_13
    return v3

    .line 1397
    :cond_14
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasFinishedMessage(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1399
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_15

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1400
    const-string v1, "Not yet have the ChangeCipherSpec and Finished messages"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1405
    :cond_15
    return v3

    .line 1409
    :cond_16
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v7, v7, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    invoke-direct {p0, v1, v6, v7}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasCompleted(Ljava/util/Set;II)Z

    move-result v1

    .line 1412
    .local v1, "isReady":Z
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_17

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is the ClientKeyExchange flight (message "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1420
    :cond_17
    return v1

    .line 1298
    .end local v1    # "isReady":Z
    :cond_18
    :goto_2
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->hasCompleted(B)Z

    move-result v1

    .line 1299
    .restart local v1    # "isReady":Z
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_19

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is the handshake message completed? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    :cond_19
    return v1
.end method

.method queueUpChangeCipherSpec(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V
    .locals 4
    .param p1, "rf"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 759
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->isDesirable(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    return-void

    .line 765
    :cond_0
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->cleanUpRetransmit(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V

    .line 770
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->expectCCSFlight:Z

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    sget-byte v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->HF_UNKNOWN:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    .line 772
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    .line 776
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-wide v0, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    iget-wide v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 777
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-wide v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    iput-wide v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    .line 781
    :cond_2
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferFragment(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V

    .line 782
    return-void
.end method

.method queueUpFragment(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V
    .locals 1
    .param p1, "rf"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 788
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->isDesirable(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    return-void

    .line 794
    :cond_0
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->cleanUpRetransmit(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V

    .line 797
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferFragment(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V

    .line 798
    return-void
.end method

.method queueUpHandshake(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;)V
    .locals 9
    .param p1, "hsf"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    .line 621
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->isDesirable(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    return-void

    .line 627
    :cond_0
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->cleanUpRetransmit(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "isMinimalFlightMessage":Z
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    if-ne v1, v2, :cond_1

    .line 634
    const/4 v0, 0x1

    goto :goto_0

    .line 635
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->precedingFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    if-ne v1, v2, :cond_2

    .line 637
    const/4 v0, 0x1

    .line 640
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    if-nez v1, :cond_3

    iget-byte v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v1, v2, :cond_3

    .line 644
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-byte v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    iput-byte v2, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    .line 645
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordEpoch:I

    iput v2, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    .line 646
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    iput v2, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    .line 649
    :cond_3
    iget-byte v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v1, v2, :cond_4

    .line 650
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    iput v2, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    .line 651
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordEpoch:I

    iput v2, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    .line 652
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-wide v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordSeq:J

    iput-wide v2, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    goto :goto_1

    .line 654
    :cond_4
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    if-ge v1, v2, :cond_5

    .line 655
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    iput v2, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    .line 658
    :cond_5
    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordEpoch:I

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    sub-int/2addr v1, v2

    .line 659
    .local v1, "n":I
    if-lez v1, :cond_6

    .line 660
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget v3, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordEpoch:I

    iput v3, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    .line 661
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-wide v3, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordSeq:J

    iput-wide v3, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    goto :goto_1

    .line 662
    :cond_6
    if-nez v1, :cond_7

    .line 664
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-wide v2, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    iget-wide v4, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordSeq:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 665
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-wide v3, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->recordSeq:J

    iput-wide v3, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    .line 670
    .end local v1    # "n":I
    :cond_7
    :goto_1
    const/4 v1, 0x0

    .line 671
    .local v1, "fragmented":Z
    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    if-nez v2, :cond_8

    iget v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentLength:I

    iget v3, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    if-eq v2, v3, :cond_9

    .line 674
    :cond_8
    const/4 v1, 0x1

    .line 677
    :cond_9
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->holesMap:Ljava/util/HashMap;

    iget-byte v3, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    .line 678
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 679
    .local v2, "holes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_b

    .line 680
    if-nez v1, :cond_a

    .line 681
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 683
    :cond_a
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v4

    .line 684
    new-instance v4, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;

    iget v5, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    invoke-direct {v4, v3, v5}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :goto_2
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeFlight:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->holesMap:Ljava/util/HashMap;

    iget-byte v5, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 687
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 694
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_c

    const-string v4, "verbose"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 695
    const-string v4, "Have got the full message, discard it."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    :cond_c
    return-void

    .line 701
    :cond_d
    :goto_3
    if-eqz v1, :cond_15

    .line 702
    iget v4, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    iget v5, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentLength:I

    add-int/2addr v4, v5

    .line 703
    .local v4, "fragmentLimit":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    .line 705
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;

    .line 706
    .local v6, "hole":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;
    iget v7, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->limit:I

    iget v8, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    if-le v7, v8, :cond_14

    iget v7, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->offset:I

    if-lt v7, v4, :cond_e

    .line 709
    goto :goto_5

    .line 713
    :cond_e
    iget v7, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->offset:I

    iget v8, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    if-le v7, v8, :cond_f

    iget v7, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->offset:I

    if-lt v7, v4, :cond_10

    :cond_f
    iget v7, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->limit:I

    iget v8, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    if-le v7, v8, :cond_12

    iget v7, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->limit:I

    if-ge v7, v4, :cond_12

    .line 718
    :cond_10
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_11

    const-string v7, "ssl"

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 719
    const-string v7, "Discard invalid record: handshake fragment ranges are overlapping"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    :cond_11
    return-void

    .line 728
    :cond_12
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 731
    iget v3, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    iget v7, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->offset:I

    if-le v3, v7, :cond_13

    .line 732
    new-instance v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;

    iget v7, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->offset:I

    iget v8, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    invoke-direct {v3, v7, v8}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_13
    iget v3, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->limit:I

    if-ge v4, v3, :cond_15

    .line 738
    new-instance v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;

    iget v7, v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->limit:I

    invoke-direct {v3, v4, v7}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 703
    .end local v6    # "hole":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;
    :cond_14
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 749
    .end local v4    # "fragmentLimit":I
    .end local v5    # "i":I
    :cond_15
    :goto_6
    iget-byte v3, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v3, v4, :cond_16

    .line 751
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferedFragments:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 753
    :cond_16
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->bufferFragment(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V

    .line 755
    :goto_7
    return-void
.end method
