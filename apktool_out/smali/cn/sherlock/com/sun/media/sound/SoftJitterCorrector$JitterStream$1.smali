.class Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;
.super Ljava/lang/Object;
.source "SoftJitterCorrector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;-><init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;)V
    .locals 0
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    .line 126
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 129
    move-object/from16 v1, p0

    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2

    .line 130
    .local v2, "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    const/4 v3, 0x0

    aget-object v0, v0, v3

    array-length v4, v0

    .line 131
    .local v4, "bufflen":I
    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    div-int v5, v4, v0

    .line 132
    .local v5, "frames":I
    int-to-double v6, v5

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v6, v8

    .line 133
    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    float-to-double v8, v0

    div-double/2addr v6, v8

    double-to-long v6, v6

    .line 134
    .local v6, "nanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 135
    .local v8, "now":J
    add-long v10, v8, v6

    .line 136
    .local v10, "next":J
    const/4 v0, 0x0

    move-wide v11, v10

    move v10, v0

    .line 138
    .local v10, "correction":I
    .local v11, "next":J
    :goto_0
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    monitor-enter v13

    .line 139
    :try_start_0
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget-boolean v0, v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->active:Z

    if-nez v0, :cond_0

    .line 140
    monitor-exit v13

    .line 215
    return-void

    .line 141
    :cond_0
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 143
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget-object v14, v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    monitor-enter v14

    .line 144
    :try_start_1
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v0, v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v13, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    sub-int/2addr v0, v13

    .line 145
    .local v0, "curbuffsize":I
    if-nez v10, :cond_3

    .line 146
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v15, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w:I

    .line 147
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v13, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    const v15, 0x7fffffff

    if-eq v13, v15, :cond_3

    .line 148
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v13, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w:I

    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v15, v15, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_count:I

    if-ne v13, v15, :cond_3

    .line 149
    const/4 v10, 0x0

    .line 150
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v13, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v15, v15, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min_tol:I

    if-ge v13, v15, :cond_1

    .line 151
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v13, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min_tol:I

    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v15, v15, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_max_tol:I

    add-int/2addr v13, v15

    div-int/lit8 v13, v13, 0x2

    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v15, v15, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    sub-int/2addr v13, v15

    move v10, v13

    .line 154
    :cond_1
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v13, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v15, v15, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_max_tol:I

    if-le v13, v15, :cond_2

    .line 155
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v13, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min_tol:I

    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v15, v15, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_max_tol:I

    add-int/2addr v13, v15

    div-int/lit8 v13, v13, 0x2

    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v15, v15, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    sub-int/2addr v13, v15

    move v10, v13

    .line 158
    :cond_2
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iput v3, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w:I

    .line 159
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    const v15, 0x7fffffff

    iput v15, v13, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->w_min:I

    .line 163
    :cond_3
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v13, v0

    .line 164
    .end local v0    # "curbuffsize":I
    .local v13, "curbuffsize":I
    :goto_1
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v0, v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->bbuffer_max:I

    if-le v13, v0, :cond_5

    .line 165
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget-object v14, v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->buffers:[[B

    monitor-enter v14

    .line 166
    :try_start_2
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v0, v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->writepos:I

    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget v15, v15, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->readpos:I

    sub-int v13, v0, v15

    .line 167
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    monitor-enter v15

    .line 169
    :try_start_3
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget-boolean v0, v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->active:Z

    if-nez v0, :cond_4

    .line 170
    monitor-exit v15

    goto :goto_3

    .line 171
    :cond_4
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    const-wide/16 v14, 0x1

    :try_start_4
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 176
    :goto_2
    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    goto :goto_2

    .line 171
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 167
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 179
    :cond_5
    :goto_3
    if-gez v10, :cond_6

    .line 180
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 182
    :cond_6
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->nextWriteBuffer()[B

    move-result-object v14

    .line 184
    .local v14, "buff":[B
    const/4 v0, 0x0

    .line 185
    .local v0, "n":I
    :goto_4
    :try_start_7
    array-length v15, v14

    if-eq v0, v15, :cond_9

    .line 186
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    iget-object v15, v15, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    array-length v3, v14

    sub-int/2addr v3, v0

    invoke-virtual {v15, v14, v0, v3}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->read([BII)I

    move-result v3

    .line 188
    .local v3, "s":I
    if-ltz v3, :cond_8

    .line 190
    if-nez v3, :cond_7

    .line 191
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 192
    :cond_7
    add-int/2addr v0, v3

    .line 193
    .end local v3    # "s":I
    const/4 v3, 0x0

    goto :goto_4

    .line 189
    .restart local v3    # "s":I
    :cond_8
    new-instance v15, Ljava/io/EOFException;

    invoke-direct {v15}, Ljava/io/EOFException;-><init>()V

    .end local v2    # "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .end local v4    # "bufflen":I
    .end local v5    # "frames":I
    .end local v6    # "nanos":J
    .end local v8    # "now":J
    .end local v10    # "correction":I
    .end local v11    # "next":J
    .end local v13    # "curbuffsize":I
    .end local v14    # "buff":[B
    throw v15
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 196
    .end local v0    # "n":I
    .end local v3    # "s":I
    .restart local v2    # "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .restart local v4    # "bufflen":I
    .restart local v5    # "frames":I
    .restart local v6    # "nanos":J
    .restart local v8    # "now":J
    .restart local v10    # "correction":I
    .restart local v11    # "next":J
    .restart local v13    # "curbuffsize":I
    .restart local v14    # "buff":[B
    :cond_9
    goto :goto_5

    .line 194
    :catch_1
    move-exception v0

    .line 197
    :goto_5
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;->commit()V

    .line 200
    .end local v14    # "buff":[B
    :goto_6
    if-lez v10, :cond_a

    .line 201
    add-int/lit8 v10, v10, -0x1

    .line 202
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    add-long v11, v14, v6

    .line 203
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 205
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long v14, v11, v14

    .line 206
    .local v14, "wait":J
    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-lez v0, :cond_b

    .line 208
    const-wide/32 v16, 0xf4240

    :try_start_8
    div-long v16, v14, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    .line 211
    goto :goto_7

    .line 209
    :catch_2
    move-exception v0

    .line 213
    :cond_b
    :goto_7
    add-long/2addr v11, v6

    .line 214
    .end local v13    # "curbuffsize":I
    .end local v14    # "wait":J
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 163
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 141
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method
